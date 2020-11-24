https://kitt.lewagon.com/camps/473/lectures/03-AR-Database%2F04-ActiveRecord-Advanced#

# app/models/patient.rb
class Patient < ActiveRecord::Base
  has_many :consultations
end
# app/models/consultation.rb
class Consultation < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
end
# app/models/doctor.rb
class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
end

# Using Through
# app/models/doctor.rb
class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations

  has_many :patients, through: :consultations
end

# validations
validates :last_name, presence: true
validates :last_name, uniqueness: true
validates :first_name, uniqueness: { scope: :last_name }
validates :last_name, length: { minimum: 3 }
validates :email, format: { with: /\A.*@.*\.com\z/ }
#  to check
doctor = Doctor.new(first_name: "Gregory")
doctor.valid?
# => false
doctor.errors.messages
# => { last_name: [ "can't be blank" ] }

# Parsing converts data files into ruby objects like a hash or array
# Storing is the opposite of this

# JSON Scraping (MOST USED)
require 'open-uri'
require 'nokogiri'

ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.standard-card-new__article-title').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end


# CSV Parsing if there are headers
require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'beers.csv'

CSV.foreach(filepath, csv_options) do |row|
  puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
end

# CSV Storing
require 'csv'

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'beers.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
  # ...
end

# JSON Parsing
require 'json'

filepath = 'beers.json'

serialized_beers = File.read(filepath)

beers = JSON.parse(serialized_beers)

# beers is a ruby Hash

# JSON Storing
require 'json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
  # etc...
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end

# XML Parsing
require 'nokogiri'

file      = File.open('beers.xml')
document  = Nokogiri::XML(file)

document.root.xpath('beer').each do |beer|
  name        = beer.xpath('name').text
  appearance  = beer.xpath('appearance').text
  origin      = beer.xpath('origin').text

  puts "#{name}, a #{appearance} beer from #{origin}"
end

# XML Storing
require 'nokogiri'

filepath  = 'beers.xml'
builder   = Nokogiri::XML::Builder.new(encoding: 'UTF-8') do
  beers do
    beer do
      name        'Edelweiss'
      appearance  'White'
      origin      'Austria'
    end
    beer do
      # [...]
    end
  end
end

File.open(filepath, 'wb') { |file| file.write(builder.to_xml) }




















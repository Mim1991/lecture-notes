brew install yarn
yarn add <package> [--dev]

// sortable example
yarn add sortablejs
mkdir -p src/plugins
touch src/plugins/init_sortable.js

import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('#results');
  Sortable.create(list);
};

export { initSortable };

//

(function() {
  'use strict';

  angular
    .module('wdiApp')
    .controller('ResultsController', ResultsController);

  /** @ngInject */
  function ResultsController(ResultsService, searchResults) {
    var results = this;
    results.searchResults = searchResults.data;
  }
})();

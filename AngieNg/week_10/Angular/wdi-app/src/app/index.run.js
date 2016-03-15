(function() {
  'use strict';

  angular
    .module('wdiApp')
    .run(runBlock);

  /** @ngInject */
  function runBlock($log) {

    $log.debug('runBlock end');
  }

})();

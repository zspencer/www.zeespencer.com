(function() {
  $.fn.extend({
    contactify: function(api) {
      var api = api;
      var self = this;
      this.on('submit', function(e) {
        e.preventDefault();
        fields = {}
        _.each(self.find('input'), function(input) {
          input = $(input);
          fields[input.attr('name')] = input.val();
        });
        api.send(fields)
        return false;
      });
    }
  });

})();

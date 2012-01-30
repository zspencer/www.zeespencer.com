describe('$.fn.contactify', function () {
  var api;
  context('With an input element named "name"', function() {
    beforeEach(function() {
      affix('form input[name="name"] input[name="email"]');
      api = jasmine.createSpyObj('ContactifyApi', ['send'])
      $('form').contactify(api);
      $('form input[name="name"]').val('John Doe');
      $('form input[name="email"]').val('john@example.com');
      $('form').submit();
    });
    it('sends the name', function () {
      expect(api.send).toHaveBeenCalledWith({ name: 'John Doe', email:  'john@example.com' });
    });

  });
});


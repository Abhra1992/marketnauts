var Router = Ember.Router.extend({
  location: 'history'
});

Router.map(function() {
  this.resource('stocks', function() {
  });
});

export default Router;

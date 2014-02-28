var Router = Ember.Router.extend({
  location: 'history'
});

Router.map(function() {
  this.route('stocks');
});

export default Router;

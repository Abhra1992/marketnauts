var Router = Ember.Router.extend({
  location: 'history'
});

Router.map(function() {
  this.resource('stocks', function() {
    this.route('show', {path: '/:id'});
  });
});

export default Router;

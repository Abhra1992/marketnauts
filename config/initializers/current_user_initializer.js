Ember.Application.initializer({
  name: 'current_user_initializer',
  initialize: function(container) {
    store = container.lookup('store:main');
    controller = container.lookup('controller:currentUser');
    if (window.currentUser !== null) {
      store.pushPayload('user', window.currentUser);
      controller.set('content', store.find('user', window.currentUser["user"]["id"]));
    }

    container.injection('controller', 'currentUser', 'controller:currentUser');
    container.injection('route', 'currentUser', 'controller:currentUser');
  }
});

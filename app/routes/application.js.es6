export default Ember.Route.extend({
  actions: {
    signOut: function() {
      ic.ajax({
        url: "/api/v1/auth/sign-out",
        type: "POST"
      }).then(function() {
        window.location.reload();
      });
    }
  }
});

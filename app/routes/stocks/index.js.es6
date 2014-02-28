export default Ember.Route.extend({
  model: function() {
    return this.store.find('stock');
  },

  actions: {
    clickedStock: function(stock) {
      this.transitionTo('stocks.show', stock);
    }
  }
});

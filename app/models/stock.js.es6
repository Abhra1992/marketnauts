export default DS.Model.extend({
  currentPrice: DS.attr('number'),

  name: function() {
    return this.get('id');
  }.property('id')
});

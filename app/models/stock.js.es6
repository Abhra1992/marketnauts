export default DS.Model.extend({
  name: function() {
    return this.get('id');
  }.property('id')
});

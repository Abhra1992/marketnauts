export default DS.Model.extend({
  name: DS.attr('string'),
  avatar: DS.attr('string'),
  cash: DS.attr('number'),

  username: function() {
    return this.get('id');
  }.property('id')
});

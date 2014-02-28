export default DS.Model.extend({
  name: DS.attr('string'),
  avatar: DS.attr('string'),

  username: function() {
    return this.get('id');
  }.property('id')
});

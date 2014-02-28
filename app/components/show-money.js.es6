export default Ember.Component.extend({
  tagName: 'span',
  amount: 0,

  formattedAmount: function() {
    return accounting.formatMoney(this.get('amount'), '₹');
  }.property('amount')
});

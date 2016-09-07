import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
  display: function() {
    this.refresh();
  }
},
  model(params) {
    return this.store.query('quote', {stock_id: params.id});
  }
});

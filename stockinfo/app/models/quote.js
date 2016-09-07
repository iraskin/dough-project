import DS from 'ember-data';

export default DS.Model.extend({
  stock: DS.belongsTo('stock'),
  date: DS.attr('date'),
  open: DS.attr('number'),
  high: DS.attr('number'),
  low: DS.attr('number'),
  close: DS.attr('number'),
  volume: DS.attr('number')
});

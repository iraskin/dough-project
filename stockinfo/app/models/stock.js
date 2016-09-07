import DS from 'ember-data';

export default DS.Model.extend({
  symbol: DS.attr('string'),
  name: DS.attr('string'),
  sector: DS.attr('string'),
  industry: DS.attr('string'),
  quotes: DS.hasMany('quote')
});

import { moduleForModel, test } from 'ember-qunit';

moduleForModel('stock', 'Unit | Model | stock', {
  // Specify the other units that are required for this test.
  needs: ['model:quote']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});

import { moduleForModel, test } from 'ember-qunit';

moduleForModel('quote', 'Unit | Model | quote', {
  // Specify the other units that are required for this test.
  needs: ['model:stock']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});

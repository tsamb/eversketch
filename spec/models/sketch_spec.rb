require 'rails_helper'

describe Sketch do
  it "is valid with a tree_id, user_id, parent_id and json_data " do
    sketch = Sketch.new(tree_id: 1, user_id: 1, parent_id: 1, json_data: "{\"random\":\"json data\"}")
    expect(sketch).to be_valid
  end

  it "is invalid without a tree_id" do
    sketch = Sketch.new(tree_id: nil, user_id: 1, parent_id: 1, json_data: "{\"random\":\"json data\"}")
    expect(sketch).to_not be_valid
  end

  it "is invalid without a user_id" do
    sketch = Sketch.new(tree_id: 1, user_id: nil, parent_id: 1, json_data: "{\"random\":\"json data\"}")
    expect(sketch).to_not be_valid
  end
end

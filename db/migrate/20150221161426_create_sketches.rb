class CreateSketches < ActiveRecord::Migration
  def change
    create_table :sketches do |t|
      t.string :json_data
      t.integer :user_id
      t.integer :tree_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end

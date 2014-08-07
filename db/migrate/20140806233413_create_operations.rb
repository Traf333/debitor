class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :value
      t.text :comment
      t.references :buyer, index: true
      t.references :seller, index: true

      t.timestamps
    end
  end
end

class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.float :count
      t.string :identifier
      t.references :buyer, index: true

      t.timestamps
    end
    add_index :cards, :identifier, unique: true
  end
end

class AddColumnToCards < ActiveRecord::Migration
  def change
    add_column :cards, :limit, :float
    change_column :operations, :value, :float
  end
end

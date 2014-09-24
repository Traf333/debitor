class CreateOperationProxies < ActiveRecord::Migration
  def change
    change_table :operations do |t|
      t.references :card, index: true
    end
    remove_column :operations, :buyer_id
    add_index :operations, [:seller_id, :card_id], unique: true
    add_index :operations, [:card_id, :seller_id], unique: true
  end
end

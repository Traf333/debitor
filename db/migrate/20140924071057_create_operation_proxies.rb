class CreateOperationProxies < ActiveRecord::Migration
  def change
    change_table :operations do |t|
      t.references :card, index: true
    end

    add_index :operations, [:seller_id, :card_id]
    add_index :operations, [:card_id, :seller_id]
  end
end

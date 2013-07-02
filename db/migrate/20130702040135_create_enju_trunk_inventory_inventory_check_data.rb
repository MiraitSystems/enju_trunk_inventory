class CreateEnjuTrunkInventoryInventoryCheckData < ActiveRecord::Migration
  def change
    create_table :inventory_check_data do |t|
      t.integer :inventory_manage_id
      t.string :readcode
      t.timestamp :read_at

      t.timestamps
    end
  end
end

class CreateEnjuTrunkInventoryInventoryCheckData < ActiveRecord::Migration
  def change
    create_table :inventory_check_data do |t|
      t.integer :inventory_manage_id, :null => false
      t.string :readcode, :null => false
      t.timestamp :read_at
      t.integer :shelf_flag, default: 0
      t.string :shelf_name
      t.integer :skip_flag, :null => false, :default => 0
      t.integer :inventory_check_datum_id

      t.timestamps
    end
    add_index :inventory_check_data, :skip_flag
    add_index :inventory_check_data, [:inventory_manage_id, :readcode, :shelf_name], :name => "inventory_check_data_index_1"
  end
end

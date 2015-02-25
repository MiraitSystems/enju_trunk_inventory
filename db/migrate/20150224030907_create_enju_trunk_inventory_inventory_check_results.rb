class CreateEnjuTrunkInventoryInventoryCheckResults < ActiveRecord::Migration
  def change
    create_table :inventory_check_results do |t|
      t.integer :inventory_manage_id
      t.integer :status_1, :default => 0
      t.integer :status_2, :default => 0
      t.integer :status_3, :default => 0
      t.integer :status_4, :default => 0
      t.integer :status_5, :default => 0
      t.integer :status_6, :default => 0
      t.integer :status_7, :default => 0
      t.integer :status_8, :default => 0
      t.integer :status_9, :default => 0
      t.string :item_identifier
      t.integer :skip_flag, :default => 0
      t.string :original_title
      t.text :note
      t.text :shelf_group_names

      t.timestamps
    end

    add_index :inventory_check_results, :item_identifier
    add_index :inventory_check_results, :skip_flag
    add_index :inventory_check_results, [:status_1, :status_2, :status_3, :status_4, :status_5, :status_6, :status_7, :status_8, :status_9], :name => 'inventory_check_results_index_1'
  end
end

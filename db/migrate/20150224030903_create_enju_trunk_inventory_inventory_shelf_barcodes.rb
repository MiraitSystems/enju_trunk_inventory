class CreateEnjuTrunkInventoryInventoryShelfBarcodes < ActiveRecord::Migration
  def change
    create_table :inventory_shelf_barcodes do |t|
      t.string :barcode
      t.integer :inventory_manage_id
      t.integer :inventory_shelf_group_id
      t.integer :shelf_id

      t.timestamps
    end
  end
end

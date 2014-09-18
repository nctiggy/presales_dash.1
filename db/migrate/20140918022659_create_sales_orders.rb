class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.integer :so_number
      t.references :vmax, index: true

      t.timestamps
    end
  end
end

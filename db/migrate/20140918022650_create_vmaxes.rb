class CreateVmaxes < ActiveRecord::Migration
  def change
    create_table :vmaxes do |t|
      t.string :serial_number
      t.string :system_name
      t.string :enginuity_code
      t.string :target_code
      t.date :ship_date
      t.date :install_date
      t.boolean :esrs_enabled
      t.string :contract_number
      t.date :contract_expiration
      t.integer :raw_tb
      t.integer :engine_count
      t.boolean :openscale
      t.references :site, index: true
      t.references :model, index: true

      t.timestamps
    end
  end
end

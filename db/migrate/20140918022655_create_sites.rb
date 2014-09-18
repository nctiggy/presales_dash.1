class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :city
      t.string :site_id
      t.string :state
      t.string :street
      t.string :ce_email

      t.timestamps
    end
  end
end

class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.date :eosl

      t.timestamps
    end
  end
end

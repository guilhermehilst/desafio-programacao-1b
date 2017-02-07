class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :buyer
      t.string :description
      t.decimal :price, precision: 9, scale: 2
      t.integer :amount
      t.string :address
      t.string :provider

      t.timestamps null: false
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.string :email
      t.string :coupon
      t.boolean :active, default: true
      t.decimal :price, default: 0

      t.timestamps null: false
    end
  end
end

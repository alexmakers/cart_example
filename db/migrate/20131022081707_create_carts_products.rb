class CreateCartsProducts < ActiveRecord::Migration
  def change
    create_table :carts_products do |t|
      t.belongs_to :cart
      t.belongs_to :product
    end
  end
end

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rating

      t.timestamps
    end

    create_table :orders do |t|
      t.string :state
      t.string :product_sku
      t.monetize :amount
      t.string :payment
      t.string :jsonb
      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end

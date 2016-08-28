class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.belongs_to :product, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

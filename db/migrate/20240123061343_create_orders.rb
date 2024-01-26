class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :title
      t.integer :leader
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

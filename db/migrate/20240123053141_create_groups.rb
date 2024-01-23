class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :leader, null: false
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end

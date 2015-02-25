class CreateBinders < ActiveRecord::Migration
  def change
    create_table :binders do |t|
      t.string :title, null: false
      t.text :description
      t.integer :view_count, null: false, default: 0
      t.boolean :complete, null: false, default: false
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :binders, :users
  end
end

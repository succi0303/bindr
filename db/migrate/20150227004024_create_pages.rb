class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :number
      t.string :url, null: false
      t.string :title, null: false
      t.references :binder, index: true

      t.timestamps null: false
    end
    add_foreign_key :pages, :binders
  end
end

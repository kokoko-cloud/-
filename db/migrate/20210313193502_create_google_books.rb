class CreateGoogleBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :google_books do |t|
      t.references :book, foreign_key: true
      t.string :name, null: false
      t.boolean :is_representative, null: false

      t.timestamps
    end
  end
end

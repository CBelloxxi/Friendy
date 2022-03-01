class CreateDonees < ActiveRecord::Migration[6.1]
  def change
    create_table :donees do |t|
      t.text :description
      t.string :first_name
      t.string :last_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

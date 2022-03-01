class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.float :amount
      t.references :user, null: false, foreign_key: true
      t.references :donee, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end

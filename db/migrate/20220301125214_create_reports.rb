class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.text :message
      t.string :assistance_type
      t.string :location
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.references :donee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

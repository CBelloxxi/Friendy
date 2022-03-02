class AddLocationToDonee < ActiveRecord::Migration[6.1]
  def change
    add_column :donees, :location, :string
  end
end

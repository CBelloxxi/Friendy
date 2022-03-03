class AddPriceToDonations < ActiveRecord::Migration[6.1]
  def change
    add_monetize :donations, :price, currency: { present: false }
  end
end

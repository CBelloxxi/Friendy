class AddQrCodeToDonees < ActiveRecord::Migration[6.1]
  def change
    add_column :donees, :qr_code, :string
  end
end

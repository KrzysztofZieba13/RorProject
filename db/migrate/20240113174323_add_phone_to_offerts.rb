class AddPhoneToOfferts < ActiveRecord::Migration[7.1]
  def change
    add_column :offerts, :phone_number, :string
  end
end

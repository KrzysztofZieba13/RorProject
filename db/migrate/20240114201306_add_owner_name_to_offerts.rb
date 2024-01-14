class AddOwnerNameToOfferts < ActiveRecord::Migration[7.1]
  def change
    add_column :offerts, :owner_name, :string
  end
end

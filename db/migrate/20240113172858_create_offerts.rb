class CreateOfferts < ActiveRecord::Migration[7.1]
  def change
    create_table :offerts do |t|
      t.string :title
      t.text :body
      t.string :phone_number
      t.timestamps
    end
  end
end

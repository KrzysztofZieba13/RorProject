ActiveRecord::Schema[7.1].define(version: 2024_01_13_174323) do
  create_table "offerts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

end

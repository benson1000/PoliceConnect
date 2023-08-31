class AddFieldsToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :phone_number, :string
    add_column :profiles, :national_id, :string, unique: true
  end
end

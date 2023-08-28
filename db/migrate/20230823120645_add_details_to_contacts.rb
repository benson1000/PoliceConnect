class AddDetailsToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :name, :string, null: false
    add_column :contacts, :email, :string, null: false
    add_column :contacts, :subject, :string, null: false
    add_column :contacts, :message, :string, null: false
  end
end

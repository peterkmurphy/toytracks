class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :public_identifier, :string
    add_column :users, :legal_name, :string
    add_column :users, :gender, :string 
    add_column :users, :is_gender_visible, :boolean 
    add_column :users, :is_email_visible, :boolean 
    add_column :users, :phone_number, :string 
    add_column :users, :is_phone_number_visible, :boolean 
    add_column :users, :description, :text 
    add_column :users, :photo, :string
  end
end

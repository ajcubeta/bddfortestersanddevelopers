class AddCommonsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender,            :string
    add_column :users, :type,              :string,  :null => false
    add_column :users, :status,            :string,  :default => "inactive", :null => false
    add_column :users, :status_updated_at, :datetime
    add_column :users, :first_name,        :string
    add_column :users, :middle_name,       :string
    add_column :users, :last_name,         :string
    add_column :users, :home_number,       :string
    add_column :users, :mobile_number,     :string
    add_column :users, :work_number,       :string
    add_column :users, :timezone,          :string,  :default => "Singapore"
    add_column :users, :admin,             :boolean, :default => false
    add_column :users, :staff,             :boolean, :default => false
    add_column :users, :notification,      :boolean, :default => true

    add_index :users, :type
    add_index :users, :status
    add_index :users, [:first_name, :last_name]
    add_index :users, :home_number
    add_index :users, :mobile_number
  end
end
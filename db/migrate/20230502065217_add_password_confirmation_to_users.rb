class AddPasswordConfirmationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_confirmation, :string, null: false, default: ""
  end
end

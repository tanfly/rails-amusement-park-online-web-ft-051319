class ChangePasswordToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :password, :password_digest
  end
end

class ChangeFirstNameOnFriends < ActiveRecord::Migration[7.0]
  def change
    change_column_null :friends, :first_name, false
  end
end

class ChangeLastNameOnFriends < ActiveRecord::Migration[7.0]
  def change
    change_column_null :friends, :last_name, false
  end
end

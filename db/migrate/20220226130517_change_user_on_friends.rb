class ChangeUserOnFriends < ActiveRecord::Migration[7.0]
  def change
    change_column_null :friends, :user_id, false
  end
end

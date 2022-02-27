class ChangePhoneOnFriends < ActiveRecord::Migration[7.0]
  def change
    change_column_null :friends, :phone, false
  end
end

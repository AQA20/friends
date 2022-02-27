class ChangePhotoOnFriends < ActiveRecord::Migration[7.0]
  def change
    change_column_null :friends, :photo, false
  end
end

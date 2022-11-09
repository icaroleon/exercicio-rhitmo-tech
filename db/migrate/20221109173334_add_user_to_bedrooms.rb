class AddUserToBedrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :bedrooms, :user, null: false, foreign_key: true
  end
end

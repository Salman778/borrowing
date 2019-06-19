class AddUserToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :user, :string
  end
end

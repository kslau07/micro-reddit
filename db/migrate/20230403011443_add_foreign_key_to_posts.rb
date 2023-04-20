class AddForeignKeyToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :user_id, :string
    add_foreign_key :posts, :users
  end
end

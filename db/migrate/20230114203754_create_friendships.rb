class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.integer :user1_id
      t.integer :user2_id

      t.timestamps
    end
    add_index :friendships, :user1_id
    add_index :friendships, :user2_id
  end
end

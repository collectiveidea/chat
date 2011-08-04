class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :messages, :user_id
    add_index :messages, :created_at
    add_index :users, :twitter_uid, :unique => true
    add_index :users, :token, :unique => true
  end

  def self.down
    remove_index :users, :token
    remove_index :users, :twitter_uid
    remove_index :messages, :created_at
    remove_index :messages, :user_id
  end
end

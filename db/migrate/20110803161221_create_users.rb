class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.integer :twitter_uid
      t.string :twitter_access_token
      t.string :avatar_url
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

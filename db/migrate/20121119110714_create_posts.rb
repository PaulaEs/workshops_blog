class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.text :content
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end

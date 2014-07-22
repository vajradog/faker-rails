class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title # string limits to 255 character
    	t.text :body
    	t.timestamps
    end
  end
end

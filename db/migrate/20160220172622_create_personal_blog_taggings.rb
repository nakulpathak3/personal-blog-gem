class CreatePersonalBlogTaggings < ActiveRecord::Migration
  def change
    create_table :personal_blog_taggings do |t|
      t.integer :post_id, null: false
      t.integer :tag_id, null: false
    end
    
    add_index :personal_blog_taggings, [:tag_id, :post_id], unique: true
    add_foreign_key :personal_blog_taggings, :personal_blog_posts, column: :post_id
    add_foreign_key :personal_blog_taggings, :personal_blog_tags, column: :tag_id
  end
end

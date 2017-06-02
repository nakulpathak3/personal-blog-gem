class AddHiddenToPersonalBlogPosts < ActiveRecord::Migration
  def change
    add_column :personal_blog_posts, :hidden, :boolean
  end
end

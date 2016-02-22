class AddPublishedAtToPersonalBlogPosts < ActiveRecord::Migration
  def change
    add_column :personal_blog_posts, :published_at, :datetime
  end
end

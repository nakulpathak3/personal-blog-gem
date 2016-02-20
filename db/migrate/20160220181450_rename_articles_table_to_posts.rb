class RenameArticlesTableToPosts < ActiveRecord::Migration
  def change
    rename_table :personal_blog_articles, :personal_blog_posts
  end
end

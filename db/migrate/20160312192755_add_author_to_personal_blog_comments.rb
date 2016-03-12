class AddAuthorToPersonalBlogComments < ActiveRecord::Migration
  def change
    add_column :personal_blog_comments, :author, :string
  end
end

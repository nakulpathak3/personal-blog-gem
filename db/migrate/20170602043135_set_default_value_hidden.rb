class SetDefaultValueHidden < ActiveRecord::Migration
  def change
    change_column_default :personal_blog_posts, :hidden, false
  end
end

class CreatePersonalBlogComments < ActiveRecord::Migration
  def change
    create_table :personal_blog_comments do |t|
      t.integer :article_id
      t.text :text

      t.timestamps null: false
    end
  end
end
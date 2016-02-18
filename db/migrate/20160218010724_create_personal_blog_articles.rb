class CreatePersonalBlogArticles < ActiveRecord::Migration
  def change
    create_table :personal_blog_articles do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end

class CreatePersonalBlogTaggings < ActiveRecord::Migration
  def change
    create_table :personal_blog_taggings do |t|
      t.belongs_to :article, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

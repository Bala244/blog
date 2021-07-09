class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.integer :article_id

      t.timestamps
    end
  end
end

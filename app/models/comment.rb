class Comment < ActiveRecord::Base
  belongs_to :post
 attr_accessible :body, :commenter
end

class CreateComments < ActiveRecord::Migration
  def change
    create table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end

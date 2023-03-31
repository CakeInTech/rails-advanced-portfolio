class AddTopicReferenceToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :topic, null: false, foreign_key: true
  end
end

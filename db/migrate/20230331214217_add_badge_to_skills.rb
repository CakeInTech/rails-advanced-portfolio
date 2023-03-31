class AddBadgeToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :badge, :text
  end
end

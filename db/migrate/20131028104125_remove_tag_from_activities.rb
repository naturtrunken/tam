class RemoveTagFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :tag
  end
end

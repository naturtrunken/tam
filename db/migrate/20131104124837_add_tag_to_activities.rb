class AddTagToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :tag, :string
  end
end

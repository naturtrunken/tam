class AddParentToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :parent, :integer
  end
end

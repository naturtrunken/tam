class RenameCaldavCollectionIdToDavicalCollectionId < ActiveRecord::Migration
  def change
    rename_column :calendars, :caldav_collection_id, :davical_collection_id
  end
end

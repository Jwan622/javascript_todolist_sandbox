class RemoveListIdIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :list_id_id
  end
end

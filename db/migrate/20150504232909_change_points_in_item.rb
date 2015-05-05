class ChangePointsInItem < ActiveRecord::Migration
  def change
    change_column :items, :points, :integer, default: 0
  end
end

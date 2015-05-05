class ChangeStatusInItem < ActiveRecord::Migration
  def change
    change_column :items, :status, :string, default: "incomplete"
  end
end

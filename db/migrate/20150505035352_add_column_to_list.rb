class AddColumnToList < ActiveRecord::Migration
  def change
    add_column :lists, :type, :string
  end
end

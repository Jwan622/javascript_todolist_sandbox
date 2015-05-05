class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :status
      t.integer :points
      t.references :list_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

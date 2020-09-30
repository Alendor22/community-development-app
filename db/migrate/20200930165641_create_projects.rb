class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.string :objective
      t.string :location
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end

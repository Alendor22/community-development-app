class CreateContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :contributions do |t|
      t.belongs_to :contributor, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end

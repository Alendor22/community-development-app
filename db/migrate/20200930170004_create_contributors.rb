class CreateContributors < ActiveRecord::Migration[6.0]
  def change
    create_table :contributors do |t|
      t.string :name
      t.string :email
      t.integer :zip

      t.timestamps
    end
  end
end

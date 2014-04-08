class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :client
      t.integer :matter
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end

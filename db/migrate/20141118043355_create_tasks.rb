class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end

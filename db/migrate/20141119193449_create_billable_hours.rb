class CreateBillableHours < ActiveRecord::Migration
  def change
    create_table :billable_hours do |t|
      t.text :description
      t.datetime :start
      t.datetime :end
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end

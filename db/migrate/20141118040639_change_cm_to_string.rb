class ChangeCmToString < ActiveRecord::Migration
  def change
  	change_column :projects, :client, :string
  	change_column :projects, :matter, :string
  end
end

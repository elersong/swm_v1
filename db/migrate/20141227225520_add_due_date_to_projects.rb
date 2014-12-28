class AddDueDateToProjects < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.datetime :due_date
    end
  end
end

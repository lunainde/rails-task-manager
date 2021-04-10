class AddColumnCompletedToTasks < ActiveRecord::Migration[6.1]
  def change
    # completed, as a boolean (default: false)
    add_column :tasks, :completed, :boolean, default: false
  end
end

# command to add task:
# rails g migration AddColumnCompletedToTasks

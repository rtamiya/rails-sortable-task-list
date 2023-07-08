class RenameStatusInTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :status, :done
  end
end

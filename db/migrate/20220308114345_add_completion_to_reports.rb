class AddCompletionToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :completed, :boolean
  end
end

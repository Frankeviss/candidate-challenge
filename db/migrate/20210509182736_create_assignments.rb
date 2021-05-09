class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|

      t.integer :candidate_id
      t.integer :task_id
      t.timestamps
    end
  end
end

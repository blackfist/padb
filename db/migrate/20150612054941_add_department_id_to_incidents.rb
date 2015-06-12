class AddDepartmentIdToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :department_id, :integer
  end
end

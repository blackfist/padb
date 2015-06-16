class AddRestrainToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :abuse_restrained, :boolean
  end
end

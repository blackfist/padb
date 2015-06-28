class AddUrLstoIncident < ActiveRecord::Migration
  def change
    add_column :incidents, :urls, :string
  end
end

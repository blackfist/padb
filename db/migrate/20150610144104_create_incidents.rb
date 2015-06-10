class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.text :summary
      t.integer :year
      t.string :month
      t.string :city
      t.string :state
      t.string :context
      t.boolean :abuse_force
      t.boolean :abuse_search
      t.boolean :abuse_misconduct
      t.boolean :abuse_intimidation
      t.boolean :abuse_sexual
      t.boolean :abuse_escalation
      t.boolean :abuse_animal
      t.string :force_variety
      t.string :search_variety
      t.string :misconduct_variety
      t.string :intimidation_variety
      t.string :sexual_variety
      t.string :escalation_variety
      t.integer :victim_count
      t.text :victim_notes
      t.string :victim_race
      t.string :victim_age
      t.string :victim_gender
      t.integer :officer_count
      t.string :officer_race
      t.string :officer_tenure
      t.string :officer_gender
      t.string :outcome_physical_variety
      t.string :outcome_legal_variety
      t.string :outcome_hr_variety
      t.string :outcome_internal_variety
      t.string :outcome_dept_statement_variety
      t.string :outcome_union_statement_variety
      t.integer :outcome_dollars

      t.timestamps null: false
    end
  end
end

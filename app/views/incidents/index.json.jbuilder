json.array!(@incidents) do |incident|
  json.extract! incident, :id, :summary, :year, :month, :city, :state, :context, :abuse_force, :abuse_search, :abuse_misconduct, :abuse_intimidation, :abuse_sexual, :abuse_escalation, :abuse_animal, :force_variety, :search_variety, :misconduct_variety, :intimidation_variety, :sexual_variety, :escalation_variety, :victim_count, :victim_notes, :victim_race, :victim_age, :victim_gender, :officer_count, :officer_race, :officer_tenure, :officer_gender, :outcome_physical_variety, :outcome_legal_variety, :outcome_hr_variety, :outcome_internal_variety, :outcome_dept_statement_variety, :outcome_union_statement_variety, :outcome_dollars
  json.url incident_url(incident, format: :json)
end

class IncidentForm
  include ActiveModel::Model

  attr_accessor :summary, :year, :month, :city, :state, :context,
    :force_variety, :search_variety, :misconduct_variety, :intimidation_variety,
    :sexual_variety, :escalation_variety, :victim_count, :victim_race, :victim_age,
    :victim_gender, :victim_notes, :officer_count, :officer_race, :officer_tenure,
    :officer_gender, :department_name, :department_city, :department_state,
    :department_level, :department_notes, :outcome_dollars, :outcome_hr_variety,
    :outcome_legal_variety, :outcome_physical_variety, :outcome_internal_variety,
    :outcome_dept_statement_variety, :outcome_union_statement_variety,
    :abuse_animal, :department_county, :abuse_restrained

  validates :summary, :year, :state, :context,
    :department_name, :department_city, :department_state, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 2005 }

  def save
    if valid?
      persist!
    else
      false
    end
  end

  private
  def persist!
    dept = Department.where(name: department_name,
      city: department_city, state: department_state).first_or_create
    dept.level = department_level
    dept.notes = department_notes
    dept.county = department_county
    puts dept.level
    dept.save

    dept.incidents.create!(summary: summary, year: year, month: month,
      city:city, state: state, context: context, force_variety: force_variety,
      search_variety: search_variety, misconduct_variety: misconduct_variety,
      intimidation_variety: intimidation_variety, sexual_variety: sexual_variety,
      escalation_variety: escalation_variety, victim_count: victim_count,
      victim_age: victim_age, victim_race: victim_race, victim_gender: victim_gender,
      officer_count: officer_count, officer_race: officer_race,
      officer_tenure: officer_tenure, officer_gender: officer_gender,
      outcome_dollars: outcome_dollars, outcome_hr_variety: outcome_hr_variety,
      outcome_legal_variety: outcome_legal_variety, outcome_physical_variety: outcome_physical_variety,
      outcome_internal_variety: outcome_internal_variety,
      outcome_dept_statement_variety: outcome_dept_statement_variety,
      outcome_union_statement_variety: outcome_union_statement_variety,
      abuse_animal: abuse_animal, abuse_restrained: abuse_restrained)
  end


end

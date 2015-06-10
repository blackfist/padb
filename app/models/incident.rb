# == Schema Information
#
# Table name: incidents
#
#  id                              :integer          not null, primary key
#  summary                         :text
#  year                            :integer
#  month                           :string
#  city                            :string
#  state                           :string
#  context                         :string
#  abuse_force                     :boolean
#  abuse_search                    :boolean
#  abuse_misconduct                :boolean
#  abuse_intimidation              :boolean
#  abuse_sexual                    :boolean
#  abuse_escalation                :boolean
#  abuse_animal                    :boolean
#  force_variety                   :string
#  search_variety                  :string
#  misconduct_variety              :string
#  intimidation_variety            :string
#  sexual_variety                  :string
#  escalation_variety              :string
#  victim_count                    :integer
#  victim_notes                    :text
#  victim_race                     :string
#  victim_age                      :string
#  victim_gender                   :string
#  officer_count                   :integer
#  officer_race                    :string
#  officer_tenure                  :string
#  officer_gender                  :string
#  outcome_physical_variety        :string
#  outcome_legal_variety           :string
#  outcome_hr_variety              :string
#  outcome_internal_variety        :string
#  outcome_dept_statement_variety  :string
#  outcome_union_statement_variety :string
#  outcome_dollars                 :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class Incident < ActiveRecord::Base
  validates :summary, :year, :state, :context, presence: true
end

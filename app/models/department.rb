# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string
#  city       :string
#  state      :string
#  county     :string
#  level      :string
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Department < ActiveRecord::Base
  has_many :incidents
end

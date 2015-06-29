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
require 'elasticsearch/model'

class Department < ActiveRecord::Base

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  # http://pivotallabs.com/rspec-elasticsearchruby-elasticsearchmodel/
  # index_name [Rails.env, model_name.collection.gsub(/\//, '-')].join('_')

  has_many :incidents
end

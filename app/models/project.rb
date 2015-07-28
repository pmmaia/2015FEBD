class Project < ActiveRecord::Base
  belongs_to :client
  has_many :activities
  has_many :monitoring_records, :through => :activities
end

class Activity < ActiveRecord::Base
  has_many :monitoring_records
  belongs_to :project

  def to_s
    "#{date}"
  end
end

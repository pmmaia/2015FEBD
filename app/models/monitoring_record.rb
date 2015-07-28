class MonitoringRecord < ActiveRecord::Base
  belongs_to :activity

  def to_s
    "#{start_time}"
  end

end

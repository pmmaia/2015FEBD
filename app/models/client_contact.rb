class ClientContact < ActiveRecord::Base
  belongs_to :client

  def to_s
    "#{first_name} #{last_name}"
  end

end

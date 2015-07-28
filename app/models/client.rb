class Client < ActiveRecord::Base
  has_many :client_contacts
  has_many :projects

  def to_s
    "#{company} #{division}"
  end
end

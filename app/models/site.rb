class Site < ActiveRecord::Base
  has_many :vmaxes
  validates_formatting_of :ce_email, using: :email
end

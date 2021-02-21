class Visitor < ApplicationRecord
  has_many :visitor_needs
  has_many :needs, through: :visitor_needs
end

class Handicap < ApplicationRecord
  has_many :visitor_handicaps
  has_many :visitors, through: :visitor_handicaps
end

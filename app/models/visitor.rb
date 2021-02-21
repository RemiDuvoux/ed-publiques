class Visitor < ApplicationRecord
  has_many :visitor_needs
  has_many :needs, through: :visitor_needs
  has_many :visitor_handicaps
  has_many :handicaps, through: :visitor_handicaps

  def compatible_schemes
    Scheme.where(needs: needs).
      where("min_age < ?", age).
      where("max_age > ?", age)
  end
end

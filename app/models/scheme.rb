class Scheme < ApplicationRecord
  has_many :scheme_needs
  has_many :needs, through: :scheme_needs
end

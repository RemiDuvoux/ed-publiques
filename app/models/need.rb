class Need < ApplicationRecord
  has_many :visitor_needs
  has_many :visitors, through: :visitor_needs
  has_many :scheme_needs
  has_many :schemes, through: :scheme_needs

  NAMES = [
    "Jeux / Divertissement / Animations / Sorties",
    "Eveil et découverte",
    "Insertion professionnelle",
    "Soutien scolaire",
    "Formation",
    "Scolarisation",
    "Formation et intégration professionnelle",
    "Mentorat et orientation",
    "Entrepreneuriat / Accompagnement à la réalisation de projets",
    "Soutien psychologique"]

  enum name: [
    "Jeux / Divertissement / Animations / Sorties",
    "Eveil et découverte",
    "Insertion professionnelle",
    "Soutien scolaire",
    "Formation",
    "Scolarisation",
    "Formation et intégration professionnelle",
    "Mentorat et orientation",
    "Entrepreneuriat / Accompagnement à la réalisation de projets",
    "Soutien psychologique"]

end

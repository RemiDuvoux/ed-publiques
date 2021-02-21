class Need < ApplicationRecord
  has_many :visitor_needs
  has_many :visitors, through: :visitor_needs

  NAMES = [
    "Jeux / Divertissement / Animations / Sorties",
    "Eveil et découverte",
    "Vacances ",
    "Mentorat et orientation",
    "Scolarisation",
    "Soutien scolaire",
    "Formation",
    "Insertion profesionnelle",
    "Entrepreneuriat / Accompagnement à la réalisation de projets",
    "Logement",
    "Soutien psychologique",
    "Aide financière"
  ]

  enum name: [
    "Jeux / Divertissement / Animations / Sorties",
    "Eveil et découverte",
    "Vacances ",
    "Mentorat et orientation",
    "Scolarisation",
    "Soutien scolaire",
    "Formation",
    "Insertion profesionnelle",
    "Entrepreneuriat / Accompagnement à la réalisation de projets",
    "Logement",
    "Soutien psychologique",
    "Aide financière"
  ]
end

class Cafe < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :passive_favorites, class_name:  "Favorite",
                                   foreign_key: "cafe_id",
                                   dependent:   :destroy
  has_many :favorite, through: :passive_favorites, source: :user
end

class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy

  default_scope { order('name ASC') }

  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 20 }, presence: true
  validates :public, presence: true
end

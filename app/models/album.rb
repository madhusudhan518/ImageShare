class Album < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy, counter_cache: true

  validates :name, presence: true
end

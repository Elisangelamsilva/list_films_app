class Movie < ApplicationRecord
  belongs_to :profile

  validates :title, :overview, :original_language, :release_at, :popularity, :api_id, presence: true
end

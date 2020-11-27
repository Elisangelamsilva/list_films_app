class Movie < ApplicationRecord
  belongs_to :profile

  validates :adult, :poster_path, :title, :overview, :original_language, :release_at, :popularity, :api_id, presence: true
end

class Profile < ApplicationRecord
  belongs_to :user

  has_one_attached :avatar

  validates :name, presence: true
  validate :validate_profile_quantity

  private

  def validate_profile_quantity
    profile_quantity = Profile.where(user_id: user_id).size
    errors.add(:base, :profile_quantity, message: "Quantidade de perfis excedida") if profile_quantity >= 4
  end
end

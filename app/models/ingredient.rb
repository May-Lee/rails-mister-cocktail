class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
  before_destroy :check_for_cocktails

  private
  def check_for_cocktails
    if self.cocktails.count > 0
      return false
    end
  end
end

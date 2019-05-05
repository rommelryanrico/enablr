class Perk < ApplicationRecord
  has_many :project_enablrs, dependent: :destroy
  belongs_to :project

  validates :name,
            :minimum_amount,
            :rewards,
            presence: true

  before_create :set_unlimited

  private
  def set_unlimited
    self.unlimited = amount_left == -1
  end
end

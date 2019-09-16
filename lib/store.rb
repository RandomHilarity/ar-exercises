class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :carries_apparel?

  def carries_apparel?
    errors.add(:carries_apparel?, "Must carry at least 1 apparel type") unless
    mens_apparel == true || womens_apparel == true
  end 
end
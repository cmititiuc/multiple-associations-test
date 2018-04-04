class Cart < ApplicationRecord
  has_one :user
  has_and_belongs_to_many :products

  validate :products_total_cannot_be_greater_than_account_balance

  def products_total_cannot_be_greater_than_account_balance
    total = products.inject(0) { |sum, product| sum + product.cost }
    if total > user.account_balance
      errors.add(:products_total, "can't be greater than account balance")
    end
  end
end

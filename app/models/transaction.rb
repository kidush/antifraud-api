class Transaction < ApplicationRecord
  validates :merchant_id, presence: true
  validates :user_id, presence: true
  validates :transaction_date, presence: true
  validates :amount, presence: true
end

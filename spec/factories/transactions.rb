FactoryBot.define do
  factory :transaction do
    merchant_id { 1 }
    user_id { 1 }
    transaction_date { "2023-11-05 11:36:45" }
    amount { "9.99" }
    device_id { 1 }
    cbk { false }
  end
end

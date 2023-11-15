# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "csv"

file = File.read("#{Rails.root}/db/transactional-data.csv")
csv = CSV.parse(file, headers: true)

csv.each do |row|
  Transaction.create!(
    merchant_id: row["merchant_id"],
    user_id: row["user_id"],
    device_id: row["device_id"],
    transaction_date: row["transaction_date"],
    amount: row["transaction_amount"],
    cbk: row["has_cbk"],
  )
end

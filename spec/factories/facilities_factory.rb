FactoryBot.define do
  factory :facility do
    name { Faker::Lorem.words(number: rand(3..5), supplemental: true).join(" ") }
  end
end

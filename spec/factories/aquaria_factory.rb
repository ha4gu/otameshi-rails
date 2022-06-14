FactoryBot.define do
  factory :aquarium do
    name { Faker::Lorem.words(number: rand(3..5), supplemental: true).join(" ") }
  end
end

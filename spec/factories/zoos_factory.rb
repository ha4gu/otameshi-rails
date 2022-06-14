FactoryBot.define do
  factory :zoo do
    name { Faker::Lorem.words(number: rand(3..5), supplemental: true).join(" ") }
  end
end

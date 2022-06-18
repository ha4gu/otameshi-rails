FactoryBot.define do
  factory :word_press_application do
    php_version { "8.1.7" }
    wordpress_version { "6.0" }
  end
end

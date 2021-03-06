FactoryBot.define do
  factory :software, class: Project do
    name { Faker::Book.title }
    description { "#{name} Project Description" }
    target_amount { rand(1..10_000) }
    target_date { Faker::Date.forward(1000) }
    country { Faker::Address.country }
    city { Faker::Address.city }
    category { Categories.categories[1][0] }
    user_id { create(:fundraiser).id }
  end

  factory :hardware, class: Project do
    name { Faker::Book.title }
    description { "#{name} Project Description" }
    target_amount { rand(1..10_000) }
    target_date { Faker::Date.forward(1000) }
    country { Faker::Address.country }
    city { Faker::Address.city }
    category { Categories.categories.last }
    user_id { create(:fundraiser).id }
  end

  factory :random, class: Project do
    name { Faker::Book.title }
    description { "#{name} Project Description" }
    target_amount { rand(1..10_000) }
    target_date { Faker::Date.forward(1_000) }
    country { Faker::Address.country }
    city { Faker::Address.city }
    category { Categories.valid_categories.sample }
    user_id { create(:fundraiser).id }
  end
end

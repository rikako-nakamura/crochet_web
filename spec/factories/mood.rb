FactoryBot.define do
  factory :mood do
    sequence(:id) { |n| "#{n}"}
    sequence(:name) { |n| "test#{n}"}
  end
end
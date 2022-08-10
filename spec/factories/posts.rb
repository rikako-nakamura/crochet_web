FactoryBot.define do
  factory :post do
    sequence(:id) { |n| "#{n}"}
    body { "test" }
    finished_at { "1hour" }
    category_id { create(:category).id }
    mood_id { create(:mood).id }
    post_image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/turtle1.png'))}
    user
  end
end
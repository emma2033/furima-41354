FactoryBot.define do
  factory :item do
    name              { Faker::Commerce.product_name }
    description       { Faker::Lorem.paragraph }
    category_id       { Faker::Number.between(from: 2, to: 11) }
    condition_id      { Faker::Number.between(from: 2, to: 7) }
    shipping_fee_id   { Faker::Number.between(from: 2, to: 3) }
    prefecture_id     { Faker::Number.between(from: 2, to: 48) }
    shipping_day_id   { Faker::Number.between(from: 2, to: 4) }
    price             { Faker::Number.between(from: 300, to: 9_999_999) }

    association :user

    # アイテム画像の設定 (ActiveStorageを使用する場合)
    after(:build) do |item|
      item.image.attach(io: File.open('spec/fixtures/test_image.png'), filename: 'test_image.png', content_type: 'image/png')
    end
  end
end

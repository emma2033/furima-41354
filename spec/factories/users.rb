FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.unique.name }
    email                 { Faker::Internet.unique.email }
    password              { Faker::Internet.password(min_length: 6, mix_case: true, special_characters: false) }
    password_confirmation { password }
    # ダミーの氏名を生成する場合に、漢字名とカナ名をそれぞれ取得すると、それぞれでランダムに取得されてしまうため手動入力
    last_name_kanji       { '山田' }
    first_name_kanji      { '太郎' }
    last_name_kana        { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    birth_date            { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end

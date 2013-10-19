FactoryGirl.define do
  factory :page do
    page_namespace 0
    page_title { Faker::Name.name }
    page_restrictions ""
    page_random { rand }
    page_latest 0
    page_len 0
    sequence(:page_touched, 19000101000000)

    trait :with_revision do
      after :create do |page|
        create(:revision, page_id: page.id)
      end
    end
  end
end

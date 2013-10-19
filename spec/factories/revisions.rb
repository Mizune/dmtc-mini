FactoryGirl.define do
  factory :revision do
    rev_text_id 0
    rev_comment ""
    rev_user_text { Faker::Name.name }
  end
end

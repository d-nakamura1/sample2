FactoryGirl.define do
  factory :user do
    name "MyString"
    email "example@railstutorial.org"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :invalid_user do
    name ""
    email "user@invalid"
    password "foo"
    password_confirmation "bar"
  end
end

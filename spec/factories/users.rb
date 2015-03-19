FactoryGirl.define do
  factory :user do
    email                 'user@mail.com'
    password              'password'
    password_confirmation 'password'
    is_admin              false
  end

  factory :admin, class: User do
    email                 'admin@mail.com'
    password              'password'
    password_confirmation 'password'
    is_admin              true
  end
end
FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :name, :description] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence :avatar do |n|
    "https://www.gravatar.com/avatar/#{n}"
  end

  sequence :expired_at do |n|
    "2021-06-30"
  end
end

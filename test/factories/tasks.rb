FactoryBot.define do
  factory :task do
    name
    description
    author factory: :manager
    assignee factory: :manager
    state { 'MyString' }
    expired_at { '2021-06-30' }
  end
end

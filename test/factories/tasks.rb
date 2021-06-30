FactoryBot.define do
  factory :task do
    name
    description
    author_id { 1 }
    assignee_id { 1 }
    state { "MyString" }
    expired_at { "2021-06-30" }
  end
end

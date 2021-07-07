FactoryBot.define do
  factory :task do
    name
    description
    author { create :user }
    assignee { create :user }
    expired_at
  end
end

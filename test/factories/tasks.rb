FactoryBot.define do
  factory :task do
    name
    description
    author factory: :developer
    assignee factory: :developer
  end
end

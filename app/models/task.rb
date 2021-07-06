class Task < ApplicationRecord
  state_machine initial: :new_task do
    event :to_develop do
      transition [:new_task, :in_qa, :in_code_review] => :in_development
    end

    event :to_testing do
      transition in_development: :in_qa
    end

    event :to_code_review do
      transition in_qa: :in_code_review
    end

    event :finish_code_review do
      transition in_code_review: :ready_for_release
    end

    event :to_release do
      transition ready_for_release: :released
    end

    event :to_archive do
      transition [:new_task, :released] => :archived
    end
  end

  belongs_to :author, class_name: 'User'
  belongs_to :assignee, class_name: 'User', optional: true

  validates :name, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :description, length: { maximum: 500 }
end

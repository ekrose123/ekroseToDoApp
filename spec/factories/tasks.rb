FactoryBot.define do
  factory :homework, class: Task do
    due_date { DateTime.now + 2.days }
  	association :user
  	name 'Complete Homework'
  	priority 1
  end

	factory :email, class: Task do
		due_date { DateTime.now + 3.days }
    association :user
    name "Reply to Zack's email"
    priority 2
  end

  factory :invalid_task, class: Task do
    name nil    
    priority nil
  end

end

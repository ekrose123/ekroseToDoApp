require 'rails_helper'

RSpec.describe Task, type: :model do
	it 'is invalid without a name' do
		t = build(:homework, name: nil)
		expect(t).to_not be_valid
	end

	it 'is invalid without a priority' do
		t = build(:homework, priority: nil)
		expect(t).to_not be_valid
	end

	it 'is invalid without a due date' do
		t = build(:homework, due_date: nil)
    expect(t).not_to be_valid
	end

	it 'is valid with required attributes' do
		t = build(:homework)
		expect(t).to be_valid
	end

	it 'belongs to a User' do
		expect(Task.reflect_on_association(:user).macro).to eq(:belongs_to)
	end
end

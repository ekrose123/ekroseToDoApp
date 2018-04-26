class Task < ApplicationRecord
	validates_presence_of :name, :priority, :due_date
	belongs_to :user
end

class Student < ApplicationRecord
	has_many :enrollments
	has_many :kvantums, through: :enrollments
	validates :name, presence: true
	validates :name, uniqueness: true
end

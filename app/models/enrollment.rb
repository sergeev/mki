class Enrollment < ApplicationRecord
	belong_to :student
	belong_to :kvantum
end

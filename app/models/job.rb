class Job < ApplicationRecord
	has_and_belongs_to_many :skills
	belongs_to :city

	validates :title, presence: { message: "Title field can't be blank." }
  	validates :company_name, presence: { message: "Company Name field can't be blank." }
  	validates :city_id, :presence => true, presence: { message: "City should be selected." }
  	validates :skills, presence: { message: "Select at-least one skill." }
  	validates :description, presence: { message: "Description can't be blank." }
	validates :years_experience, numericality: { :greater_than => 0, :less_than_or_equal_to => 50, message: "Experience Required (Years) field should be a numeric."}, presence: { message: "Experience Required (Years) field should be a numeric." }
	validates :months_experience, numericality: { :greater_than => 0, :less_than_or_equal_to => 11, message: "Experience Required (Months) field should be a numeric."}, presence: { message: "Experience Required (Months) field should be a numeric." }

end
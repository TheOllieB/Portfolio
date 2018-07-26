class Skill < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :percet_utilized

	after_initialize :set_defaults

	def set_defaults 
		self.badge ||= Placeholder.generator(height: '250', width: '250')
end

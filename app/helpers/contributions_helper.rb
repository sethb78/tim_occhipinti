module ContributionsHelper

	def current_step
		@current_step || steps.first
	end
	
	def steps
		%w[personal employer payment]
	end
end

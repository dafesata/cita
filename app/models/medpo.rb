class Medpo < ApplicationRecord

	def self.search(params={})
		query=params[:query]
	    words = query.to_s.strip.split
	    words.inject(all) do |combined_scope, word|
	      combined_scope.where("nombregenerico LIKE ?", "%#{word}%")
	    end
	end

	def formaconcentracion
		"#{formafarmaceutica} #{concentracion}"
	end

	def formula		
			nombregenerico+" "+" "formafarmaceutica+" "+concentracion
	end	
end

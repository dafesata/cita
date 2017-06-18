class Cie10 < ApplicationRecord

	def self.search(params={})
		query=params[:query]
	    words = query.to_s.strip.split
	    words.inject(all) do |combined_scope, word|
	      combined_scope.where("descripcion LIKE ?", "%#{word}%")
	    end
	end
	
end

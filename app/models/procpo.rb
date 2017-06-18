class Procpo < ApplicationRecord

	def self.search(params={})
		query=params[:query]
	    words = query.to_s.strip.split
	    words.inject(all) do |combined_scope, word|
	      combined_scope.where("nombre LIKE ?", "%#{word}%")
	    end
	end

end

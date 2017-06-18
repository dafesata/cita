class MedpoController < ApplicationController
  
  def searchmedpo
  	@medpo = Medpo.search(params)
  
  end
end

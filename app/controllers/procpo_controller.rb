class ProcpoController < ApplicationController
	
  def searchprocpo
  	@procpo = Procpo.search(params)
  
  end
end

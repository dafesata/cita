class Cie10Controller < ApplicationController

  def searchcie10
  	@cie10 = Cie10.search(params)
  end
end

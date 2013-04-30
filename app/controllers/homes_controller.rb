class HomesController < ApplicationController

 def index
   if signed_in?
    @category  = current_user.categories.build
   end
 end

end

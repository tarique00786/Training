class DemoController < ApplicationController
  def index
    #render('index') 
    @id = params['id']
    @page = params[:page] 
  end

  def hello
    @array = [25,26,23,24,28]
    #render('hello')
    #redirect_to(:controller => 'demo', :action => 'index')
          
  end
      
end

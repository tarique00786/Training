class DemoController < ApplicationController
  def index
    render('index')  
  end

  def hello
    #render('hello')
    redirect_to(:controller => 'demo', :action => 'index')    
  end
      
end

class DemoController < ApplicationController

  def index
    render('index') 
    @id = params['id']
    @page = params[:page] 
  end

  def hello
    @array = [25,26,23,24,28]
    #render('hello')
    #redirect_to(:controller => 'demo', :action => 'index')
  end

  def contact
    if ['in','nz'].include?(params[:country])
      @phone = '(+91) 223322332233'
    elsif params[:country] == 'uk'
      @phone = '(+10) 2222222222'
    else
      @phone = '(+21) 1111111111'
    end        
    render('contact_us')
  end

  def about
    render('about_us')    
  end

end

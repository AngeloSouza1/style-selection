class HomeController < ApplicationController
  def index
    style = params[:style]

    case style
    when 'dark'
      @style = 'dark'
    when 'vapo'
      @style = 'vapo'
    else
      @style = 'sketchy'
    end
  end
end

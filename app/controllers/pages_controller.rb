class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:home, :articles, :contact, :stil, :unterricht]
	
  def home
  end

  def contact
  end

  def articles	
  end

  def stil
  end

  def unterricht
  end
end

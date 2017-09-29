class PagesController < ApplicationController
  caches_page :index

  def index
    set_page_metadata(:home)
  end

end
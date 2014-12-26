class SiteController < ApplicationController
    def index
    # retrieve all Bookmarks ordered by descending creation timestamp
    @bookmarks = OnTime.order('created_at desc')
  end
end

class PagesController < ApplicationController
  def main
    @lessons = Lesson.all
    @scrapes = Scrape.all
  end

  def scrape
    # code here for the scrape
    redirect_to root_path, notice: "Scraping Completed."
  end

  def data
    # Logic for fetching and rendering scraped data and difference data
  end
end

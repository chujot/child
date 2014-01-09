class CrawlController < ApplicationController

  require "Nokogiri"
  require "open-uri"

  def index
    url = "http://www.cao.go.jp/"
    #sleep 5
    doc = Nokogiri.HTML(open(url))
    @topic = doc.css(".indexTopicsLink").first.children.first.text.strip
  end

end

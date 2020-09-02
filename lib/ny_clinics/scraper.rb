require 'open-uri'
require 'nokogiri'
# require_relative 'clinic'

class NyClinics::Scraper

  def self.scrape
    doc = Nokogiri::HTML(open("https://www.health.ny.gov/regulations/hcra/provider/provcdtc.htm"))

    doc.css("tr").each do |clinic|
      name = clinic.css("td[4]").text
      street_address = clinic.css("td[5]").text
      city = clinic.css("td[6]").text
      zip_code = clinic.css("td[8]").text
      status = clinic.css("td[9]").text
      NyClinics::Clinic.new(name, street_address, city, zip_code, status)
    end
  end

end
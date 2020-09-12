class NyClinics::CLI

  def call
    NyClinics::Scraper.scrape
    welcome
    menu
  end

  def welcome
    puts "Welcome to NYC Clinic Finder"
    puts "Press (1) to search by name"
    puts "Press (2) to search by city"
    puts "Press (3) to search by zip code"
    puts "Press (4) to search by status"
    puts "Press (5) to list all"
  end

  def menu
    input = gets.strip.downcase

    case input
    when "1"
      puts "What is the name you would like to search for"
      name = gets.strip.upcase
      clinics_name = NyClinics::Clinic.find_by_name(name)
      check_if_empty(clinics_name)
      run
    when "2"
      puts "What is the city you would like to search for"
      city = gets.strip.upcase
      clinics_city = NyClinics::Clinic.find_by_city(city)
      check_if_empty(clinics_city)
      run
    when "3"
      puts "What is the zip code you would like to search for"
      zip_code = gets.strip
      clinics_zip_code = NyClinics::Clinic.find_by_zip_code(zip_code)
      check_if_empty(clinics_zip_code)
      run
    when "4"
      puts "What is the status you would like to search for"
      status = gets.strip.upcase
      clinics_status = NyClinics::Clinic.find_by_status(status)
      check_if_empty(clinics_status)
      run
    when "5"
      puts "Here is the list of all clinics"
      clinics_list = NyClinics::Clinic.list_all
      check_if_empty(clinics_list)
      run
    else
      puts "The option you entered was invalid, please try again"
      menu
    end
  end

  def check_if_empty(arr)
    if arr.length == 0
      puts "No clinics were found with these search terms"
    else
      arr.each do |clinic|
        clinic.print_f
      end
    end
  end

  def run
    puts "If you want to continue enter c to quit enter q"
    if gets.strip.downcase == "c"
      welcome
      menu
    end
  end

end
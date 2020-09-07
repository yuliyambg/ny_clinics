class NyClinics::Clinic

  attr_accessor :name, :street_address, :city, :zip_code, :status

  @@all = []

  def initialize(name, street_address, city, zip_code, status)
    @name = name.strip
    @street_address = street_address
    @city = city
    @zip_code = zip_code
    @status = status

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_zip_code(zip_code)
    self.all.select { |clinic| clinic.zip_code == zip_code }
  end

  def self.find_by_name(name)
    self.all.select { |clinic| clinic.name == name }
  end

  def self.find_by_city(city)
    self.all.select { |clinic| clinic.city == city }
  end

  def self.find_by_status(status)
    self.all.select { |clinic| clinic.status == status }
  end

  def self.list_all
    self.all
  end

  def print_f
    puts "---------------------------"
    puts name
    puts street_address
    puts city
    puts zip_code
    puts status
    puts "---------------------------"
  end

end

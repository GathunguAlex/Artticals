class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def self.find_or_create_by_name(first_name, last_name)
    customer = ''
    if !self.all.empty?
      customer = self.all.find do |customer|
        customer.first_name == first_name && customer.last_name == last_name
      end
      customer == nil ? customer = Customer.new(first_name, last_name) : customer
    else
      customer = Customer.new(first_name, last_name)
    end
  end

  def find_all_by_first_name(first_name)
    self.class.all.select do |customer|
      customer.first_name == first_name
    end    
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end


end

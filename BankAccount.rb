class BankAccount

  attr_accessor :balance, :name

  @@interest_rate = 0.09

  @@accounts = []

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end

  def self.create
    name = BankAccount.new
    @@accounts << name
    name
  end

  def self.total_funds
    sum = 0
    @@accounts.each do |account|
      sum += account.balance
    end
  sum
  end

  def self.interest_time
    @@interest_rate.each do |account|
      @balance * @@interest_rate
    end
  end

end

roopesh = BankAccount.create
chantal = BankAccount.create

puts roopesh.deposit(500)
puts chantal.deposit(1000)

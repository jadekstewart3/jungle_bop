module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      3.213
    elsif balance.between?(1000, 4999.999)
      1.621
    elsif balance >= 5000
      2.475
    else
      0.5
    end
  end

  def self.annual_balance_update(balance)
    balance + balance * (interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end

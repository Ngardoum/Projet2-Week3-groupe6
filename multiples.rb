def multiple_of_3_or_5?(number)
    number % 3 == 0 || number % 5 == 0
  end
  
  def multiples_below(limit)
    (1...limit).select { |num| multiple_of_3_or_5?(num) }
  end
  
  def sum_of_multiples_below(limit)
    multiples_below(limit).sum
  end
  
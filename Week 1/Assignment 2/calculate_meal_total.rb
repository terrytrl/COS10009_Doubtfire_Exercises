def meal_total ()
  # Asks user for price of indovidual componants
  puts 'How much was the appetizer (in cents)?'
  appetizer_price = gets().to_f
  puts 'How much was the main meal (in cents)?'
  main_price = gets().to_f
  puts 'How much was the dessert (in cents)?'
  dessert_price = gets().to_f
  # Adds variables
  total_price = (appetizer_price + main_price + dessert_price)
  # Converts cents to $
  total_price = total_price / 100
  puts ('Your total bill comes to $' + total_price.to_s)
end

meal_total

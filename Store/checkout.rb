#!/bin/ruby

# pricing_rules HASH
# Key is the Product code
# Type: it is the disccount type. 
#  (Nx1 You buy N of the same product, get one free)
#  (BULK You buy N or more of the same product, the price would )
# N: number of products required to apply the disccout
# price: price after the bulk disccount. it does not apply for Nx1

#    Code    | #Type  |   N   |  
#  VOUCHER   |  #Nx1  |   2   | 

#Code     |   Type      |    N    |   price  |
#TSHIRT   |   BULK      |    3    |     19   |

pricing_rules = Hash.new
pricing_rules["VOUCHER"] = [ "Nx1", 2]
pricing_rules["TSHIRT"]  = [ "BULK",3,19]

# define class Checkout  
class Checkout  

  #List of Products and Prices
  PRODUCTS = Hash.new 
  PRODUCTS["VOUCHER"] = 5
  PRODUCTS["TSHIRT"] = 20
  PRODUCTS["MUG"] = 7.5
   
  def initialize(pricing_rules)  
    @pricing_rules = pricing_rules 
    #Where all the order will be stored
    @order = Hash.new
  end  
  
  #Method to scan every product
  def scan(code)
    begin
      @order[code] += 1 
    rescue
      @order[code] = 1
    end
  end  
  
  #Method to calculate the purchase total
  def total
    total_amount = 0
    @order.each do |product, quantity|
      prod_price = PRODUCTS[product]
      if @pricing_rules.key?(product)
        rule = @pricing_rules[product]
        n = rule[1]
        type = rule[0]
        case  type
        when "Nx1"
          total_amount += prod_price*( quantity/n + quantity%n )
        when "BULK"
          disccount_price = rule[2]
          total_amount += quantity * (quantity < n ? prod_price : disccount_price) #disccount price
        end
      else
        total_amount += prod_price * quantity
      end
    end
    total_amount
  end  
end  

co = Checkout.new(pricing_rules)
co.scan("VOUCHER")
co.scan("TSHIRT")
co.scan("VOUCHER")
co.scan("VOUCHER")
co.scan("MUG")
co.scan("TSHIRT")
co.scan("TSHIRT")
price = co.total
p price


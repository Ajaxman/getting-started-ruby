#cart.rb

class Cart


  def initialize
    @screenSize = 420
    @items = []
    @productsList = {'nexus' => 50, 'iphone'=>5.50, 'mac'=>25.7}
    @order = 1 + rand(99999)
    time = Time.new
    @date = time.strftime("%H:%M - %Y-%m-%d")
    createTitle
    showProducts
  end

  def run
    addProduct
  end

  def addProduct
    puts "Please write the product which you wish add to the cart(q/quit to exit)?:"
    item = ''
    while item != 'quit'
      if !item.to_s.empty?
        puts "Please choose another product(q/quit to exit):"
      end
      item = gets.chomp

      if item == "q"
         item = "quit"
      end
      if @productsList[item]
         @items.push(item)
       elsif item == "quit"
         puts "|--------------------------------------------|"
       else
         puts "The product " + item.to_s +
              " does not exist in the store, please choose another product:"
       end
    end
    puts "The Cart is full"
  end

  def summary
    puts "|--------------------------------------------|"
    puts "|   The Order [" +  @order.to_s + "] at " + @date.to_s + "|".rjust(3)
    puts "|--------------------------------------------|"
    puts "|".ljust(1) +
          "    product  " +
          "       |       "  +
          "  price " + "|".rjust(9)
    if @items.length > 0
        total = 0
        @items.each do |item|
          price  = @productsList[item]
          total = total + price
          puts "|    " + item.to_s +  "        |       " + "$" + price.to_s + "        |".rjust(10)
        end
        puts "|--------------------------------------------|"
        puts "| Number of products : " + @items.length.to_s + "  | " +
             " $" + total.to_s +  "|"
    else
      puts "|" +  " You no have anything product added :( "  + "|".rjust(6)
    end
  end


  private
  def createTitle
    puts "[Rcart: The Cart manager in Ruby]".center(@screenSize)
  end

  def showProducts
    printList
  end

  def printList
    @productsList.each do |product, price|
      puts product.to_s.ljust(@screenSize/40) +
          ' .......................................... ' +
          '$ ' + price.to_s
    end
  end
end


cart = Cart.new
cart.run
cart.summary

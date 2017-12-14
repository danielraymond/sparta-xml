require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def get_all_prices_as_floats
    price_array = []
    @menu.xpath('//price').each do |price|
      price_array << price.text.gsub('£', '').to_f
    end
    price_array
  end

  def get_all_food_items
    # food_array = []
    # array_two = []
    # (0..4).each do |i|
    #   array_two << @menu.xpath('//name')[i].text
    #   array_two << @menu.xpath('//price')[i].text
    #   array_two << @menu.xpath('//description')[i].text
    #   array_two << @menu.xpath('//calories')[i].text
    #   food_array << array_two
    #   array_two = []
    # end
    # food_array
    @menu.xpath('//food')
  end

end
# x = GuiseppesMenu.new
# x.get_all_food_items

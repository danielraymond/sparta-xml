require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_menu_names
    @menu.search('name')
  end

  def xpath_get_names
    @menu.xpath('//food[1]/name').text
  end

  def xpath_get_prices
    @menu.xpath('//food/[price > 5.95]')
  end

end

x = GuiseppesMenu.new

puts x.get_menu_names[2].text

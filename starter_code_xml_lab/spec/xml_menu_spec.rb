require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do

    @xml_menu.get_all_prices_as_floats.each do |price|
      expect(price).to be < 10
    end

  end

  it "should have no item with calories over 1000 except for the full breakfast" do

    # @xml_menu.get_all_food_items.each do |i|
    #   if i[0] == "Full Breakfast"
    #     expect(i[3].to_i).to be > 1000
    #   else
    #     expect(i[3].to_i).to be < 1000
    #   end
    # end
    @xml_menu.get_all_food_items.each do |i|
      if i.element_children[0].text == 'Full Breakfast'
        expect(i.element_children[3].text.to_i).to be > 1000
      else
        expect(i.element_children[3].text.to_i).to be < 1000
      end
    end

  end

  it "should have all waffle dishes stating you get two waffles" do
    @xml_menu.get_all_food_items.each do |i|
      if i.element_children[0].text.include? 'Waffles'
        expect(i.element_children[2].text).to include 'Two'
      end
    end
  end

end

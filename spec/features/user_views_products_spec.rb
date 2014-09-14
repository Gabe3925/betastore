require 'rails_helper'

feature "User views available products", :type => :feature do

  before do
    3.times {FactoryGirl.create(:product)}
    visit products_path
  end

  it "shows product name" do
    Product.all.each do |product|
      expect(page).to have_content(product.name)
    end
  end

end

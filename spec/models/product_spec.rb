require 'rails_helper'

RSpec.describe Product, :type => :model do

  context '.incredible' do

    let!(:incredible_product){FactoryGirl.create(:product, name: 'Incredible product')}
    let!(:another_incredible_product){FactoryGirl.create(:product, name: 'Another Incredible product')}
    let!(:boring_product){FactoryGirl.create(:product, name: 'Boring product')}

    it "returns products with 'Incredible' in the name" do
      products = Product.incredible
      expect(products).to eq([incredible_product, another_incredible_product])
    end

    it "doesnt return 'boring' products" do
      products = Product.incredible
      expect(products).not_to include([boring_product])
    end

 end

 context '.incredible' do

   let!(:cheap_product){Product.create!(name: 'beans', price: 10)}
   let!(:expensive_product){Product.create!(name: 'le beans', price: 100)}
   let!(:unsure_product){Product.create!(name: 'magic bean', price: 50)}

  it "returns products less than 50 bucks" do
    expect(Product.cheap).to eq([cheap_product])
  end
 end
end

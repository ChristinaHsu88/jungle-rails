require 'rails_helper'

RSpec.describe Product, type: :model do
  #testing whether the name is present
  describe 'Validation' do
    it 'should be saved as a new product' do
      @category = Category.create(
        name: 'Test Category'
      )
      @product = Product.create(
      name: "name",
      price: 3,
      quantity: 3,
      category: @category   
      )
    
      expect(@product.id).to be_present
    end
    it 'should not be saved as a new product without a name' do
      @category = Category.create(
        name: 'Test Category'
      )
      @product = Product.create(
      price: 3,
      quantity: 3,
      category: @category   
      )
      expect(@product.id).to be_nil
    end
    it 'should not be saved as a new product without a price' do
      @category = Category.create(
        name: 'Test Category'
      )
      @product = Product.create(
      name: 'name',
      quantity: 3,
      category: @category   
      )
      expect(@product.id).to be_nil
    end
    it 'should not be saved as a new product without quantity' do
      @category = Category.create(
        name: 'Test Category'
      )
      @product = Product.create(
      name: 'name',
      price: 34,
      category: @category   
      )
      expect(@product.id).to be_nil
    end

    it 'should not be saved as a new product without category' do
      @category = Category.create(
        name: 'Test Category'
      )
      @product = Product.create(
      name: 'name',
      price: 34,
      quantity: 23
      )
      expect(@product.id).to be_nil
    end
  end
end

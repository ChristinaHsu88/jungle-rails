require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation' do
    it 'should saved as a new user' do
    @user = User.create(
      name: 'Amy',
      email: 'abc@abc.com',
      password: 'abc123'
    )   
    expect(@user.id).to be_present
    end
    it 'should saved as a password' do
    @user = User.create(
      password: 'abc',
      password_confirmation: 'abc',
    )
    expect(@user.password === @user.password_confirmation).to be_present
    end
    it 'should not saved as a new user' do
      @user = User.create(
        name: 'Amy',
        email: 'abc@abc.com'
      )
      @user2 = User.create(
        name: 'Bee',
        email: 'abc@abc.com'
      )
      expect(@user2.id).to be_nil
      end
  end
  describe '.authenticate_with_credentials' do
    it 'should saved as a new user' do
      @user = User.create(
        name: 'Amy',
        email: 'abc@abc.com',
        password: 'abc123'
      ) 
        
       
      expect(User.authenticate_with_credentials(@user.email, @user.password)).to be_present
      end
      it 'should saved as a new user' do
        @user = User.create(
          name: 'Amy',
          email: 'abc@abc.com',
          password: 'abc123'
        )   
        expect(User.authenticate_with_credentials('hello@hello.com', @user.password)).to be_nil
        end
        it 'should saved as a new user' do
          @user = User.create(
            name: 'Amy',
            email: 'abc@abc.com',
            password: 'abc123'
          )   
          expect(User.authenticate_with_credentials(' abc@abc.com', @user.password)).to be_present
          end
  end
end

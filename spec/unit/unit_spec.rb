# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: 'harry potter',
      author: 'J.K. Rowling',
      price: 10.99,
      date: '2022-02-02'
      )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
    subject.title = 'harry potter'
  end

  it 'is not valid without a author' do 
    subject.author = nil 
    expect(subject).not_to be_valid
    subject.author = 'J.K. Rowling'
  end


  it 'is not valid without a price' do 
    subject.price = nil 
    expect(subject).not_to be_valid
    subject.price = 10.99
  end

  it 'is not valid without a date' do 
    subject.date = nil 
    expect(subject).not_to be_valid
    subject.date = '2022-02-02'
  end
end


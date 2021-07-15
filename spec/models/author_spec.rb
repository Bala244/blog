require 'rails_helper'

RSpec.describe Author, type: :model do

  context 'validation tests' do
    
    it 'ensures Author Name' do
      author = Author.new(author_description: "bnk is great").save
      expect(author).to eq(false)
    end
    
    it 'ensures Author Description' do
      author = Author.new(author_name: "bnk").save
      expect(author).to eq(false)
    end

    it 'ensures Author save' do
      author = Author.new(author_name: "bnk" ,author_description: "bnk is great").save
      expect(author).to eq(true)
    end
  end

  context 'scope tests' do
  end

end

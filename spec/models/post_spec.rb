require 'rails_helper'

RSpec.describe Post, :type => :model do
    it 'should validate presence of title' do
    post = Post.new
    post.valid?
    expect(post.errors.messages[:title]).to include "can't be blank"

  #   [:title, :body].each do |attribute|
  #     it "should validate presence of #{attribute}" do
  #       expect(post).to have_at_least(1).error_on(attribute)
  #       expect(post.errors.messages[attribute]).to include "can't be blank"
  #     end
  #   end
  end
end

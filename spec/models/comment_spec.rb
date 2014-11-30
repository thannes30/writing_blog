# require 'rails_helper'

# RSpec.describe Comment, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

require 'rails_helper'

describe Comment do
  describe 'validations' do
    subject(:comment) { Comment.new }
    before { comment.valid? }

    [:post, :body].each do |attribute|
      it "should validate presence of #{attribute}" do
        expect(comment).to have_at_least(1).error_on(attribute)
        expect(comment.errors.messages[attribute]).to include "can't be blank"
      end
    end
  end
end

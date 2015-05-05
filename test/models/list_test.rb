require 'test_helper'

class ListTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_uniqueness_of(:title).
    with_message('Please choose another title')
  should have_many(:items)
end

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_uniqueness_of(:title).
    with_message('Please choose another title')
  should validate_presence_of(:status)
  # this validates_presence_of(:status) must be building an item behind the scenes without a status
  should belong_to(:list)

  def test_it_has_a_default_status
    item = build(:item)
    assert_equal "incomplete", item.status
  end

  def test_it_has_a_default_point_of_zero
    item = build(:item)
    assert_equal 0, item.points
  end
end

require 'test_helper'

class ManageListTest < ActionDispatch::IntegrationTest
  def test_ii_can_view_all_lists_on_index
    create_list(:list, 2)
    visit root_url

    page.assert_selector("#list", count: 2)

    assert page.has_content?("Your Todo Lists")
  end

  def test_a_list_has_items_on_index
    list = create(:list)
    list.items << create_list(:item, 3)

    visit root_url
    
    page.assert_selector("li", count: 3)
    assert page.has_unchecked_field?("#checkbox-item", count: 3)
  end
end

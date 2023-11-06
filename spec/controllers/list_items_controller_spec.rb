# frozen_string_literal: true

describe ListItemsController do
  example '#index' do
    list_item = create(:list_item)

    get :index, format: :json

    assert response.successful?
    assert_equal JSON.parse(response.body)[0]['id'], list_item.id
  end

  example '#create' do
    list_item_params = { name: 'title' }

    post :create, format: :json, params: { list_item: list_item_params }

    expected_count = 1
    actual_count = ListItem.count

    assert response.successful?
    assert_equal expected_count, actual_count
  end

  example '#destroy' do
    list_item = create(:list_item)

    delete :destroy, format: :json, params: { id: list_item.id }

    expected_count = 0
    actual_count = ListItem.count

    assert response.successful?
    assert_equal expected_count, actual_count
  end
end

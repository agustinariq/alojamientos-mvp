require 'test_helper'

class LodgingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lodgings_url
    assert_response :success
  end

  test "should show lodging" do
    lodging = Lodging.create
    get lodgings_path(lodging)
    assert_response :success
  end

  test "should destroy lodging" do
    lodging = Lodging.create
    assert_difference('Lodging.count', -1) do
      delete lodging_path(lodging)
    end
  end

  test "should update lodging" do
    lodging = Lodging.create

    updated = "Another province"

    patch lodging_path(lodging), params: { lodging: { province: updated } }

    lodging.reload
    assert_equal updated, lodging.province
  end
end

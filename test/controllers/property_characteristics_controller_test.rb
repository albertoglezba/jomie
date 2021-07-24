require 'test_helper'

class PropertyCharacteristicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_characteristic = property_characteristics(:one)
  end

  test "should get index" do
    get property_characteristics_url
    assert_response :success
  end

  test "should get new" do
    get new_property_characteristic_url
    assert_response :success
  end

  test "should create property_characteristic" do
    assert_difference('PropertyCharacteristic.count') do
      post property_characteristics_url, params: { property_characteristic: { bathrooms: @property_characteristic.bathrooms, property_id: @property_characteristic.property_id, rooms: @property_characteristic.rooms } }
    end

    assert_redirected_to property_characteristic_url(PropertyCharacteristic.last)
  end

  test "should show property_characteristic" do
    get property_characteristic_url(@property_characteristic)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_characteristic_url(@property_characteristic)
    assert_response :success
  end

  test "should update property_characteristic" do
    patch property_characteristic_url(@property_characteristic), params: { property_characteristic: { bathrooms: @property_characteristic.bathrooms, property_id: @property_characteristic.property_id, rooms: @property_characteristic.rooms } }
    assert_redirected_to property_characteristic_url(@property_characteristic)
  end

  test "should destroy property_characteristic" do
    assert_difference('PropertyCharacteristic.count', -1) do
      delete property_characteristic_url(@property_characteristic)
    end

    assert_redirected_to property_characteristics_url
  end
end

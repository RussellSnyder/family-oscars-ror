require 'test_helper'

class AwardsCeremoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @awards_ceremony = awards_ceremonies(:one)
  end

  test "should get index" do
    get awards_ceremonies_url
    assert_response :success
  end

  test "should get new" do
    get new_awards_ceremony_url
    assert_response :success
  end

  test "should create awards_ceremony" do
    assert_difference('AwardsCeremony.count') do
      post awards_ceremonies_url, params: { awards_ceremony: { description: @awards_ceremony.description, name: @awards_ceremony.name } }
    end

    assert_redirected_to awards_ceremony_url(AwardsCeremony.last)
  end

  test "should show awards_ceremony" do
    get awards_ceremony_url(@awards_ceremony)
    assert_response :success
  end

  test "should get edit" do
    get edit_awards_ceremony_url(@awards_ceremony)
    assert_response :success
  end

  test "should update awards_ceremony" do
    patch awards_ceremony_url(@awards_ceremony), params: { awards_ceremony: { description: @awards_ceremony.description, name: @awards_ceremony.name } }
    assert_redirected_to awards_ceremony_url(@awards_ceremony)
  end

  test "should destroy awards_ceremony" do
    assert_difference('AwardsCeremony.count', -1) do
      delete awards_ceremony_url(@awards_ceremony)
    end

    assert_redirected_to awards_ceremonies_url
  end
end

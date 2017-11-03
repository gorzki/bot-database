require 'test_helper'

class RaidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raid = raids(:one)
  end

  test "should get index" do
    get raids_url
    assert_response :success
  end

  test "should get new" do
    get new_raid_url
    assert_response :success
  end

  test "should create raid" do
    assert_difference('Raid.count') do
      post raids_url, params: { raid: { level: @raid.level, link: @raid.link, name: @raid.name, next: @raid.next, shortcut: @raid.shortcut, tod: @raid.tod, window: @raid.window } }
    end

    assert_redirected_to raid_url(Raid.last)
  end

  test "should show raid" do
    get raid_url(@raid)
    assert_response :success
  end

  test "should get edit" do
    get edit_raid_url(@raid)
    assert_response :success
  end

  test "should update raid" do
    patch raid_url(@raid), params: { raid: { level: @raid.level, link: @raid.link, name: @raid.name, next: @raid.next, shortcut: @raid.shortcut, tod: @raid.tod, window: @raid.window } }
    assert_redirected_to raid_url(@raid)
  end

  test "should destroy raid" do
    assert_difference('Raid.count', -1) do
      delete raid_url(@raid)
    end

    assert_redirected_to raids_url
  end
end

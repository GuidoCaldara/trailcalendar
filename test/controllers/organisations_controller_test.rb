require 'test_helper'

class OrganisationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organisations_index_url
    assert_response :success
  end

  test "should get new" do
    get organisations_new_url
    assert_response :success
  end

  test "should get create" do
    get organisations_create_url
    assert_response :success
  end

  test "should get delete" do
    get organisations_delete_url
    assert_response :success
  end

  test "should get edit" do
    get organisations_edit_url
    assert_response :success
  end

  test "should get update" do
    get organisations_update_url
    assert_response :success
  end

end

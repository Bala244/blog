require "test_helper"

class NewarticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newarticle = newarticles(:one)
  end

  test "should get index" do
    get newarticles_url
    assert_response :success
  end

  test "should get new" do
    get new_newarticle_url
    assert_response :success
  end

  test "should create newarticle" do
    assert_difference('Newarticle.count') do
      post newarticles_url, params: { newarticle: { description: @newarticle.description, name: @newarticle.name } }
    end

    assert_redirected_to newarticle_url(Newarticle.last)
  end

  test "should show newarticle" do
    get newarticle_url(@newarticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_newarticle_url(@newarticle)
    assert_response :success
  end

  test "should update newarticle" do
    patch newarticle_url(@newarticle), params: { newarticle: { description: @newarticle.description, name: @newarticle.name } }
    assert_redirected_to newarticle_url(@newarticle)
  end

  test "should destroy newarticle" do
    assert_difference('Newarticle.count', -1) do
      delete newarticle_url(@newarticle)
    end

    assert_redirected_to newarticles_url
  end
end

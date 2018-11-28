require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  	end

  test "should get home" do
    get stkhi mô đánh vs hénatic_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
        assert_select "title", "About | #{@base_title}"

  end

  test "should get ex" do
    get static_pages_ex_url
    assert_response :success
        assert_select "title", "ex | #{@base_title}"

  end
  test "should get application" do
    get static_pages_application_url
    assert_response :success
        assert_select "title", "application | #{@base_title}"

  end
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
        assert_select "title", "contact | #{@base_title}"

  end
end
require "application_system_test_case"

class NewarticlesTest < ApplicationSystemTestCase
  setup do
    @newarticle = newarticles(:one)
  end

  test "visiting the index" do
    visit newarticles_url
    assert_selector "h1", text: "Newarticles"
  end

  test "creating a Newarticle" do
    visit newarticles_url
    click_on "New Newarticle"

    fill_in "Description", with: @newarticle.description
    fill_in "Name", with: @newarticle.name
    click_on "Create Newarticle"

    assert_text "Newarticle was successfully created"
    click_on "Back"
  end

  test "updating a Newarticle" do
    visit newarticles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @newarticle.description
    fill_in "Name", with: @newarticle.name
    click_on "Update Newarticle"

    assert_text "Newarticle was successfully updated"
    click_on "Back"
  end

  test "destroying a Newarticle" do
    visit newarticles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newarticle was successfully destroyed"
  end
end

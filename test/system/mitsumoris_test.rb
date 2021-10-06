require "application_system_test_case"

class MitsumorisTest < ApplicationSystemTestCase
  setup do
    @mitsumori = mitsumoris(:one)
  end

  test "visiting the index" do
    visit mitsumoris_url
    assert_selector "h1", text: "Mitsumoris"
  end

  test "creating a Mitsumori" do
    visit mitsumoris_url
    click_on "New Mitsumori"

    fill_in "Airfilter", with: @mitsumori.airfilter
    fill_in "Car maker", with: @mitsumori.car_maker
    fill_in "Oil", with: @mitsumori.oil
    fill_in "Price", with: @mitsumori.price
    fill_in "User", with: @mitsumori.user_id
    fill_in "V type", with: @mitsumori.v_type
    fill_in "Wiper", with: @mitsumori.wiper
    click_on "Create Mitsumori"

    assert_text "Mitsumori was successfully created"
    click_on "Back"
  end

  test "updating a Mitsumori" do
    visit mitsumoris_url
    click_on "Edit", match: :first

    fill_in "Airfilter", with: @mitsumori.airfilter
    fill_in "Car maker", with: @mitsumori.car_maker
    fill_in "Oil", with: @mitsumori.oil
    fill_in "Price", with: @mitsumori.price
    fill_in "User", with: @mitsumori.user_id
    fill_in "V type", with: @mitsumori.v_type
    fill_in "Wiper", with: @mitsumori.wiper
    click_on "Update Mitsumori"

    assert_text "Mitsumori was successfully updated"
    click_on "Back"
  end

  test "destroying a Mitsumori" do
    visit mitsumoris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mitsumori was successfully destroyed"
  end
end

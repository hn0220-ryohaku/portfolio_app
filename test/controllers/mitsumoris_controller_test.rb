require 'test_helper'

class MitsumorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mitsumori = mitsumoris(:one)
  end

  test "should get index" do
    get mitsumoris_url
    assert_response :success
  end

  test "should get new" do
    get new_mitsumori_url
    assert_response :success
  end

  test "should create mitsumori" do
    assert_difference('Mitsumori.count') do
      post mitsumoris_url, params: { mitsumori: { airfilter: @mitsumori.airfilter, car_maker: @mitsumori.car_maker, oil: @mitsumori.oil, price: @mitsumori.price, user_id: @mitsumori.user_id, v_type: @mitsumori.v_type, wiper: @mitsumori.wiper } }
    end

    assert_redirected_to mitsumori_url(Mitsumori.last)
  end

  test "should show mitsumori" do
    get mitsumori_url(@mitsumori)
    assert_response :success
  end

  test "should get edit" do
    get edit_mitsumori_url(@mitsumori)
    assert_response :success
  end

  test "should update mitsumori" do
    patch mitsumori_url(@mitsumori), params: { mitsumori: { airfilter: @mitsumori.airfilter, car_maker: @mitsumori.car_maker, oil: @mitsumori.oil, price: @mitsumori.price, user_id: @mitsumori.user_id, v_type: @mitsumori.v_type, wiper: @mitsumori.wiper } }
    assert_redirected_to mitsumori_url(@mitsumori)
  end

  test "should destroy mitsumori" do
    assert_difference('Mitsumori.count', -1) do
      delete mitsumori_url(@mitsumori)
    end

    assert_redirected_to mitsumoris_url
  end
end

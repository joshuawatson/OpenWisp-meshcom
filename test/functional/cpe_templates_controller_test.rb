require 'test_helper'

class CpeTemplatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpe_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpe_template" do
    assert_difference('CpeTemplate.count') do
      post :create, :cpe_template => { }
    end

    assert_redirected_to cpe_template_path(assigns(:cpe_template))
  end

  test "should show cpe_template" do
    get :show, :id => cpe_templates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cpe_templates(:one).to_param
    assert_response :success
  end

  test "should update cpe_template" do
    put :update, :id => cpe_templates(:one).to_param, :cpe_template => { }
    assert_redirected_to cpe_template_path(assigns(:cpe_template))
  end

  test "should destroy cpe_template" do
    assert_difference('CpeTemplate.count', -1) do
      delete :destroy, :id => cpe_templates(:one).to_param
    end

    assert_redirected_to cpe_templates_path
  end
end

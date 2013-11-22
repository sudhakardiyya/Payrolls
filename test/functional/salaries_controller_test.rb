require 'test_helper'

class SalariesControllerTest < ActionController::TestCase
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary" do
    assert_difference('Salary.count') do
      post :create, salary: { basic: @salary.basic, daily: @salary.daily, employe: @salary.employe, esi: @salary.esi, gross: @salary.gross, hra: @salary.hra, medical: @salary.medical, net_salary: @salary.net_salary, other: @salary.other, pf: @salary.pf, professional_tax: @salary.professional_tax, total_deductions: @salary.total_deductions, travel: @salary.travel, variable: @salary.variable }
    end

    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should show salary" do
    get :show, id: @salary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary
    assert_response :success
  end

  test "should update salary" do
    put :update, id: @salary, salary: { basic: @salary.basic, daily: @salary.daily, employe: @salary.employe, esi: @salary.esi, gross: @salary.gross, hra: @salary.hra, medical: @salary.medical, net_salary: @salary.net_salary, other: @salary.other, pf: @salary.pf, professional_tax: @salary.professional_tax, total_deductions: @salary.total_deductions, travel: @salary.travel, variable: @salary.variable }
    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should destroy salary" do
    assert_difference('Salary.count', -1) do
      delete :destroy, id: @salary
    end

    assert_redirected_to salaries_path
  end
end

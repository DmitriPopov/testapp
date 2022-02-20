require 'test_helper'

class MedicalProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_procedure = medical_procedures(:one)
  end

  test "should get index" do
    get medical_procedures_url, as: :json
    assert_response :success
  end

  test "should create medical_procedure" do
    assert_difference('MedicalProcedure.count') do
      post medical_procedures_url, params: { medical_procedure: { title: @medical_procedure.title } }, as: :json
    end

    assert_response 201
  end

  test "should show medical_procedure" do
    get medical_procedure_url(@medical_procedure), as: :json
    assert_response :success
  end

  test "should update medical_procedure" do
    patch medical_procedure_url(@medical_procedure), params: { medical_procedure: { title: @medical_procedure.title } }, as: :json
    assert_response 200
  end

  test "should destroy medical_procedure" do
    assert_difference('MedicalProcedure.count', -1) do
      delete medical_procedure_url(@medical_procedure), as: :json
    end

    assert_response 204
  end
end

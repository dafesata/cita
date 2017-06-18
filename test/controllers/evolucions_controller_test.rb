require 'test_helper'

class EvolucionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evolucion = evolucions(:one)
  end

  test "should get index" do
    get evolucions_url
    assert_response :success
  end

  test "should get new" do
    get new_evolucion_url
    assert_response :success
  end

  test "should create evolucion" do
    assert_difference('Evolucion.count') do
      post evolucions_url, params: { evolucion: { adiagnosticas1: @evolucion.adiagnosticas1, adiagnosticas2: @evolucion.adiagnosticas2, adiagnosticas3: @evolucion.adiagnosticas3, adiagnosticas4: @evolucion.adiagnosticas4, adiagnosticas5: @evolucion.adiagnosticas5, adiagnosticas6: @evolucion.adiagnosticas6, descripcion: @evolucion.descripcion, dosis1: @evolucion.dosis1, dosis2: @evolucion.dosis2, dosis3: @evolucion.dosis3, dosis4: @evolucion.dosis4, dosis5: @evolucion.dosis5, dosis6: @evolucion.dosis6, especialidad_id: @evolucion.especialidad_id, fecha: @evolucion.fecha, idiagnostica1: @evolucion.idiagnostica1, idiagnostica2: @evolucion.idiagnostica2, idiagnostica3: @evolucion.idiagnostica3, idiagnostica4: @evolucion.idiagnostica4, idiagnostica5: @evolucion.idiagnostica5, idiagnostica6: @evolucion.idiagnostica6, interconsulta1: @evolucion.interconsulta1, interconsulta2: @evolucion.interconsulta2, interconsulta3: @evolucion.interconsulta3, paciente_id: @evolucion.paciente_id, peso: @evolucion.peso, profesional_id: @evolucion.profesional_id, talla: @evolucion.talla, tensionarterial: @evolucion.tensionarterial, tratamiento1: @evolucion.tratamiento1, tratamiento2: @evolucion.tratamiento2, tratamiento3: @evolucion.tratamiento3, tratamiento4: @evolucion.tratamiento4, tratamiento5: @evolucion.tratamiento5, tratamiento6: @evolucion.tratamiento6 } }
    end

    assert_redirected_to evolucion_url(Evolucion.last)
  end

  test "should show evolucion" do
    get evolucion_url(@evolucion)
    assert_response :success
  end

  test "should get edit" do
    get edit_evolucion_url(@evolucion)
    assert_response :success
  end

  test "should update evolucion" do
    patch evolucion_url(@evolucion), params: { evolucion: { adiagnosticas1: @evolucion.adiagnosticas1, adiagnosticas2: @evolucion.adiagnosticas2, adiagnosticas3: @evolucion.adiagnosticas3, adiagnosticas4: @evolucion.adiagnosticas4, adiagnosticas5: @evolucion.adiagnosticas5, adiagnosticas6: @evolucion.adiagnosticas6, descripcion: @evolucion.descripcion, dosis1: @evolucion.dosis1, dosis2: @evolucion.dosis2, dosis3: @evolucion.dosis3, dosis4: @evolucion.dosis4, dosis5: @evolucion.dosis5, dosis6: @evolucion.dosis6, especialidad_id: @evolucion.especialidad_id, fecha: @evolucion.fecha, idiagnostica1: @evolucion.idiagnostica1, idiagnostica2: @evolucion.idiagnostica2, idiagnostica3: @evolucion.idiagnostica3, idiagnostica4: @evolucion.idiagnostica4, idiagnostica5: @evolucion.idiagnostica5, idiagnostica6: @evolucion.idiagnostica6, interconsulta1: @evolucion.interconsulta1, interconsulta2: @evolucion.interconsulta2, interconsulta3: @evolucion.interconsulta3, paciente_id: @evolucion.paciente_id, peso: @evolucion.peso, profesional_id: @evolucion.profesional_id, talla: @evolucion.talla, tensionarterial: @evolucion.tensionarterial, tratamiento1: @evolucion.tratamiento1, tratamiento2: @evolucion.tratamiento2, tratamiento3: @evolucion.tratamiento3, tratamiento4: @evolucion.tratamiento4, tratamiento5: @evolucion.tratamiento5, tratamiento6: @evolucion.tratamiento6 } }
    assert_redirected_to evolucion_url(@evolucion)
  end

  test "should destroy evolucion" do
    assert_difference('Evolucion.count', -1) do
      delete evolucion_url(@evolucion)
    end

    assert_redirected_to evolucions_url
  end
end

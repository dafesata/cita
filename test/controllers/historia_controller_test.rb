require 'test_helper'

class HistoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historium = historia(:one)
  end

  test "should get index" do
    get historia_url
    assert_response :success
  end

  test "should get new" do
    get new_historium_url
    assert_response :success
  end

  test "should create historium" do
    assert_difference('Historium.count') do
      post historia_url, params: { historium: { abdomen: @historium.abdomen, abdomen: @historium.abdomen, acompañante: @historium.acompañante, acompañante: @historium.acompañante, adiagnosticas1: @historium.adiagnosticas1, adiagnosticas1: @historium.adiagnosticas1, adiagnosticas2: @historium.adiagnosticas2, adiagnosticas2: @historium.adiagnosticas2, adiagnosticas3: @historium.adiagnosticas3, adiagnosticas3: @historium.adiagnosticas3, adiagnosticas4: @historium.adiagnosticas4, adiagnosticas4: @historium.adiagnosticas4, adiagnosticas5: @historium.adiagnosticas5, adiagnosticas5: @historium.adiagnosticas5, adiagnosticas6: @historium.adiagnosticas6, adiagnosticas6: @historium.adiagnosticas6, afamiliar: @historium.afamiliar, afamiliar: @historium.afamiliar, ageneral: @historium.ageneral, ageneral: @historium.ageneral, aginecologicos: @historium.aginecologicos, aginecologicos: @historium.aginecologicos, aobstetricos: @historium.aobstetricos, aobstetricos: @historium.aobstetricos, apatologicos: @historium.apatologicos, apatologicos: @historium.apatologicos, apsicosociales: @historium.apsicosociales, apsicosociales: @historium.apsicosociales, aquirurgicos: @historium.aquirurgicos, aquirurgicos: @historium.aquirurgicos, cardiaco: @historium.cardiaco, cardiaco: @historium.cardiaco, craneocabeza: @historium.craneocabeza, craneocabeza: @historium.craneocabeza, cuello: @historium.cuello, cuello: @historium.cuello, dosis1: @historium.dosis1, dosis1: @historium.dosis1, dosis2: @historium.dosis2, dosis2: @historium.dosis2, dosis3: @historium.dosis3, dosis3: @historium.dosis3, dosis4: @historium.dosis4, dosis4: @historium.dosis4, dosis5: @historium.dosis5, dosis5: @historium.dosis5, dosis6: @historium.dosis6, dosis6: @historium.dosis6, eactual: @historium.eactual, eactual: @historium.eactual, especialidad_id: @historium.especialidad_id, especialidad_id: @historium.especialidad_id, g: @historium.g, ginecologico: @historium.ginecologico, ginecologico: @historium.ginecologico, historia: @historium.historia, idiagnostica1: @historium.idiagnostica1, idiagnostica1: @historium.idiagnostica1, idiagnostica2: @historium.idiagnostica2, idiagnostica2: @historium.idiagnostica2, idiagnostica3: @historium.idiagnostica3, idiagnostica3: @historium.idiagnostica3, idiagnostica4: @historium.idiagnostica4, idiagnostica4: @historium.idiagnostica4, idiagnostica5: @historium.idiagnostica5, idiagnostica5: @historium.idiagnostica5, idiagnostica6: @historium.idiagnostica6, idiagnostica6: @historium.idiagnostica6, interconsulta1: @historium.interconsulta1, interconsulta1: @historium.interconsulta1, interconsulta2: @historium.interconsulta2, interconsulta2: @historium.interconsulta2, interconsulta3: @historium.interconsulta3, interconsulta3rails: @historium.interconsulta3rails, motivo: @historium.motivo, motivo: @historium.motivo, neurologico: @historium.neurologico, neurologico: @historium.neurologico, osentidos: @historium.osentidos, osentidos: @historium.osentidos, osteoauricular: @historium.osteoauricular, osteoauricular: @historium.osteoauricular, paciente_id: @historium.paciente_id, paciente_id: @historium.paciente_id, parentesco: @historium.parentesco, parentesco: @historium.parentesco, peso: @historium.peso, peso: @historium.peso, profesional_id: @historium.profesional_id, profesional_id: @historium.profesional_id, respiratorio: @historium.respiratorio, respiratorio: @historium.respiratorio, scaffold: @historium.scaffold, seno: @historium.seno, seno: @historium.seno, talla: @historium.talla, talla: @historium.talla, temp: @historium.temp, temp: @historium.temp, tensionarterial: @historium.tensionarterial, tensionarterial: @historium.tensionarterial, torax: @historium.torax, torax: @historium.torax, tratamiento1: @historium.tratamiento1, tratamiento1: @historium.tratamiento1, tratamiento2: @historium.tratamiento2, tratamiento2: @historium.tratamiento2, tratamiento3: @historium.tratamiento3, tratamiento3: @historium.tratamiento3, tratamiento4: @historium.tratamiento4, tratamiento4: @historium.tratamiento4, tratamiento5: @historium.tratamiento5, tratamiento5: @historium.tratamiento5, tratamiento6: @historium.tratamiento6, tratamiento6: @historium.tratamiento6, urinario: @historium.urinario, urinario: @historium.urinario } }
    end

    assert_redirected_to historium_url(Historium.last)
  end

  test "should show historium" do
    get historium_url(@historium)
    assert_response :success
  end

  test "should get edit" do
    get edit_historium_url(@historium)
    assert_response :success
  end

  test "should update historium" do
    patch historium_url(@historium), params: { historium: { abdomen: @historium.abdomen, abdomen: @historium.abdomen, acompañante: @historium.acompañante, acompañante: @historium.acompañante, adiagnosticas1: @historium.adiagnosticas1, adiagnosticas1: @historium.adiagnosticas1, adiagnosticas2: @historium.adiagnosticas2, adiagnosticas2: @historium.adiagnosticas2, adiagnosticas3: @historium.adiagnosticas3, adiagnosticas3: @historium.adiagnosticas3, adiagnosticas4: @historium.adiagnosticas4, adiagnosticas4: @historium.adiagnosticas4, adiagnosticas5: @historium.adiagnosticas5, adiagnosticas5: @historium.adiagnosticas5, adiagnosticas6: @historium.adiagnosticas6, adiagnosticas6: @historium.adiagnosticas6, afamiliar: @historium.afamiliar, afamiliar: @historium.afamiliar, ageneral: @historium.ageneral, ageneral: @historium.ageneral, aginecologicos: @historium.aginecologicos, aginecologicos: @historium.aginecologicos, aobstetricos: @historium.aobstetricos, aobstetricos: @historium.aobstetricos, apatologicos: @historium.apatologicos, apatologicos: @historium.apatologicos, apsicosociales: @historium.apsicosociales, apsicosociales: @historium.apsicosociales, aquirurgicos: @historium.aquirurgicos, aquirurgicos: @historium.aquirurgicos, cardiaco: @historium.cardiaco, cardiaco: @historium.cardiaco, craneocabeza: @historium.craneocabeza, craneocabeza: @historium.craneocabeza, cuello: @historium.cuello, cuello: @historium.cuello, dosis1: @historium.dosis1, dosis1: @historium.dosis1, dosis2: @historium.dosis2, dosis2: @historium.dosis2, dosis3: @historium.dosis3, dosis3: @historium.dosis3, dosis4: @historium.dosis4, dosis4: @historium.dosis4, dosis5: @historium.dosis5, dosis5: @historium.dosis5, dosis6: @historium.dosis6, dosis6: @historium.dosis6, eactual: @historium.eactual, eactual: @historium.eactual, especialidad_id: @historium.especialidad_id, especialidad_id: @historium.especialidad_id, g: @historium.g, ginecologico: @historium.ginecologico, ginecologico: @historium.ginecologico, historia: @historium.historia, idiagnostica1: @historium.idiagnostica1, idiagnostica1: @historium.idiagnostica1, idiagnostica2: @historium.idiagnostica2, idiagnostica2: @historium.idiagnostica2, idiagnostica3: @historium.idiagnostica3, idiagnostica3: @historium.idiagnostica3, idiagnostica4: @historium.idiagnostica4, idiagnostica4: @historium.idiagnostica4, idiagnostica5: @historium.idiagnostica5, idiagnostica5: @historium.idiagnostica5, idiagnostica6: @historium.idiagnostica6, idiagnostica6: @historium.idiagnostica6, interconsulta1: @historium.interconsulta1, interconsulta1: @historium.interconsulta1, interconsulta2: @historium.interconsulta2, interconsulta2: @historium.interconsulta2, interconsulta3: @historium.interconsulta3, interconsulta3rails: @historium.interconsulta3rails, motivo: @historium.motivo, motivo: @historium.motivo, neurologico: @historium.neurologico, neurologico: @historium.neurologico, osentidos: @historium.osentidos, osentidos: @historium.osentidos, osteoauricular: @historium.osteoauricular, osteoauricular: @historium.osteoauricular, paciente_id: @historium.paciente_id, paciente_id: @historium.paciente_id, parentesco: @historium.parentesco, parentesco: @historium.parentesco, peso: @historium.peso, peso: @historium.peso, profesional_id: @historium.profesional_id, profesional_id: @historium.profesional_id, respiratorio: @historium.respiratorio, respiratorio: @historium.respiratorio, scaffold: @historium.scaffold, seno: @historium.seno, seno: @historium.seno, talla: @historium.talla, talla: @historium.talla, temp: @historium.temp, temp: @historium.temp, tensionarterial: @historium.tensionarterial, tensionarterial: @historium.tensionarterial, torax: @historium.torax, torax: @historium.torax, tratamiento1: @historium.tratamiento1, tratamiento1: @historium.tratamiento1, tratamiento2: @historium.tratamiento2, tratamiento2: @historium.tratamiento2, tratamiento3: @historium.tratamiento3, tratamiento3: @historium.tratamiento3, tratamiento4: @historium.tratamiento4, tratamiento4: @historium.tratamiento4, tratamiento5: @historium.tratamiento5, tratamiento5: @historium.tratamiento5, tratamiento6: @historium.tratamiento6, tratamiento6: @historium.tratamiento6, urinario: @historium.urinario, urinario: @historium.urinario } }
    assert_redirected_to historium_url(@historium)
  end

  test "should destroy historium" do
    assert_difference('Historium.count', -1) do
      delete historium_url(@historium)
    end

    assert_redirected_to historia_url
  end
end

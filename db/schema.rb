# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170108225452) do

  create_table "cie10s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "codigo"
    t.string   "simbolo"
    t.string   "descripcion"
    t.string   "sexo"
    t.integer  "limiteinferior"
    t.integer  "limitesuperior"
    t.string   "noafeccionppal"
    t.string   "observaciones"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "cita", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "paciente_id"
    t.date     "fecha"
    t.time     "hora"
    t.integer  "consultorio_id"
    t.integer  "servicio_id"
    t.integer  "especialidad_id"
    t.integer  "profesional_id"
    t.boolean  "llegada"
    t.boolean  "atendido"
    t.boolean  "riesgo"
    t.boolean  "psicosocial"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "nro_autorizacion"
    t.boolean  "primera_vez"
    t.index ["fecha", "hora", "consultorio_id"], name: "index_cita_on_fecha_and_hora_and_consultorio_id", unique: true, using: :btree
    t.index ["nro_autorizacion"], name: "index_cita_on_nro_autorizacion", unique: true, using: :btree
  end

  create_table "consultorios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "direccions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "barrio"
    t.string   "direccion"
    t.bigint   "tel"
    t.string   "numero_type"
    t.integer  "numero_id"
    t.integer  "municipio_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["numero_type", "numero_id"], name: "index_direccions_on_numero_type_and_numero_id", using: :btree
  end

  create_table "divpas", primary_key: "cod_cp", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cod_dpto"
    t.integer  "cod_muni"
    t.string   "nombre_dpto"
    t.string   "nombre_muni"
    t.string   "nombre_cp"
    t.string   "tipo"
    t.boolean  "enable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "encuestasenos", primary_key: "paciente_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "ant_fam"
    t.integer  "menarquia"
    t.boolean  "hijos"
    t.integer  "edadphijo"
    t.boolean  "lactancia"
    t.boolean  "ant_orales"
    t.boolean  "menopausia"
    t.integer  "edad_menopausia"
    t.boolean  "trh"
    t.boolean  "alcohol"
    t.boolean  "fumador"
    t.decimal  "peso",            precision: 10
    t.decimal  "talla",           precision: 10
    t.decimal  "imc",             precision: 10
    t.string   "equivalente"
    t.integer  "nro_mamografias"
    t.boolean  "autoexamen"
    t.boolean  "exam_anual"
    t.date     "fecha_mamo"
    t.integer  "resul_mamo"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "consumo_grasa"
    t.string   "desc_resul"
  end

  create_table "eps", primary_key: "codigo_eps", id: :string, default: "", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.boolean  "enable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo_eps"], name: "index_eps_on_codigo_eps", unique: true, using: :btree
  end

  create_table "especialidads", primary_key: "especialidad_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.integer  "servicio_id"
    t.boolean  "enable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "evolucions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "paciente_id"
    t.integer  "especialidad_id"
    t.integer  "profesional_id"
    t.decimal  "peso",                          precision: 10
    t.decimal  "talla",                         precision: 10
    t.string   "tensionarterial"
    t.date     "fecha"
    t.text     "descripcion",     limit: 65535
    t.string   "idiagnostica1"
    t.string   "idiagnostica2"
    t.string   "idiagnostica3"
    t.string   "idiagnostica4"
    t.string   "idiagnostica5"
    t.string   "idiagnostica6"
    t.string   "adiagnosticas1"
    t.string   "adiagnosticas2"
    t.string   "adiagnosticas3"
    t.string   "adiagnosticas4"
    t.string   "adiagnosticas5"
    t.string   "adiagnosticas6"
    t.string   "tratamiento1"
    t.string   "dosis1"
    t.string   "tratamiento2"
    t.string   "dosis2"
    t.string   "tratamiento3"
    t.string   "dosis3"
    t.string   "tratamiento4"
    t.string   "dosis4"
    t.string   "tratamiento5"
    t.string   "dosis5"
    t.string   "tratamiento6"
    t.string   "dosis6"
    t.text     "interconsulta1",  limit: 65535
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "historia_id"
  end

  create_table "historia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "paciente_id"
    t.integer  "profesional_id"
    t.integer  "especialidad_id"
    t.string   "acompañante"
    t.string   "parentesco"
    t.text     "motivo",          limit: 65535
    t.text     "eactual",         limit: 65535
    t.text     "afamiliar",       limit: 65535
    t.text     "aginecologicos",  limit: 65535
    t.text     "aobstetricos",    limit: 65535
    t.text     "apatologicos",    limit: 65535
    t.text     "aquirurgicos",    limit: 65535
    t.text     "apsicosociales",  limit: 65535
    t.decimal  "peso",                          precision: 10
    t.decimal  "talla",                         precision: 10
    t.string   "tensionarterial"
    t.decimal  "temp",                          precision: 10
    t.string   "ageneral"
    t.string   "craneocabeza"
    t.string   "cuello"
    t.string   "osentidos"
    t.string   "torax"
    t.string   "seno"
    t.string   "cardiaco"
    t.string   "respiratorio"
    t.text     "abdomen",         limit: 65535
    t.text     "ginecologico",    limit: 65535
    t.string   "urinario"
    t.text     "osteoauricular",  limit: 65535
    t.text     "neurologico",     limit: 65535
    t.string   "idiagnostica1"
    t.string   "idiagnostica2"
    t.string   "idiagnostica3"
    t.string   "idiagnostica4"
    t.string   "idiagnostica5"
    t.string   "idiagnostica6"
    t.string   "adiagnosticas1"
    t.string   "adiagnosticas2"
    t.string   "adiagnosticas3"
    t.string   "adiagnosticas4"
    t.string   "adiagnosticas5"
    t.string   "adiagnosticas6"
    t.string   "tratamiento1"
    t.string   "dosis1"
    t.string   "tratamiento2"
    t.string   "dosis2"
    t.string   "tratamiento3"
    t.string   "dosis3"
    t.string   "tratamiento4"
    t.string   "dosis4"
    t.string   "tratamiento5"
    t.string   "dosis5"
    t.string   "tratamiento6"
    t.string   "dosis6"
    t.text     "interconsulta1",  limit: 65535
    t.string   "historia"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.index ["paciente_id"], name: "index_historia_on_paciente_id", using: :btree
  end

  create_table "medpos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "codigo"
    t.string   "nombregenerico"
    t.string   "formafarmaceutica"
    t.string   "concentracion"
    t.integer  "res008"
    t.integer  "res029"
    t.integer  "res5521"
    t.integer  "res5926"
    t.integer  "res5592"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "unidadmedida"
  end

  create_table "pacientes", primary_key: "numero_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "eps_id"
    t.string   "tipo_usuario"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "lugar_nac"
    t.string   "nacionalidad"
    t.string   "escolaridad"
    t.string   "ocupacion"
    t.integer  "estrato"
    t.string   "email"
    t.integer  "nro_hijos"
  end

  create_table "personas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tipoid"
    t.string   "numero_type"
    t.integer  "numero_id"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "estado_civil"
    t.date     "fecha_nac"
    t.string   "sexo"
    t.bigint   "celular"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["numero_type", "numero_id"], name: "index_personas_on_numero_type_and_numero_id", using: :btree
  end

  create_table "procpos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "nivel"
    t.text     "comentario", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "profesionals", primary_key: "numero_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "reg_med"
    t.integer  "especialidad_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "servicios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.boolean  "enable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "numero_id"
    t.string   "username"
    t.string   "tipo"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "encuestasenos", "pacientes", primary_key: "numero_id", name: "encuestasenos_ibfk_1"
end

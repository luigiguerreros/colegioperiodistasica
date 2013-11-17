# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131117071901) do

  create_table "corresponsales", force: true do |t|
    t.string   "usuario"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "correo"
    t.integer  "telefono_fijo"
    t.integer  "telefono_movil"
    t.string   "ciudad"
    t.string   "provincia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "noticias", force: true do |t|
    t.integer  "corresponsal_id"
    t.string   "titulo"
    t.text     "contenido"
    t.string   "ciudad"
    t.string   "provincia"
    t.string   "url_imagen_noticia"
    t.string   "seccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

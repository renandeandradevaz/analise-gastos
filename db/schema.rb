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

ActiveRecord::Schema.define(version: 20140119151259) do

  create_table "configuracoes", force: true do |t|
    t.string   "chave"
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contribuintes", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gastos", force: true do |t|
    t.string   "descricao"
    t.decimal  "valor",           precision: 6, scale: 2
    t.integer  "contribuinte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gastos", ["contribuinte_id"], name: "index_gastos_on_contribuinte_id", using: :btree

end

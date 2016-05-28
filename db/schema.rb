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

ActiveRecord::Schema.define(version: 20160528160541) do

  create_table "bedrijfstakken", force: :cascade do |t|
    t.string   "naam",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "letter"
  end

  create_table "boekingen", force: :cascade do |t|
    t.integer  "grootboekrekening_id", limit: 4
    t.integer  "journaal_id",          limit: 4
    t.integer  "product_id",           limit: 4
    t.date     "datum"
    t.string   "icoon",                limit: 255
    t.string   "bij_af",               limit: 255
    t.integer  "waarde",               limit: 4
    t.integer  "p_inkoop",             limit: 4
    t.integer  "hoeveelheid",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "organisatie_id",       limit: 4
    t.string   "boekingtype",          limit: 255
    t.integer  "boekproces_id",        limit: 4
  end

  create_table "boekprocessen", force: :cascade do |t|
    t.string   "naam",               limit: 255
    t.string   "icoon",              limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "kostenspecificatie"
  end

  create_table "grootboekrekeningen", force: :cascade do |t|
    t.string   "naam",             limit: 255
    t.integer  "grootboektype_id", limit: 4
    t.string   "organisatie_id",   limit: 255
    t.string   "icoon",            limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "grootboektypes", force: :cascade do |t|
    t.string   "naam",       limit: 255
    t.string   "icoon",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "categorie",  limit: 65535
  end

  create_table "journaals", force: :cascade do |t|
    t.integer  "journaaltype_id", limit: 4
    t.string   "boeknummer",      limit: 255
    t.date     "datum"
    t.string   "leverancier",     limit: 255
    t.string   "klant",           limit: 255
    t.integer  "hoeveelheid",     limit: 4
    t.string   "eenheid",         limit: 255
    t.string   "productnaam",     limit: 255
    t.decimal  "stukprijs",                     precision: 10
    t.string   "betalingswijze",  limit: 255
    t.string   "valuta",          limit: 255
    t.integer  "btw_percentage",  limit: 4
    t.decimal  "bedrag_ex_btw",                 precision: 10
    t.decimal  "bedrag_inc_btw",                precision: 10
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "organisatie_id",  limit: 4
    t.text     "voorwaarden",     limit: 65535
  end

  create_table "journaaltypes", force: :cascade do |t|
    t.string   "naam",       limit: 255
    t.string   "icoon",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "organisaties", force: :cascade do |t|
    t.string   "naam",           limit: 255
    t.integer  "bedrijfstak_id", limit: 4
    t.integer  "rechtsvorm_id",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "voorkant_image", limit: 255
  end

  create_table "producten", force: :cascade do |t|
    t.string   "naam",       limit: 255
    t.string   "icoon",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rechtsvormen", force: :cascade do |t|
    t.string   "naam",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "afkorting",  limit: 255
    t.string   "sector"
  end

end

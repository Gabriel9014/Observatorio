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

ActiveRecord::Schema.define(version: 20141214172035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consolas", primary_key: "id_consola", force: true do |t|
    t.string "marca_consola"
    t.string "nombre_consola"
  end

  create_table "consolas_cuentas", id: false, force: true do |t|
    t.integer "consola_id", null: false
    t.integer "cuenta_id",  null: false
  end

  create_table "consolas_hashtags", id: false, force: true do |t|
    t.integer "consola_id", null: false
    t.integer "hashtag_id", null: false
  end

  create_table "consolas_juegos", id: false, force: true do |t|
    t.integer "juego_id",   null: false
    t.integer "consola_id", null: false
  end

  create_table "consolas_tweets", id: false, force: true do |t|
    t.integer "tweet_id",   null: false
    t.integer "consola_id", null: false
  end

  create_table "cuentas", primary_key: "id_cuenta", force: true do |t|
    t.string  "nombre_cuenta"
    t.string  "geneto_cuenta"
    t.integer "edad_cuenta"
    t.string  "nacionalidad_cuenta"
  end

  create_table "cuentas_tweets", id: false, force: true do |t|
    t.integer "tweet_id",  null: false
    t.integer "cuenta_id", null: false
  end

  create_table "hashtags", primary_key: "id_hashtag", force: true do |t|
    t.string "nombre_juego"
  end

  create_table "hashtags_juegos", id: false, force: true do |t|
    t.integer "juego_id",   null: false
    t.integer "hashtag_id", null: false
  end

  create_table "hashtags_tweets", id: false, force: true do |t|
    t.integer "tweet_id",   null: false
    t.integer "hashtag_id", null: false
  end

  create_table "juegos", primary_key: "id_juego", force: true do |t|
    t.string "nombre_juego"
  end

  create_table "tweets", primary_key: "id_tweet", force: true do |t|
    t.date "fecha_publicacion_tweet"
    t.text "contenido_tweet"
  end

end

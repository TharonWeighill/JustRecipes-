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

ActiveRecord::Schema.define(version: 2021_02_09_191348) do

  create_table "comments", force: :cascade do |t|
    t.text "textbody"
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "index_comments_on_recipe_id"
  end

  create_table "ingredient_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.string "value"
    t.index ["ingredient_id"], name: "index_ingredient_recipes_on_ingredient_id"
    t.index ["recipe_id"], name: "index_ingredient_recipes_on_recipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.text "ingredient"
    t.text "value"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "recipe_name"
    t.text "directions"
    t.integer "difficulty"
    t.string "cuisine"
    t.string "avatar"
    t.integer "user_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.text "about"
    t.string "avatar"
  end

end

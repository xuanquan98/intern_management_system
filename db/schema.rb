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

ActiveRecord::Schema.define(version: 20180430052005) do

  create_table "admin_thongbaos", force: :cascade do |t|
    t.string "content"
    t.integer "doituong"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_thongbaos_on_admin_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "vnuemail"
    t.string "gmail"
    t.string "hoten"
    t.string "donvi"
    t.string "phone"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer "partner_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_follows_on_partner_id"
    t.index ["student_id"], name: "index_follows_on_student_id"
  end

  create_table "lecturers", force: :cascade do |t|
    t.string "vnuemail"
    t.string "gmail"
    t.string "password_digest"
    t.string "phone"
    t.text "ghichu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partner_thongbaos", force: :cascade do |t|
    t.string "content"
    t.integer "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_partner_thongbaos_on_partner_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_baocaos", force: :cascade do |t|
    t.string "content"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_baocaos_on_student_id"
  end

  create_table "student_lecturer_appreciates", force: :cascade do |t|
    t.string "content"
    t.integer "student_id"
    t.integer "lecturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecturer_id"], name: "index_student_lecturer_appreciates_on_lecturer_id"
    t.index ["student_id"], name: "index_student_lecturer_appreciates_on_student_id"
  end

  create_table "student_partner_appreciates", force: :cascade do |t|
    t.string "content"
    t.integer "student_id"
    t.integer "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_student_partner_appreciates_on_partner_id"
    t.index ["student_id"], name: "index_student_partner_appreciates_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "mssv"
    t.string "lop"
    t.string "khoa"
    t.string "nganh"
    t.string "diachi"
    t.string "hoten"
    t.datetime "ngaysinh"
    t.string "vnuemail"
    t.float "diemtb"
    t.integer "namtotnghiep"
    t.string "avatar"
    t.string "emailcanhan"
    t.string "skypeid"
    t.string "facebook_url"
    t.string "vitricanbodoan"
    t.string "tienganh"
    t.string "kinhnghiem"
    t.string "sothich"
    t.string "mongmuon"
    t.string "ghichu"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tuyen_dungs", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_tuyen_dungs_on_partner_id"
  end

end

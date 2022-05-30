# Customer
# has_many :orders

# Invoice
# has_many :orders

# Order
# has_many :products, through: :ordered_products
# has_many :ordered_products
# belongs_to :invoice
# belongs_to :customer

# Product
# has_many :orders, through: :ordered_products
# has_many :ordered_products

# JOIN
# OrderedProduct
# belongs_to :product
# belongs_to :order

ActiveRecord::Schema.define(version: 20160125172450) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordered_products", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "invoice_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

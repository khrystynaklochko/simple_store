User.destroy_all
Product.destroy_all

# Create default admin user
User.create(
  email: "admin@mail.com", 
  password: "12345678", 
  password_confirmation: "12345678",
  is_admin: true
)
#Create category 
category = Category.create!(name:"Meat")
# Create Products
10.times do
  Product.create(
    title: "Angus Cow",
    description: "More text is now required by the product validations",
    category_id: category.id
  )
end

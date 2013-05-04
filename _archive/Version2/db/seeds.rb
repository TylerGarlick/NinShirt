# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Order.destroy_all
OrderItem.destroy_all


User.destroy_all
tyler = User.create!(:username => 'TylerGarlick', :email => 'tjgarlick@gmail.com', :password => 'orange5', :first_name => 'Tyler', :last_name => 'Garlick', :is_admin => true)
cade = User.create!(:username => 'CadeCote', :email => 'cote.cade@gmail.com', :password => 'password1', :first_name => 'Cade', :last_name => 'Cote', :is_admin => true)


OrderStatus.destroy_all
OrderStatus.create!(:name => 'Pending', :is_active => true)
OrderStatus.create!(:name => 'Charged', :is_active => true)
OrderStatus.create!(:name => 'Processing', :is_active => true)
OrderStatus.create!(:name => 'Shipped', :is_active => true)

Shirt.destroy_all
tyler_shirt = Shirt.create!(:user_id => tyler.id, :name => 'Fawesome', :description => 'Fawesome', :price => 19.99, :whole_sale_price => 12.00, :is_active => true)
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Small', :gender => 'Mens', :is_active => true, :size_code => 'Sm')
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Medium', :gender => 'Mens', :is_active => true, :size_code => 'Md')
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Large', :gender => 'Mens', :is_active => true, :size_code => 'L')
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Extra Large', :gender => 'Mens', :is_active => true, :size_code => 'XL')
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'XXL', :gender => 'Mens', :is_active => true, :size_code => 'XXL')

tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Small', :gender => 'Womens', :is_active => true, :size_code => 'Sm')
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Medium', :gender => 'Womens', :is_active => true, :size_code => 'Md')
tyler_shirt.shirt_sizes << ShirtSize.create!(:size => 'Large', :gender => 'Womens', :is_active => true, :size_code => 'L')

cade_shirt = Shirt.create!(:user_id => cade.id, :name => 'Monkey Pig', :description => 'Monkey Pig', :price => 9.99, :whole_sale_price => 2.00, :is_active => true)
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Small', :gender => 'Mens', :is_active => true, :size_code => 'Sm')
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Medium', :gender => 'Mens', :is_active => true, :size_code => 'Md')
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Large', :gender => 'Mens', :is_active => true, :size_code => 'L')
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Extra Large', :gender => 'Mens', :is_active => true, :size_code => 'XL')
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'XXL', :gender => 'Mens', :is_active => true, :size_code => 'XXL')

cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Small', :gender => 'Womens', :is_active => true, :size_code => 'Sm')
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Medium', :gender => 'Womens', :is_active => true, :size_code => 'Md')
cade_shirt.shirt_sizes << ShirtSize.create!(:size => 'Large', :gender => 'Womens', :is_active => true, :size_code => 'L')
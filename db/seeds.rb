# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', superadmin: true) if Rails.env.development?

Supplier.create!(name: 'Adam S', country: 'Germany',
                 city: 'Berlin', address: 'Schildhornstraße 66', postal_code: '12163',
                 email: 'adams@testmail.com', phone: '3448969860',
                 company: 'Adams parts AE', company_details: 'VAT Registration Number: GE94300943',
                 bank_details: 'IBANK: 5400 8549 9485 9854')

Client.create!(name: 'George K', country:'Greece', city:'Thessaloniki', address: 'Papanastasiou 54',
               postal_code: '54 654', email: 'georgek@example.com', phone: '6987689685', details: 'Lorem ipsum text',
               vehicle_registration_plate: 'NZX 4590', vehicle_brand: 'Ford',
               vehicle_model: 'Fiesta', vehicle_model_details: 'Release date: September 3, 2014, Mileage (upto): 25.01 kmpl, Engine (upto): 1499 cc, BHP: 8975, Transmission: Manual ',
               vehicle_life_cycle: 'Previous service details: main service done June 23 2018, tires changed on January 19 2019')

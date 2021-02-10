# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 管理者作成
Admin.create!(
             username: 'admin',
             email: 'admin@example.com',
             password: '123456',
             password_confirmation: '123456',
             confirmed_at: Time.zone.now,
             confirmation_sent_at: Time.zone.now
)
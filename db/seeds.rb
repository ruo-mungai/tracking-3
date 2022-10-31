# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cohort.create(name:'class_2022')
User.first_or_create(username: 'test',
                     password: '123456',
                     password_confirmation: '123456',
                     role: 0,
                    cohort_id: 1)
Project.create(name:'tracking app', category:'Fullstack', description:'application to test projects progress', github_link:'test.github', user_id:1)
Member.create(name:'testers' , user_id:1, project_id:1)



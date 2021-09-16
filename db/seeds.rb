# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.create(title: "Puppy Image", rating: 3, legend: "This is a Puppy legend", url:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg")
Image.create(title: "Cat Image", rating: 5, legend: "This is a Cat legend", url:"https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png")
Image.create(title: "Llama Image", rating: 4, legend: "This is a Llama legend", url:"https://www.anl.gov/sites/www/files/2021-03/Llamas_shutterstock_1577366995_16x9.jpg")

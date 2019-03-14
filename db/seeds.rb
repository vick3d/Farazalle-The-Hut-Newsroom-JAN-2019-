# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
article1 = Article.create(title: "The Hub News is the site of the moment", content: "Great articles! This site's popularity is raising so quick!", image:"https://cdn.pixabay.com/photo/2016/11/29/04/19/beach-1867285__340.jpg", status: "free")
article2 = Article.create(title: "Spring hasn't arrived in Sweden yet", content: "Ice can be still spotted on the street, watch out!", image:"https://cdn.pixabay.com/photo/2016/11/29/04/19/beach-1867285__340.jpg", status: "restricted")
article3 = Article.create(title: "Eating cinnamon buns increases life expectancy", content: "Researchers are running clinical studies to see the benefits of cinnamon buns consumption. Some state that it might be correlated with an increase in life expectancy, is that really true?", image:"https://cdn.pixabay.com/photo/2016/11/29/04/19/beach-1867285__340.jpg", status: "restricted")
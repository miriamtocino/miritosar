# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Review.delete_all
Company.delete_all

review_5_stars = {
  name: "Foo",
  stars: 5,
  comment: "This is a very good review. Congratulations!"
}
review_4_stars = {
  name: "Bar",
  stars: 4,
  comment: "This is a good review. Very good!"
}
review_3_stars = {
  name: "Bee",
  stars: 3,
  comment: "This is a very regular review. Good!"
}
review_2_stars = {
  name: "Luu",
  stars: 2,
  comment: "This is quite a bad review. You could do better!"
}
review_1_stars = {
  name: "Aka",
  stars: 1,
  comment: "This is a horrible review. Time for a change?"
}

company1 = Company.create!({
  name: "AOC",
  website: "http://www.theaoc.co.uk/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "aoc_logo.gif",
  staff: 5,
  founded_in: 2010
})

company1.reviews.create!(review_5_stars)


company2 = Company.create!({
  name: "Delva Landscape Architects",
  website: "http://delva.la/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "delva_logo.png",
  staff: 10,
  founded_in: 2000
})

company2.reviews.create!(review_5_stars)
company2.reviews.create!(review_1_stars)
company2.reviews.create!(review_2_stars)

company3 = Company.create!({
  name: "Idealice Landscape Architects",
  website: "http://www.idealice.com/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "idealice_logo.jpg",
  staff: 3,
  founded_in: 1999
})

company3.reviews.create!(review_2_stars)
company3.reviews.create!(review_1_stars)

company4 = Company.create!({
  name: "Philipp Mainzer Office for Architecture and Design",
  website: "http://www.philippmainzer.com/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "pmo_logo.png",
  staff: 5,
  founded_in: 2005
})

company4.reviews.create!(review_5_stars)
company4.reviews.create!(review_4_stars)

company5 = Company.create!({
    name: "Powerhouse Company",
    website: "http://www.powerhouse-company.com/",
    description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    logo: "powerhouse_logo.jpg",
    staff: 15,
    founded_in: 2003
  })

company6 = Company.create!({
  name: "XML Architecture Research Urbanism",
  website: "http://public.x-m-l.org/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  staff: 8,
  founded_in: 1995
})

company6.reviews.create!(review_1_stars)
company6.reviews.create!(review_2_stars)

company7 = Company.create!({
  name: "Sarah Wigglesworth Architects",
  website: "http://www.swarch.co.uk/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "swarch_logo.jpg",
  staff: 25,
  founded_in: 1985
})

company7.reviews.create!(review_3_stars)
company7.reviews.create!(review_4_stars)
company7.reviews.create!(review_3_stars)

company8 = Company.create!({
  name: "Laura Alvarez Architecture",
  website: "http://www.lauraalvarez.eu/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "lauralvarez_logo.png",
  staff: 1,
  founded_in: 2006
})

company8.reviews.create!(review_2_stars)
company8.reviews.create!(review_1_stars)
company8.reviews.create!(review_1_stars)

company9 = Company.create!({
  name: "Marc Koehler Architects",
  website: "http://marckoehler.nl/",
  description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  logo: "mka_logo.png",
  staff: 15,
  founded_in: 2004
})
company9.reviews.create!(review_5_stars)
company9.reviews.create!(review_5_stars)
company9.reviews.create!(review_4_stars)
company9.reviews.create!(review_1_stars)

company10 = Company.create!({
    name: "SHIBUKAWA EDER Architects",
    website: "http://www.shibukawaeder.com/",
    description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    logo: "shibukawaeder_logo.png",
    staff: 4,
    founded_in: 2001
  })

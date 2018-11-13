# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chase = User.create!(username: 'Chase')
stroud = User.create!(username: 'Stroud')
george = User.create!(username: 'George')
nav = User.create!(username: 'Nav')
adi = User.create!(username: 'Adi')
armando = User.create!(username: 'Armando')

cat = Artwork.create!(
  title: 'Cat',
  image_url: 'http://myartmagazine.com/file/image/3-2015/1-majestic-cat-funny-paintings.jpg',
  artist_id: chase.id
)
beauty = Artwork.create!(
  title: 'Beauty',
  image_url: 'https://cdn.vox-cdn.com/thumbor/0zwbrS_brKC6cl2eqHGRRycQ4_s=/0x64:960x784/920x613/filters:focal(0x64:960x784):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/50127017/tacobelltripledoubleFB.0.0.jpg',
  artist_id: adi.id
)
brain = Artwork.create!(
  title: 'Brain',
  image_url: 'https://i.pinimg.com/originals/d6/f7/c9/d6f7c955ab6db7b8b3a60c87bdee3742.jpg',
  artist_id: stroud.id
)
headphones = Artwork.create!(
  title: 'Headphones',
  image_url: 'https://imagesyoulike.com/images/v/32x24/v1986.jpg',
  artist_id: chase.id
)

share1 = ArtworkShare.create!(artwork_id: cat.id, viewer_id: stroud.id)
share2 = ArtworkShare.create!(artwork_id: cat.id, viewer_id: armando.id)
share3 = ArtworkShare.create!(artwork_id: cat.id, viewer_id: nav.id)
share4 = ArtworkShare.create!(artwork_id: cat.id, viewer_id: george.id)
share5 = ArtworkShare.create!(artwork_id: headphones.id, viewer_id: chase.id)
share6 = ArtworkShare.create!(artwork_id: headphones.id, viewer_id: armando.id)
share7 = ArtworkShare.create!(artwork_id: beauty.id, viewer_id: adi.id)
share8 = ArtworkShare.create!(artwork_id: beauty.id, viewer_id: armando.id)
share9 = ArtworkShare.create!(artwork_id: beauty.id, viewer_id: nav.id)
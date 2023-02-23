class Product{
  final int id;
  final String title, image;
 
  Product({
    this.id,
    this.title,
    this.image,
  

  });
}

List<Product> products=[
  Product(
    id=1,
    title='التعرف على الإسعافات الأولية ',
    image='images/1.jpg',
  ),
  Product(
    id=2,
    title='الكسور',
    image='images/44.jpg',
  ),
  Product(
    id=3,
    title='الجروح',
    image='images/7.jpg',
  ),
  Product(
    id=4,
    title='الإختناق',
    image='images/5.jpg',
  ),
  Product(
    id=5,
    title='الخرز بالإبر',
    image='images/19.jpg',
  ),
  Product(
    id=6,
    title='الكورونا',
    image='images/2.jpg',
  ),
];

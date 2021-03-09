// ignore: camel_case_types
class product{

  String productName;
  String productDescription;
  int productPrice;
  String productImage;
  int productRating;

  product({
    this.productName,
    this.productDescription,
    this.productPrice,
    this.productImage,
    this.productRating
  });  
}

List <product> products = [
    product(
      productName: "Anggur Moondrop",
      productDescription: "Anggur Moondrop adalah buah anggur yang sangat enak dan lembut ketika dikunyah",
      productPrice: 290000,
      productImage: "anggur-moondrop.jpg",
      productRating: 4,
    ),
    product(
      productName: "Delima Merah",
      productDescription: "Delima Merah adalah buah anggur yang sangat enak dan lembut ketika dikunyah",
      productPrice: 300000,
      productImage: "delima-merah.jpg",
      productRating: 5,
    ),
    product(
      productName: "Jambu Madu",
      productDescription: "Jambu Madu adalah buah anggur yang sangat enak dan lembut ketika dikunyah",
      productPrice: 410000,
      productImage: "jambu-madu.jpg",
      productRating: 5,
    ),
    product(
      productName: "Klengkeng Kristal",
      productDescription: "Klengkeng Kristal adalah buah anggur yang sangat enak dan lembut ketika dikunyah",
      productPrice: 420000,
      productImage: "klengkeng-kristal.jpg",
      productRating: 5,
    ),
    product(
      productName: "Mangga Manis",
      productDescription: "Mangga Manis adalah buah anggur yang sangat enak dan lembut ketika dikunyah",
      productPrice: 320000,
      productImage: "mangga.png",
      productRating: 5,
    ),
];
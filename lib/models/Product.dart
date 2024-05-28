class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final int price;
  bool isFavourite;
  final bool isPopular;
  int quantity = 1;
  
  Product({
    required this.id,
    required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
  void toggleFavoriteStatus() {
    isFavourite = !isFavourite;
  }
}

// Our demo Products
List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/eskrim.png",
    ],
    title: "Es Krim",
    price: 9000,
    description: "Es Krim yang terbuat dari campuran susu, gula, dan bahan perasa lainnya dengan tekstur yang lembut dan dingin.",
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/nasi.png",
    ],
    title: "Nasi Putih",
    price: 5000,
    description: "Nasi Putih yang dimasak dari beras pilihan hingga empuk dan pulen.",
  ),
  Product(
    id: 3,
    images: [
      "assets/images/esteh.png",
    ],
    title: "Es Teh",
    price: 3000,
    description: "Es Teh yang terbuat dari teh alami yang diseduh dan didinginkan dengan es.",
  ),
  Product(
    id: 4,
    images: [
      "assets/images/sambal.png",
    ],
    title: "Sambal Pedas",
    price: 2000,
    description: "Sambal Pedas yang terbuat dari cabai, bawang, dan rempah-rempah lainnya sehingga semakin terasa lezatnya.",
  ),
  Product(
    id: 1,
    images: [
      "assets/images/ayam.png",
    ],
    title: "Ayam Goreng",
    price: 7000,
    description: "Ayam Goreng yang digoreng dengan dibaluri tepung bumbu hingga kulitnya renyah dan dagingnya lembut.",
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/cumi.png",
    ],
    title: "Cumi Pedas",
    price: 9000,
    description: "Cumi Pedas yang dimasak dengan bumbu pedas memiliki cita rasa yang kuat dan sering disajikan dengan nasi putih.",
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/tempe.png",
    ],
    title: "Tempe Goreng",
    price: 2000,
    description: "Tempe Goreng yang dimarinasi menggunakan rempah-rempah pilihan dan digoreng hingga renyah.",
  ),
  Product(
    id: 4,
    images: [
      "assets/images/tahu.png",
    ],
    title: "Tahu Goreng",
    price: 2000,
    description: "Tahu Goreng yang dimarinasi menggunakan rempah-rempah pilihan dan digoreng hingga berwarna keemasan dan renyah di luar, namun lembut di dalam. .",
  ),
  Product(
    id: 1,
    images: [
      "assets/images/gurami.png",
    ],
    title: "Gurami Pedas",
    price: 12000,
    description: "Gurami Pedas yang dimasak dengan bumbu pedas hingga meresap sempurna.",
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/nasigoreng.png",
    ],
    title: "Nasi Goreng",
    price: 10000,
    description: "Nasi Goreng yang digoreng dengan campuran bumbu, sayuran, dan dapat ditambah dengan telur, daging, atau seafood.",
  ),
  Product(
    id: 3,
    images: [
      "assets/images/udang.png",
    ],
    title: "Udang Pedas",
    price: 10000,
    description: "Udang Pedas yang dimasak dengan saus pedas. Hidangan ini menggabungkan rasa manis dan pedas.",
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/perkedel.png",
    ],
    title: "Perkedel Goreng",
    price: 4000,
    description: "Bola-bola Kentang yang dicampur dengan daging cincang atau sayuran, kemudian digoreng hingga renyah.",
    isPopular: true,
  ),
];


class Chair {
  final String imageUrl;
  final String tag;
  final String name;
  final String description;
  final double price;

  Chair({
    required this.imageUrl,
    required this.tag,
    required this.name,
    required this.description,
    required this.price,
  });
}

final List<Map<String, dynamic>> chair = [
  {
    'imageUrl': 'assets/images/image1.jpg',
    'tag': 'chair1',
    'name': 'Item Name',
    'description': 'Description',
    'Price': 250.00,
  },
  {
    'imageUrl': 'assets/images/image2.jpg',
    'tag': 'chair2',
    'name': 'Item Name',
    'description': 'Description',
    'Price': 115.00,
  },
  {
    'imageUrl': 'assets/images/image3.jpg',
    'tag': 'chair3',
    'name': 'Item Name',
    'description': 'Description',
    'Price': 240.00,
  },
  {
    'imageUrl': 'assets/images/image4.jpg',
    'tag': 'chair4',
    'name': 'Item Name',
    'description': 'Description',
    'Price': 320.00,
  },
];

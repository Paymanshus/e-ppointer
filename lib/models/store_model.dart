class Store {
  String storeName;
  String storeImg;
  String category;
  double distance;
  double review;

  Store({
    this.storeName,
    this.storeImg,
    this.category,
    this.distance,
    this.review,
  });
}

List<Store> stores = [
  Store(
    storeName: 'Satya Vijay Store',
    storeImg: 'assets/images/satya.jpg',
    category: 'General',
    distance: 0.5,
    review: 3.7,
  ),
  Store(
    storeName: 'H&M',
    storeImg: 'assets/images/hnm.jpg',
    category: 'Clothing',
    distance: 1.8,
    review: 4.2,
  ),
  Store(
    storeName: 'Noble Chemist',
    storeImg: 'assets/images/noble.jpg',
    category: 'Chemist',
    distance: 0.7,
    review: 4.7,
  ),
];

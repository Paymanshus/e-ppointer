class Review {
  String storeName;
  String storeImg;
  String reviewDesc;
  double reviewRating;
  //List<Activity> activities;

  Review({this.storeName, this.storeImg, this.reviewDesc, this.reviewRating});
}

/*
  List<String> apptList = ['Satya Vijay Store', 'H&M', 'Noble Chemist'];
  List<String> storeImg = ['assets/images/satya.jpg', 'assets/images/hm.jpg','assets/images/noble.jpg'];
  List<String> reviewDesc = ['May 22','May 31','June 1'];
  List<String> apptTime = ['4:30PM - 5:30PM','5:30PM-6:30PM','7:30PM-8:00PM']; 

  */

List<Review> reviews = [
  Review(
    storeName: 'Satya Vijay Store',
    storeImg: 'assets/images/satya.jpg',
    reviewDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum libero... ',
    reviewRating: 3,
  ),
  Review(
    storeName: 'H&M',
    storeImg: 'assets/images/hnm.jpg',
    reviewDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum libero... ',
    reviewRating: 4,
  ),
  Review(
    storeName: 'Noble Chemist',
    storeImg: 'assets/images/noble.jpg',
    reviewDesc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum libero... ',
    reviewRating: 3,
  )
];

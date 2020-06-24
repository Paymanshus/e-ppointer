class Appointment {
  String storeName;
  String storeImg;
  String apptDate;
  List<String> apptTime;
  //List<Activity> activities;

  Appointment({
    this.storeName,
    this.storeImg,
    this.apptDate,
    this.apptTime,
  });
}

/*
  List<String> apptList = ['Satya Vijay Store', 'H&M', 'Noble Chemist'];
  List<String> storeImg = ['assets/images/satya.jpg', 'assets/images/hm.jpg','assets/images/noble.jpg'];
  List<String> apptDate = ['May 22','May 31','June 1'];
  List<String> apptTime = ['4:30PM - 5:30PM','5:30PM-6:30PM','7:30PM-8:00PM']; 

  */


List<Appointment> appointments = [
  Appointment(
    storeName: 'Satya Vijay Store',
    storeImg: 'assets/images/satya.jpg',
    apptDate: 'May 22',
    apptTime: ['4:30PM', '5:30PM'],
  ),
  Appointment(
    storeName: 'H&M',
    storeImg: 'assets/images/hnm.jpg',
    apptDate: 'May 31',
    apptTime: ['5:00PM', '6:00PM'],
  ),
  Appointment(
    storeName: 'Noble Chemist',
    storeImg: 'assets/images/noble.jpg',
    apptDate: 'June 1',
    apptTime: ['7:00PM', '7:15PM'],
  )
];
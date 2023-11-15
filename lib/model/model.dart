class ButtonTile {
  final String text;
  final int value;
  ButtonTile({required this.text, required this.value});
}

List<ButtonTile> tileDetails = [
  ButtonTile(text: "Total Users", value: 100),
  ButtonTile(text: "Active Users", value: 35),
  ButtonTile(text: "Current Bookings", value: 10),
  ButtonTile(text: "Total Locations", value: 7),
  ButtonTile(text: "Total Listing", value: 4),
];

class LocationTile {
  final String image;
  final String locationName;
  final String countryName;
  LocationTile({
    required this.image,
    required this.locationName,
    required this.countryName,
  });
}

List<LocationTile> locationTileDetails = [
  LocationTile(
      image: "assets/images/burjKhalifa.jpeg",
      locationName: "Dubai",
      countryName: "UAE"),
  LocationTile(
      image: "assets/images/effileTower.jpeg",
      locationName: "Paris",
      countryName: "France"),
  LocationTile(
      image: "assets/images/phuket.jpeg",
      locationName: "Phuket",
      countryName: "Thailand"),
  LocationTile(
      image: "assets/images/rome.jpeg",
      locationName: "Rome",
      countryName: "Italy"),
  LocationTile(
      image: "assets/images/tajMehal.jpg",
      locationName: "Agra",
      countryName: "india"),
  LocationTile(
      image: "assets/images/turkey.jpeg",
      locationName: "Cappadocia",
      countryName: "Turkey"),
  LocationTile(
      image: "assets/images/whiteBuildings.jpeg",
      locationName: "Santorini",
      countryName: "Greek Land"),
];

class Listing {
  final String image;
  final String locationName;
  final String locationCity;
  final double rating;
  final int min;
  final int max;
  final List<String> features;
  final List<String> facilites;
  final String discription;

  Listing({
    required this.image,
    required this.locationName,
    required this.locationCity,
    required this.rating,
    required this.min,
    required this.max,
    required this.features,
    required this.facilites,
    required this.discription,
  });
}

List<Listing> listingDetails = [
  Listing(
      image: "assets/images/burjKhalifa.jpeg",
      locationName: "Burj khalifa",
      locationCity: "Dubai",
      rating: 5.0,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/effileTower.jpeg",
      locationName: "Effie Tower",
      locationCity: "Paris",
      rating: 4.5,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/phuket.jpeg",
      locationName: "Patong Beach",
      locationCity: "Phuket",
      rating: 3.5,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/rome.jpeg",
      locationName: "Colossuem",
      locationCity: "Rome",
      rating: 3.0,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/turkey.jpeg",
      locationName: "Goreme National Park",
      locationCity: "Cappadocia",
      rating: 4.5,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/whiteBuildings.jpeg",
      locationName: "White Buildings",
      locationCity: "Santorini",
      rating: 4.0,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/tajMehal.jpg",
      locationName: "Taj Mehal",
      locationCity: "Agra",
      rating: 3.4,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
  Listing(
      image: "assets/images/rome.jpeg",
      locationName: "Colossuem",
      locationCity: "Rome",
      rating: 3.0,
      min: 200,
      max: 1000,
      discription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      facilites: [
        "parking",
        "Swimming",
        "Room Service",
      ],
      features: [
        "only on weekend",
        "Music Enthusiast",
        "Smoking",
        "Forigen Languague"
      ]),
];

class Booking {
  final int bookingID;
  final String clientName;
  final String bookingPlace;
  final String guest;
  final DateTime checkIn;
  final DateTime checkOut;
  final String payment;
  final bool status;
  final DateTime date;
  Booking({
    required this.bookingID,
    required this.clientName,
    required this.bookingPlace,
    required this.guest,
    required this.checkIn,
    required this.checkOut,
    required this.payment,
    required this.status,
    required this.date,
  });
}

List<Booking> bookingDetails = [
  Booking(
      bookingID: 12312,
      clientName: "Kaze",
      bookingPlace: "Opera House",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Ronnie",
      bookingPlace: "Effile Tower",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Vick",
      bookingPlace: "Colosome",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Lzzy",
      bookingPlace: "Opera House",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Earl",
      bookingPlace: "Taj Mehal",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
];

class UsersData {
  final int days;
  final int activeUser;
  final int nonActiveUser;

  UsersData(
      {required this.activeUser,
      required this.days,
      required this.nonActiveUser});
}

List<UsersData> userDetails = [
  UsersData(activeUser: 4, days: 1, nonActiveUser: 2),
  UsersData(activeUser: 3, days: 2, nonActiveUser: 8),
  UsersData(activeUser: 2, days: 3, nonActiveUser: 2),
  UsersData(activeUser: 5, days: 4, nonActiveUser: 1),
  UsersData(activeUser: 6, days: 5, nonActiveUser: 9),
  UsersData(activeUser: 7, days: 6, nonActiveUser: 5),
  UsersData(activeUser: 9, days: 7, nonActiveUser: 8),
];

class Places {
  final int days;
  final int currentPlaces;

  Places({required this.days, required this.currentPlaces});
}

List<Places> placesDetails = [
  Places(days: 1, currentPlaces: 3),
  Places(days: 2, currentPlaces: 6),
  Places(days: 3, currentPlaces: 1),
  Places(days: 4, currentPlaces: 2),
  Places(days: 5, currentPlaces: 6),
  Places(days: 6, currentPlaces: 3),
  Places(days: 7, currentPlaces: 4),
];

List<Places> placesDetail3 = [
  Places(days: 1, currentPlaces: 1),
  Places(days: 2, currentPlaces: 3),
  Places(days: 3, currentPlaces: 4),
  Places(days: 4, currentPlaces: 1),
  Places(days: 5, currentPlaces: 2),
  Places(days: 6, currentPlaces: 5),
  Places(days: 7, currentPlaces: 1),
];

List<Places> placesDetails2 = [
  Places(days: 1, currentPlaces: 5),
  Places(days: 2, currentPlaces: 3),
  Places(days: 3, currentPlaces: 2),
  Places(days: 4, currentPlaces: 5),
  Places(days: 5, currentPlaces: 4),
  Places(days: 6, currentPlaces: 1),
  Places(days: 7, currentPlaces: 3),
];

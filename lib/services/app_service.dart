class AppService {
  static List<Map<String, dynamic>> getHotelList() {
    return [
      {
        'image': 'one.png',
        'place': 'Open Space',
        'destination': 'Gachibowli',
        'price': 800
      },
      {
        'image': 'two.png',
        'place': 'Global Will',
        'destination': 'Secunderabad',
        'price': 950
      },
      {
        'image': 'three.png',
        'place': 'Tallest Building',
        'destination': 'Kondapur',
        'price': 1400
      },
    ];
  }

  static List<Map<String, dynamic>> getTicketList() {
    return [
      {
        'from': {'code': "MAS", 'name': "Chennai"},
        'to': {'code': "NDLS", 'name': "New Delhi"},
        'duration': '34H 30M',
        'date': "21 OCT",
        'departure_time': "22:00",
        "number": 25
      },
      {
        'from': {'code': "NDLS", 'name': "New Delhi"},
        'to': {'code': "MNLI", 'name': "Manali"},
        'duration': '20H 12M',
        'date': "24 OCT",
        'departure_time': "09:35",
        "number": 55
      },
    ];
  }

  static Map<String, dynamic> getTicketById() {
    return {
      'from': {'code': "MAS", 'name': "Chennai"},
      'to': {'code': "NDLS", 'name': "New Delhi"},
      'duration': '34H 30M',
      'date': "21 OCT",
      'departure_time': "22:00",
      "number": 25
    };
  }
}

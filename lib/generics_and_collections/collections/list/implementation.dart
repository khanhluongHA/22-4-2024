// ignore_for_file: non_constant_identifier_names

class TouristDestination {
  final String name;
  final String location;
  final int rating;

  TouristDestination(this.name, this.location, this.rating);
  @override
  String toString() {
    return '$name - $location (Rating: $rating)';
  }
}

// tìm kiểm điểm du lịch
List<TouristDestination> searchDestinations(
    List<TouristDestination> destinations, String keyword) {
  List<TouristDestination> result = [];
  for (var destination in destinations) {
    if (destination.name.toLowerCase().contains(keyword.toLowerCase()) ||
        destination.location.toLowerCase().contains(keyword.toLowerCase())) {
      result.add(destination);
    }
  }
  return result;
}

// danh sách điểm du lịch
void ListOfTouristAttractions() {
  var destinations = [
    TouristDestination('paris', 'france', 5),
    TouristDestination('Tokyo', 'japan', 4),
    TouristDestination('New york', 'USA', 3),
    TouristDestination('roma', 'Italy', 3),
  ];
  // tìm kiếm từ khóa có chữ 'y'
  var searchResult = searchDestinations(destinations, 'y');
  print('kết quả tìm kiếm');
  searchResult.forEach(print);
}

class EventShort {
  int _id;
  String _name;
  String _description;
  DateTime _startDateTime;
  DateTime _endDateTime;
  double _latitude;
  double _longitude;
  int _likesCount;
  String _mainImage;

  EventShort({int id, DateTime startDateTime})
      : _id = id,
        _startDateTime = startDateTime;

  EventShort.fromJson(Map<String, dynamic> parsedJson) {
    _id = parsedJson["id"];
    _name = parsedJson["name"];
    _description =
        parsedJson["description"] ?? parsedJson["croppedDescription"];
    _startDateTime = DateTime.parse(parsedJson["startDateTime"]).toLocal();
    _endDateTime = parsedJson["endDateTime"] != null
        ? DateTime.parse(parsedJson["endDateTime"]).toLocal()
        : null;
    _latitude = parsedJson["latitude"];
    _longitude = parsedJson["longitude"];
    _likesCount = parsedJson["likesCount"];
    _mainImage = parsedJson["mainImage"];
  }

  int get id => _id;
  String get name => _name;
  String get description => _description;
  DateTime get startDateTime => _startDateTime;
  DateTime get endDateTime => _endDateTime;
  double get latitude => _latitude;
  double get longitude => _longitude;
  int get likesCount => _likesCount;
  String get mainImage => _mainImage;
}
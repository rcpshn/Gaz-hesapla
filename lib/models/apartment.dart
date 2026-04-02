class Apartment {
  final int id;
  final String type;
  final int count;
  final double squareMeters;

  Apartment({required this.id, required this.type, required this.count, required this.squareMeters});

  factory Apartment.fromJson(Map<String, dynamic> json) {
    return Apartment(
      id: json['id'],
      type: json['type'],
      count: json['count'],
      squareMeters: json['squareMeters'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'count': count,
      'squareMeters': squareMeters,
    };
  }
}
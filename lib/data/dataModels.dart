class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

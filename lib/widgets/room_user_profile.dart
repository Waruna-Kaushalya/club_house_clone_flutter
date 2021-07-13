import 'package:clubhouse_ui_clone_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool iisNew;
  final bool isMuted;

  const RoomUserProfile({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.size = 70.0,
    this.iisNew = false,
    this.isMuted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              child: UserProfileImage(
                imageUrl: imageUrl,
                size: size,
              ),
            ),
          ],
        ),
        Text(name),
      ],
    );
  }
}

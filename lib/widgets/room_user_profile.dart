import 'package:clubhouse_ui_clone_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.size = 70.0,
    this.isNew = false,
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
            if (isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '🎉',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Text(name),
      ],
    );
  }
}

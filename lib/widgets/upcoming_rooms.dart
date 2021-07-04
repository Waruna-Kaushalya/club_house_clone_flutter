import 'package:clubhouse_ui_clone_flutter/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse_ui_clone_flutter/data/dataModels.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;

  const UpcomingRooms({
    Key? key,
    required this.upcomingRooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: Palette.secondBackgroundColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: upcomingRooms
            .map(
              (e) => Row(
                children: [
                  Text(
                    e.time,
                  )
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

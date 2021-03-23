import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final int count;

  const NotificationBadge({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 6,
      top: 16,
      child: new Container(
        padding: EdgeInsets.all(1),
        decoration: new BoxDecoration(
          color: Color(0xFF00E8E8),
          borderRadius: BorderRadius.circular(10),
        ),
        constraints: BoxConstraints(
          minWidth: 11,
          minHeight: 11,
        ),
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(
              color: Colors.white,
              fontSize: 6,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

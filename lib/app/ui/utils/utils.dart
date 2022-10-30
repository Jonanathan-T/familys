import 'package:flutter/material.dart';

class Utils {
  static const secondaryColor = Color(0xFF1A1A1A);
  static const primaryColor = Color(0xFF307A59);
  static const buttonSize = EdgeInsets.symmetric(
    vertical: 15,
    // horizontal: 125.0,
  );
  static const textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );

  static const titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

  static const boxDecoration = BoxDecoration();

  static const days = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];

  static const month = [
    "Janvier",
    "Février",
    "Mars",
    "Avril",
    "Mai",
    "Juin",
    "Juillet",
    "Août",
    "Septembre",
    "Octobre",
    "Novembre",
    "Décembre"
  ];

  static const line = Expanded(child: Divider(color: Colors.white54));
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String get toTitleCase => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
  String timeFormat() => this.split(':').getRange(0, 2).join(':');
}

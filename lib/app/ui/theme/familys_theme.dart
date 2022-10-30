import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/utils.dart';

ThemeData get familysTheme => ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.grey.withOpacity(0.4),
          ),
          foregroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 2, 126, 70),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          fixedSize: MaterialStateProperty.all(const Size(300, 45)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Utils.primaryColor,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
          // padding: Utils.buttonSize,
          fixedSize: const Size(300.0, 45.0),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
        selectedItemColor: Utils.primaryColor,
        showSelectedLabels: false,
        selectedLabelStyle: const TextStyle(fontSize: 0.0),
        showUnselectedLabels: false,
        unselectedIconTheme: const IconThemeData().copyWith(size: 30.0),
        type: BottomNavigationBarType.fixed,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData().copyWith(
        color: Utils.primaryColor,
      ),
      dialogTheme: const DialogTheme().copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme().copyWith(
        prefixIconColor: Utils.primaryColor,
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
      ),
      toggleableActiveColor: Utils.primaryColor,
      primaryColor: Utils.primaryColor,
    );



import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primary,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColor.lightBackground,
      brightness: Brightness.light,
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.transparent,
          filled: true,
          contentPadding:const EdgeInsets.all(30),
          hintStyle: const TextStyle(
            color: Color(0xff383838),
            fontWeight: FontWeight.w500
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4
              )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4
              )
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.lightBackground,
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    )
  );
  static final darkTheme = ThemeData(
      primaryColor: AppColor.primary,
      fontFamily: 'Satoshi',
      scaffoldBackgroundColor: AppColor.darkBackground,
      brightness: Brightness.dark,
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.transparent,
          filled: true,
          hintStyle: const TextStyle(
              color: Color(0xffA7A7A7),
              fontWeight: FontWeight.w500
          ),
          contentPadding:const EdgeInsets.all(30),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 0.4
            )
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width: 0.4
              )
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primary,
              elevation: 0,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          )
      )
  );
}
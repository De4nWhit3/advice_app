import 'package:flutter/material.dart';

class DefaultLightTheme {
  static List<Color> primaryColors = const [
    Color.fromARGB(255, 221, 221, 221),
    Color.fromARGB(255, 128, 215, 255),
  ];
  static List<Color> secondaryColors = const [
    Color.fromARGB(255, 206, 206, 206),
    Color.fromARGB(255, 120, 212, 255),
  ];

  static final ThemeData defaultLightTheme = ThemeData(
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Color(0xff80deea),
    ),
    brightness: Brightness.light,
    primaryColor: const Color(0xff00bcd4),
    primaryColorLight: const Color(0xffb2ebf2),
    primaryColorDark: const Color(0xff0097a7),
    canvasColor: const Color(0xfffafafa),
    scaffoldBackgroundColor: const Color(0xfffafafa),
    cardColor: const Color(0xffffffff),
    dividerColor: const Color(0x1f000000),
    highlightColor: const Color(0x66bcbcbc),
    splashColor: const Color(0x66c8c8c8),
    unselectedWidgetColor: const Color(0x8a000000),
    disabledColor: const Color(0x61000000),
    secondaryHeaderColor: const Color(0xffe0f7fa),
    indicatorColor: const Color(0xff00bcd4),
    hintColor: const Color(0x8a000000),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xffe0e0e0),
      disabledColor: Color(0x61000000),
      highlightColor: Color(0x29000000),
      splashColor: Color(0x1f000000),
      focusColor: Color(0x1f000000),
      hoverColor: Color(0x0a000000),
      colorScheme: ColorScheme(
        primary: Color(0xff00bcd4),
        secondary: Color(0xff00bcd4),
        surface: Color(0xffffffff),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xff000000),
        onSecondary: Color(0xff000000),
        onSurface: Color(0xff000000),
        onError: Color(0xffffffff),
        brightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    primaryTextTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      titleSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelSmall: TextStyle(
        color: Color(0xff000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
      isCollapsed: false,
      prefixStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color(0x00000000),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    ),
    iconTheme:
        const IconThemeData(color: Color(0xdd000000), opacity: 1, size: 24),
    primaryIconTheme: const IconThemeData(
      color: Color(0xff000000),
      opacity: 1,
      size: 24,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      thumbShape: null,
      overlayColor: null,
      valueIndicatorColor: null,
      valueIndicatorShape: null,
      showValueIndicator: null,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xdd000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xdd000000),
      unselectedLabelColor: Color(0xb2000000),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0x1f000000),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde000000),
      disabledColor: Color(0x0c000000),
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d00bcd4),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
      ),
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff4285f4),
      selectionColor: Color(0xff80deea),
      selectionHandleColor: Color(0xff4dd0e1),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.disabled)) {
          return null;
        }
        if (states.contains(WidgetState.selected)) {
          return const Color(0xff00acc1);
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.disabled)) {
          return null;
        }
        if (states.contains(WidgetState.selected)) {
          return const Color(0xff00acc1);
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.disabled)) {
          return null;
        }
        if (states.contains(WidgetState.selected)) {
          return const Color(0xff00acc1);
        }
        return null;
      }),
      trackColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.disabled)) {
          return null;
        }
        if (states.contains(WidgetState.selected)) {
          return const Color(0xff00acc1);
        }
        return null;
      }),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
        .copyWith(secondary: const Color(0xff00bcd4))
        .copyWith(surface: const Color(0xff80deea))
        .copyWith(error: const Color(0xffd32f2f)),
  );
}

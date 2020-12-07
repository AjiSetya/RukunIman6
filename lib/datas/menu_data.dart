import 'package:flutter/material.dart';

class MenuData {
  String title;
  Color color;

  MenuData({this.title, this.color});

  List<MenuData> createMenu() {
    List _dataMenu = List<MenuData>();

    return _dataMenu
      ..add(MenuData(title: 'Pengertian', color: Color(0xFF85E4CE)))
      ..add(MenuData(title: 'Hubungan', color: Color(0xFFFFD5BA)))
      ..add(
          MenuData(title: "Ketentuan Baik dan Buruk", color: Color(0xFFAACDF5)))
      ..add(MenuData(title: "Dalil Naqli", color: Color(0xFFC2CDD0)))
      ..add(MenuData(title: "Latihan Soal", color: Color(0xFF66C5D8)));
  }
}

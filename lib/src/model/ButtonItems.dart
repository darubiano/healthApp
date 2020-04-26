import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health/src/widgets/ButtonFat.dart';

class ButtonItems {
  List<Widget> _items = <Widget>[
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
        icon: FontAwesomeIcons.carCrash,
        titulo: 'Motor Accident',
        color1: Color(0xff6989F5),
        color2: Color(0xff906EF5),
        onPress: () {
          print('Motor');
        },
      ),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.plus,
          titulo: 'Medical Emergency',
          color1: Color(0xff66A9F2),
          color2: Color(0xff536CF6),
          onPress: () {
            print('Medical');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.theaterMasks,
          titulo: 'Theft / Harrasement',
          color1: Color(0xffF2D572),
          color2: Color(0xffE06AA3),
          onPress: () {
            print('Theft');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.biking,
          titulo: 'Awards',
          color1: Color(0xff317183),
          color2: Color(0xff46997D),
          onPress: () {
            print('Awards');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.carCrash,
          titulo: 'Motor Accident',
          color1: Color(0xff6989F5),
          color2: Color(0xff906EF5),
          onPress: () {
            print('Motor');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.plus,
          titulo: 'Medical Emergency',
          color1: Color(0xff66A9F2),
          color2: Color(0xff536CF6),
          onPress: () {
            print('Medical');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.theaterMasks,
          titulo: 'Theft / Harrasement',
          color1: Color(0xffF2D572),
          color2: Color(0xffE06AA3),
          onPress: () {
            print('Theft');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.biking,
          titulo: 'Awards',
          color1: Color(0xff317183),
          color2: Color(0xff46997D),
          onPress: () {
            print('Awards');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.carCrash,
          titulo: 'Motor Accident',
          color1: Color(0xff6989F5),
          color2: Color(0xff906EF5),
          onPress: () {
            print('Motor');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.plus,
          titulo: 'Medical Emergency',
          color1: Color(0xff66A9F2),
          color2: Color(0xff536CF6),
          onPress: () {
            print('Medical');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.theaterMasks,
          titulo: 'Theft / Harrasement',
          color1: Color(0xffF2D572),
          color2: Color(0xffE06AA3),
          onPress: () {
            print('Theft');
          }),
    ),
    FadeInLeft(
      duration: Duration(milliseconds:250),
      child: ButtonFat(
          icon: FontAwesomeIcons.biking,
          titulo: 'Awards',
          color1: Color(0xff317183),
          color2: Color(0xff46997D),
          onPress: () {
            print('Awards');
          }),
    ),
  ];
  List<Widget> get items => this._items;
}

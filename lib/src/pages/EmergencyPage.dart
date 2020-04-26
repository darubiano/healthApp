import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health/src/model/ButtonItems.dart';
import 'package:health/src/widgets/headers.dart';

class EmergencyPage extends StatefulWidget {
  static const String id = 'Emergency';
  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  ButtonItems buttons = ButtonItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 200),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: ButtonItems().items.length,
                itemBuilder: (context, i) {
                  return ButtonItems().items[i];
                })),
        _Encabezado(),
      ],
    ));
  }
}

class _Encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconHeader(
          icon1: FontAwesomeIcons.plusCircle,
          icon2: FontAwesomeIcons.plus,
          titulo: 'Haz solicitado',
          subtitulo: 'Asistencia Medica',
          color1: Color(0xff526BF6),
          color2: Color(0xff67ACF2),
        ),
        Positioned(
          left: 0,
          top: 50,
          child: RawMaterialButton(
            onPressed: (){},
            shape: CircleBorder(),
            padding: EdgeInsets.all(15.0),
            child: FaIcon(FontAwesomeIcons.bars,color:Colors.white))
        )
      ],
    );
  }
}

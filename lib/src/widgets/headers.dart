import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class IconHeader extends StatelessWidget {
  static const String id = 'IconHeader';

  final IconData icon1,icon2;
  final String titulo,subtitulo;
  final Color color1,color2;
  IconHeader({
  @required this.icon1,
  @required this.icon2,
  @required this.titulo,
  @required this.subtitulo,
   this.color1 = Colors.grey,
   this.color2 = Colors.blueGrey
  });
  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.7);
    return Stack(
      children:<Widget>[
        _IconHeaderBackground(color1: this.color1,color2: this.color2,),
        Positioned(
          top: -55,
          left: -80,
          child: FaIcon(this.icon1, size: 250,color: Colors.white.withOpacity(0.2)),
        ),
        Column(
          children:<Widget>[
            SizedBox(height:50, width: double.infinity,),
            Text(this.titulo,
            style:TextStyle(fontSize:20,color: colorBlanco)),
            SizedBox(height:20),
            Text(this.subtitulo,
            style:TextStyle(fontSize:25,color: colorBlanco, fontWeight: FontWeight.bold)),
            FaIcon(this.icon2, size:55,color: Colors.white)
          ]
        )
      ]
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1,color2;
  _IconHeaderBackground({
    @required this.color1,
    @required this.color2});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height*0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight:Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            this.color1,
            this.color2
          ]
        )
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonFat extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final Color color1,color2;
  final Function onPress;

  ButtonFat({
    this.icon = FontAwesomeIcons.circle,
    @required this.titulo,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
    @required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: this.onPress,
        child: Stack(
        children:<Widget>[
          _ButtonStyle(
            color1: this.color1,
            color2: this.color2,
            icon: this.icon,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              SizedBox(height:size.height*0.2,width: 40,),
              FaIcon(this.icon,color:Colors.white,size: 40,),
              SizedBox(width:20),
              Expanded(child: Text(titulo,style: TextStyle(color:Colors.white,fontSize: 18),)),
              FaIcon(FontAwesomeIcons.chevronRight,color:Colors.white,),
              SizedBox(width:40),
            ]
          )
        ]
      ),
    );
  }
}

class _ButtonStyle extends StatelessWidget {
  final IconData icon;
  final Color color1,color2;
  _ButtonStyle({
    @required this.color1,
    @required this.color2,
    @required this.icon
    });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
          children:<Widget>[
            Positioned(
              right: -20,
              top: -20,
              child:FaIcon(this.icon, size: 150,color: Colors.white.withOpacity(0.3),)
            )
          ]
        ),
      ),
      width: double.infinity,
      height: size.height*0.15,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black.withOpacity(0.2),
            offset:Offset(4,6),
            blurRadius: 10
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: <Color>[
            this.color1,
            this.color2
          ]
        )
      ),
    );
  }
}
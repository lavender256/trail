import 'package:flutter/material.dart';
import 'package:trail/model/trails.dart';

class TrailsCard extends StatelessWidget {
  Trails trails;

  TrailsCard({this.trails});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(trails.image), fit: BoxFit.cover)),
      child: Stack(children:[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(padding: EdgeInsets.symmetric(horizontal: size.width*.03),
              height: size.height*.13,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
             ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(trails.name,style: TextStyle(
                    color: Colors.black,fontSize: size.width*.05,fontWeight: FontWeight.w800
                  ),),
                  Text(trails.distance,style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w700,fontSize: size.width*.03
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

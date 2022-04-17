import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trail/data/data.dart';
import 'package:trail/model/trails.dart';

import '../text.dart';

class TrailsScreen extends StatefulWidget {
  final Trails trails;

  TrailsScreen({this.trails});

  @override
  _TrailsScreenState createState() => _TrailsScreenState();
}

class _TrailsScreenState extends State<TrailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: size.height * .5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.trails.image),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: size.height * .02,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * .04),
                            width: size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.trails.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .065),
                                ),
                                Text(
                                  widget.trails.distance,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * .04),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                          top: size.height * .04,
                          right: size.width * .05,
                          child: Container(
                            width: size.width * .1,
                            height: size.width * .1,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.4),
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.aspect_ratio,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .03,
                      vertical: size.height * .04),
                  width: size.width,
                  height: size.height * .18,
                  color: Colors.white,
                  child: Text(
                    txt,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * .035,
                        letterSpacing: -0.2),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(color: Colors.white,
                  margin: EdgeInsets.only(top: size.width*.007),
                  height: size.height*.5,
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .06,),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "JUNE 2017",
                        style: TextStyle(
                            color: Colors.black54, fontSize: size.width * .05),
                      ),
                      Text(
                        "Photos",
                        style: TextStyle(
                            color: Colors.black, fontSize: size.width * .05,fontWeight: FontWeight.w800),
                      ),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("User : MTBHEOR972119",style: TextStyle(
                             color: Colors.black54,fontSize: size.width*.04
                         ),),
                         Container(
                           width: size.width*.1,
                           height: size.width*.1,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.blueAccent
                           ),
                           child: Center(
                             child: Text("+10",style: TextStyle(
                               color: Colors.white
                             ),),
                           ),
                         )
                       ],
                     ),
                      Container(
                        width: size.width,
                        height: size.height*.2,
                        child: ListView.builder(
                            itemCount: trailsList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context,int index){
                              Trails trails=trailsList[index];
                          return Container(
                            margin: EdgeInsets.only(right: size.width*.03),
                            width: size.width*.3,
                            height: size.height,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5),
                              image: DecorationImage(
                                image: NetworkImage(trails.image),fit: BoxFit.cover
                              )
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trail/data/data.dart';
import 'package:trail/model/trails.dart';
import 'package:trail/screens/trails_screen.dart';
import 'package:trail/widgets/header.dart';
import 'package:trail/widgets/trails_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff18182B),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * .03, vertical: size.height * .04),
        width: size.width,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Header(),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  Trails trails = trailsList[index];
                  return Transform.translate(
                      offset: Offset(0.0, index.isEven ? 0.0 : 80),
                      child:
                          GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>TrailsScreen(trails:trails))),
                              child: TrailsCard(trails: trails)));
                }, childCount: trailsList.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 0.5))
          ],
        ),
      ),
    );
  }
}

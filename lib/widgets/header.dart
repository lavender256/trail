import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.14,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trails  near you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * .07,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.menu_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.grid_view,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Text(
            "San Diego, 92119",
            style: TextStyle(
                color: Color(0xff0ACB96),
                fontSize: size.width * .05,
                fontWeight: FontWeight.w800),
          ),

        ],
      ),
    );
  }
}

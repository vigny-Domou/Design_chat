import 'package:chat_design/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/services/asset_manifest.dart' as flutter_asset_manifest;
import 'package:google_fonts/src/asset_manifest.dart' as google_fonts_asset_manifest;

class MenuSection extends StatelessWidget {

  final List menuItems = ["Message", "Online", "Groups","Calls"];
   MenuSection({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(15),
        child: Row(
          children: menuItems.map((item) {
              return Container(
                margin: EdgeInsets.only(right:55 ),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white60,
                    fontSize: 29),
                ),
              );
            }).toList(),
        ),
      ),

    );
  }
}
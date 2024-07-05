import 'package:chat_design/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteSection extends StatelessWidget {
  FavoriteSection({super.key});

  final List favoriteContacts = [
    {'name': 'Vigny', 'profile': 'images/avatar/im1.jpeg'},
    {'name': 'Abel', 'profile': 'images/avatar/im2.jpeg'},
    {'name': 'Elda', 'profile': 'images/avatar/im1.jpeg'},
    {'name': 'Merveille', 'profile': 'images/avatar/im3.jpeg'},
    {'name': 'Urielle', 'profile': 'images/avatar/im2.jpeg'},
    {'name': 'Bona', 'profile': 'images/avatar/im3.jpeg'},
    {'name': 'Moricelle', 'profile': 'images/avatar/im1.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        color: dGreen,
        decoration: const BoxDecoration(
            color: dGreen,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContacts.map((favorite) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: dWhite,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(favorite['profile']),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          favorite['name'],
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

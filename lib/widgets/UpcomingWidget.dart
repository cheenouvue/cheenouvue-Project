import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ພາບພາຍົນທີ່ກໍາລັງຈະເຂົ້າ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "ທັງໜົດ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1; i<4; i++)
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/up$i.jpg",
                    height: 180,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ]),
        ),
      ],
    );
  }
}
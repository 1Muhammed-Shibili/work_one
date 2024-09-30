import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListConatiner extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const ListConatiner({
    required this.imagePath,
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 16, left: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 337,
          height: 54,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0x0DFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(height: 24, width: 24, imagePath),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFFFFFFF),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

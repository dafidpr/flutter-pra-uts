import 'package:flutter/material.dart';
import 'package:pertemuan_ketuju/components/pages/galery/galery_image.dart';

class GalerySection extends StatelessWidget {
  final String title;
  final List<GaleryImage> images;

  GalerySection({
    Key? key,
    required this.title,
    required this.images,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          children: <Widget>[...images],
        )
      ],
    );
  }
}

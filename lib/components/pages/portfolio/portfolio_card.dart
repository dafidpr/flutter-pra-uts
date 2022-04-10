import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final String title;
  final String category;
  final String imageUrl;

  PortfolioCard({
    Key? key,
    required this.title,
    required this.category,
    required this.imageUrl,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, top: 6),
            child: Text(
              title,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, bottom: 15),
            child: Text(
              category,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

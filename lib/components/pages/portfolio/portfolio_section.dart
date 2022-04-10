import 'package:flutter/material.dart';
import 'package:pertemuan_ketuju/components/pages/portfolio/portfolio_card.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';

class PortfolioSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final List<PortfolioCard> portfolioCards;

  PortfolioSection({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.portfolioCards,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: InkWell(
                onTap: onTap,
                child: Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            subtitle,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
              ...portfolioCards,
            ],
          ),
        )
      ],
    );
  }
}

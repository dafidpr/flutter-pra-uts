import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pertemuan_ketuju/components/pages/portfolio/portfolio_card.dart';
import 'package:pertemuan_ketuju/components/pages/portfolio/portfolio_section.dart';
import 'package:pertemuan_ketuju/components/pages/profile/profile_list_menu.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Portfolio',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PortfolioSection(
                title: 'Design',
                subtitle: '12 Portfolio Design',
                onTap: () {},
                portfolioCards: [
                  PortfolioCard(
                    title: 'UI Design Course App',
                    category: 'Design',
                    imageUrl:
                        'https://cdn.dribbble.com/users/3416941/screenshots/16395345/media/4a52f321e4bed74119253dde5a29ef59.jpg?compress=1&resize=1200x900&vertical=top',
                  ),
                  PortfolioCard(
                    title: 'LMS with Figma',
                    category: 'Design',
                    imageUrl:
                        'https://cdn.dribbble.com/users/2128942/screenshots/16023057/media/de3e3797beaf9a7a61475b7cdba1d536.png?compress=1&resize=1200x900&vertical=top',
                  ),
                  PortfolioCard(
                    title: 'Simple Music App',
                    category: 'Design',
                    imageUrl:
                        'https://cdn.dribbble.com/users/2128942/screenshots/16089774/media/77c21c96ed842a2c2b515bc9346ddd2e.png?compress=1&resize=1200x900&vertical=top',
                  ),
                  PortfolioCard(
                    title: 'Banking Design',
                    category: 'Design',
                    imageUrl:
                        'https://cdn.dribbble.com/users/2742725/screenshots/15288970/media/346f4a08f533e85f072fdf44a393b7c9.png?compress=1&resize=1200x900&vertical=top',
                  ),
                ]),
            PortfolioSection(
              title: 'Code',
              subtitle: '10 Portfolio Code',
              onTap: () {},
              portfolioCards: [
                PortfolioCard(
                  title: 'Hotel Booking App',
                  category: 'Web App',
                  imageUrl:
                      'https://cdn.dribbble.com/users/702789/screenshots/17630628/media/daab50abd1ca58533543a9401cc27e68.png?compress=1&resize=1200x900&vertical=top',
                ),
                PortfolioCard(
                  title: 'Social Media',
                  category: 'Web App',
                  imageUrl:
                      'https://cdn.dribbble.com/users/5484409/screenshots/17244260/media/f12dd7e40d250aea7233394fdbb93042.png?compress=1&resize=1200x900&vertical=top',
                ),
                PortfolioCard(
                  title: 'Finance Payking',
                  category: 'Web App',
                  imageUrl:
                      'https://cdn.dribbble.com/users/584216/screenshots/17517476/media/c6d6115394c2e9b13ace7daccf421797.jpg?compress=1&resize=1200x900&vertical=top',
                ),
                PortfolioCard(
                  title: 'Project Management',
                  category: 'Mobile App',
                  imageUrl:
                      'https://cdn.dribbble.com/users/4870223/screenshots/17575586/media/13b79defda4ded977609acd6684e673e.jpg?compress=1&resize=1200x900&vertical=top',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

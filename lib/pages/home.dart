import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pertemuan_ketuju/components/pages/galery/galery_image.dart';
import 'package:pertemuan_ketuju/components/pages/galery/galery_section.dart';
import 'package:pertemuan_ketuju/components/pages/portfolio/portfolio_card.dart';
import 'package:pertemuan_ketuju/components/pages/portfolio/portfolio_section.dart';
import 'package:pertemuan_ketuju/components/sidebar.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Sidebar(),
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(LineAwesomeIcons.bars, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineAwesomeIcons.bell,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Dafid Prasetyo',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
              ],
            ),
            GalerySection(
              title: 'New Photo',
              images: [
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1609469441036-6347c6ed829e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1077&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649509857227-f63b234545f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=800',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649449446653-902ab9fa0858?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pertemuan_ketuju/components/pages/galery/galery_image.dart';
import 'package:pertemuan_ketuju/components/pages/galery/galery_search_form.dart';
import 'package:pertemuan_ketuju/components/pages/galery/galery_section.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({Key? key}) : super(key: key);

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
          'Galery',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GalerySearchForm(),
            GalerySection(
              title: 'Today',
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
            GalerySection(
              title: 'Wednesday',
              images: [
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1648512231453-3964aac5b86d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649553325175-2136f6cb9326?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649527863732-ea8bad5b43ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1637072103875-1b29a09d9c91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649429548986-5a599971f626?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649219025437-de25254cd295?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649320099555-9e436f69db29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                ),
                GaleryImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1649538333889-dc7139a191ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1026&q=80',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

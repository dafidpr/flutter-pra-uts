import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pertemuan_ketuju/components/custom_textfield.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 30),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Contact Us',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Your name',
                prefixIcon: LineAwesomeIcons.user,
              ),
              CustomTextField(
                hintText: 'Your email',
                prefixIcon: LineAwesomeIcons.envelope,
              ),
              CustomTextField(
                hintText: 'Your message',
                prefixIcon: LineAwesomeIcons.comment,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      LineAwesomeIcons.check_circle,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Send Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

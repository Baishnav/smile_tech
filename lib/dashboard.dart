import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        width: 220,
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 33.0, top: 3),
                        child: Text(
                          'Hi, Shikumi!',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCard(
                        MaterialCommunityIcons.calendar_month, 'Calender'),
                    _buildChatbot(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCard(
                        MaterialIcons.notifications_active, 'Notification'),
                    _buildCard(
                        MaterialCommunityIcons.settings_outline, 'Setting'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChatbot() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 210,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 130,
                width: 130,
                child: Image(
                  image: AssetImage('assets/images/chatbot.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Chatbot',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(IconData iconData, String imgName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 210,
        width: 170,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 90,
              color: Color(0xff0B96F9),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              imgName,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

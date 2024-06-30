import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hubtel_proj/widgets/barwidget.dart';
import 'package:hubtel_proj/widgets/date_widget.dart';
import 'package:hubtel_proj/widgets/failedwidget.dart';
import 'package:hubtel_proj/widgets/tilewidget.dart';



class Hubtel extends StatefulWidget {
  const Hubtel({Key? key}) : super(key: key);

  @override
  State<Hubtel> createState() => _HubtelState();
}

class _HubtelState extends State<Hubtel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: GNav(
          tabBackgroundColor: Color.fromARGB(255, 215, 237, 227),
          padding: const EdgeInsets.all(16),
          gap: 8.0,
          iconSize: 35,
          tabs: [
            GButton(
              icon: Icons.home,
              iconSize: 30,
              text: '',
              style: GnavStyle.oldSchool,
              textColor: Colors.black,
            ),
            GButton(
              icon: Icons.money,
              iconSize: 30,
              text: 'send',
              textColor: Colors.black,
            ),
            GButton(
              icon: Icons.history,
              iconSize: 30,
              text: 'History',
              textColor: Colors.black,
            ),
            GButton(
              icon: Icons.calendar_today,
              iconSize: 30,
              text: 'Scheduled',
              textColor: Colors.grey,
            ),
          ],
          selectedIndex: currentIndex,
          onTabChange: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             HistoryTransactionBar(),
              SizedBox(height: 20),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: 295,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.grey[200],
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search, size: 30),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset("assets/OIP.jpg", height: 60, width: 60),
                ],
              ),
              SizedBox(height: 20),
              PropertyItemWidget(
                imageAsset: "assets/mtn.jpg",
                name: 'Emmanuel Rockson',
                secondname: 'Kwabena Uncle Ebo',
                number: '024 123 4567',
                amount: 'GHS' + '500',
              ),
              SizedBox(height: 20),
              FailedWidget(
                imageAsset: "assets/absa.jpg",
                name: 'Absa Bank',
                secondname: '',
                number: '024 123 4567',
                amount: 'GHS' + '500',
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: DateWidget(date: DateTime.now()),
              ),
              SizedBox(height: 20),
              PropertyItemWidget(
                imageAsset: "assets/mtn.jpg",
                name: 'Emmanuel Rockson',
                secondname: '',
                number: '024 123 4567',
                amount: 'GHS' + '500',
              ),
              SizedBox(height: 20),
              PropertyItemWidget(
                imageAsset: "assets/mtn.jpg",
                name: 'Emmanuel Rockson',
                secondname: '',
                number: '024 123 4567',
                amount: 'GHS' + '500',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

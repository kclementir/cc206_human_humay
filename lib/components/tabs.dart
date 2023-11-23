import 'package:flutter/material.dart';
import 'package:cc206_human_humay/features/dashboard.dart';
import 'package:cc206_human_humay/features/community.dart';
import 'package:cc206_human_humay/features/user.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Dashboard(), //tab1
              Community(), //tab2
              User(), //tab3
            ],
          ),
          bottomNavigationBar: TabBar(
            indicatorColor:
                Color(0xFF367750), // Color for selected tab underline
            labelColor: Color(0xFF367750), // Color for selected tab
            unselectedLabelColor: Colors.grey, //Color for unselected tab
            indicatorWeight: 4.0, //adjust height of the underline
            tabs: [
              Tab(
                icon: Icon(
                  Icons.local_florist_outlined,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.people,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.account_circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

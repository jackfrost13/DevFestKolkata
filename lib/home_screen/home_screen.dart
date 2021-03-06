import 'package:devfest_18_kolkata/home_screen/hiding_app_bar.dart';
import 'package:devfest_18_kolkata/screens/announcement_screen/announcement_screen.dart';
import 'package:devfest_18_kolkata/screens/chat_screen/chat_screen.dart';
import 'package:devfest_18_kolkata/screens/invitiation_detail_screen/invitation_detail_screen.dart';
import 'package:devfest_18_kolkata/screens/organisers_details_screen/organisers_details_screen.dart';
import 'package:devfest_18_kolkata/screens/session_detail_screen/session_detail_screen.dart';
import 'package:devfest_18_kolkata/screens/sm_feed_screen/social_media_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        TabBarView(
          controller: _tabController,
          children: <Widget>[
            SessionDetailScreen(),
            InvitationDetailScreen(),
            SocialMediaScreen(),
            ChatScreen(),
            AnnouncementScreen(),
            OrganisersDetailsScreen(),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: HidingAppBar(
              tabController: _tabController,
            ))
      ],
    );
  }
}

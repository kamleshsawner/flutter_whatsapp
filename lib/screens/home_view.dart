import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/camera_page.dart';
import 'package:flutter_whatsapp/screens/chat_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this,initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Clone'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          PopupMenuButton<String>(
              onSelected: (value){
                print(value);
              },
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem( child:  Text('New Group'),value: 'New Group',),
              PopupMenuItem( child:  Text('New Broadcast'),value: 'New Broadcast',),
              PopupMenuItem( child:  Text('Whatsapp Web'),value: 'Whatsapp Web',),
              PopupMenuItem( child:  Text('Starred Messages'),value: 'Starred Messages',),
              PopupMenuItem( child:  Text('Setting'),value: 'Setting',),
            ];
          }),
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHAT',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CameraPage(),
          ChatView(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}

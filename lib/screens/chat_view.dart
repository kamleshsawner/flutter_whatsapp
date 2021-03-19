import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/model/userchat.dart';
import 'package:flutter_whatsapp/widgets/userchat_list_view.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

  List<Users> user_list;

  @override
  void initState() {
    super.initState();
    user_list = Users.getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
          itemCount: user_list.length,
          itemBuilder: (context,index){
            return UserListChatView(user: user_list[index],);
          }),
    );
  }
}

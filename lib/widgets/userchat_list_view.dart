import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_whatsapp/model/userchat.dart';

class UserListChatView extends StatelessWidget{

  Users user;

  UserListChatView({this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(user.image,color: Colors.white,),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(user.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            trailing: Text(user.time),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.done_all),
                SizedBox(width: 5,),
                Text(user.current_msg,style: TextStyle(fontSize: 13),)
              ],
            ),
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }


}

import 'package:flutter_whatsapp/util/my_assets.dart';

class Users {

  int id;
  String name;
  String current_msg;
  bool is_group;
  String image;
  String time;



  Users({this.id,this.name,this.current_msg,this.image,this.time,this.is_group});

  static List<Users> getUserList(){
    var list = List<Users>();
    list.add(Users(name: 'Kamlesh',current_msg: 'hi Kamlesh',id: 1,image: MyAssets.ICON_PERSON,is_group: true,time: '18:06'));
    list.add(Users(name: 'Rahul',current_msg: 'how are you ?',id: 2,image: MyAssets.ICON_PERSON,is_group: true,time: '12:06'));
    list.add(Users(name: 'Riteserve',current_msg: 'whatsup bro..',id: 3,image: MyAssets.ICON_GROUP,is_group: false,time: '11:15'));
    list.add(Users(name: 'Dhara',current_msg: 'hi dahar',id: 4,image: MyAssets.ICON_PERSON,is_group: true,time: '15:10'));
    list.add(Users(name: 'Lando',current_msg: 'hello buddy',id:5 ,image: MyAssets.ICON_GROUP,is_group: false,time: '08:05'));
    return list;
  }


}
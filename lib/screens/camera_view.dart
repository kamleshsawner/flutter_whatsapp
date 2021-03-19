import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

class CameraView extends StatefulWidget {
  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {

  CameraController _cameraController;
  Future<void> cameraValue;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(cameras[0],ResolutionPreset.high);
    cameraValue = _cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FutureBuilder(
              future: cameraValue,
              builder: (context,snapshot){
                if(snapshot.connectionState == ConnectionState.done){
                  return CameraPreview(_cameraController);
                }else{
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
          }),
          // Positioned(
          //   bottom: 0.0,
          //   child: Container(
          //     color: Colors.black,
          //     width: MediaQuery.of(context).size.width,
          //     child: Column(
          //       children: <Widget>[
          //         Row(
          //           mainAxisSize: MainAxisSize.max,
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: <Widget>[
          //             IconButton(onPressed: (){},icon: Icon(Icons.flash_on,color:Colors.white,size: 30,),),
          //             InkWell(child: Icon(Icons.panorama_fish_eye,color:Colors.white,size: 70,),),
          //             IconButton(onPressed: (){},icon: Icon(Icons.flip_camera_ios,color:Colors.white,size: 30,),),
          //           ],
          //         ),
          //         SizedBox(height: 5,),
          //         Text('Hold for Video,Tab for Camera',style: TextStyle(color: Colors.white,fontSize: 14),)
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }


}

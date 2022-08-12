import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tafi/data_storage.dart';
import 'package:tafi/global_component.dart';
import 'package:tafi/screens/profile/edit_profile_screen.dart';
import 'package:tafi/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late File _imageFile;
  final ImagePicker picker = ImagePicker();
  bool hasImage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(

          children: [
            24.height,
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person_add_alt_1_outlined),
                  Text(
                    "Salvador Valverde",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Expanded(
              child: ListView(

                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Stack(
                      children: [ Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Stack(
                              children:[ ClipOval(
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl:
                                  "https://q5n8c8q9.rocketcdn.me/wp-content/uploads/2018/08/The-20-Best-Royalty-Free-Music-Sites-in-2018.png",
                                  height: 100.0,
                                  width: 100.0,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ), Positioned(child: Icon(Icons.edit),right: 0,bottom: 5,),
                           ] ),
                          ),

                        ],
                      ),

                      ]
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Center(child: Text(
                    "@salvadordev",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "36",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "13",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "143",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          width: 140,
                          height: 47,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: Center(
                            child: Text(
                              "Edit profile",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),onTap: (){EditProfileScreen().launch(context);},
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 45,
                        height: 47,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(child: Icon(Icons.bookmark)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.black,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/Ii4Cv63yG9iYawDtKC/giphy.gif",
                              placeholder: (context, url) =>
                                  Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/tqfS3mgQU28ko/giphy.gif",
                              placeholder: (context, url) =>
                                  Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/3o72EX5QZ9N9d51dqo/giphy.gif",
                              placeholder: (context, url) =>
                                  Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/4oMoIbIQrvCjm/giphy.gif",
                              placeholder: (context, url) =>
                                  Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/aZmD30dCFaPXG/giphy.gif",
                              placeholder: (context, url) =>
                                  Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border:
                              Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                              "https://media.giphy.com/media/NU8tcjnPaODTy/giphy.gif",
                              placeholder: (context, url) =>
                                  Padding(
                                    padding: const EdgeInsets.all(35.0),
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  getImageOnClick() {
    return Stack(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: screenHeight / 3,
              width: screenWidth / 3,
              decoration: boxDecorationWithRoundedCorners(
                border: Border.all(color: appThemeColor, width: 0.3),
                boxShape: BoxShape.circle,
                decorationImage: DecorationImage(
                    fit: BoxFit.cover,
                    image: AppData.getString('image')
                    as ImageProvider),
              )),
        ),
        Positioned(bottom: 10, right: 4, child: editCamera()),
      ],
    );
  }

  editCamera() {
    return InkWell(
      onTap: requestCameraPermission,
      child: Card(
        color: redColor,
        elevation: 5,
        shape: const CircleBorder(),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: appThemeColor.withOpacity(0.8),
          ),
          child: const Center(
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 15,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status == PermissionStatus.granted) {
      showModalBottomSheet(
        context: context,
        builder: (context) => bottomsheet(),
      );
    } else if (status == PermissionStatus.denied) {
      requestCameraPermission();
    } else if (status == PermissionStatus.permanentlyDenied) {
      print('Permission Permanently Denied');
      await openAppSettings();
    }
  }

  bottomsheet() {
    return Container(
      height: 40,
      decoration: boxDecorationWithShadow(),
      child: Column(children: [
        10.height,
        Text(("Select"),
            style:
            GoogleFonts.aBeeZee(fontSize: 15, fontWeight: FontWeight.bold)),
        10.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: appThemeColor,
              onPressed: () {
                takePhoto(ImageSource.gallery);
                finish(context);
              },
              child: Text("Gallery"),
            ),
            MaterialButton(
              color: appThemeColor,
              onPressed: () {
                takePhoto(ImageSource.camera);
                finish(context);
              },
              child: Text("Camera"),
            )
          ],
        )
      ]),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source,
    );
    setState(() {
      hasImage = true;
      _imageFile = File(pickedFile!.path);
      //pController.image.value = pickedFile.path;
      AppData.setString("image", pickedFile.path).toString();
      //imagePath = pickedFile.path;
    });
  }
}

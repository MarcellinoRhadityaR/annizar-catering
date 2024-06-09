import 'package:catering6/constants.dart';
import 'package:catering6/routes.dart';
import 'package:catering6/screens/profile/components/myaccount_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';
import '../sign_in/sign_in_screen.dart';
import 'components/helpcenter_screen.dart';
import 'components/myaccount_screen.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String _imagePath = ""; // Path to user image

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SafeArea(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.photo_library),
                            title: Text('Choose from gallery'),
                            onTap: () {
                              Navigator.pop(context);
                              // _pickImage(ImageSource.gallery);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.camera_alt),
                            title: Text('Take a photo'),
                            onTap: () {
                              Navigator.pop(context);
                              // _pickImage(ImageSource.camera);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _imagePath.isNotEmpty ? AssetImage(_imagePath) : null,
                backgroundColor: Colors.orange, // Warna latar belakang avatar
                child: _imagePath.isEmpty ? Icon(Icons.add_a_photo, color: Colors.white) : null, // Icon tambah foto
              ),
            ),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccountScreen()),
                );
              },
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpCenterScreen()),
                );
              },
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    iconColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    title: const Text("ARE YOU SURE FOR LOGOUT?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("CANCEL"),
                        style: TextButton.styleFrom(foregroundColor: Colors.orange),
                      ),
                      TextButton(
                        onPressed: () async {
                          await _logout(context);
                        },
                        child: const Text("YES"),
                        style: TextButton.styleFrom(foregroundColor: Colors.orange),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    // Hapus data pengguna yang tersimpan
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    // Navigasi ke layar login atau layar awal
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SignInScreen(),
      ),
    );
  }
}

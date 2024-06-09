import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String? _imagePath;

  @override
  void initState() {
    super.initState();
    _nameController.text = "John Doe";
    _emailController.text = "john.doe@example.com";
    _phoneController.text = "+1 234 567 890";
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _saveProfile() {
    setState(() {
      Navigator.pop(context);
    });
  }

  void _editProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfileScreen(
          nameController: _nameController,
          emailController: _emailController,
          phoneController: _phoneController,
          onSave: _saveProfile,
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ListTile(
              //   leading: Icon(Icons.photo_library),
              //   title: Text('Gallery'),
              //   onTap: () async {
              //     final file = await picker.getImage(source: ImageSource.gallery);
              //     Navigator.pop(context, file);
              //   },
              // ),
              // ListTile(
              //   leading: Icon(Icons.camera_alt),
              //   title: Text('Camera'),
              //   onTap: () async {
              //     final file = await picker.getImage(source: ImageSource.camera);
              //     Navigator.pop(context, file);
              //   },
              // ),
            ],
          ),
        );
      },
    );

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  Widget _buildProfileItem(String label, String text) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 20,
          color: Colors.orange,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: _editProfile,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _imagePath != null ? FileImage(File(_imagePath!)) : null,
                backgroundColor: Colors.orange,
                child: _imagePath == null
                    ? Icon(Icons.add_a_photo, color: Colors.white)
                    : null,
              ),
            ),
            SizedBox(height: 20),
            _buildProfileItem('Name', _nameController.text),
            SizedBox(height: 10),
            _buildProfileItem('Email', _emailController.text),
            SizedBox(height: 10),
            _buildProfileItem('Phone', _phoneController.text),
          ],
        ),
      ),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final VoidCallback onSave;

  EditProfileScreen({
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: onSave,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

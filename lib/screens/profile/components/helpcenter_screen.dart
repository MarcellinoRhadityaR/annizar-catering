import 'package:flutter/material.dart';
import '../../../theme.dart';

class HelpCenterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center'),
      ),
      body: ListView(
        
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Help Center',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FAQScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Support'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactSupportScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Documentation'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DocumentationScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Frequently Asked Questions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text('What is this app about?'),
            subtitle: Text('This app helps you manage your sales effectively.'),
          ),
          ListTile(
            title: Text('How to contact support?'),
            subtitle: Text('You can contact support via the Contact Support section in the Help Center.'),
          ),
          // Tambahkan pertanyaan dan jawaban lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}

class ContactSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Support'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Support',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Phone: +1 234 567 890'),
            SizedBox(height: 10),
            Text('Email: support@salesapp.com'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi untuk menelepon atau mengirim email
              },
              child: Text('Contact Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class DocumentationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documentation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Documentation',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
                'Welcome to the Sales App documentation. Here you will find tutorials and guides to help you use the app effectively.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi untuk membuka dokumentasi lebih lanjut
              },
              child: Text('View More'),
            ),
          ],
        ),
      ),
    );
  }
}

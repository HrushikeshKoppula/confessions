import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Anonymous Confessions')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('confessions')
            .orderBy('timestamp', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final confessions = snapshot.data!.docs;
          return ListView.builder(
            itemCount: confessions.length,
            itemBuilder: (context, index) {
              final confession = confessions[index];
              return ListTile(
                title: Text(confession['text']),
                subtitle: Text(
                    (confession['timestamp'] as Timestamp).toDate().toString()),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/post');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

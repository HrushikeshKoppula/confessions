import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostConfessionScreen extends StatefulWidget {
  @override
  _PostConfessionScreenState createState() => _PostConfessionScreenState();
}

class _PostConfessionScreenState extends State<PostConfessionScreen> {
  final _textController = TextEditingController();

  Future<void> _postConfession() async {
    final text = _textController.text;
    if (text.isNotEmpty) {
      final confession = {
        'text': text,
        'timestamp': Timestamp.now(),
      };
      await FirebaseFirestore.instance
          .collection('confessions')
          .add(confession);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Confession')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(labelText: 'Your confession'),
              maxLines: 4,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _postConfession,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

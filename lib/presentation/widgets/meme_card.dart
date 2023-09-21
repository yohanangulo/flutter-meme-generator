import 'package:flutter/material.dart';
import 'package:learn_freezed/domain/meme.dart';

class MemeCard extends StatefulWidget {
  const MemeCard(this.meme, {super.key});

  final Meme meme;

  @override
  State<MemeCard> createState() => _MemeCardState();
}

class _MemeCardState extends State<MemeCard> {
  @override
  Widget build(BuildContext context) {
    if (widget.meme == Meme.empty()) {
      return const Text(
        'No meme loaded yet',
        style: TextStyle(
          fontSize: 24,
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.meme.category,
              style: const TextStyle(
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: const Text('Meme image'),
            ),
            const SizedBox(height: 8),
            const Text('Meme title'),
          ],
        ),
      ),
    );
  }
}

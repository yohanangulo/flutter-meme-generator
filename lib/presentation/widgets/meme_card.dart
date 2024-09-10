import 'package:flutter/material.dart';
import 'package:learn_freezed/domain/meme.dart';

class MemeCard extends StatelessWidget {
  const MemeCard(this.meme, {super.key});

  final Meme meme;

  @override
  Widget build(BuildContext context) {
    if (meme == Meme.empty()) {
      return const Text(
        'No meme loaded yet',
        style: TextStyle(
          fontSize: 24,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                child: Image.network(
                  height: 350,
                  width: double.infinity,
                  meme.image,
                ),
              ),
              const SizedBox(height: 8),
              Text(meme.name),
            ],
          ),
        ),
      ),
    );
  }
}

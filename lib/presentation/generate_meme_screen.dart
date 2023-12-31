import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_freezed/core/routes/routes.dart';

class GenerateMemeScreen extends StatelessWidget {
  const GenerateMemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic visibleMeme = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meme generator'),
        actions: [
          IconButton(
            onPressed: () {
              context.go(Routes.home);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Container(
        child: visibleMeme != null
            ? Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Meme Category',
                          style: TextStyle(
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
                ),
              )
            : const Center(
                child: Text('No meme loaded yet'),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.skip_next),
        onPressed: () {},
      ),
    );
  }
}

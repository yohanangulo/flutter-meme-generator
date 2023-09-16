import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_freezed/core/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Click start to start generating some memes',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Material(
                color: Colors.deepPurple,
                shape: const CircleBorder(),
                child: InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    context.go(Routes.generateMeme);
                  },
                  customBorder: const CircleBorder(),
                  child: Ink(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    height: 100,
                    width: 100,
                    child: const Center(
                      child: Text(
                        'START!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

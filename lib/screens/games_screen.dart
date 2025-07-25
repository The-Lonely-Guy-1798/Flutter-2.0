// lib/screens/games_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../games/word_guess/word_guess_screen.dart';
import '../games/crossword/crossword_level_selection_screen.dart';
import '../games/word_connect/word_connect_screen.dart'; // <-- NEW: Import the new game
import '../widgets/games/game_background.dart';

class GameInfo {
  final String title;
  final String description;
  final IconData icon;
  final Widget screen;

  GameInfo({
    required this.title,
    required this.description,
    required this.icon,
    required this.screen,
  });
}

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GameInfo> games = [
      // --- NEW: Added Word Connect to the list of games ---
      GameInfo(
        title: "Word Connect",
        description: "Swipe letters to form hidden words.",
        icon: Icons.gesture_rounded,
        screen: const WordConnectScreen(),
      ),
      GameInfo(
        title: "Guess the Word",
        description: "Find the hidden word before you run out of lives!",
        icon: Icons.abc_rounded,
        screen: const WordGuessScreen(),
      ),
      GameInfo(
        title: "Crossword Puzzle",
        description: "Test your knowledge with classic word puzzles.",
        icon: Icons.grid_on_rounded,
        screen: const CrosswordLevelSelectionScreen(),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent, 
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        title: Text('Games', style: GoogleFonts.orbitron(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GameBackground(
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(16, 120, 16, 100), // <-- FIXED: Adjusted bottom padding
          itemCount: games.length,
          itemBuilder: (context, index) {
            final game = games[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              color: Colors.black.withAlpha((255 * 0.3).round()), 
              shadowColor: Colors.black.withAlpha((255 * 0.2).round()),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.white.withAlpha((255 * 0.2).round()))
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => game.screen),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(game.icon, size: 40, color: Colors.cyanAccent),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              game.title,
                              style: GoogleFonts.exo2(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              game.description,
                              style: TextStyle(color: Colors.white.withAlpha((255 * 0.7).round())),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white.withAlpha((255 * 0.7).round())),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MultiPurposeLifeApp());
}

class MultiPurposeLifeApp extends StatelessWidget {
  const MultiPurposeLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Life Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const MainHomeScreen(),
    );
  }
}

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HabitTrackerPage(),
    const ExpenseTrackerPage(),
    const AIAssistantPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All-in-One Life Assistant'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'ልምዶች',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'ፋይናንስ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'AI ረዳት',
          ),
        ],
      ),
    );
  }
}

class HabitTrackerPage extends StatelessWidget {
  const HabitTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('የልምድ እና ጤና መከታተያ ገጽ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}

class ExpenseTrackerPage extends StatelessWidget {
  const ExpenseTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('የወጪ እና ገቢ መከታተያ ገጽ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}

class AIAssistantPage extends StatelessWidget {
  const AIAssistantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('የ AI ረዳት ገጽ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}

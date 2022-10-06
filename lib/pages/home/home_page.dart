import 'package:flutefy/pages/home/home_body.dart';
import 'package:flutefy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // variaveis
  List<IconData> items = [
    Feather.home,
    Feather.book,
    Feather.search,
    Feather.settings,
  ];
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: buildBody(),
      bottomNavigationBar: buildFooter(),
    );
  }

  Widget buildBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        const HomeBody(),
        buildBodyTitle(value: "Biblioteca"),
        buildBodyTitle(value: "Pesquisa"),
        buildBodyTitle(value: "Configurações"),
      ],
    );
  }

  Widget buildFooter() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: black),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(items.length, (index) {
            return IconButton(
              onPressed: () {
                if (!mounted) return;
                setState(() {
                  activeTab = index;
                });
              },
              icon: Icon(
                items[index],
                color: activeTab == index ? primary : white,
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildBodyTitle({required value}) {
    return Center(
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 20,
          color: white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

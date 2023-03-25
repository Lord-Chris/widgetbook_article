import 'package:flutter/material.dart';

import '../shared/home_item.dart';

const asset1 = "assets/Rectangle.png";
const asset2 = "assets/Rectangle (1).png";

class HomeView extends StatelessWidget {
  final bool isActive;
  const HomeView({
    Key? key,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.onBackground,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
        title: Text(
          isActive ? 'Online' : 'Offline',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        actions: [
          Switch.adaptive(
            value: isActive,
            onChanged: onChanged,
            activeColor: colors.primary,
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (!isActive) {
            return const Center(
              child: Text(
                'You are not online',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }
          return ListView.separated(
            itemCount: 20,
            separatorBuilder: (_, __) => const SizedBox(height: 15),
            itemBuilder: (context, index) {
              return const HomeItem(
                name: 'Esther Berry',
                image: asset1,
                pickUp: '7958 Swift Village',
                dropOff: '7958 Swift Village',
                amount: 325.00,
              );
            },
          );
        },
      ),
    );
  }

  void onChanged(bool value) {}
}

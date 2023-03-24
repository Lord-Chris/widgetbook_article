import 'package:flutter/material.dart';

const asset1 = "assets/Rectangle.png";
const asset2 = "assets/Rectangle (1).png";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        title: const Text(
          'Online',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        actions: [
          Switch.adaptive(
            value: true,
            onChanged: onChanged,
            activeColor: colors.primary,
          ),
        ],
      ),
      body: ListView.separated(
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
      ),
    );
  }

  void onChanged(bool value) {}
}

class HomeItem extends StatelessWidget {
  final String name;
  final String image;
  final double amount;
  final String pickUp;
  final String dropOff;

  const HomeItem({
    Key? key,
    required this.name,
    required this.image,
    required this.amount,
    required this.pickUp,
    required this.dropOff,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: 2,
      color: colors.onBackground,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 13, 15, 12),
            child: Row(
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: AssetImage(image)),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        decoration: BoxDecoration(
                          color: colors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Item Size: 3kg - 10kg',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '₦ $amount',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '2.2 km',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: colors.background,
            padding: const EdgeInsets.fromLTRB(16, 19, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pick up'.toUpperCase(),
                  style: TextStyle(
                    color: colors.secondary.withOpacity(.3),
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  pickUp,
                  style: TextStyle(
                    color: colors.secondary.withOpacity(.8),
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 13),
                const Divider(height: 1),
                const SizedBox(height: 23),
                Text(
                  'Drop off'.toUpperCase(),
                  style: TextStyle(
                    color: colors.secondary.withOpacity(.3),
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  dropOff,
                  style: TextStyle(
                    color: colors.secondary.withOpacity(.8),
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

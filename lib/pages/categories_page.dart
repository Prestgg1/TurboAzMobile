import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app_colors.dart';
import '../app_router.g.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  final List<CategoryItem> categories = const [
    CategoryItem(name: 'Sedan', icon: Icons.directions_car),
    CategoryItem(name: 'SUV', icon: Icons.shutter_speed),
    CategoryItem(name: 'Hatchback', icon: Icons.car_repair),
    CategoryItem(name: 'Coupe', icon: Icons.sports_motorsports),
    CategoryItem(name: 'Universal', icon: Icons.local_shipping),
    CategoryItem(name: 'Off-road', icon: Icons.terrain),
    CategoryItem(name: 'Motosikl', icon: Icons.motorcycle),
    CategoryItem(name: 'Avtobus', icon: Icons.directions_bus),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kateqoriyalar', style: TextStyle(color: AppColors.white)),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return InkWell(
            onTap: () {
              context.go(Routes.products);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category.icon, size: 40, color: AppColors.primary),
                  const SizedBox(height: 12),
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryItem {
  final String name;
  final IconData icon;

  const CategoryItem({required this.name, required this.icon});
}

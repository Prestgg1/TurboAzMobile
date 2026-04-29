import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'turbo.az',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.login, color: AppColors.white),
            onPressed: () {
              context.push('/login');
            },
            tooltip: 'Giriş',
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.primaryLightBg,
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  Icon(Icons.directions_car, color: AppColors.red, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Ən son elanlar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          color: AppColors.grey300,
                          child: const Center(
                            child: Icon(
                              Icons.directions_car,
                              size: 50,
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${2010 + index} Hyundai Elantra',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${15000 + (index * 1000)} AZN',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Bakı, bugün ${10 + index % 12}:00',
                              style: TextStyle(
                                color: AppColors.grey600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }, childCount: 10),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: AppColors.white),
        tooltip: 'Yeni elan',
      ),
    );
  }
}

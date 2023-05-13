import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/domain/cuisines/usecase.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CuisinesUsecase usecase = inject();
    return Scaffold(
      body: StreamBuilder(
        stream: usecase.cuisinesStream(),
        builder: (context, snapshot) {
          final docs = snapshot.data?.docs;
          if (docs == null) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }

          return ListView.separated(
            itemCount: docs.length,
            separatorBuilder: (_, __) => const SizedBox(height: 20),
            itemBuilder: (context, index) {
              final doc = docs[index].data();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CachedNetworkImage(imageUrl: doc.image),
                    const SizedBox(height: 20),
                    Text(
                      doc.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Ingredients:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...doc.ingredients.map(
                      (ingredient) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          ingredient,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Procedure:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...doc.procedure.map(
                      (procedure) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          procedure,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

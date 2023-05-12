import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/domain/tables/usecase.dart';
import 'package:appinio_restaurant/presentation/models/table.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TablesUsecase usecase = inject();
    return Scaffold(
      body: StreamBuilder(
        stream: usecase.tablesStream(),
        builder: (context, snapshot) {
          final docs = snapshot.data?.docs;
          if (docs == null) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }

          final buffer = StringBuffer();
          for (final doc in docs) {
            buffer.write('Id: ');
            buffer.write(doc.id);
            buffer.writeln();
            for (final data in doc.modelJson().entries) {
              buffer.write('  ');
              buffer.write(data.key);
              buffer.write(': ');
              buffer.write(data.value);
              buffer.writeln();
            }
            buffer.writeln();
          }
          return Center(
            child: Text(buffer.toString()),
          );
        },
      ),
    );
  }
}

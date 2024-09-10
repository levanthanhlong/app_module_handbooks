import 'package:flutter/material.dart';
import 'package:hugo_app/module/presentation/widget/page_content.dart';

import '../../model/handbook.dart';
import '../../repository/handbook_repository.dart';

class HandbookPage extends StatefulWidget {
  const HandbookPage({super.key});

  @override
  _HandbookPageState createState() => _HandbookPageState();
}

class _HandbookPageState extends State<HandbookPage> {
  late Future<List<Handbook>> futureHandbooks;

  @override
  void initState() {
    super.initState();
    futureHandbooks = HandbookRepository().loadHandbooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách cẩm nang'),
      ),
      body: FutureBuilder<List<Handbook>>(
        future: futureHandbooks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Có lỗi xảy ra!'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Không có cẩm nang nào!'));
          }

          final handbooks = snapshot.data!;

          return ListView.builder(
            itemCount: handbooks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(handbooks[index].title),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PageContent(index: index, handbooks: handbooks)),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final int index;
  final List handbooks;

  const PageContent({super.key, required this.index, required this.handbooks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(handbooks[index].title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                handbooks[index].subtitle1,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              Text(
                handbooks[index].content1,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              if (handbooks[index].imgURL1 != null)
                Image.asset(
                  'lib/module/assets/img/${handbooks[index].imgURL1}',
                  fit: BoxFit.cover,
                  width: 500,
                ),
              const SizedBox(height: 16),
              if (handbooks[index].imgURL2 != null)
                Image.asset(
                  'lib/module/assets/img/${handbooks[index].imgURL2}',
                  fit: BoxFit.cover,
                  width: 500,
                ),
              const SizedBox(height: 16),
              Text(
                handbooks[index].subtitle2,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              Text(
                handbooks[index].content2,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

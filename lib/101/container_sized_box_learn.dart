import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            height: 50,
            constraints: const BoxConstraints(
                maxWidth: 100, minWidth: 100, maxHeight: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            decoration: ProjectUtility.boxDecoration,
            child: Text('cc' * 20),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.blue,
      border: Border.all(width: 10, color: Colors.red),
      borderRadius: BorderRadius.circular(20));
}

class ProjectContainerDecoration extends BoxDecoration {
  const ProjectContainerDecoration() : super();
}

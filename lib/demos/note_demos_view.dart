import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final String _title = 'Create Your First Note';
  final String _description = 'Add a note';
  final String _createNote = "Create a Note";
  final String _importNote = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItems.horizantalPadding,
        child: Column(
          children: [
            Image.asset('assets/images/phto1.png'),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                title: _description * 8,
              ),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeight,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headlineSmall,
            ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    super.key,
    required this.title,
    this.textAlign = TextAlign.center,
  });

  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.red, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.black),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

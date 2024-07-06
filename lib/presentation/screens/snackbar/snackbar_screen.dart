import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('hola mundo'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('estas seguro?'),
        content: const Text(
            'Magna sit esse aute sint. Nostrud eu cupidatat incididunt minim et esse. Sunt voluptate proident qui et consequat qui dolor est. Sit mollit reprehenderit mollit ea ex consectetur ut do nulla non ad ad duis nisi. Nostrud dolor duis amet do id ad sit aliqua ut. Ullamco sit cillum commodo laboris magna anim ullamco amet quis in sit.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Nostrud excepteur sit aliqua ut sit adipisicing duis sint laborum. Eiusmod qui proident veniam labore eu duis irure aliqua ad velit mollit non. Ut enim do culpa dolor excepteur esse. Ad nostrud sit ea veniam eiusmod elit anim.')
                  ]);
                },
                child: const Text('licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}

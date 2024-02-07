

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});


  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Este es un snackbar'),
      action: SnackBarAction(label: 'OK!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Enim aliqua nulla proident fugiat amet do deserunt. Nostrud excepteur fugiat nulla dolore. Est eu eiusmod mollit nostrud esse non sint ex aute ut.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Commodo adipisicing quis duis aute nisi velit minim velit laborum minim ea ullamco excepteur minim. Occaecat do occaecat proident nostrud et. Cillum laborum pariatur non aliquip occaecat aute occaecat officia et cupidatat magna exercitation dolore reprehenderit.')
                  ]
                );
              }, 
              child: const Text('Licencias usadas')
            ),
            FilledButton(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar diálogo')
            )
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context), 
      ),
    );
  }
}
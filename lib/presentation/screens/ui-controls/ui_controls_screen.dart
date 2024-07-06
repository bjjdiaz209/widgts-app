import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selecTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLuinch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('vehiculo transporte'),
          subtitle: Text('$selecTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('viajar por carro'),
              value: Transportation.car,
              groupValue: selecTransportation,
              onChanged: (value) => setState(() {
                selecTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('viajar por barco'),
              value: Transportation.boat,
              groupValue: selecTransportation,
              onChanged: (value) => setState(() {
                selecTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('viajar por avion'),
              value: Transportation.plane,
              groupValue: selecTransportation,
              onChanged: (value) => setState(() {
                selecTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Subamarine'),
              subtitle: const Text('viajar por Submarino'),
              value: Transportation.submarine,
              groupValue: selecTransportation,
              onChanged: (value) => setState(() {
                selecTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('desyuno'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('almuerzo'),
          value: wantsLuinch,
          onChanged: (value) => setState(() {
            wantsLuinch = !wantsLuinch;
          }),
        ),
        CheckboxListTile(
          title: const Text('desyuno'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}

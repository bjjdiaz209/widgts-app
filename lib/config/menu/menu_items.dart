import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter',
      subTitle: 'introduccion a riverpood',
      link: '/counter-river',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Botones',
      subTitle: 'varios botones flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'PogressIndicators',
      subTitle: 'generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'indicadores de pantalla',
      link: '/snackbar',
      icon: Icons.info_sharp),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'stateful widget container',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'UI controls + Tiles',
      subTitle: 'una serie de controles flutter',
      link: '/ui-controls',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'introduccion a la aplicacion',
      subTitle: 'peque;os tutoriales',
      link: '/app_tutorial',
      icon: Icons.access_alarm_outlined),
  MenuItem(
      title: 'Infinte scroll images',
      subTitle: 'una serie de imagenes',
      link: '/infinite_scroll',
      icon: Icons.dangerous_sharp),
  MenuItem(
      title: 'Cambiar tema',
      subTitle: 'cambiar tema de la aplicacion',
      link: '/theme_change',
      icon: Icons.color_lens_sharp),
];

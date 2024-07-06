import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);
//un simple booleano
final isDarkmodeProvider = StateProvider((ref) => false);
//un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//objeto de tipo AppTheme(custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //state = estado = new AppTheme

  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}

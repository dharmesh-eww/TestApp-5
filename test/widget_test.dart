import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:astrodaily/main.dart';
void main(){testWidgets('AstroDaily renders Today', (tester)async{await tester.pumpWidget(const ProviderScope(child:AstroDailyApp()));await tester.pumpAndSettle();expect(find.text('A little cosmic\nclarity for today.'),findsOneWidget);expect(find.text('Today'),findsOneWidget);});}
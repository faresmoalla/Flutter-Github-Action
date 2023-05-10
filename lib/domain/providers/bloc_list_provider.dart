import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rev/domain/models/bloc.dart';

enum BlocListType {
  all,
}

class BlocListProvideer extends StateNotifier<List<Bloc>> {
  final BlocListType type;

  BlocListProvideer(this.type, [List<Bloc> initial = const []])
      : super(initial);
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/core/api/api_consumer.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit(this.api) : super(QuranInitial());
  final ApiConConsumer api;

}

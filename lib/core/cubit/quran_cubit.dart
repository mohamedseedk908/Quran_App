import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../quran_app/lib/core/api/api_consumer.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit(this.api) : super(QuranInitial());
  final ApiConConsumer api;
  // getQuran() async {
  //   try {
  //     final response = await api.get();
  //     print(response.data['data']['surahs']);
  //   } on Exception catch (e) {
  //     // TODO
  //   }
  // }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guiademoteisgo/app/app.dart';

class GoNowCubit extends Cubit<GoNowState> {
  GoNowCubit({required FetchMotelsUsecase fetchMotelsUsecase})
      : _fetchMotelsUsecase = fetchMotelsUsecase,
        super(const GoNowInitial());

  final FetchMotelsUsecase _fetchMotelsUsecase;

  Future<void> fetchHomeMotels() async {
    final result = await _fetchMotelsUsecase();

    return result.fold(
      (failure) => emit(
        const GoNowError(
          message: 'Infelizmente nao encontramos nenhum'
              ' motel com reservas na sua região.',
        ),
      ),
      (motelData) => emit(GoNowLoaded(motelData: motelData)),
    );
  }
}

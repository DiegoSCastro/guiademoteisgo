import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'go_now_state.freezed.dart';

@freezed
sealed class GoNowState with _$GoNowState {
  const factory GoNowState.initial() = GoNowInitial;

  const factory GoNowState.loading() = GoNowLoading;

  const factory GoNowState.loaded({required MotelData motelData}) = GoNowLoaded;

  const factory GoNowState.error({required String message}) = GoNowError;
}

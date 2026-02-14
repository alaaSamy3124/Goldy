import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/silver/data/repo/silver_repo.dart';
import 'package:goldy/features/silver/presentation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());

  Future<void> getSilver() async {
    final res = await silverRepo.SilverData();
    res.fold(
      (error) {
        emit(SilverErrorState(errMsg: error));
      },
      (silverModel) {
        emit(SilverSuccessState(silverModel: silverModel));
      },
    );
  }
}

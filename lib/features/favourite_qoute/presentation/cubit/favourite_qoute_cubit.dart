import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'favourite_qoute_state.dart';

class FavouriteQouteCubit extends Cubit<FavouriteQouteState> {
  FavouriteQouteCubit() : super(FavouriteQouteInitial());
}

import 'dart:async';

import 'package:cred_pal/features/merchants/data/repositories/merchant_repo_impl.dart';
import 'package:cred_pal/features/merchants/data/source/merchant_local_source.dart';
import 'package:cred_pal/features/merchants/domain/entities/merchant_entities.dart';
import 'package:cred_pal/features/merchants/domain/repositories/merchant_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MerchantNotifier extends AsyncNotifier<MerchantEntities> {
  @override
  FutureOr<MerchantEntities> build() {
    return fetchMerchants();
  }

  final MerchantRepo _repo = MerchantRepoImpl(
    remoteDataSource: MerchantLocalSource(),
  );

  Future<MerchantEntities> fetchMerchants({bool shouldLoad = true}) async {
    if (shouldLoad) {
      state = const AsyncValue.loading();
    }

    final result = _repo.fetchMerchants();

    result.fold(
      (l) {
        state = AsyncValue.error(l.message, StackTrace.current);
      },
      (r) {
        final currentState = state.value ?? MerchantEntities.initial();
        final newState = currentState.copyWith(merchants: r);
        state = AsyncValue.data(newState);
      },
    );

    return state.value ?? MerchantEntities.initial();
  }
}

final merchantsProviderNotifier =
    AsyncNotifierProvider<MerchantNotifier, MerchantEntities>(
      MerchantNotifier.new,
    );

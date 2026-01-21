import 'dart:async';

import 'package:cred_pal/features/phones_gadgets/data/repositories/phone_gadget_repo_impl.dart';
import 'package:cred_pal/features/phones_gadgets/data/source/phone_gadget_local_source.dart';
import 'package:cred_pal/features/phones_gadgets/domain/entities/phone_gadget_entities.dart';
import 'package:cred_pal/features/phones_gadgets/domain/repositories/phone_gadget_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneGadgetNotifier extends AsyncNotifier<PhoneGadgetEntities> {
  @override
  FutureOr<PhoneGadgetEntities> build() {
    return fetchPhones();
  }

  final PhoneGadgetRepo _repo = PhoneGadgetRepoImpl(
    remoteDataSource: PhoneGadgetLocalSource(),
  );

  Future<PhoneGadgetEntities> fetchPhones({bool shouldLoad = true}) async {
    if (shouldLoad) {
      state = const AsyncValue.loading();
    }

    final result = _repo.fetchPhones();

    result.fold(
      (l) {
        state = AsyncValue.error(l.message, StackTrace.current);
      },
      (r) {
        final currentState = state.value ?? PhoneGadgetEntities.initial();
        final newState = currentState.copyWith(phones: r);
        state = AsyncValue.data(newState);
      },
    );

    return state.value ?? PhoneGadgetEntities.initial();
  }
}

final gadgetsProviderNotifier =
    AsyncNotifierProvider<PhoneGadgetNotifier, PhoneGadgetEntities>(
      PhoneGadgetNotifier.new,
    );

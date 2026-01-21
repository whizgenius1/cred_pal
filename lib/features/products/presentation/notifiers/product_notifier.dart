import 'dart:async';

import 'package:cred_pal/features/products/data/repositories/product_repo_impl.dart';
import 'package:cred_pal/features/products/data/source/product_local_source.dart';
import 'package:cred_pal/features/products/domain/entities/product_entities.dart';
import 'package:cred_pal/features/products/domain/repositories/product_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends AsyncNotifier<ProductEntities> {
  @override
  FutureOr<ProductEntities> build() {
    return fetchProducts();
  }

  final ProductRepo _repo = ProductRepoImpl(
    remoteDataSource: ProductLocalSource(),
  );

  Future<ProductEntities> fetchProducts({bool shouldLoad = true}) async {
    if (shouldLoad) {
      state = const AsyncValue.loading();
    }

    final result = _repo.fetchProducts();

    result.fold(
      (l) {
        state = AsyncValue.error(l.message, StackTrace.current);
      },
      (r) {
        final currentState = state.value ?? ProductEntities.initial();
        final newState = currentState.copyWith(products: r);
        state = AsyncValue.data(newState);
      },
    );

    return state.value ?? ProductEntities.initial();
  }
}

final productsProviderNotifier =
    AsyncNotifierProvider<ProductNotifier, ProductEntities>(
      ProductNotifier.new,
    );

import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/pages/ledger/filter/filter_widget.dart';
import '/pages/ledger/search_transactions/search_transactions_widget.dart';

// Focus widget keys for this walkthrough
final iconButton3nmlyw29 = GlobalKey();
final iconButtonS2i4myvt = GlobalKey();

/// Ledger
///
/// You can filter transactions by clicking the filter button. Close the filter by clicking it again. You can search transactions using the magnifying glass.
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: iconButton3nmlyw29,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const FilterWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonS2i4myvt,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const SearchTransactionsWidget(),
          ),
        ],
      ),
    ];

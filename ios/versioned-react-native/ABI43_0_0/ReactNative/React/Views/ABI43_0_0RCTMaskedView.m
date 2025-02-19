/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "ABI43_0_0RCTMaskedView.h"

#import <ABI43_0_0React/ABI43_0_0UIView+React.h>

@implementation ABI43_0_0RCTMaskedView

- (void)didUpdateABI43_0_0ReactSubviews
{
  // ABI43_0_0RCTMaskedView expects that the first subview rendered is the mask.
  UIView *maskView = [self.ABI43_0_0ReactSubviews firstObject];
  self.maskView = maskView;

  // Add the other subviews to the view hierarchy
  for (NSUInteger i = 1; i < self.ABI43_0_0ReactSubviews.count; i++) {
    UIView *subview = [self.ABI43_0_0ReactSubviews objectAtIndex:i];
    [self addSubview:subview];
  }
}

- (void)displayLayer:(__unused CALayer *)layer
{
  // ABI43_0_0RCTView uses displayLayer to do border rendering.
  // We don't need to do that in ABI43_0_0RCTMaskedView, so we
  // stub this method and override the default implementation.
}

@end

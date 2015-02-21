//
//  SKNode+ABUtil.h
//  ABall
//
//  Created by traintrackcn on 21/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKNode (ABUtil)

- (void)center;
- (void)top;
- (void)bottom;
- (void)left;
- (void)offset:(CGPoint)offset;

@end

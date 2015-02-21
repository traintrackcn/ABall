//
//  SKNode+ABUtil.m
//  ABall
//
//  Created by traintrackcn on 21/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "SKNode+ABUtil.h"

@implementation SKNode (ABUtil)

- (void)center{
    CGSize parentSize = self.parent.frame.size;
//    CGSize size = self.frame.size;
//    CGFloat x = (parentSize.width - size.width)/2.0;
//    CGFloat y = (parentSize.height - size.height)/2.0;
    CGFloat x = parentSize.width/2.0;
    CGFloat y = parentSize.height/2.0;
    [self setPosition:CGPointMake(x, y)];
    
//    TLOG(@"pos -> %@ %@ %@", NSStringFromCGPoint(self.position), NSStringFromCGSize(parentSize), NSStringFromCGSize(size));
}

- (void)top{
    CGSize parentSize = self.parent.frame.size;
    CGSize size = self.frame.size;
    CGFloat x = self.position.x;
    CGFloat y = parentSize.height - size.height;
    [self setPosition:CGPointMake(x, y)];
}

- (void)left{
//    CGSize parentSize = self.parent.frame.size;
    CGSize size = self.frame.size;
    CGFloat x = size.width/2;
    CGFloat y = self.position.y;
    [self setPosition:CGPointMake(x, y)];
}

- (void)bottom{
//    CGSize parentSize = self.parent.frame.size;
//    CGSize size = self.frame.size;
    CGFloat x = self.position.x;
    CGFloat y = 0;
//    CGFloat y = parentSize.height - size.height;
    [self setPosition:CGPointMake(x, y)];
}

- (void)offset:(CGPoint)offset{
    CGFloat x = self.position.x + offset.x;
    CGFloat y = self.position.y + offset.y;
    //    CGFloat y = parentSize.height - size.height;
    [self setPosition:CGPointMake(x, y)];
}

@end

//
//  AGNodeBlueprint.h
//  ABall
//
//  Created by traintrackcn on 20/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABScene.h"


@class ABCharacter;

@interface ABBlueprint : ABScene

- (ABCharacter *)character;
- (void)setTitle:(NSString *)title;

@property (nonatomic, strong) SKLabelNode *titleLabel;

@end

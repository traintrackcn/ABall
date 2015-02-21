//
//  ABBallBlueprint.m
//  ABall
//
//  Created by traintrackcn on 21/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABBallBlueprint.h"
#import "SKNode+ABUtil.h"

@interface ABBallBlueprint(){
    
}

@property (nonatomic, strong) SKSpriteNode *ball;

@end

@implementation ABBallBlueprint


- (void)initialize{
    [super initialize];
}


- (void)didMoveToView:(SKView *)view{
    [super didMoveToView:view];
    [self setTitle:@"Ball"];
    [self.ball top];
    
    [self.ball.physicsBody applyImpulse:CGVectorMake(0, -1)];
}


- (SKSpriteNode *)ball{
    if (!_ball) {
        _ball = (SKSpriteNode *)[self childNodeWithName:@"ball"];
        TLOG(@"ball -> %@", _ball);
        SKPhysicsBody *physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:_ball.frame.size.width/2.0];
        [physicsBody setLinearDamping:.1];
        [physicsBody setDynamic:YES];
        [physicsBody setMass:0.9];
        [_ball setPhysicsBody:physicsBody];
        
    }
    return _ball;
}

@end

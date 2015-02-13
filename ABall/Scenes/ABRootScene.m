//
//  GameScene.m
//  ABall
//
//  Created by traintrackcn on 11/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABRootScene.h"

@interface ABRootScene(){
    
}

@property (nonatomic, strong) SKSpriteNode *ball;

@end

@implementation ABRootScene

- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)didMoveToView:(SKView *)view {
//    TLOG(@"ballSprite -> %@", self.ball);
    [self ball];
    [self ball];
    
    [self.ball setPosition:CGPointMake(0, 0)];
    
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 20;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
//    return;
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.2;
        sprite.yScale = 0.2;
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    [super update:currentTime];
    /* Called before each frame is rendered */
}

- (SKSpriteNode *)ball{
    if (!_ball) {
        _ball = [self propertyOfFunctionName:CURRENT_FUNCTION_NAME];
    }
    return _ball;
}

@end

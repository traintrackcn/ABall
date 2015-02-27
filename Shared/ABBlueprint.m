//
//  AGNodeBlueprint.m
//  ABall
//
//  Created by traintrackcn on 20/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABBlueprint.h"
#import "SKNode+ABUtil.h"


@interface ABBlueprint(){
    
}

@property (nonatomic, strong) SKSpriteNode *backgroundSprite;

@property (nonatomic, strong) SKNode *focus;

@end

@implementation ABBlueprint




- (ABCharacter *)character{
    return nil;
}


- (void)didMoveToView:(SKView *)view{
//    [super didMoveToView:view];
//    [self insertChild:self.backgroundSprite atIndex:0];
    [self addChild:self.backgroundSprite];
    [self.backgroundSprite center];
    

    [self addChild:self.titleLabel];
    
//    TLOG(@"children -> %@", self.children);
    
}

#pragma mark - ops

- (void)setTitle:(NSString *)title{
    [self.titleLabel setText:title];
    [self.titleLabel center];
    [self.titleLabel top];
    [self.titleLabel left];
    [self.titleLabel offset:CGPointMake(5, -5)];
}


#pragma mark - properties

- (SKLabelNode *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[SKLabelNode alloc] init];
        [_titleLabel setFontSize:18];
        [_titleLabel setFontName:@"Chalkduster"];
        [_titleLabel setFontColor:[SKColor whiteColor]];
        [_titleLabel setZPosition:AB_TITLE_Z_INDEX];
    }
    return _titleLabel;
}

- (SKSpriteNode *)backgroundSprite{
    if (!_backgroundSprite) {
        _backgroundSprite = [[SKSpriteNode alloc] init];
        SKTexture *texture = [SKTexture textureWithImageNamed:@"Blueprint"];
        
        CGSize screenSize = [DSDeviceUtil bounds].size;
        CGFloat ratio = (screenSize.width > screenSize.height)?(screenSize.height/screenSize.width):(screenSize.width/screenSize.height);
        CGFloat ratioX = screenSize.width > screenSize.height?1:ratio;
        CGFloat ratioY = screenSize.height > screenSize.width?1:ratio;
        
        texture = [SKTexture textureWithRect:CGRectMake(0, 0, ratioX, ratioY) inTexture:texture];
//        TLOG(@"self.frame -> %@", NSStringFromCGRect(self.frame));
//        [_backgroundSprite setColor:RGBA(54, 160, 245, 1)];
        [_backgroundSprite setZPosition:AB_BACKGROUND_Z_INDEX];
        [_backgroundSprite setTexture:texture];
        [_backgroundSprite setSize:self.frame.size];
    }
    return _backgroundSprite;
}

#pragma mark - 

- (void)focus:(NSArray *)nodes{
    SKNode *node = nodes.firstObject;
    if (node) {
        [self setFocus:node];
    }
    TLOG(@"focusingNode -> %@", self.focus);
}

#pragma mark - interactive ops

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    //    return;
//    TLOG(@"touches -> %@", touches);
    
    //process tap gesuture
    UITouch *touch = touches.anyObject;
    CGPoint location = [touch locationInNode:self];
    TLOG(@"location -> %@", NSStringFromCGPoint(location));
    NSArray *nodes = [self nodesAtPoint:location];
    [self focus:nodes];
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    TLOG(@"");
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    TLOG(@"");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    TLOG(@"");
}


@end

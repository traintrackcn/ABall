//
//  ABScene.m
//  ABall
//
//  Created by traintrackcn on 12/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABScene.h"


@interface ABScene(){
    
}

@property (nonatomic, assign) NSTimeInterval lastUpdateTime;

@end

@implementation ABScene

- (instancetype)init{
    self = [super init];
    if (self) {
        //will use customize Physics Fields
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

#pragma mark -

- (void)initialize{
    [self setSize:[DSDeviceUtil bounds].size];
    [self setScaleMode:SKSceneScaleModeAspectFit];
    [self.physicsWorld setGravity:CGVectorMake(0,0)];
}

- (void)update:(NSTimeInterval)currentTime{
    
    if (self.lastUpdateTime == 0){
        [self setLastUpdateTime:currentTime];
        return;
    }
    
    NSTimeInterval deltaTime = currentTime - self.lastUpdateTime;
    [self setLastUpdateTime:currentTime];
    [self updateWithDeltaTime:deltaTime];

}

- (void)updateWithDeltaTime:(NSTimeInterval)deltaTime{
//    TLOG(@"deltaTime -> %f", deltaTime);
}

#pragma mark - align action



@end

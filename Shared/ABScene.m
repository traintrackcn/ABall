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

//- (instancetype)initWithSize:(CGSize)size{
//    self = [super initWithSize:[DSDeviceUtil bounds].size];
//    if (self) {
//        
//    }
//    return self;
//}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setSize:[DSDeviceUtil bounds].size];
        [self setScaleMode:SKSceneScaleModeAspectFit];
    }
    return self;
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



#pragma mark - 

- (id)propertyOfFunctionName:(NSString *)fnName{
    //-[ABRootScene ballSprite]
    TLOG(@"fnName -> %@", fnName);
    fnName = [fnName stringByReplacingOccurrencesOfString:@"-" withString:@""];
    fnName = [fnName stringByReplacingOccurrencesOfString:@"[" withString:@""];
    fnName = [fnName stringByReplacingOccurrencesOfString:@"]" withString:@""];
    NSArray *arr = [fnName componentsSeparatedByString:@" "];
    NSString *name = [arr lastObject];
    return [self childNodeWithName:name];
}

@end

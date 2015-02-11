//
//  GameViewController.h
//  ABall
//

//  Copyright (c) 2015 t. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol ABSceneViewControllerDataSource <NSObject>

@required
- (Class)cls;

@end

@class SKView;
@class SKScene;

@interface ABSceneViewController : UIViewController

@property (nonatomic, strong) SKScene *scene;
@property (nonatomic, strong) SKView *skView;
@property (nonatomic, weak) id<ABSceneViewControllerDataSource> dataSource;


@end

//
//  GameViewController.m
//  ABall
//
//  Created by traintrackcn on 11/2/15.
//  Copyright (c) 2015 t. All rights reserved.
//

#import "ABSceneViewController.h"
#import "SKScene+ABUtil.h"
#import <SpriteKit/SpriteKit.h>


@interface ABSceneViewController(){
    
}



@end

@implementation ABSceneViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self assemble];
}

- (void)assemble{
    [self setView:self.skView];
    [self.skView presentScene:self.scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}


#pragma mark - properties

- (SKScene *)scene{
    if ([DSValueUtil isNotAvailable:_scene]) {
        _scene = [SKScene unarchiveFromClass:self.dataSource.cls];
        
//        TLOG(@"_scene -> %@", _scene);
    }
    return _scene;
}

- (SKView *)skView{
    if ([DSValueUtil isNotAvailable:_skView]) {
        _skView = [[SKView alloc] initWithFrame:[DSDeviceUtil bounds]];
        [_skView setShowsFPS:YES];
        [_skView setShowsNodeCount:YES];
        [_skView setShowsPhysics:YES];
        [_skView setShowsFields:YES];
        [_skView setShowsQuadCount:YES];
        [_skView setShowsDrawCount:YES];
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        [_skView setIgnoresSiblingOrder:YES];
    }
    return _skView;
}

@end

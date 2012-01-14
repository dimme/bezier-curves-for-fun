//
//  HelloWorldLayer.m
//  BezierCurves
//
//  Created by Dimitrios Vlastaras on 1/14/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "BZLine.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
        
        BZLine * line = [[BZLine alloc] init];
        line.position = ccp( size.width /2 , size.height/2 );
        [self addChild:line];
        
        CCLabelTTF * about = [CCLabelTTF labelWithString:@"Animating Bézier Curve by Dimme" fontName:@"Verdana" fontSize:20];
        about.position = ccp(size.width-180, size.height-10);
        [self addChild:about];
        
        [[CCDirector sharedDirector] setDisplayFPS:NO];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end

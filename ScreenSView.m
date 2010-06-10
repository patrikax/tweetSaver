//
//  ScreenSView.m
//  ScreenS
//
//  Created by patrik on 2010-06-10.
//  Copyright (c) 2010, __MyCompanyName__. All rights reserved.
//

#import "ScreenSView.h"


@implementation ScreenSView



- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    
	//webView = [[WebView alloc] initWithFrame:[self frame] frameName:nil groupName: nil];
	
	
	self = [super initWithFrame:frame isPreview:isPreview];
	    if (self) {
        [self setAnimationTimeInterval:6];
//		[self setAnimationTimeInterval:1/30.0];
		webView = [[WebView alloc] initWithFrame:[self frame]];
		[self addSubview:webView];
    }
	return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
	[[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://suprb.com/apps/tweets/#suprb"]]];
	[self stopAnimation];
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end

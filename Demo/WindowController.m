//
//  WindowController.m
//  Demo
//
//  Created by Mac on 2016/12/25.
//  Copyright © 2016年 shibiao. All rights reserved.
//

#import "WindowController.h"

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    self.window.titlebarAppearsTransparent = YES;
    self.window.titleVisibility = NSWindowTitleHidden;
    self.window.backgroundColor = [NSColor whiteColor];
    [[self.window standardWindowButton:NSWindowMiniaturizeButton] setHidden:YES];
    [[self.window standardWindowButton:NSWindowZoomButton] setHidden:YES];
    self.window.movableByWindowBackground = YES;
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end

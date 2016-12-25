//
//  ViewController.m
//  Demo
//
//  Created by Mac on 2016/12/25.
//  Copyright © 2016年 shibiao. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController{
    NSWindow *_sbWindow;
    ContentView *_customView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *nilArray;
    [[NSBundle mainBundle]loadNibNamed:@"ContentView" owner:self topLevelObjects:&nilArray];
    _customView = (ContentView *)nilArray[1];
    [_customView setWantsLayer:YES];
    _customView.layer.cornerRadius = 5;
    [_customView.layer masksToBounds];
    
}
-(void)viewDidAppear{
    [super viewDidAppear];
    NSLog(@"%@",NSStringFromRect(self.view.window.frame));

    
}
- (IBAction)click:(id)sender {
    
    if (!_sbWindow) {
        [self createSubWindow];
    }else{
        [self.view.window removeChildWindow:_sbWindow];
        _sbWindow = nil;
    }
}
-(void)createSubWindow{
    //一种初始化方法
    //        _sbWindow = [[NSWindow alloc]initWithContentRect:NSMakeRect(self.view.window.frame.origin.x, self.view.window.frame.origin.y-180, self.view.window.frame.size.width, 200) styleMask:NSWindowStyleMaskTitled|NSWindowStyleMaskMiniaturizable backing:NSBackingStoreNonretained defer:YES];
    //第二种初始化方法
    _sbWindow = [[NSWindow alloc]init];
    _sbWindow.styleMask = NSWindowStyleMaskBorderless;
    _sbWindow.backingType = NSBackingStoreNonretained;
    [_sbWindow setFrame:NSMakeRect(self.view.window.frame.origin.x, self.view.window.frame.origin.y-100, self.view.window.frame.size.width, 100) display:YES animate:YES];
    //设置ContentView
    _sbWindow.contentView = _customView;
    //添加childWindow
    [self.view.window addChildWindow:_sbWindow ordered:NSWindowBelow];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end

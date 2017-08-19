//
//  MyWindowController.m
//  tableDr
//
//  Created by hanjian on 2017/8/18.
//  Copyright © 2017年 hanjian. All rights reserved.
//

#import "MyWindowController.h"

@interface MyWindowController ()<NSWindowDelegate>
@property IBOutlet NSTableView *tableView;
@end

@implementation MyWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)windowDidResize:(NSNotification *)notification {
    NSScrollView *svc = self.window.contentView.subviews.firstObject;
//    [svc.documentView performSelector:@selector(changeFrame)];
}

@end

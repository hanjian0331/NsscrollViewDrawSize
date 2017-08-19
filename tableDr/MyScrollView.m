//
//  MyScrollView.m
//  tableDr
//
//  Created by hanjian on 2017/8/18.
//  Copyright © 2017年 hanjian. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (void)awakeFromNib {
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(franmeDidChange:) name:NSViewFrameDidChangeNotification object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)franmeDidChange:(NSNotification *)notification {
//    NSLog(@"franmeDidChange");
}

//- (void)drawRect:(NSRect)dirtyRect {
//    [super drawRect:dirtyRect];
//    
//    // Drawing code here.
//    NSLog(@"%@",NSStringFromRect(dirtyRect));
//    CGContextRef context = [NSGraphicsContext currentContext].graphicsPort;
//    CGContextAddRect(context, CGRectMake(dirtyRect.origin.x, dirtyRect.origin.y, dirtyRect.size.width-5, dirtyRect.size.height-5));
//    [[NSColor lightGrayColor] setFill];
//    CGContextFillPath(context);
//    
//    self.documentView.frame = CGRectMake(0, 0, 2000000/dirtyRect.size.height, self.documentView.frame.size.height);
//    
//}

@end

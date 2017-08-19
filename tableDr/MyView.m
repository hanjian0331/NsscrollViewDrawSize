//
//  MyView.m
//  tableDr
//
//  Created by hanjian on 2017/8/18.
//  Copyright © 2017年 hanjian. All rights reserved.
//

#import "MyView.h"


@implementation MyView

- (void)awakeFromNib {
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(franmeDidChange:) name:NSViewFrameDidChangeNotification object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)franmeDidChange:(NSNotification *)notification {
    NSUInteger count = 110;
    NSUInteger rowCount = self.enclosingScrollView.frame.size.height / 36;
    NSUInteger columnCount = count / (rowCount*2) + 1;
    
    self.frame = CGRectMake(0, 0, columnCount * 200, rowCount * 36);
}

- (BOOL)isFlipped {
    return YES;
}

- (void)drawRect:(NSRect)dirtyRect {
//    if (!CGPointEqualToPoint(dirtyRect.origin, CGPointZero) || (int)dirtyRect.size.width%512 == 0) {
//        return;
//    }
    NSLog(@"%@",NSStringFromRect(dirtyRect));
    
    

    // Drawing code here.
    
    CGContextRef context = [NSGraphicsContext currentContext].graphicsPort;
    
//    CGContextAddRect(context, CGRectMake(0, 0, dirtyRect.size.width-5, dirtyRect.size.height-5));
    CGContextAddRect(context, CGRectMake(0, 0, self.frame.size.width-5, self.frame.size.height-5));
    [[NSColor lightGrayColor] setFill];
    CGContextFillPath(context);
    
    for (NSUInteger i=0; i<10000; i++) {
        [@"a" drawAtPoint:CGPointMake(i*10, i) withAttributes:nil];
    }
    
    
}

@end

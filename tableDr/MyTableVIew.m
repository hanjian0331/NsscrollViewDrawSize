//
//  MyTableVIew.m
//  tableDr
//
//  Created by hanjian on 2017/8/18.
//  Copyright © 2017年 hanjian. All rights reserved.
//

#import "MyTableVIew.h"

@implementation MyTableVIew



- (BOOL)isFlipped {
    return YES;
}
- (NSRect)calculatedItemBounds
{
    return self.frame;
}
- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];

    //NSLog(@"%@",NSStringFromRect(dirtyRect));
    // Drawing code here.
    CGContextRef context = [NSGraphicsContext currentContext].graphicsPort;
    CGContextAddRect(context, CGRectMake(dirtyRect.origin.x, dirtyRect.origin.y, dirtyRect.size.width-5, dirtyRect.size.height-5));
    [[NSColor lightGrayColor] setFill];
    CGContextFillPath(context);
    
}

- (void)changeFrame {
    self.frame = CGRectMake(0, 0, 10000, self.frame.size.height);
//    NSUInteger columnCount = self.frame.size.height / 36;
//    while (self.tableColumns.count < columnCount) {
//        [self addTableColumn:self.tableColumns.lastObject];
//    }
//    while (self.tableColumns.count < columnCount) {
//        [self removeTableColumn:self.tableColumns.lastObject];
//    }
}
@end

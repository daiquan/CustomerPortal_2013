//
//  CPMapSearchArea.m
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-23.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import "CPMapSearchArea.h"

@implementation CPMapSearchArea

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // The color is by this line CGContextSetRGBFillColor( context , red , green , blue , alpha);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    
    // Draw a circle (border only)
    CGContextStrokeEllipseInRect(contextRef, CGRectMake(_center.x, _center.y, _circleRad, _circleRad));
    CGContextSetRGBFillColor(contextRef, 0, 0, 255, 1.0);
    
}

@end

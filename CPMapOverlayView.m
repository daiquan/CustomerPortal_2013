//
//  CPMapOverlayView.m
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-23.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import "CPMapOverlayView.h"

@implementation CPMapOverlayView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)ctx
{

    //NSLog(@"%f,%f,%f,%f",theRect.origin.x,theRect.origin.y,theRect.size.width,theRect.size.height);


    
    /*CGContextScaleCTM(ctx, 1.0, -1.0);
    CGContextTranslateCTM(ctx, 0.0, -theRect.size.height);
    CGContextDrawImage(ctx, theRect, imageReference);*/
    

}

@end

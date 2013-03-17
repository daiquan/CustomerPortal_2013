//
//  CPMapOverlay.m
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-23.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import "CPMapOverlay.h"

@implementation CPMapOverlay
-(CLLocationCoordinate2D)coordinate {
    return coord;
}

- (MKMapRect)boundingMapRect
{
    float variable = 0.08;
    
    MKMapPoint upperLeft   = MKMapPointForCoordinate(CLLocationCoordinate2DMake(coord.latitude+variable, coord.longitude-variable));
    MKMapPoint upperRight  = MKMapPointForCoordinate(CLLocationCoordinate2DMake(coord.latitude+variable, coord.longitude+variable));
    MKMapPoint bottomLeft  = MKMapPointForCoordinate(CLLocationCoordinate2DMake(coord.latitude-variable, coord.longitude-variable));
    
    MKMapRect bounds = MKMapRectMake(upperLeft.x, upperLeft.y, fabs(upperLeft.x - upperRight.x), fabs(upperLeft.y - bottomLeft.y));
    
    return bounds;
}
-(void)setCoordinate:(CLLocationCoordinate2D)newCoordinate{
    coord=newCoordinate;
}
@end

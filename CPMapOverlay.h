//
//  CPMapOverlay.h
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-23.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface CPMapOverlay : NSObject<MKOverlay>{
    CLLocationCoordinate2D coord;
}
- (MKMapRect)boundingMapRect;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
- (void) setCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end

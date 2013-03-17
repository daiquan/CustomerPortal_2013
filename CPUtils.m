//
//  CPUtils.m
//  CustomerPortal
//
//  Created by Quan Dai on 2013-02-23.
//  Copyright (c) 2013 Quan Dai. All rights reserved.
//

#import "CPUtils.h"
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

@implementation CPUtils

+(void)ShowAlertWithMessage:(NSString * )message{

    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

+(UIActivityIndicatorView *)CreateSpinner: (UIView *)yourView{
    UIActivityIndicatorView *aSpinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:
                UIActivityIndicatorViewStyleWhiteLarge];
    
    NSInteger spnnerSize=100;
    aSpinner.frame = CGRectMake(round((yourView.frame.size.width - spnnerSize) / 2), round((yourView.frame.size.height - spnnerSize) / 2), spnnerSize, spnnerSize);
    aSpinner.backgroundColor=[UIColor blackColor];
    aSpinner.alpha = .5f;
    aSpinner.tag  = 1;
    aSpinner.layer.cornerRadius=5;
    return aSpinner;
}
+(void)ShowNotifierWithText:(NSString *) text IsSuccess:(BOOL) isSuccess{
    CPNotifier *successNotifier = [[CPNotifier alloc]initWithTitle:text];
    successNotifier.accessoryView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:isSuccess?@"NotifyCheck.png":@"NotifyX.png"]];
    [successNotifier showFor:isSuccess?2.0:4.0];
}

+(void)showMapDirectionFrom:(CLLocationCoordinate2D) fromLoc To:(CLLocationCoordinate2D) toLoc ToLocName:(NSString *)toName
{
    NSMutableArray *arrayMapItem = [[NSMutableArray alloc] init];
    MKPlacemark *fromPlace = [[MKPlacemark alloc] initWithCoordinate:fromLoc addressDictionary:nil];
    MKMapItem *fromMapItem = [[MKMapItem alloc] initWithPlacemark:fromPlace];
    [fromMapItem setName:@"Your Location"];
    
    MKPlacemark *toPlace = [[MKPlacemark alloc] initWithCoordinate:toLoc addressDictionary:nil];
    MKMapItem *toMapItem = [[MKMapItem alloc] initWithPlacemark:toPlace];
    [toMapItem setName:toName];
    
    [arrayMapItem addObject:fromMapItem];
    [arrayMapItem addObject:toMapItem];
    
    NSDictionary *options = @{
                              MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving
                              };
    
    //[mapItem openInMapsWithLaunchOptions:options];
    [MKMapItem openMapsWithItems:arrayMapItem launchOptions:options];
}

+(void)showMapDirectionFromCurrentTo:(CLLocationCoordinate2D) toLoc ToLocName:(NSString *)toName
{
    NSMutableArray *arrayMapItem = [[NSMutableArray alloc] init];

    MKMapItem *fromMapItem = [MKMapItem mapItemForCurrentLocation];
    [fromMapItem setName:@"Your Location"];
    
    MKPlacemark *toPlace = [[MKPlacemark alloc] initWithCoordinate:toLoc addressDictionary:nil];
    MKMapItem *toMapItem = [[MKMapItem alloc] initWithPlacemark:toPlace];
    [toMapItem setName:toName];
    
    [arrayMapItem addObject:fromMapItem];
    [arrayMapItem addObject:toMapItem];
    
    NSDictionary *options = @{
                              MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving
                              };
    
    //[mapItem openInMapsWithLaunchOptions:options];
    [MKMapItem openMapsWithItems:arrayMapItem launchOptions:options];
}
@end

//
//  slugMapRootController.m
//  slugBug
//
//  Created by Kolenic, Patrick on 1/31/13.
//  Copyright (c) 2013 RatWorkShop. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "slugMapRootController.h"


@interface slugMapRootController ()<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *map;

@end

@implementation slugMapRootController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  DestinationsModel.h
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Destination.h"

@interface DestinationsModel : NSObject

@property (nonatomic) NSDictionary *destinationDetails;
@property (nonatomic) NSMutableDictionary *destinationValues;
@property (nonatomic) NSMutableArray *userDestinations;

@property (nonatomic) Destination *aspen;
@property (nonatomic) Destination *bali;
@property (nonatomic) Destination *foxGlacier;
@property (nonatomic) Destination *hokkaido;
@property (nonatomic) Destination *monaco;

-(void)initializeData;

+ (DestinationsModel *)sharedModel;
- (NSArray *)allDestinations;

@end

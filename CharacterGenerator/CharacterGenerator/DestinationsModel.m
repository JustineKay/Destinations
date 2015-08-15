//
//  DestinationsModel.m
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DestinationsModel.h"


@implementation DestinationsModel

+ (DestinationsModel *)sharedModel {
    static DestinationsModel *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}


-(instancetype) init{
    
    self = [super init];
    if (self) {
        
        NSString *aspen = @"Founded as a mining camp during the Colorado Silver Boom and later named Aspen because of the abundance of aspen treesin the area, the city boomed during the 1880s, its first decade of existence. In the late 20th century, the city became a popular retreat for celebrities.";
        
        NSString *bali = @"An Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple.The island is also known for its yoga and meditation retreats.";
        
        NSString *foxGlacier = @"The Fox Glacier is a 13 km long glacier located in Westland Tai Poutini National Park on the West Coast of New Zealand's South Island. It was named in 1872 after a visit by the then Prime Minister of New Zealand, Sir William Fox.";
        
        NSString *hokkaido = @"The northernmost of Japan’s main islands, is known for volcanoes, natural hot springs and ski resorts. Rusutsu, Furano and Niseko are popular ski destinations, with Niseko also offering fishing, biking and rafting in the summer.";
        
        NSString *monaco = @"An independent microstate on France’s Mediterranean coastline known for its glitzy casinos,yacht-lined harbor and prestigious Grand Prix motor race, which runs through Monaco’s streets once a year. Monte Carlo, its major district, has an elegant belle epoque casino complex, ornate opera house and luxe hotels, boutiques, nightclubs and French and Italian restaurants.";
        
        
        self.destinationDetails = @{
                                    @"Aspen"       : aspen,
                                    @"Bali"        : bali,
                                    @"Fox Glacier" : foxGlacier,
                                    @"Hokkaido"    : hokkaido,
                                    @"Monaco"      : monaco
                                    };
        
        self.destinationValues = @{
                                   @"Aspen"       : @(0),
                                   @"Bali"        : @(0),
                                   @"Fox Glacier" : @(0),
                                   @"Hokkaido"    : @(0),
                                   @"Monaco"      : @(0)
                                   }.mutableCopy;
        
        self.userDestinations = @[
                                  ].mutableCopy;
        
    }
    return self;
    
    
    
}

-(void)initializeData{
    
    
    self.aspen.name = @"Aspen";
    self.bali.name = @"Bali";
    self.foxGlacier.name = @"Fox Glacier";
    self.hokkaido.name = @"Hokkaido";
    self.monaco.name = @"Monaco";
    
    self.aspen.details = @"Founded as a mining camp during the Colorado Silver Boom and later named Aspen because of the abundance of aspen treesin the area, the city boomed during the 1880s, its first decade of existence. In the late 20th century, the city became a popular retreat for celebrities.";
    self.bali.details = @"An Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple.The island is also known for its yoga and meditation retreats.";
    self.foxGlacier.details = @"The Fox Glacier is a 13 km long glacier located in Westland Tai Poutini National Park on the West Coast of New Zealand's South Island. It was named in 1872 after a visit by the then Prime Minister of New Zealand, Sir William Fox.";
    self.hokkaido.details = @"The northernmost of Japan’s main islands, is known for volcanoes, natural hot springs and ski resorts. Rusutsu, Furano and Niseko are popular ski destinations, with Niseko also offering fishing, biking and rafting in the summer.";
    self.monaco.details = @"An independent microstate on France’s Mediterranean coastline known for its glitzy casinos,yacht-lined harbor and prestigious Grand Prix motor race, which runs through Monaco’s streets once a year. Monte Carlo, its major district, has an elegant belle epoque casino complex, ornate opera house and luxe hotels, boutiques, nightclubs and French and Italian restaurants.";
    
}


@end

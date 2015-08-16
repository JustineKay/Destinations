//
//  QuizTableViewController.m
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "QuizTableViewController.h"
#import "DestinationsModel.h"
#import <QuartzCore/QuartzCore.h>

@interface QuizTableViewController ()

@property (weak, nonatomic) IBOutlet UIButton *answer1a;
@property (weak, nonatomic) IBOutlet UIButton *answer1b;
@property (weak, nonatomic) IBOutlet UIButton *answer1c;
@property (weak, nonatomic) IBOutlet UIButton *answer1d;

@property (weak, nonatomic) IBOutlet UIButton *answer2a;
@property (weak, nonatomic) IBOutlet UIButton *answer2b;

@property (weak, nonatomic) IBOutlet UIButton *answer3a;
@property (weak, nonatomic) IBOutlet UIButton *answer3b;

@property (weak, nonatomic) IBOutlet UIButton *answer4a;
@property (weak, nonatomic) IBOutlet UIButton *answer4b;

@property (weak, nonatomic) IBOutlet UIButton *answer4c;
@property (weak, nonatomic) IBOutlet UIButton *answer4d;
@property (weak, nonatomic) IBOutlet UIButton *answer4e;

@property (weak, nonatomic) IBOutlet UIButton *answer5a;
@property (weak, nonatomic) IBOutlet UIButton *answer5b;
@property (weak, nonatomic) IBOutlet UIButton *answer5c;
@property (weak, nonatomic) IBOutlet UIButton *answer5d;
@property (weak, nonatomic) IBOutlet UIButton *answer5e;


@property (nonatomic) NSMutableArray *selectedButtons;

@end

@implementation QuizTableViewController
- (IBAction)cancelButtonTapped:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.selectedButtons = [[NSMutableArray alloc] init];
    
    [DestinationsModel sharedModel].destinationValues = @{
                                                          @"Aspen"       : @(0),
                                                          @"Bali"        : @(0),
                                                          @"Fox Glacier" : @(0),
                                                          @"Hokkaido"    : @(0),
                                                          @"Monaco"      : @(0)
                                                          }.mutableCopy;
    
}

- (IBAction)selectedAnswer1a:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer1a atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor orangeColor]];
    [self.answer1a setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer1a.layer.cornerRadius = 10;
    self.answer1a.clipsToBounds = YES;
    
    [self.answer1b setBackgroundColor:[UIColor whiteColor]];
    [self.answer1b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1c setBackgroundColor:[UIColor whiteColor]];
    [self.answer1c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1d setBackgroundColor:[UIColor whiteColor]];
    [self.answer1d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
}


- (IBAction)selectedAnswer1b:(UIButton *)sender {
    
    
    [self.selectedButtons insertObject:self.answer1b atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor whiteColor]];
    [self.answer1a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1b setBackgroundColor:[UIColor orangeColor]];
    [self.answer1b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer1b.layer.cornerRadius = 10;
    self.answer1b.clipsToBounds = YES;
    
    [self.answer1c setBackgroundColor:[UIColor whiteColor]];
    [self.answer1c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1d setBackgroundColor:[UIColor whiteColor]];
    [self.answer1d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    
}


- (IBAction)selectedAnswer1c:(UIButton *)sender {
    
    
    [self.selectedButtons insertObject:self.answer1c atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor whiteColor]];
    [self.answer1a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1b setBackgroundColor:[UIColor whiteColor]];
    [self.answer1b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1c setBackgroundColor:[UIColor orangeColor]];
    [self.answer1c setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer1c.layer.cornerRadius = 10;
    self.answer1c.clipsToBounds = YES;
    
    [self.answer1d setBackgroundColor:[UIColor whiteColor]];
    [self.answer1d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
}



- (IBAction)selectedAnswer1d:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer1d atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor whiteColor]];
    [self.answer1a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1b setBackgroundColor:[UIColor whiteColor]];
    [self.answer1b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1c setBackgroundColor:[UIColor whiteColor]];
    [self.answer1c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer1d setBackgroundColor:[UIColor orangeColor]];
    [self.answer1d setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer1d.layer.cornerRadius = 10;
    self.answer1d.clipsToBounds = YES;
}




- (IBAction)selectedAnswer2a:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer2a atIndex:1];
    
    [self.answer2a setBackgroundColor:[UIColor orangeColor]];
    [self.answer2a setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer2a.layer.cornerRadius = 10;
    self.answer2a.clipsToBounds = YES;
    
    [self.answer2b setBackgroundColor:[UIColor whiteColor]];
    [self.answer2b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
}



- (IBAction)selectedAnswer2b:(UIButton *)sender {
    
    
    [self.selectedButtons insertObject:self.answer2b atIndex:1];
    
    [self.answer2a setBackgroundColor:[UIColor whiteColor]];
    [self.answer2a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer2b setBackgroundColor:[UIColor orangeColor]];
    [self.answer2b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer2b.layer.cornerRadius = 10;
    self.answer2b.clipsToBounds = YES;
    
    
}


- (IBAction)selectedAnswer3a:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer3a atIndex:2];
    
    [self.answer3a setBackgroundColor:[UIColor orangeColor]];
    [self.answer3a setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer3a.layer.cornerRadius = 10;
    self.answer3a.clipsToBounds = YES;
    
    [self.answer3b setBackgroundColor:[UIColor whiteColor]];
    [self.answer3b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
}


- (IBAction)selectedAnswer3b:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer3b atIndex:2];
    
    [self.answer3a setBackgroundColor:[UIColor whiteColor]];
    [self.answer3a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer3b setBackgroundColor:[UIColor orangeColor]];
    [self.answer3b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer3b.layer.cornerRadius = 10;
    self.answer3b.clipsToBounds = YES;
    
    
}


- (IBAction)selectedAnswer4a:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer4a atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor orangeColor]];
    [self.answer4a setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer4a.layer.cornerRadius = 10;
    self.answer4a.clipsToBounds = YES;
    
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
}


- (IBAction)selectedAnswer4b:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer4b atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4b setBackgroundColor:[UIColor orangeColor]];
    [self.answer4b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer4b.layer.cornerRadius = 10;
    self.answer4b.clipsToBounds = YES;
    
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
}


- (IBAction)selectedAnswer4c:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer4c atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4c setBackgroundColor:[UIColor orangeColor]];
    [self.answer4c setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer4c.layer.cornerRadius = 10;
    self.answer4c.clipsToBounds = YES;
    
    [self.answer4d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    
}


- (IBAction)selectedAnswer4d:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer4d atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4d setBackgroundColor:[UIColor orangeColor]];
    [self.answer4d setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer4d.layer.cornerRadius = 10;
    self.answer4d.clipsToBounds = YES;
    
    [self.answer4e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    
}



- (IBAction)selectedAnswer4e:(UIButton *)sender {
    
    
    [self.selectedButtons insertObject:self.answer4e atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer4e setBackgroundColor:[UIColor orangeColor]];
    [self.answer4e setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer4e.layer.cornerRadius = 10;
    self.answer4e.clipsToBounds = YES;
    
}



- (IBAction)selectedAnswer5a:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer5a atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor orangeColor]];
    [self.answer5a setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer5a.layer.cornerRadius = 10;
    self.answer5a.clipsToBounds = YES;
    
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    
    
}



- (IBAction)selectedAnswer5b:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer5b atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5b setBackgroundColor:[UIColor orangeColor]];
    [self.answer5b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer5b.layer.cornerRadius = 10;
    self.answer5b.clipsToBounds = YES;
    
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
}



- (IBAction)selectedAnswer5c:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer5c atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5c setBackgroundColor:[UIColor orangeColor]];
    [self.answer5c setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer5c.layer.cornerRadius = 10;
    self.answer5c.clipsToBounds = YES;
    
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    
}


- (IBAction)selectedAnswer5d:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer5d atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5d setBackgroundColor:[UIColor orangeColor]];
    [self.answer5d setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer5d.layer.cornerRadius = 10;
    self.answer5d.clipsToBounds = YES;
    
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    
    
}


- (IBAction)selectedAnswer5e:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer5e atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5a setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    
    [self.answer5e setBackgroundColor:[UIColor orangeColor]];
    [self.answer5e setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.answer5e.layer.cornerRadius = 10;
    self.answer5e.clipsToBounds = YES;
    
}

-(void)addValue: (NSNumber *)answerValue to: (NSNumber *)destinationValue withKey: (NSString *)destinationName{
    
    NSNumber *currentDestinationValue = [[DestinationsModel sharedModel].destinationValues objectForKey:destinationName];
    
    NSInteger currentDestinationValueAsAnInteger = [currentDestinationValue integerValue];
    
    currentDestinationValueAsAnInteger += [answerValue integerValue];
    
    NSNumber *newValueForDestination = @(currentDestinationValueAsAnInteger);
    
    [[DestinationsModel sharedModel].destinationValues setValue:newValueForDestination forKey:destinationName];
    
    
}

- (IBAction)selectedDone:(UIBarButtonItem *)sender {
    
    for (int i = 0 ; i < self.selectedButtons.count; i++) {
        
        UIButton *selectedButtonAtCurrentIndex = [self.selectedButtons objectAtIndex:i];
        
        if (selectedButtonAtCurrentIndex == self.answer1a) {
            
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Hokkaido"] withKey:@"Hokkaido"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1b) {
            
            
            // change dictionary value for Aspen
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Aspen"] withKey:@"Aspen"];
            
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Fox Glacier"] withKey:@"Fox Glacier"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1c) {
            
            
            //change dictionary value for Bali
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Bali"] withKey:@"Bali"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1d) {
            
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Monaco"] withKey:@"Monaco"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer2a) {
            
            
            // change dictionary value for Aspen
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Aspen"] withKey:@"Aspen"];
            
            
            // change dictionary value for Monaco
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Monaco"] withKey:@"Monaco"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer2b) {
            
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Hokkaido"] withKey:@"Hokkaido"];
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Bali"] withKey:@"Bali"];
            
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Fox Glacier"] withKey:@"Fox Glacier"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer3a) {
            
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Hokkaido"] withKey:@"Hokkaido"];
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Bali"] withKey:@"Bali"];
            
            
            // change dictionary value for Aspen
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Aspen"] withKey:@"Aspen"];
            
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Fox Glacier"] withKey:@"Fox Glacier"];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer3b) {
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Monaco"] withKey:@"Monaco"];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer4a) {
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Hokkaido"] withKey:@"Hokkaido"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4b) {
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Bali"] withKey:@"Bali"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4c) {
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Monaco"] withKey:@"Monaco"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4d) {
            
            //change dictionary value for Aspen
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Aspen"] withKey:@"Aspen"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4e) {
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Fox Glacier"] withKey:@"Fox Glacier"];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer5a) {
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Hokkaido"] withKey:@"Hokkaido"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5b) {
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Bali"] withKey:@"Bali"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5c) {
            
            //change dictionary value for Aspen
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Aspen"] withKey:@"Aspen"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5d) {
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Monaco"] withKey:@"Monaco"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5e) {
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) to:[[DestinationsModel sharedModel].destinationValues objectForKey:@"Fox Glacier"] withKey:@"Fox Glacier"];
            
        }
    }
    
    
    NSArray *keys = [[DestinationsModel sharedModel].destinationValues allKeys];
    NSLog(@"%@", keys);
    
    NSNumber *highestValue = 0;
    NSString *userCity;
    
    for (int i = 0; i < keys.count; i++) {
        NSString *key = keys[i];
        if ([[DestinationsModel sharedModel].destinationValues objectForKey:key] > highestValue){
            highestValue = [[DestinationsModel sharedModel].destinationValues objectForKey:key];
            userCity = key;
        }
    }
    
    NSLog(@"highestValue:%@, userCity:%@", highestValue, userCity);
    
    [[DestinationsModel sharedModel].userDestinations addObject: userCity];
    NSLog(@"%@", [DestinationsModel sharedModel].userDestinations);
    
    // Call this when ever you want to refresh the tableView in Class2
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RefreshTable" object:nil userInfo:nil];
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}


@end

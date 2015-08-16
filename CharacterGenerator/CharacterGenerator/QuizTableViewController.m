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
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *answer1Buttons;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *answer2Buttons;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *answer3Buttons;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *answer4Buttons;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *answer5Buttons;

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
    
    [self setupButtonUI];
}

- (void)setupButtonUI {
    NSArray *allButtons = @[self.answer1Buttons, self.answer2Buttons, self.answer3Buttons, self.answer4Buttons, self.answer5Buttons];
    
    for (NSArray *buttons in allButtons) {
        for (UIButton *button in buttons) {
            button.layer.cornerRadius = 10.0;
            button.clipsToBounds = YES;
        }
    }
}

-(void)setBackgroundAndTitleColorForSelectedAnswer: (UIButton *)selectedAnswer {
    
    [selectedAnswer setBackgroundColor:[UIColor orangeColor]];
    [selectedAnswer setTitleColor:[UIColor whiteColor] forState:normal];
    
}

-(void)setBackgroundAndTitleColorForDeselectedAnswer: (UIButton *)deselectedAnswer {
    
    [deselectedAnswer setBackgroundColor:[UIColor whiteColor]];
    [deselectedAnswer setTitleColor:[UIColor orangeColor] forState:normal];
    
}

- (IBAction)selectedAnswerOne:(UIButton *)sender {
    NSLog(@"%@", sender.titleLabel.text);
    
    for (UIButton *button in self.answer1Buttons) {
        [self setBackgroundAndTitleColorForDeselectedAnswer:button];
    }
    [self setBackgroundAndTitleColorForSelectedAnswer:sender];
    [self.selectedButtons insertObject:sender atIndex:0];
}


- (IBAction)selectedAnswerTwo:(UIButton *)sender {
    
    for (UIButton *button in self.answer2Buttons) {
        [self setBackgroundAndTitleColorForDeselectedAnswer:button];
    }
    [self setBackgroundAndTitleColorForSelectedAnswer:sender];
    [self.selectedButtons insertObject:sender atIndex:1];
}


- (IBAction)selectedAnswerThree:(UIButton *)sender {
    
    for (UIButton *button in self.answer3Buttons) {
        [self setBackgroundAndTitleColorForDeselectedAnswer:button];
    }
    [self setBackgroundAndTitleColorForSelectedAnswer:sender];
    [self.selectedButtons insertObject:sender atIndex:2];
}


- (IBAction)selectedAnswerFour:(UIButton *)sender {
    
    for (UIButton *button in self.answer4Buttons) {
        [self setBackgroundAndTitleColorForDeselectedAnswer:button];
    }
    [self setBackgroundAndTitleColorForSelectedAnswer:sender];
    [self.selectedButtons insertObject:sender atIndex:3];
}


- (IBAction)selectedAnswerFive:(UIButton *)sender {
    
    for (UIButton *button in self.answer5Buttons) {
        [self setBackgroundAndTitleColorForDeselectedAnswer:button];
    }
    [self setBackgroundAndTitleColorForSelectedAnswer:sender];
    [self.selectedButtons insertObject:sender atIndex:4];
}



-(void)addValue: (NSNumber *)answerValue toCurrentValue: (NSNumber *)destinationValue forDestination: (Destination *)destination{
    
    NSNumber *currentDestinationValue = destination.values;
    NSInteger currentDestinationValueAsInteger = [currentDestinationValue integerValue];
    
    currentDestinationValueAsInteger += [answerValue integerValue];
    
    NSNumber *newDestinationValue = @(currentDestinationValueAsInteger);
    
    destination.values = newDestinationValue;
    
    
}

- (IBAction)selectedDone:(UIBarButtonItem *)sender {
    
    for (int i = 0 ; i < self.selectedButtons.count; i++) {
        
        UIButton *selectedButtonAtCurrentIndex = [self.selectedButtons objectAtIndex:i];
        
        if (selectedButtonAtCurrentIndex == self.answer1a) {
            
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].hokkaido.values forDestination:[DestinationsModel sharedModel].hokkaido];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1b) {
            
            
            // change dictionary value for Aspen
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].aspen.values forDestination:[DestinationsModel sharedModel].aspen];
            
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].foxGlacier.values forDestination:[DestinationsModel sharedModel].foxGlacier];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1c) {
            
            
            //change dictionary value for Bali
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].bali.values forDestination:[DestinationsModel sharedModel].bali];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1d) {
            
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].monaco.values forDestination:[DestinationsModel sharedModel].monaco];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer2a) {
            
            
            // change dictionary value for Aspen
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].aspen.values forDestination:[DestinationsModel sharedModel].aspen];
            
            // change dictionary value for Monaco
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].monaco.values forDestination:[DestinationsModel sharedModel].monaco];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer2b) {
            
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].hokkaido.values forDestination:[DestinationsModel sharedModel].hokkaido];
            
            // change dictionary value for Bali
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].bali.values forDestination:[DestinationsModel sharedModel].bali];
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].foxGlacier.values forDestination:[DestinationsModel sharedModel].foxGlacier];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer3a) {
            
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].hokkaido.values forDestination:[DestinationsModel sharedModel].hokkaido];
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].bali.values forDestination:[DestinationsModel sharedModel].bali];
            
            // change dictionary value for Aspen
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].aspen.values forDestination:[DestinationsModel sharedModel].aspen];
            
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].foxGlacier.values forDestination:[DestinationsModel sharedModel].foxGlacier];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer3b) {
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].monaco.values forDestination:[DestinationsModel sharedModel].monaco];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer4a) {
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].hokkaido.values forDestination:[DestinationsModel sharedModel].hokkaido];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4b) {
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].bali.values forDestination:[DestinationsModel sharedModel].bali];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4c) {
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].monaco.values forDestination:[DestinationsModel sharedModel].monaco];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4d) {
            
            //change dictionary value for Aspen
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].aspen.values forDestination:[DestinationsModel sharedModel].aspen];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4e) {
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].foxGlacier.values forDestination:[DestinationsModel sharedModel].foxGlacier];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer5a) {
            
            // change dictionary value for Hokkaido
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].hokkaido.values forDestination:[DestinationsModel sharedModel].hokkaido];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5b) {
            
            
            // change dictionary value for Bali
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].bali.values forDestination:[DestinationsModel sharedModel].bali];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5c) {
            
            //change dictionary value for Aspen
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].aspen.values forDestination:[DestinationsModel sharedModel].aspen];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5d) {
            
            //change dictionary value for Monaco
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].monaco.values forDestination:[DestinationsModel sharedModel].monaco];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5e) {
            
            // change dictionary value for Fox Glacier
            
            [self addValue:@(1) toCurrentValue:[DestinationsModel sharedModel].foxGlacier.values forDestination:[DestinationsModel sharedModel].foxGlacier];
            
        }
    }
    
    
    
//    NSArray *keys = [[DestinationsModel sharedModel].destinationValues allKeys];
//    NSLog(@"%@", keys);
    
    NSNumber *highestValue = 0;
    NSString *userCity;
    
    for (Destination *destination in [[DestinationsModel sharedModel] allDestinations]) {
        if (destination.values > highestValue) {
            highestValue = destination.values;
            userCity = destination.name;
        }
    }
////
//    for (int i = 0; i < keys.count; i++) {
//        NSString *key = keys[i];
//        if ([[DestinationsModel sharedModel].destinationValues objectForKey:key] > highestValue){
//            highestValue = [[DestinationsModel sharedModel].destinationValues objectForKey:key];
//            userCity = key;
//        }
//    }
    
    NSLog(@"highestValue:%@, userCity:%@", highestValue, userCity);
    
    [[DestinationsModel sharedModel].userDestinations addObject: userCity];
    NSLog(@"%@", [DestinationsModel sharedModel].userDestinations);
    
    
    // Call this when ever you want to refresh the tableView in Class2
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RefreshTable" object:nil userInfo:nil];
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}


@end

//
//  QuizTableViewController.h
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IntroListTableViewController;

@interface QuizTableViewController : UITableViewController

@property (nonatomic) IntroListTableViewController *introListTableViewController;

-(void)setBackgroundAndTitleColorForSelectedAnswer: (UIButton *)selectedAnswer ;

-(void)setBackgroundAndTitleColorForDeselectedAnswer: (UIButton *)deselectedAnswer;

@end

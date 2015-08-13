//
//  ViewController.m
//  1_HelloWorld
//
//  Created by X on 13/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) UILabel *helloLabel;
@property (nonatomic, strong) UILabel *name;
@property (nonatomic, strong) UITextField *userNameTextField;
@property (nonatomic, strong) UIButton *sayHelloButton;
@end

@implementation ViewController

- (void)createNameLabel
{
    CGRect frame = CGRectMake(100.0f, 30.0f, 100.0f, 40.0f);
    self.name = [[UILabel alloc]
                 initWithFrame:frame];
    self.name.text = @"Name";
}

- (void)createHelloLabel
{
    CGRect frame = CGRectMake(100.0f, 100.0f, 100.0f, 40.0f);
    self.helloLabel = [[UILabel alloc]
                       initWithFrame: frame];
    self.helloLabel.text = @"Hello, ";
    self.helloLabel.hidden = YES;
}

- (void)createUserNameLabel
{
    CGRect frame = CGRectMake(150.0f, 100.0f, 100.0f, 40.0f);
    self.userNameLabel = [[UILabel alloc]
                          initWithFrame: frame];
    self.userNameLabel.hidden = YES;
}

- (void)createUserNameTextField
{
    CGRect frame = CGRectMake(150.0f, 30.0f, 100.0f, 40.0f);
    self.userNameTextField = [[UITextField alloc]
                              initWithFrame:frame];
    self.userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
}

- (void)createButton
{
    CGRect frame = CGRectMake(150.0f, 150.0f, 100.0f, 40.0f);
    self.sayHelloButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.sayHelloButton.frame = frame;
    [self.sayHelloButton setTitle: @"Say Hello"
                   forState:UIControlStateNormal];
    [self.sayHelloButton addTarget:self
                      action:@selector(buttonPressed:)
            forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonPressed:(UIButton *)paramSender
{
    self.userNameLabel.text   = self.userNameTextField.text;
    self.userNameLabel.hidden = NO;
    self.helloLabel.hidden    = NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self createNameLabel];
    [self createHelloLabel];
    [self createUserNameLabel];
    [self createUserNameTextField];
    [self createButton];

    [self.view addSubview:self.userNameLabel];
    [self.view addSubview:self.helloLabel];
    [self.view addSubview:self.name];
    [self.view addSubview:self.userNameTextField];
    [self.view addSubview:self.sayHelloButton];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

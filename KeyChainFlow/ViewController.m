//
//  ViewController.m
//  KeyChainFlow
//
//  Created by Yaakov Gamliel on 1/27/15.
//  Copyright (c) 2015 Tapo. All rights reserved.
//

#import "ViewController.h"
#import "FXKeychain.h"


@interface ViewController ()

@property (nonatomic, strong) FXKeychain  *keychain;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self setupKeychain];
    
  
}

- (void)setupKeychain {
    
    self.keychain = [FXKeychain defaultKeychain];
}

- (NSData *)generateData {

    NSData *ramdomData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.eltiempo.com"]];
    
    NSMutableData *tmpData = [[NSMutableData alloc] init];
    for (int i = 0; i < 50; i++) {
        [tmpData appendData:ramdomData];
    }
    
    return tmpData;
}

- (IBAction)createRamdomDataButtonTouched:(id)sender {
    
    BOOL didSave = [self.keychain setObject:[self generateData] forKey:@"someData"];
    if (didSave) {
        NSLog(@"OK");
    } else {
        NSLog(@"Buuuu");
    }
    
    BOOL didSave2 = [self.keychain setObject:[self generateData] forKey:@"someData2"];
    if (didSave2) {
        NSLog(@"OK");
    } else {
        NSLog(@"Buuuu");
    }
    
    BOOL didSave3 = [self.keychain setObject:[self generateData] forKey:@"someData3"];
    if (didSave3) {
        NSLog(@"OK");
    } else {
        NSLog(@"Buuuu");
    }
    
    BOOL didSave4 = [self.keychain setObject:[self generateData] forKey:@"someData4"];
    if (didSave4) {
        NSLog(@"OK");
    } else {
        NSLog(@"Buuuu");
    }
    
    BOOL didSave5 = [self.keychain setObject:[self generateData] forKey:@"someData5"];
    if (didSave5) {
        NSLog(@"OK");
    } else {
        NSLog(@"Buuuu");
    }
    BOOL didSave6 = [self.keychain setObject:[self generateData] forKey:@"someData6"];
    if (didSave6) {
        NSLog(@"OK");
    } else {
        NSLog(@"Buuuu");
    }
 
}

- (IBAction)deleteRamdomDataButtonTouched:(id)sender {
    
    [self.keychain removeObjectForKey:@"someData"];
    [self.keychain removeObjectForKey:@"someData2"];
    [self.keychain removeObjectForKey:@"someData3"];
    [self.keychain removeObjectForKey:@"someData4"];
    [self.keychain removeObjectForKey:@"someData5"];
    [self.keychain removeObjectForKey:@"someData6"];

}

@end

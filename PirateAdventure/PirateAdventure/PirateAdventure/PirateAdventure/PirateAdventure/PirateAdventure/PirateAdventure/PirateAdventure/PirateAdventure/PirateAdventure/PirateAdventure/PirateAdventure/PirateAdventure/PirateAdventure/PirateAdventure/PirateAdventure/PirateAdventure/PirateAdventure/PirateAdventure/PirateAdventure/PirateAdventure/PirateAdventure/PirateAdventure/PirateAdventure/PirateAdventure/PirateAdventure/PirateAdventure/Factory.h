//
//  Factory.h
//  PirateAdventure
//
//  Created by Avinash P08 on 13/09/17.
//  Copyright © 2017 Infosys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface Factory : NSObject

-(NSArray *)tiles;
-(Character *)character;

@end

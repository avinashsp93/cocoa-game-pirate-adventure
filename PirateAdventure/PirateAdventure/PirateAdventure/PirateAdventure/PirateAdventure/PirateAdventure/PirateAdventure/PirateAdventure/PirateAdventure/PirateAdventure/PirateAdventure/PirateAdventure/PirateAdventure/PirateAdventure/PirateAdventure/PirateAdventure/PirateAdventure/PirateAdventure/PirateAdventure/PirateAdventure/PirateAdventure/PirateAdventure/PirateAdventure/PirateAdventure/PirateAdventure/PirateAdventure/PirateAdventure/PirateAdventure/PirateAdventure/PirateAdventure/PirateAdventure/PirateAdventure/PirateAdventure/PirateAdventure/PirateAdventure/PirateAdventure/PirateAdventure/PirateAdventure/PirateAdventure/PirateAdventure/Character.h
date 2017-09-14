//
//  Character.h
//  PirateAdventure
//
//  Created by Avinash P08 on 14/09/17.
//  Copyright © 2017 Infosys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Armor.h"

@interface Character : NSObject

@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end

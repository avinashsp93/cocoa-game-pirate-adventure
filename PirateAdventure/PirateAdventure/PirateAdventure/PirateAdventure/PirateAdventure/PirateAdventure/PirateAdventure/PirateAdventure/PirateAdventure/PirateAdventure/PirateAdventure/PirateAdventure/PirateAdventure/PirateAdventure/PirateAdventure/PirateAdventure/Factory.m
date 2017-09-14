//
//  Factory.m
//  PirateAdventure
//
//  Created by Avinash P08 on 13/09/17.
//  Copyright © 2017 Infosys. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *)tiles {
    
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirate Boss. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@""];
    Weapon *bluntedSword = [[Weapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take Sword";
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@""];
    Armor *steelArmor = [[Armor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 12;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take Armor";

    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@""];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];

    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@""];
    Armor *parrotArmor = [[Armor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile4.armor = parrotArmor;
    tile4.actionButtonName = @"Adopt Parrot";
    
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@""];
    Weapon *pistolWeapon = [[Weapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"Use Pistol";

    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@""];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];

    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@""];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"The legend of the deep. The mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@""];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon Ship";
    
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@""];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure";
    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    

    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@""];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invadors";

    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@""];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";

    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Your final faceoff with the pirate boss!!";
    tile12.backgroundImage = [UIImage imageNamed:@""];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";

    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    

    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
 
    return tiles;
}

-(Character *)character {
    Character *character = [[Character alloc] init];
    character.health = 100;
    
    Armor *armor = [[Armor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    Weapon *weapon = [[Weapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;

    return character;
}

@end

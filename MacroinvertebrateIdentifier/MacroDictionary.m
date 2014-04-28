//
//  MacroDictionary.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/16/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "MacroDictionary.h"
#import "MacroKeyStrings.h"
#import "Macroinvertebrate.h"

@implementation MacroDictionary
@synthesize macroDic, keyStringDic;

-(id)init{
    if(self){
        keyStringDic = [[NSMutableDictionary alloc]init];
        macroDic = [[NSMutableDictionary alloc]init];

        
        MacroKeyStrings *keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"No segmented legs"];
        [keyString setPictureID:@"midge.jpg"];
        NSString *key = [NSString stringWithFormat:@"%d", 1];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Segmented legs"];
        [keyString setPictureID:@"mayfly.jpeg"];
        key = [NSString stringWithFormat:@"%d", 2];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Six segmented legs"];
        [keyString setPictureID:@"mayfly.jpeg"];
        key = [NSString stringWithFormat:@"%d", 5];
        [keyStringDic setObject:keyString forKey:key];
        
        
        
        //NO SEGMENTED LEGS--1
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Body not covered by hard shell"];
        [keyString setPictureID:@"midge.jpg"];
        key = [NSString stringWithFormat:@"%d", 3];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Body covered by hard shell"];
        [keyString setPictureID:@"planorbid.jpeg"];
        key = [NSString stringWithFormat:@"%d", 4];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Distinct head present, or head region obvious"];
        [keyString setPictureID:@"midge.jpg"];
        key = [NSString stringWithFormat:@"%d", 7];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"No distinct head present"];
        [keyString setPictureID:@"aquaticworm.jpg"];
        key = [NSString stringWithFormat:@"%d",8];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Soft body within two hinged shells"];
        [keyString setPictureID:@"clam.jpg"];
        key = [NSString stringWithFormat:@"%d", 9];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Soft body within a single shell"];
        [keyString setPictureID:@"planorbid.jpeg"];
        key = [NSString stringWithFormat:@"%d", 10];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Prolegs present (one or more tiny, short, stubbly, leg-like appendages that are not segmented"];
        [keyString setPictureID:@"prolegs.jpg"];
        key = [NSString stringWithFormat:@"%d", 15];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"No prolegs present"];
        [keyString setPictureID:@"flatworm.jpg"];
        key = [NSString stringWithFormat:@"%d", 16];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Body worm-like separated by numerous segments, may have suckers on the end"];
        [keyString setPictureID:@"aquaticworm.jpg"];
        key = [NSString stringWithFormat:@"%d", 17];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Soft, plump, caterpillar-like body"];
        [keyString setPictureID:@"cranefly.jpg"];
        key = [NSString stringWithFormat:@"%d", 18];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Hardened visible head, long worm-like body, two pairs, of prolegs with terminal hooks, some colored red"];
        [keyString setPictureID:@"midge.jpg"];
        key = [NSString stringWithFormat:@"%d", 31];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Hardened, rounded head having a pair of mouth brushes, prolegs on lower thorax, base of abdomen swollen with ring of hooks"];
        [keyString setPictureID:@"blackfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 32];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Body rounded and worm-like, divided into many segments having bundles or small hairs"];
        [keyString setPictureID:@"aquaticworm.jpg"];
        key = [NSString stringWithFormat:@"%d", 35];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Segmented body dorsally flattened, suction disks present on one or both ends"];
        [keyString setPictureID:@"leech.jpg"];
        key = [NSString stringWithFormat:@"%d", 36];
        [keyStringDic setObject:keyString forKey:key];
        
        
        
        //SIX SEGMENTED LEGS -- 5
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Elongated body (longer than wide)"];
        [keyString setPictureID:@"mayfly.jpeg"];
        key = [NSString stringWithFormat:@"%d", 11];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Oval-shaped body, legs concealed beneath body"];
        [keyString setPictureID:@"waterpenny.jpg"];
        key = [NSString stringWithFormat:@"%d", 12];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Two or three tail filaments (hair-like or paddle shaped"];
        [keyString setPictureID:@"damselfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 23];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"No tail filaments (or just a single long tail filament), or tail with small hooks"];
        [keyString setPictureID:@"caddisfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 24];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Abdominal gills attached to sides of abdomen, having either 2 or 3 tail filaments"];
        [keyString setPictureID:@"mayflygill.jpg"];
        key = [NSString stringWithFormat:@"%d", 47];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"No abdominal gills attached to sides of abdomen, having 2 or 3 hair like or paddle shaped filaments"];
        [keyString setPictureID:@"damselfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 48];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Abdomen hard, rigid"];
        [keyString setPictureID:@"rifflebeetle.jpg"];
        key = [NSString stringWithFormat:@"%d", 49];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Abdomen soft"];
        [keyString setPictureID:@"caddisfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 50];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Two hair-like tail filaments"];
        [keyString setPictureID:@"stonefly.jpg"];
        key = [NSString stringWithFormat:@"%d", 97];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Three paddle-shaped tail filaments"];
        [keyString setPictureID:@"damselfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 98];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Wide abdomen, large eyes, scoop-like lower lip, wing pads present"];
        [keyString setPictureID:@"dragonfly.jpg"];
        key = [NSString stringWithFormat:@"%d", 99];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Narrowed abdomen, entire body hardened, tail with hooks or filaments, no wing pads present"];
        [keyString setPictureID:@"rifflebeetle.jpg"];
        key = [NSString stringWithFormat:@"%d", 100];
        [keyStringDic setObject:keyString forKey:key];
        
        
        //MORE THAN SIX SEGMENTED LEGS
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"More than six segmented legs"];
        [keyString setPictureID:@"mite.jpg"];
        key = [NSString stringWithFormat:@"%d", 6];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Has four or five pairs of walking legs"];
        [keyString setPictureID:@"mite.jpg"];
        key = [NSString stringWithFormat:@"%d", 13];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Has 7 pairs of walking legs"];
        [keyString setPictureID:@"scud.jpg"];
        key = [NSString stringWithFormat:@"%d", 14];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Has 4 pairs of walking legs, small body size, body shape spherical, spider-like"];
        [keyString setPictureID:@"mite.jpg"];
        key = [NSString stringWithFormat:@"%d", 27];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"Has 5 pairs of walking legs, the first pair with large claws, large fanlike tail, large body size"];
        [keyString setPictureID:@"crayfish.jpg"];
        key = [NSString stringWithFormat:@"%d", 28];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"First pair of legs with small claws, body wider than high, 2 pairs of antennae, 1 much longer"];
        [keyString setPictureID:@"isopod.jpg"];
        key = [NSString stringWithFormat:@"%d", 29];
        [keyStringDic setObject:keyString forKey:key];
        
        keyString = [[MacroKeyStrings alloc]init];
        [keyString setText:@"First 2 pairs of legs with small claws, body higher than wide, 2 pairs of antennae with equal length"];
        [keyString setPictureID:@"scud.jpg"];
        key = [NSString stringWithFormat:@"%d", 30];
        [keyStringDic setObject:keyString forKey:key];
        
        
        
        
        
        Macroinvertebrate *m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Snail"];
        [m setPicture:@"planorbid.jpeg"];
        [m setPhylum:@"Mollusca"];
        [m setClas:@"Gastropoda"];
        [m setOrder:@""];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 10];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Clam/Mussel"];
        [m setPicture:@"clam.jpg"];
        [m setPhylum:@"Mollusca"];
        [m setClas:@"Bivalva"];
        [m setOrder:@""];
         [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 9];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Cranefly"];
        [m setPicture:@"cranefly.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Diptera"];
        [m setFamily:@"Tipulidae"];
        key = [NSString stringWithFormat:@"%d", 18];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Leech"];
        [m setPicture:@"leech.jpg"];
        [m setPhylum:@"Annelida"];
        [m setClas:@"Clitellata"];
         [m setFamily:@""];
        [m setOrder:@""];
        key = [NSString stringWithFormat:@"%d", 36];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Aquatic Worm"];
        [m setPicture:@"aquaticworm.jpg"];
        [m setPhylum:@"Annelida"];
        [m setClas:@"Oligochaeta"];
        [m setFamily:@""];
        [m setOrder:@""];
        key = [NSString stringWithFormat:@"%d", 35];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Flatworm"];
        [m setPicture:@"flatworm.jpg"];
        [m setPhylum:@"Platyhelminthes"];
        [m setClas:@"Turbellaria"];
        [m setOrder:@""];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 16];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Blackfly"];
        [m setPicture:@"blackfly.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Diptera"];
        [m setFamily:@"Tipulidae"];
        key = [NSString stringWithFormat:@"%d", 32];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Midge"];
        [m setPicture:@"midge.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Diptera"];
        [m setFamily:@"Simulidae"];
        key = [NSString stringWithFormat:@"%d", 31];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Scud"];
        [m setPicture:@"scud.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Malacostraca"];
        [m setOrder:@"Amphipoda"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 30];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Sow Bug"];
        [m setPicture:@"isopod.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Malacostraca"];
        [m setOrder:@"Isopoda"];
        [m setFamily:@"Asellidae"];
        key = [NSString stringWithFormat:@"%d", 29];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Crayfish"];
        [m setPicture:@"crayfish.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Malacostraca"];
        [m setOrder:@"Decapoda"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 28];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Mite"];
        [m setPicture:@"mite.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Arachnida"];
        [m setOrder:@"Hydracarina/Hydrachnida"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 27];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Riffle Beetle Lava"];
        [m setPicture:@"rifflebeetle.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Coleoptera"];
        [m setFamily:@"Elmidae"];
        key = [NSString stringWithFormat:@"%d", 100];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Dragonfly"];
        [m setPicture:@"dragonfly.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Odonata"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 99];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Caddisfly"];
        [m setPicture:@"caddisfly.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Trichoptera"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 50];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Damselfly"];
        [m setPicture:@"damselfly.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Odonata"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 98];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Stonefly"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Plecoptera"];
        [m setFamily:@""];
        [m setPicture:@"stonefly.jpg"];
        key = [NSString stringWithFormat:@"%d", 97];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Mayfly"];
        [m setPicture:@"mayfly.jpeg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Ephemeroptera"];
        [m setFamily:@""];
        key = [NSString stringWithFormat:@"%d", 47];
        [macroDic setObject:m forKey:key];
        
        m = [[Macroinvertebrate alloc]init];
        [m setCommonName:@"Water Penny"];
        [m setPicture:@"waterpenny.jpg"];
        [m setPhylum:@"Arthropoda"];
        [m setClas:@"Insecta"];
        [m setOrder:@"Coleoptera"];
        [m setFamily:@"Psephenidae"];
        key = [NSString stringWithFormat:@"%d", 12];
        [macroDic setObject:m forKey:key];
        
    }
    return self;
}

@end

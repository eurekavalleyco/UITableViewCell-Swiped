//
//  UITableViewCell+Swiped.m
//  UITableViewCell+Swiped
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 MCMDI. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "UITableViewCell+Swiped.h"
#import "AKDebugger.h"
#import "AKGenerics.h"
#import <objc/runtime.h>

#pragma mark - // DEFINITIONS (Private) //

@implementation UITableViewCell (Swiped)

#pragma mark - // SETTERS AND GETTERS //

- (void)setSwiped:(BOOL)swiped
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetter tags:@[AKD_UI] message:nil];
    
    objc_setAssociatedObject(self, @selector(swiped), [NSNumber numberWithBool:swiped], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)swiped
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter tags:@[AKD_UI] message:nil];
    
    NSNumber *swiped = objc_getAssociatedObject(self, @selector(swiped));
    if (!swiped)
    {
        [self setSwiped:NO];
        return self.swiped;
    }
    
    return [swiped boolValue];
}

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

#pragma mark - // CATEGORY METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end

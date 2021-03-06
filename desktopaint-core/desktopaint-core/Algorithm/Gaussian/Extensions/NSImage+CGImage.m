//
//  NSImage+CGImage.m
//  Desktopaint-core
//
//  Created by Nghia Tran on 5/29/18.
//  Copyright © 2020 com.topre.Desktopaint.core. All rights reserved.
//

#import "NSImage+CGImage.h"

@implementation NSImage (Extenstion)

-(CGImageRef) toCGImage {
    NSGraphicsContext *context = [NSGraphicsContext currentContext];
    CGRect imageCGRect = CGRectMake(0, 0, self.size.width, self.size.height);
    NSRect imageRect = NSRectFromCGRect(imageCGRect);
    CGImageRef imageRef = [self CGImageForProposedRect:&imageRect context:context hints:nil];
    return imageRef;
}

@end

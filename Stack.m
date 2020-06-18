#import "Stack.h"
/*
    implement private stack data with Extension
 */
@interface Stack()
//save stack data
@property (nonatomic) NSMutableArray *stackArray;

@end

@implementation Stack

-(id)init
{
    if([super init])
    {
        self.stackArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)push:(id)obj
{
    @synchronized (self) {
        [self.stackArray addObject:obj];
        NSLog(@"stack member:");
        for(int i=0;i<self.size;i++)
            NSLog(@"%@",[self.stackArray objectAtIndex:i]);
    }
}

-(void)pop
{
    @synchronized (self) {
        if(![self isEmpty])
        {
            [self.stackArray removeLastObject];
        }
        NSLog(@"stack member:");
        for(int i=0;i<self.size;i++)
            NSLog(@"%@",[self.stackArray objectAtIndex:i]);
    }
}

-(id)top
{
    @synchronized (self) {
        if([self isEmpty])
            return nil;
        else
        {
            NSLog(@"stack member:");
            for(int i=0;i<self.size;i++)
                NSLog(@"%@",[self.stackArray objectAtIndex:i]);
            return self.stackArray.lastObject;
        }
        
    }
}

-(BOOL)isEmpty
{
    return !(self.stackArray.count);
}

-(NSUInteger)size
{
    @synchronized (self) {
            return self.stackArray.count;
    }
}

@end

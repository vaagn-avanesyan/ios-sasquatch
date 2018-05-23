#import "MSNetExtension.h"

static NSString *const kMSNetProvider = @"provider";

@implementation MSNetExtension

#pragma mark - MSSerializableObject

- (NSMutableDictionary *)serializeToDictionary {
  NSMutableDictionary *dict = [NSMutableDictionary new];
  if (self.provider) {
    dict[kMSNetProvider] = self.provider;
  }
  return dict;
}

#pragma mark - MSModel

- (BOOL)isValid {
  return self.provider;
}

#pragma mark - NSObject

- (BOOL)isEqual:(id)object {
  if (![object isKindOfClass:[MSNetExtension class]]) {
    return NO;
  }
  MSNetExtension *netExt = (MSNetExtension *)object;
  return ((!self.provider && !netExt.provider) || [self.provider isEqualToString:netExt.provider]);
}

#pragma mark - NSCoding

- (instancetype)initWithCoder:(NSCoder *)coder {
  if ((self = [super init])) {
    _provider = [coder decodeObjectForKey:kMSNetProvider];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [coder encodeObject:self.provider forKey:kMSNetProvider];
}

@end

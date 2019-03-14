//
//  User.h
//  StudyiOS
//
//  Created by lzc on 2019/3/14.
//Copyright © 2019年 lzc. All rights reserved.
//

#import <Realm/Realm.h>

@interface User : RLMObject
//<# Add properties here to define the model #>

@end

// This protocol enables typed collections. i.e.:
// RLMArray<User *><User>
RLM_ARRAY_TYPE(User)

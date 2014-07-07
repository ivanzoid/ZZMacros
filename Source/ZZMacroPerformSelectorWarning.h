//
//  ZZMacroPerformSelectorWarning.h
//
//  Created by Ivan Zezyulya on 07.07.14.
//  Copyright (c) 2014 Ivan Zezyulya. All rights reserved.
//

#define PERFORM_SELECTOR_WARNING_OFF \
    _Pragma("clang diagnostic push") \
    _Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"")

#define PERFORM_SELECTOR_WARNING_ON \
    _Pragma("clang diagnostic pop")

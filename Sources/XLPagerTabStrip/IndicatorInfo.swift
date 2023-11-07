//  IndicatorInfo.swift
//  XLPagerTabStrip ( https://github.com/xmartlabs/XLPagerTabStrip )
//
//  Copyright (c) 2017 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public struct IndicatorInfo {

    public var title: String?
    public var image: UIImage?
    public var imageURL: String?
    public var disabledImage: UIImage?
    public var highlightedImage: UIImage?
    public var accessibilityLabel: String?
    public var userInfo: Any?
    public var tag: Int?
    public var disabled: Bool?
    
    public init(title: String?, tag: Int? = nil, disabled: Bool? = nil) {
        self.title = title
        self.accessibilityLabel = title
        self.tag = tag
        self.disabled = disabled
    }
    
    public init(image: UIImage?, imageURL: String? = nil, highlightedImage: UIImage? = nil, disabledImage: UIImage? = nil, userInfo: Any? = nil, tag: Int? = nil, disabled: Bool? = nil) {
        self.image = image
        self.imageURL = imageURL
        self.highlightedImage = highlightedImage
        self.disabledImage = disabledImage
        self.userInfo = userInfo
        self.tag = tag
        self.disabled = disabled
    }
    
    public init(title: String?, imageURL: String? = nil, image: UIImage?, highlightedImage: UIImage? = nil, disabledImage: UIImage? = nil, userInfo: Any? = nil, tag: Int? = nil, disabled: Bool? = nil) {
        self.title = title
        self.accessibilityLabel = title
        self.image = image
        self.imageURL = imageURL
        self.highlightedImage = highlightedImage
        self.disabledImage = disabledImage
        self.userInfo = userInfo
        self.tag = tag
        self.disabled = disabled
    }
    
    public init(title: String?, accessibilityLabel:String?, image: UIImage?, imageURL: String? = nil, highlightedImage: UIImage? = nil, disabledImage: UIImage? = nil, userInfo: Any? = nil, tag: Int? = nil, disabled: Bool? = nil) {
        self.title = title
        self.accessibilityLabel = accessibilityLabel
        self.image = image
        self.imageURL = imageURL
        self.highlightedImage = highlightedImage
        self.disabledImage = disabledImage
        self.userInfo = userInfo
        self.tag = tag
        self.disabled = disabled
    }

}

extension IndicatorInfo : ExpressibleByStringLiteral {

    public init(stringLiteral value: String) {
        title = value
        accessibilityLabel = value
    }

    public init(extendedGraphemeClusterLiteral value: String) {
        title = value
        accessibilityLabel = value
    }

    public init(unicodeScalarLiteral value: String) {
        title = value
        accessibilityLabel = value
    }
}

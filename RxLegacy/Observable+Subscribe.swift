//
//  Observable+Subscribe.swift
//  Unbabel
//
//  Created by Ivan Bruel on 17/02/2017.
//  Copyright © 2017 Unbabel. All rights reserved.
//

import Foundation
import RxSwift

extension ObservableType {

  func subscribeNext(_ onNext: @escaping (E) -> Void) -> Disposable {
    return subscribe(onNext: onNext)
  }

  func subscribeError(_ onError: @escaping (Error) -> Void) -> Disposable {
    return subscribe(onError: onError)
  }

  func subscribeCompleted(_ onCompleted: @escaping () -> Void) -> Disposable {
    return subscribe(onCompleted: onCompleted)
  }

  func subscribeDisposed(_ onDisposed: @escaping () -> Void) -> Disposable {
    return subscribe(onDisposed: onDisposed)
  }

}

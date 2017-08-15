//
//  Observable+ResultDoOn.swift
//  Unbabel
//
//  Created by Ivan Bruel on 16/02/2017.
//  Copyright © 2017 Unbabel. All rights reserved.
//

import Foundation
import RxSwift
import Result
import RxResult

extension ObservableType where E: ResultProtocol {

  func doOnSuccess(_ onSuccess: @escaping (Self.E.Value) throws -> Void) -> Observable<E> {
    return `do`(onSuccess: onSuccess)
  }

  func doOnFailure(_ onFailure: @escaping (Self.E.Error) throws -> Void) -> Observable<E> {
    return `do`(onFailure: onFailure)
  }
}

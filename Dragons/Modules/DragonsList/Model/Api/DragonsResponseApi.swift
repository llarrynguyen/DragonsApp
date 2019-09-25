//
//  DragonsResponseApi.swift
//  Dragons
//
//  Created by Larry Nguyen on 15/05/19.
//  Copyright © 2019 Larry Nguyen. All rights reserved.
//

struct DragonsResponseApi: Codable {
  let success: Bool
  let dragons: [DragonsApi?]
}

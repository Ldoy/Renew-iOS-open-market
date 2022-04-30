//
//  ChangingItemListView.swift
//  OpenMarket
//
//  Created by Do Yi Lee on 2022/04/30.
//

import UIKit

protocol ChangingItemListView {
    var titleTextField: UITextField { get set }
    var thumbnails: UIImageView { get set }
    var stockTextField : UITextField { get set }
    var currencyTextField: String { get set }
    var priceTextField: UITextField { get set }
    var discountedPriceTextField: UITextField { get set }
}

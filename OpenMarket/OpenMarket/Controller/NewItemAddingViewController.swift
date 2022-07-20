//
//  NewItemAddingViewController.swift
//  OpenMarket
//
//  Created by Do Yi Lee on 2022/04/30.
//

import Foundation
import UIKit

enum CurrencyList: String {
    case BTC, USD, EUR, KRW
}

let pikcerViewNumber = 1
//fileprivate var pickerViewData: [CurrencyList] = [.BTC, .USD, .EUR, .KRW]
fileprivate var pickerViewData = [ "BTC", "USD", "EUR",
                                   "KRW"]

class NewItemAddingViewController: UIViewController, ChangingItemListView, UIPickerViewDelegate {
    private let currencyPickerViewDataSource = CurrencyPickerViewDataSource()
    
    @IBOutlet var thumbnails: UIImageView!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    @IBOutlet var discountedPriceTextField: UITextField!
    @IBOutlet var stockTextField: UITextField!
    @IBOutlet var currencyPickerView: UIPickerView!
    
    override func viewDidLoad() {
        self.currencyPickerView.dataSource = currencyPickerViewDataSource
        self.currencyPickerView.delegate = self
        self.thumbnails.image = UIImage(systemName: "circle")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.titleTextField.placeholder = "제목"
        self.priceTextField.placeholder = "가격"
        self.discountedPriceTextField.placeholder = "할인가"
        self.stockTextField.placeholder = "개수"
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return pickerViewData[row]
    }
}

class CurrencyPickerViewDataSource: NSObject, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pikcerViewNumber
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewData.count
    }
}

# ๐ ์คํ๋ง์ผ ํ๋ก์ ํธ
- **ํ ๊ตฌ์ฑ์ : Tacocat(Ldoy), Jiss(hrjy6278)**
- **ํ๋ก์ ํธ ๊ธฐ๊ฐ : 2021.08.09 ~ 08.20** 

- **๊ทธ๋ผ์ด๋ ๋ฃฐ์ฆ** 
    <details>
    <summary>GroundRules</summary>
    <div markdown="1">    
        
    - ์ปค๋ฐ๋จ์ : ๋ฉ์๋, ํ์๋ณ๋ก ์ปค๋ฐ
    - ์ปค๋ฐ๋ฉ์ธ์ง : ์นด๋ฅด๋ง์คํ์ผ
    - ๋ธ๋์น : main > 3-jiss > STEPn ํํ๋ก ์งํ 
    - ํ ๋ด๋ถ ๊ท์น
        - ํ๋ก์ ํธ์ ์งํ ๋ณด๋ค๋ `์` ์ ์ด์ ์ ๋ง์ถ๊ธฐ 
        - ํ์จ๊ธ์ง
    </div>
    </details>

- **UML**
    <details>
    <summary>UML</summary>
    <div markdown="1">       
        <img src="https://i.imgur.com/h7WHBFc.png" width="1000" height="700">

    </div>
    </details>

## ๐๋ชฉ์ฐจ
[I. ์ฑ ๋์](#i-์ฑ-๋์)<br>
[II. ์๊ตฌ ๊ธฐ๋ฅ](#ii-์๊ตฌ-๊ธฐ๋ฅ)<br>
[III. ์ด๋ฅผ ์ํ ์ค๊ณ](#iii-์ด๋ฅผ-์ํ-์ค๊ณ)<br>
[IV. ๐ซTrouble Shooting๐ซ](#iv-trouble-shooting)<br>
 - [1. LazyLoading Probelm](#1-lazyloading-probelm)<br>
 - [2. HTTP Request POST์์ HTTP Message 503Error ๊ฐ Response ๋๋ ์๋ฌ!](#2-http-request-post์์-http-message-503error-๊ฐ-response-๋๋-์๋ฌ)<br>
 - [3. DataSource ์ Delegate๊ฐ ๋ถ๋ฆฌ๋ ์ํฉ์์ Model DATA๋ฅผ ์ฌ๋ฌ๊ตฐ๋ฐ์์ ์ฐธ์กฐ ํ  ์ ์๋ ๋ฐฉ๋ฒ](#3-datasource-์-delegate๊ฐ-๋ถ๋ฆฌ๋-์ํฉ์์-model-data๋ฅผ-์ฌ๋ฌ๊ตฐ๋ฐ์์-์ฐธ์กฐ-ํ -์-์๋-๋ฐฉ๋ฒ)<br>
 - [4. Delegateํ์์ ๋ฐ๋ก ๋ง๋ค๊ณ  ViewController์์ ํ ๋น ํ์๋๋ฐ ๋ฐ์๋์ง ์๋ ๋ฌธ์ ](#4-delegateํ์์-๋ฐ๋ก-๋ง๋ค๊ณ -viewcontroller์์-ํ ๋น-ํ์๋๋ฐ-๋ฐ์๋์ง-์๋-๋ฌธ์ )<br>
 - [5. CodingKey ํ๋กํ ์ฝ์ ์ฑํํ์์๋ ์ฑํํ์ง ์์๋ค๋ ๊ฒฝ๊ณ  ๋ฉ์ธ์ง๊ฐ ๋์จ ๋ฌธ์ ](#5-codingkey-ํ๋กํ ์ฝ์-์ฑํํ์์๋-์ฑํํ์ง-์์๋ค๋-๊ฒฝ๊ณ -๋ฉ์ธ์ง๊ฐ-๋์จ-๋ฌธ์ )<br>
 - [6. cell์ textLabel์ ๋ฐ์ดํฐ ๋ฐ ์์ฑ์ด ์ ๋๋ก ๋ฐ์๋์ง ์๋ ๋ฌธ์ ](#6-cell์-textlabel์-๋ฐ์ดํฐ-๋ฐ-์์ฑ์ด-์ ๋๋ก-๋ฐ์๋์ง-์๋-๋ฌธ์ )<br>

[V. ์์ฝ๊ฑฐ๋ ํด๊ฒฐํ์ง ๋ชปํ ๋ถ๋ถ](#v-์์ฝ๊ฑฐ๋-ํด๊ฒฐํ์ง-๋ชปํ-๋ถ๋ถ)<br>
[VI. ๊ด๋ จ ํ์ต ๋ด์ฉ](#vi-๊ด๋ จ-ํ์ต-๋ด์ฉ)<br>

<br><br> 




## I. ์ฑ ๋์
![Simulator Screen Recording - iPhone 12 - 2021-08-27 at 15 04 23](https://user-images.githubusercontent.com/71247008/131079919-cfbaccc2-beea-49cf-a79a-8f41b0d0f38c.gif)

<br><br>
## II. ์๊ตฌ ๊ธฐ๋ฅ
#### 1.  **์๋ฒ API๋ฅผ ํตํด ์ํ๋ชฉ๋ก์ ๋ํ ์ ๋ณด ์์ฒญ**
#### 2.  **๋ฐ์์จ ์ ๋ณด๋ฅผ ์ปฌ๋ ์๋ทฐ๋ก ๊ตฌํ**
#### 3.  **Scrolling, Paging ๊ตฌํ ๋ฐ ์ฌ์ฉ์ ๊ฒฝํํฅ์**
#### 4. **๋คํธ์ํฌ ๋ฌด๊ด ํ์คํธ**
<br><br>

## III. ์ด๋ฅผ ์ํ ์ค๊ณ

### 1. MVC ๋์์ธ ํจํด

![](https://i.imgur.com/FkSumjC.png)
  
<details>
<summary> ์์ ๊ฐ์ด ์ค๊ณํ ์ด์  </summary>
<div markdown="1">       


1) **MVC ๋์์ธ ํจํด** ์ฌ์ฉ, ๋๋ถ์ด  `ViewController`์ ์ปฌ๋ ์๋ทฐ์ `delegate`, `dataSource`, `layout` ๋ฑ์ ์ญํ ์ ๋ถ์ฌํ์ง ์๊ณ  `ViewController`์ ์ญํ ์ ๋ชํํ ํ๊ธฐ ์ํด ํด๋น ์ญํ ์ ํ๋ ํ์์ ๋ฐ๋ก ๊ตฌํํ๋ ๋ฐฉํฅ์ผ๋ก ์ค๊ณํ์๋ค. 


- **MVC๋ฅผ ์ฌ์ฉํ ์ด์ ** 
    - ๋คํธ์ํฌ ํต์  ๋ก์ง๊ณผ UI๋ก์ง(CollectionView)์ ๋ถ๋ฆฌํ์ฌ ์ ์ง๋ณด์๋ฅผ ๋๋ฆฝ์ ์ผ๋ก ์ํํ  ์ ์๋๋ก ํ๊ธฐ ์ํด์
    <br>
- **ViewController์ ์ญํ ์ ๋๋ ์ด์ **
    - Controller์ ์ญํ ์ Model๊ณผ View์ฌ์ด์์ ํ๋ก๊ทธ๋จ์ ์๋์์๋ ๋ฐฉ์์ ์ ์ดํ๋ ์ญํ ์ด๋ผ๊ณ  ์๊ฐํ๋ค. ๋ฐ๋ผ์ Controller๋ด๋ถ์์ ๋ฐ์ดํฐ๋ฅผ ๋ฐ์์ค๋ ์์ฒญ(DataSource), ๋ ์ด์์ ๊ฐ์ฒด๋ฅผ ๋ง๋๋ ๋ฉ์๋๋ฅผ ๊ฐ์ง๋ ๊ฒ์ Controller์ ์ญํ ์ด ์๋๋ผ๊ณ  ํ๋จํ์๋ค. 
    - ํ๋์ Controller๊ฐ ์ฌ๋ฌ๊ฐ์ ์ญํ ์ ๊ฐ์ง๋ ๊ฒ์ SOLID์์น ์ค ๋จ์ผ์ฑ์์์น์ ์๋ฐํ๋ ๊ฒ์ด๊ธฐ ๋๋ฌธ์ด๋ค.

</div>
</details>

<br>

### 2. ๋คํธ์ํฌ ํต์  ํ์, NetworkManager
<details>
<summary> NetworkManager ์ค๊ณ์ ์ด์  </summary>
<div markdown="1">       

- ์๋ฒAPI๋ถ์ ๊ฒฐ๊ณผ GET, POST, PUSH, PUT, DELETE ์ ๋ฉ์๋์ ๋ฐ๋ผ Response Message์ ๋ด์ฉ์ด ๋ฌ๋ผ์ง์ ์ ์ ์์๋ค. 
- ๊ฐ๊ฐ์ HTTPMethod ๋ง๋ค ๋คํธ์ํฌ ์์ฒญ์ ์งํํ๋ ๋ฉ์๋๋ฅผ ๋ง๋ค์ง ์๊ณ  ํ๋์ ํ์(ํน์ ๋ฉ์๋)๋ก HTTP Request๋ฅผ ํ  ์ ์๋๋ก ์ด์ ์ ๋ง์ถ๊ณ  ์๋์ ๊ฐ์ด ๊ตฌํํ์๋ค. 
     ```swift 
    //MARK:-NetworkManager
    struct NetworkManager {
        :

        //MARK: Method
            static func request(httpMethod: HTTPMethod, url: URL, body: Data?, _ contentType: ContentType, _ completionHandler: @escaping (Result<Data, NetworkError>) -> ()) {
            let request = createRequest(httpMethod: httpMethod, url: url, body: body, contentType)

            session.dataTask(with: request) { (data, response, error) in
                guard error == nil else {
                    completionHandler(.failure(.requestError))
                    return
                }

                guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                    completionHandler(.failure(.responseError))
                    return
                }

                if let data = data {
                    completionHandler(.success(data))
                }
            }.resume()
        }
    }
    
</div>
</details>
<br>

### 3. ์ปฌ๋ ์ ๋ทฐ์ ์ค๊ณ 

<details>
<summary> CollectionView ์ค๊ณ์ฝ๋์ ๊ทธ ์ด์  </summary>
<div markdown="1">       


- UICollectionViewDataSource ํ๋กํ ์ฝ์ ์ฑํํ ํ์์ ์๋กญ๊ฒ ๋ง๋ค์ด ๊ตฌ์ฑํ์์.
    - **NSObject๋ฅผ ์ฑํํ ์ด์ **
    `UICollectionViewDataSource`๊ฐ `NSObjectProtocol`์ ์์๋ฐ๊ณ  ์์. ์ด์๋ฐ๋ผ `UICollectionViewDataSource`๋ฅผ ์ค์ํ๋ ค๋ฉด `NSObjectProtocol`์ ์๊ตฌ์ฌํญ์ ์ค์ํด์ผ ๋จ.
`NSObject` ํด๋์ค๋ `NSObjectProtocol` ์ ์ฑํํ๊ณ  ์ค์ํ ํ์์. ์ด์๋ฐ๋ผ `NSObject`๋ฅผ ์์๋ฐ์ `UICollectionViewDataSource`์ ์๊ตฌ์ฌํญ์ ์ค์ ํ  ์ ์๊ฒ๋จ.
        ```swift
        class OpenMarketDataSource: NSObject, 
                                    UICollectionViewDataSource {

        }
        ```
- cellForItemAt ๋ฉ์๋์์ ์์ ๊ตฌ์ฑํ๋ ๋ถ๋ถ์, ์ด๋ฏธ์ง๋ฅผ ๋ค์ด๋ก๋ํ๊ฑฐ๋, ์บ์์ ์ฅ์์์๋ ์ด๋ฏธ์ง๋ฅผ ๊ฐ์ ธ์ค๋๋ก ๊ตฌ์ฑํจ. ํด๋น ์์์ ๋คํธ์ํฌ ๊ตฌํ์ด ํ์์ ์ด๋ผ, ์๋ฃ์์ ์ ํด๋ก์ ๋ก ๋๊ฒจ์ฃผ์ด ๋คํธ์ํฌ๋ฅผ ์ฒ๋ฆฌํจ. UI๋ฅผ ๋ณ๊ฒฝํ๋ cell.configure ๋ฉ์๋๊ฐ ์๊ธฐ ๋๋ฌธ์ main Thread์์ ์คํ ๋  ์ ์๋๋ก ํจ.

- ์ด๋ฏธ์ง๋ฅผ ๋ค์ด๋ก๋๋ฅผ ํ์ ๊ฒฝ์ฐ Notication์ผ๋ก ์๋ฃ๋์๋ค๋ ์์ ์ ์๋ ค์ฃผ๊ฒ ๋๋ค. ์ด๋ ๊ณ์ Notication์ Postํ  ์ฌ์ง๊ฐ ์์ผ๋ฏ๋ก ํ๋ฒ๋ง POST ํ ์ ์๋๋ก ๋ถ๊ธฐ๋ฌธ์ ์์ฑํจ.
    ```swift
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let taskIdentifier = imageLoader.downloadImage(reqeustURL: urlString, imageCachingKey: idNumber) { downloadImage in
        DispatchQueue.main.async {
            if self.isImageDownload == false {
                NotificationCenter.default.post(name: .imageDidDownload, object: nil)
                self.isImageDownload = true
            }    

            cell.configure(item: currentItem, thumnail: downloadImage)
            cell.isHidden = false
            }
        }
    }
    
    ```

- CollectionView Layout์ Delegate๋ฅผ ์ฌ์ฉํ๊ฒ ์๋ UICollectionViewFlowLayout ํด๋์ค ์ธ์คํด์ค๋ฅผ ๋ง๋ค์ด ๋ ์ด์์ ์ค์ ์ ํด์ค ๋ค, CollectionView์ ์ ์ฉ์์ผ์ฃผ์๋ค.
    ```swift
        struct Layout {
            static func generate(_ view: UIView) -> UICollectionViewFlowLayout {
            let layout = UICollectionViewFlowLayout()
            let width = view.bounds.width / 2.2
            let height = view.bounds.height / 3.6

            //์์ ์ฌ์ด์ฆ๋ฅผ ์ค์ ํ๋ ๋ถ๋ถ
            layout.itemSize = CGSize(width: width, height: height)

            //์๊ณผ ์์ ์ต์ ๊ฐ๊ฒฉ์ ์ค์ ํ๋ ๋ถ๋ถ
            layout.minimumInteritemSpacing = 10

            //๋ผ์ธ(์ค)๊ณผ์ ์ต์ ๊ฐ๊ฒฉ
            layout.minimumLineSpacing = 10

            //์์ ํ๋๋ฆฌ์ ์ฌ๋ฐฑ์ ์ค์ ํ๋ ๋ถ๋ถ
            layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

            return layout
            }
        }
    ```

- ์คํ๋ทฐ๋ฅผ ์ต๋ํ ํ์ฉํ์ฌ ์ถํ์ ์ ์ง๋ณด์์๋ ๊ฐ๋ ฅํ๊ณ , ์ฝ๊ฒ ๋์ฒํ  ์ ์๋๋ก ์ค๊ณํจ.
    <img src="https://user-images.githubusercontent.com/71247008/131338664-48d21b64-c228-4111-add0-2ebd4726a21e.png" width="400" height="200">

</div>
</details>

<br>

### 4. Scrolling, Paging ๊ตฌํ

#### 4-1. Scrolling
<details>
<summary> Scrolling ๊ธฐ๋ฅ ์ค๊ณ์ ๊ทธ ์ด์ </summary>
<div markdown="1">  
    
- **`singleton`** ๋์์ธ ํจํด์ ์ด์ฉํด ๊ตฌํํ **`ImageCacher`**
    ``` swift
    class ImageCacher: NSCache<NSNumber, UIImage> {
        static let shared = ImageCacher()

        private override init() {
            super.init()
            self.countLimit = 100 
            //์บ์ฌ์ ์ ์ฅ๋  value์ ์ ์ฅ ๊ฐ์ ํด๋น ์ซ์๋ฅผ ๋์ง ๋ชปํจ.
            }

        func save(_ image: UIImage, forkey: Int) {
            setObject(image, forKey: NSNumber(value: forkey))
        }

        func pullImage(forkey: Int) -> UIImage? {
            guard let image = object(forKey: NSNumber(value: forkey)) else {
                return nil
            }
            return image
        }
    } 
    ```
  
    - ๋คํธ์ํฌ ์์ฒญ์ ํตํด ์ปฌ๋ ์๋ทฐ์ ์์ ๋ฐ์ํ๋ ์ด๋ฏธ์ง๋ฅผ NSCache ๊ฐ์ฒด๋ฅผ ์ด์ฉํด ๋ด๋ถ์ ์ ์ฅํ์๋ค. 
        - **์ด์ ** : ์บ์ฌ ๋ฐฉ๋ฒ์ ์ด์ฉํ๋ฉด ์ด๋ฏธ์ง๋ฅผ ๊ฐ์ ธ์ค๋ ์๋๊ฐ ์๋ฒ์ ์์ฒญํ๋ ๊ฒ๋ณด๋ค ๋น ๋ฅด๊ธฐ ๋๋ฌธ์ ์บ์ฌ๋ฅผ ์ด์ฉํด์ ์คํฌ๋กค ํ  ๋ ์ฌ์ฉ์ ๊ฒฝํ์ ๋ง์กฑ๋๊ฐ ๋์์ง๊ฒ ํ๊ธฐ ์ํด์. 
    - **`singleton`์ผ๋ก ๊ตฌํํ ์ด์ ** : ์์ฃผ์ฌ์ฉ๋๋ ์ด๋ฏธ์ง๋ค์ `NSCache`๋ฅผ ์ฌ์ฉํ์ฌ ๊ตฌํํจ. ์ถํ์ ๋ค๋ฅธ `ViewController` ๊ฐ ์ฌ์ฉ ํ  ์ ์์์ ๊ณ ๋ คํ์ฌ, singleton ์ผ๋ก ๊ตฌํํจ.
    
- **NSCache ์  URLCache ์ค NSCache๋ฅผ ์ ํํ ์ด์ **
     - ์ค์ํํธ์์ ์ด๋ฏธ์ง๋ฅผ cachingํ๋ ๋ฐฉ๋ฒ์๋ ๋ํ์ ์ผ๋ก `URLCache`, `NSCache` ๋ ๊ฐ์ง๊ฐ ์๋ค. ๋น์์๋ in-memory๋ฐฉ์์ผ๋ก cachingํ๋ ค๊ณ  ํด์ URLCache๋ฅผ ์ ํํ์ง ์์์ง๋ง ์ง๊ธ ์๊ฐํด๋ณด๋ ์ฝ๋์ ํ์ฅ์ฑ์ ์ํด์ URLCache๋ฅผ ์ฌ์ฉํด๋ ์ข์์ ๊ฑฐ๋ ์๊ฐ์ด๋ ๋ค. 
    - **์ด์ ** : `URLCache`๋ ์บ์ํ  ๋ฉ๋ชจ๋ฆฌ์ฉ๋ ์ค์ ํ  ์ ์๊ณ  in-memory, on-disk๋ฐฉ์์ ์ค ํ๋๋ฅผ ์ ํํ  ์ ์๊ธฐ ๋๋ฌธ์ด๋ค. ๋ํ `NSCache`๋ ๋ฉ๋ชจ๋ฆฌ๊ฐ ๋ชจ์๋ ๋ ์ ์ฅ๋ ๋ฐ์ดํฐ ์ค ์ฌ๋ผ์ง๋ ๋ฐ์ดํฐ์ ๋ํ ๊ท์น์ด ์๊ธฐ ๋๋ฌธ์ cache๋ ๊ฐ์ฒด๊ฐ ์ ์ฅ๋์ด์์ ๊ฑฐ๋ ๋ณด์ฅ์ด ์๋ค. ์ฆ ์คํฌ๋กค๋ง์ ๋ํ ์ฑ๋ฅ ๋ฐ ์ฌ์ฉ์ ๊ฒฝํ ํฅ์์ ๋ณด์ฅ ํ์ง ์๋๋ค. 
        <details>
        <summary>์ฐธ๊ณ ํ ์ธ์ฉ๊ธ</summary>
            <div markdown="1">   
                > As NSCache is an in-memory cache, it will use system's memory and will allocate a proportional size to the size of images, or data in generic term. Until other applications need memory and system forces this app to minimize its memory footprint by removing some of its cached objects. Though, NSCache doesn't guarantee that the eviction process will be in orderly manner. Moreover, the cached objects won't be there in next run. The main advantages of NSCache are performance and auto-purging feature for objects with transient data that are expensive to create.For any network data management we should use URLCache rather than NSCache for caching any data. Because, URLCache is both in-memory and on-disk cache, and it doesn't allocate a chunk of memory for it's data. You can define it's in-memory and on-disk size, which is more flexible. URLCache will persist the cached data until the system runs low on disk space.
                [๋งํฌ](https://medium.com/@master13sust/to-nscache-or-not-to-nscache-what-is-the-urlcache-35a0c3b02598)
            </div>
            </details>
    
</div>
</details>

#### 4-2. Paging 
<details>
<summary> Paging ๊ธฐ๋ฅ ์ค๊ณ์ ๊ทธ ์ด์ </summary>
<div markdown="1">  
    
- **`OpenMarketCollectionViewDelegate` ์์ scrollViewDidScroll ๋ฉ์๋๋ฅผ ์ฌ์ฉํ์ฌ paging ๊ตฌํ**
    - **์ด์ ** : ์ฌ์ค ๋ด๋ถ ์ฝ๋์ ๋ํด ์๋ฒฝํ๊ฒ ์ดํดํ๊ณ  ์๋๊ฒ์ด ์๋๋ผ์ ์ฝ๋๋ฅผ ์์ฑํ ์ง ๋ง์ง ๋ง์ด ๊ณ ๋ฏผํ๋๋ฐ ์ฐ์  ๊ธฐ๋ฅ์ ๊ตฌํํด ๋ณด์๋ ๋ง์์ผ๋ก ์ถ๊ฐ
    - ๋ฆฌ๋๋ฏธ๋ฅผ ์์ฑํ๋ฉด์ ๊ณต๋ถํ scrollViewDIdScroll๋ด๋ถ์ ์ฝ๋์ ๊ดํ์ฌ 
        ```swift
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            // ํ๋ฉด์ ๋ณด์ด๋ ์์ญ์ ๊ฐ์ฅ ์ผ์ชฝ ์ ์๋จ์ CGPoint๊ฐ : contentOffSet 
            let offsetY = scrollView.contentOffset.y
            
            // ํ๋ฉด์ ๋ณด์ด๋ ๋ทฐ ๋๋จธ ์ด Content ํฌ๊ธฐ : contentSize
            let contentHeight = scrollView.contentSize.height
            
            // ํ๋ฉด์ ๋ณด์ด๋ ์ผ์ชฝ์๋จ ์์์ ์ y์ขํ๊ฐ์ปจํ์ธ ์ฌ์ด์ฆ์์ ํ๋ฉด์ ๋ณด์ด๋ ๋์ด์ 1/2๋ฅผ ๋บ
            // ๊ฒ๋ณด๋ค ํฌ๋ค๋ฉด ๋ค์ ํ์ด์ง์ ์ ๋ณด๋ฅผ ๊ฐ์ ธ์ค๋ loadMoreDataํธ์ถ 
            if (offsetY > contentHeight - scrollView.frame.height * 2) && !isLoading {
            loadMoreData("\(self.rquestPage)", scrollView as? UICollectionView)
            rquestPage += 1
            }
        }
    - ์์ ์ฝ๋ ์ค if ๋ฌธ์ 
        `offsetY + scrollView.frame.height * 2 > contentHeight`
        ๋ผ๊ณ ๋ ์ธ ์ ์๋ค. **์ฆ ํ์ฌ ์์น์์ screen Visable๋์ด(frame.height)๊ธธ์ด2๋ฐฐ๋งํผ ๋ ๊ฐ๋๋ ์ปจํ์ธ ์ ์ด ๋์ด๋ณด๋ค ํฐ ๊ฒฝ์ฐ์ ๋ค์ ํ์ด์ง์ ๋ํด ๋คํธ์ํฌ ์์ฒญ์ ์งํํ๋ผ๊ณ  ์ดํดํ  ์ ์๋ค.**
    
    
        | contentOffset | ScrollView์ ๊ตฌ์ฑ |
        | -------- | -------- |
        | ![](https://i.imgur.com/3hYQOf6.png) <br>[์ฐธ๊ณ ๋งํฌ](https://cdn-ak.f.st-hatena.com/images/fotolife/h/haptaro/20170503/20170503221005.png)| ![](https://i.imgur.com/RLxw4rq.png) [์ฐธ๊ณ ๋งํฌ](https://www.google.com/search?q=scrollview+contentsize+swift&tbm=isch&ved=2ahUKEwjzkqu-n9byAhXNw4sBHQzFBY8Q2-cCegQIABAA&oq=scrollview+contentsize+swift&gs_lcp=CgNpbWcQAzIECAAQGDIECAAQGDoFCAAQgAQ6BggAEAgQHjoGCAAQChAYUOPWLVjh7y1g3_AtaAlwAHgDgAGCAYgBvRCSAQQzLjE5mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=Vn8rYfOPM82Hr7wPjIqX-Ag&bih=975&biw=1200&client=safari#imgrc=50BAJR4GZyLfQM&imgdii=gVsTmPIBXPI9MM)|

    - paging์ ๊ตฌํํ๋ ๋ฐฉ๋ฒ์ ์กฐ์ฌํด๋ณด์๋ค. ์์ ๊ฐ์ด `ScrollContentOffset`์ ์ฌ์ฉํ๊ฑฐ๋ `collectionView(_:willDisplay:forItemAt:)` ๋ฉ์๋๋ฅผ ์ฌ์ฉ ํด์ ํน์  ์์ ์  ๋ฐ์ดํฐ ์์ฒญ, [UICollectionViewDataSourcePrefetching](https://developer.apple.com/documentation/uikit/uicollectionviewdatasourceprefetching/prefetching_collection_view_data) ํ๋กํ ์ฝ์ ์ฌ์ฉํ๋ ๋ฐฉ๋ฒ ๋ฑ์ด ์๋ค. 
    - ํ ํ๋ก์ ํธ์์ ์ฌ์ฉํ ์ฒซ ๋ฒ์งธ ๋ฐฉ๋ฒ์ ์ปจํ์ธ ์ ํน์  ๋์ด์์ ๋ฐ์ดํฐ๋ฅผ ๋คํธ์ํฌ์์ฒญ์ผ๋ก ๊ฐ์ ธ์ค๋๋ก ํ๊ณ  ์์์ ์๊ฐํ collectionView(_:willDisplay:forItemAt:) ๋ฉ์๋๋ฅผ ํตํ ๋ฐฉ๋ฒ์ indexPath๊ฐ ๊ธฐ์ค์ด ๋๊ธฐ ๋๋ฌธ์ ๊ตฌํํด์ผํ๋ ์ํฉ์ ๋ฐ๋ผ ์ ํํ๋ฉด ๋  ๊ฒ ๊ฐ๋ค. 
    
</div>
</details>

<br>

### 5. ๋คํธ์ํฌ ๋ฌด๊ด ํ์คํธ 
<details>
<summary> ํ๋ก์ ํธ์์ ๊ตฌํํ ํ์คํธํ์์ ๊ดํ์ฌ </summary>
<div markdown="1">  
 
- ์๋ฒ๊ฐ ๊ตฌ์ถ๋๊ธฐ ์ด์ ์ ์๋ฒ๊ฐ ์ ์กํ๋ JSON ๋ฐ์ดํฐ๋ฅผ ์ค๋ฅ์์ด Decodingํ๋ ๊ฒ์ ํ์คํธํ๊ธฐ ์ํด OpenMarketTests ํด๋์ค์์ UnitTest๋ฅผ ์งํํ๋ค. 
- ๋์ฝ๋ฉํ ๋ฐ์ดํฐ์ ํน์  ํ์ด์ง ํน์ ํน์  ์์ดํ์ ์์ฑ์ ์ถ์ถํ๊ณ  ๊ทธ ๊ฐ์ด ์์ ๊ฐ๊ณผ ๋ง๋ ๋ฉ์๋์ ๋ง์ง ์๋ ๋ฉ์๋๋ฅผ ๊ตฌํํ์๋ค. 
    ```swift
    //์ฑ๊ณต์ผ์ด์ค 
    func test_OpenMarketItems์_ํ์ด์ง๊ฐ_1์ด๋ค() {
            //given
            let assetData = NSDataAsset(name: "Items")!

            //when
            let decodedData = try! ParsingManager
                            .jsonDecode(data: assetData.data, 
                                            type: OpenMarketItems.self)

            //then
            XCTAssertEqual(decodedData.page, 1)
        }

    //์คํจ์ผ์ด์ค 
    func test_Item์์ํ์ผ์_OpenMarketItemsํ์์ผ๋กํ์ฑํ์๋_์คํจํ๋ค() {
            //given
            let assetData = NSDataAsset(name: "Items")!

            //when
            do {
                    _ = try ParsingManager
                        .jsonDecode(data: assetData.data, 
                                    type: OpenMarketItems.self)
            } catch let error as ParsingError {
                //then
                XCTAssertEqual(error, .decodingError)
            } catch {
            }
        }
        
</div>
</details>
    <br>

### 6. ๊ทธ ์ธ ํ๋ก์ ํธ ๋ด๋ถ ์ฝ๋์ ์ด์ 

<details>
<summary>์ฃผ์ ์ฝ๋</summary>
<div markdown="1">       

1. **`StrockText`, `DigitStyle` ์ด๋ผ๋ ํ๋กํ ์ฝ๋ฅผ ์ ์ธํ๊ณ  extension์ผ๋ก ๋ฉ์๋๋ฅผ ๊ตฌํ**
    - **์ด์ ** : ์ฒซ ํ๋ฉด์ธ์ `+` ๋ฒํผ์ ๋๋ ์ ๋ ๋ณด์ฌ์ง๋ ์์ธ ๋ทฐ, ์ํ๋ฑ๋ก ๋ทฐ์์๋ ํด๋น ์์ฑ๋ค์ ์ฌ์ฉํ  ๊ฒฝ์ฐ๊ฐ ์๊ธธ ์ ์๊ธฐ ๋๋ฌธ์ ํ๋กํ ์ฝ์ ๋ง๋ค๊ณ  ์ต์คํ์์ผ๋ก ์ธ๋ถ๊ตฌํ์ ์งํ

4. **`OpenMarketDataSource` ํ์์ ๋ณด๋ฉด `init` ๋ฉ์๋ ๋ด๋ถ์์ `openMarketItemList` ์ element๊ฐ ํ๋๋ผ๋ ์๊ฒจ์ผ ํด๋น ๋ฉ์๋์ ํธ์ถ์ด ์ข๋ฃ๋๋๋ก ๊ตฌํ**
    - **์ด์ ** : `OpenMarketLoadData.requestOpenMarketMainPageData` ๊ฐ ๋น๋๊ธฐ์ ์ผ๋ก ๋ฐ์ดํฐ๋ฅผ ๋ฐ์์ค๊ณ  ์ด ๋๋ฌธ์ init ์ดํ์ cell์ ๋ฐ์ํ  ๋ฐ์ดํฐ๊ฐ ์๋ ์ํ๋ก ์์๋๋ ๊ฒ์ ๋ง๊ธฐ ์ํด์
    - ์ง๊ธ ๋ค์ ์๊ฐํด๋ณด๋ ์ด๋ฒ์ ์๋ก ๋ฐํ๋ `async/await`๋ฅผ ์ฌ์ฉ ํ  ์์์ง ์์์๊นํ๋ ์๊ฐ์ด ๋ ๋ค. 

7. **`collectionView(_:cellForItemAt:)` ๋ด๋ถ์์ ์ฒซ ์ด๋ฏธ์ง๊ฐ ๋ค์ด๋ก๋ ๋๋ฉด `viewController`์ `activityIndicator` ์ ๋๋ฉ์ด์์ ์ค์งํ๋๋ก `NotificationCenter`๋ฅผ ๊ตฌํ**
    - **์ด์ ** : ๋ทฐ ์ปจํธ๋กค๋ฌ๊ฐ์ ์ ๋ณด๋ฅผ ์ ๋ฌํ๋ ๋ฐฉ๋ฒ์๋ ํด๋ก์ , ๋ทฐ์ปจ์ ์์ฑ์ผ๋ก ๊ฐ์ง๊ธฐ, notification, delegate, KVO ํจํด์ ์ฌ์ฉ ๋ฑ์ด ์๋ค. ์ด ์ค ์ฒซ ์ด๋ฏธ์ง๊ฐ ๋ค์ด๋ก๋ ๋์๋ค๋ ์ ๋ณด ์ ๋ฌ ๋ฐฉ๋ฒ์ผ๋ก Notification์ ์ฌ์ฉํ๋ค. NotificationCenter๋ฅผ ์ด์ฉํ๋ฉด ๋ทฐ์ปจํธ๋กค๋ฌ ๊ณ์ธต์์ ๋ฉ๋ฆฌ ๋จ์ด์ ธ ์๋ ๊ฒ๋ค๋ผ๋ฆฌ๋ ์ ๋ณด์ ๋ฌ์ด ๊ฐ๋ฅํ๊ธฐ ๋๋ฌธ์ด๋ค. ๋ค์ ์๊ฐํด๋ณด๋ KVOํจํด์ ์ฌ์ฉํด์ ์ ๋ณด์ ๋ฌํ๋ ๋ฐฉ๋ฒ๋ ๊ฐ๋ฅํ์ ๊ฒ ๊ฐ๋ค. 

6. **`OpenMarketItemCell` ์์ฑ์ผ๋ก `prepareForReuse` ๋ฉ์๋ ํธ์ถ ์ ๋คํธ์ํฌ ์์ฒญ์ ์ทจ์ํ  ์ฝ๋๋ฅผ ๋ด์ ํด๋ก์ ๋ฅผ ๊ตฌํ**
    - **์ด์ ** : `collevtionView(_:cellForItemAt:)`๋ฉ์๋์์ cell์ ์ฌ์ฌ์ฉํ๋ ์ฝ๋๊ฐ ๊ตฌํ๋์ด์๊ณ  cell ์ฌ์ฌ์ฉ ์ง์  `prepareForReuse`๊ฐ ํธ์ถ๋๊ธฐ ๋๋ฌธ์ ๋ ๋ฉ์๋ ํธ์ถ ๊ฐ์ ์ ๋ณด์ ๋ฌ์ด ํ์ํ๋ค. ๊ทธ๋์ `Clouser` ํ์์ ๋ณ์๋ฅผ ์ ์ธ

7. **`ParsingManager`์์ ๋์ฝ๋ฉ ๋ฐฉ๋ฒ์ผ๋ก `JSONDecoder`ํ์์ ์ฌ์ฉ**
    - ๊ทธ ์ธ์ ๋์ฝ๋ฉ ๋ฐฉ๋ฒ์ผ๋ก๋ String(data:encoding), JSONSerialization์ ์ฐ๋ ๊ฒ์ด ์๋ค. 
    - JSONDecoder, JSONEncoder๋ฅผ ์ฌ์ฉํ ์ด์ ๋ JSON ๋ฐ์ดํฐ๋ฅผ ๋์ฝ๋ํ๋ ํ์์ JSONSereialization๋ณด๋ค ๋น ๋ฅด๊ณ  ๊ฐํธํ๊ฒ ๊ตฌํํ  ์ ์๊ธฐ ๋๋ฌธ์ด๋ค. 

</div>
</details>

<br>

##### 7. ํ์๊ณผ ์ญํ  ๋ถ๋ฐฐ 

<details>
<summary>์ฃผ์ํ์๊ณผ ์ญํ  ์ ๋ฆฌ </summary>
<div markdown="1">       

| class/struct           | ์ญํ |
| ---------------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `OpenMarketDataSource` | UICollectionViewDataSource๋ฅผ ์์ํ๋ฉฐ Section๊ณผ Section์ ํด๋นํ๋ Item์ ์, cell์ ๋ณด์ฌ์ค item์ ๋ํ ์ ๋ณด๋ฅผ ๊ฐ์ง๊ณ  ์๋ค|
| `ParsingManager`       | OpenMarket์๋ฒ์ ์์ฒญํด์ ๊ฐ์ ธ์จ JSON๋ฐ์ดํฐ๋ฅผ decode ํ๋ค.|
| `NetworkManager`       | OpenMarket์๋ฒ๋ก HTTPMethod์ ๊ธฐ๋ฐํ์ฌ ๋คํธ์ํฌ ์์ฒญ์ ํ๋ค|
| `HTTPBodyMaker`        | `NetworkManager`์๊ฒ ์ ๋ฌํด ์ค httpBody๋ฅผ ๋ง๋ ๋ค|
| `OpenMarketItemCell`   | collectionView์ ์ ์ฒด์ ์ธ view์์๋ฅผ ๋ํ๋ธ๋ค.|
|`LayoutGenerator`|collectionView์ collectionViewLayout ์์ฑ์ ํ ๋นํ๋ collectionView UICollectionViewFlowLayout ๊ฐ์ฒด๋ฅผ ๋ง๋ ๋ค. |
| `ViewController`       | `datasource`๊ฐ์ฒด์์ ๋คํธ์ํฌ ์์ฒญ์ด ์ ์์ ์ผ๋ก ์ด๋ฃจ์ด์ง์ง ์์ผ๋ฉด `Notification`์ ๋ฐ๋ ์ญํ ์ ํ๋ค. ๋ํ `dataSource`๊ฐ์ฒด์์ ๋คํธ์ํฌ ์์ฒญ์ด ์์๋์ด `openMarketListItem`์ ์ฒซ ๋ฒ์งธ ์์๊ฐ ์๊ธฐ๋ ์๊ฐ `Notification`์ ๋ฐ์ `activityIndicator`๊ฐ์ฒด์ ์ ๋๋ฉ์ด์์ด ๋ฉ์ถ๋๋ก ํ๋ค.|



</div>
</details>

<br>


<br> 

## IV. Trouble Shooting

### 1. LazyLoading Probelm
- **์ํฉ** : ์์ด ์ด๋ฏธ์ง ๋ค์ด๋ก๋ ์์์ ๋น๋๊ธฐ๋ก ์์ํ ๋, ์ฌ์ฌ์ฉ๋์ด ๋ค๋ฅธ ์์น์์ ์ด๋ฏธ์ง๋ฅผ ๋ณด์ฌ์ฃผ๋ ์๋ฌ

- **์ฒซ ์๋** : indexPath๋ฅผ ์ด์ฉํด cell์ด ์ฌ์ฌ์ฉ ๋  ๋ `collectionView(_:cellForItemAt)` ๋ฉ์๋๊ฐ ์คํ๋ `indexPath` ์์๋ง ์ด๋ฏธ์ง๋ฅผ ๋ฐ์ํ๋๋ก ํจ
    ```swift
    // ์ฝ๋์์
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        :
        :    
        if indexPath.item == collectionView.indexPath(for: cell)?.item {
            cell.configure(item: self.openMarketItemList[indexPath.section].items[indexPath.item])
            }
        }
    ```
       
    - ๊ฒฐ๊ณผ : ์คํจ
        - ์ด์  : UICollectionView๋ UITableView์๋ ๋ค๋ฅธ๊ฒ ์คํฌ๋ฆฐ์ cell์ด ๋ณด์ด์ง ์์๋ ๋ฏธ๋ฆฌ `collectionView(_:cellForItemAt)` ํธ์ถํด์ cell์ ์ค๋น์ํจ๋ค. ๋ฐ๋ผ์ ์ด ๋ฉ์๋ ๋ด๋ถ์ ๋คํธ์ํฌ ์์ฒญ์ ํตํด ์ด๋ฏธ์ง๋ฅผ ๊ฐ์ ธ์ค๊ณ  ๊ทธ ์ด๋ฏธ์ง๋ฅผ cell์ ๋ฐ์ํ๋๋ก ๊ตฌํํ์ง๋ง ๋ง์ ๋ฐ์ํ  cell์ด ์๊ธฐ ๋๋ฌธ์ cell์ ์ ๋๋ก ์ด๋ฏธ์ง๊ฐ ๋ฐ์๋์ง ์๋๋ค. 
- **ํด๊ฒฐํ ๋ฐฉ๋ฒ** : `NSCache`๋ฅผ ์ด์ฉํ ์ด๋ฏธ์ง์บ์ฑ๊ณผ `prepareForReuse`๋ฉ์๋์ `collectionView(_:cellForItemAt)` ์์ cell ์ฌ์ฌ์ฉ์ ๋คํธ์ํฌ ์์ฒญ ์ทจ์ํ๋๋ก `OpenMarketcel`์ closure ํ์์ ๋ณ์ ์ถ๊ฐํ๊ณ  `ImageLoader`ํ์์ ๋ง๋ค์ด์ cell์ฌ์ฌ์ฉ ์ ๋คํธ์ํฌ ์์ฒญ ์ทจ์ํ๋ ๋ฉ์๋ ๊ตฌํ
    - **์ด์ ** : ์ฌ์ฌ์ฉ์ cell์ด ํ๋ฉด์ ์์ง ์์ผ๋ฉด ํด๋น ๋ฐ์ดํฐ๋ ๋ฉ๋ชจ๋ฆฌ์ ์ ์ฅ๋์ง ์๊ธฐ ๋๋ฌธ์ ์ฌ์ฉํ  ์ ์๋ค. ๋ฐ๋ผ์ cell์ด view์์ ๋ณด์ด์ง ์๋๋ผ๋(์ฌ์ฉ๋์ง ์๋๋ผ๋) ๋ถ๋ฌ์จ ์ด๋ฏธ์ง ๋ฐ์ดํฐ๋ฅผ ๋ณด๊ดํ๋๋ก NSCache๊ฐ์ฒด์ ์ด๋ฏธ์ง์ item์ id๋ฅผ key-value ํํ๋ก ์ ์ฅํ๋ค. ๋ํ ์คํฌ๋กค์ ๋น ๋ฅด๊ฒ ํ  ๋ `collectionView(_:cellForItemAt)` ๋ด๋ถ์์ ์ด๋ฏธ์ง ๋ก๋ฉ์ ์ํ ๋คํธ์ํฌ์์ฒญ๋ฉ์๋(ImageLoader์ downloadImage)์ ํธ์ถ๊ณผ cell์ด ์ฌ์ฌ์ฉ๋์ด ๋ค์ ํธ์ถํ ๊ฒฐ๊ณผ์ ๊ฒน์น์ง ์๋๋ก ํ๊ธฐ ์ํ์ฌ ์ด์ ๊ฐ์ ๋ฐฉํฅ์ผ๋ก ๊ตฌํํ์๋ค.  
    - [์์ธํ ์คํ๊ฒฐ๊ณผ์ UITableView์์ ๋น๊ต์ ๋ฆฌ ๋ธ์๋งํฌ](https://www.notion.so/Lazy-Loding-Problem-in-CollectionView-d9a3b5b5f4394eec9c969d0fc49f62aa)


- **๋ค๋ฅธ ํด๊ฒฐ๋ฐฉ๋ฒ** 
    - `isPrepatching` ์์ฑ false ๋ก ํด์ cell ํ๋ฉด์ ๋ณด์ผ ๋๋ง `collectionView(_:cellForItemAt)` ๋ฅผ ํธ์ถ 

<br>
    
### 2. HTTP Request POST์์ HTTP Message 503Error ๊ฐ Response ๋๋ ์๋ฌ!


| ์๋ฌ๋ก๊ทธ                                                             |
| -------------------------------------------------------------------- |
| <img src="https://i.imgur.com/DiN3Mwl.png" width="500" height="300"> |
| HTTP Body์ Multipart ํ์์ธ DATA๋ฃ๊ณ  POST๋ฅผ ํ  ๋ ๊ณ์ 503 Error    |

  
    
- **503 ์๋ฌ? ๊ทธ๊ฑด ์๋ฒ์๋ฌ ์๋?**
    - ๋ผ๊ณ  ์๊ฐํด์ Server๋ฅผ ์ ๊ณตํ๋ Heroku ํํ์ด์ง์ ๋ค์ด๊ฐ์ error๊ด๋ จ ๋ฌธ์๋ฅผ ํ์ธ ํ๋๋ฐ ๋ค์๊ณผ ๊ฐ์ ๋ด์ฉ์ด ์์๋ค
        >Whenever your app experiences an error, Heroku will return a standard error page with the HTTP status code 503. To help you debug the underlying error, however, the platform will also add custom error information to your logs. Each type of error gets its own error code, with all HTTP errors starting with the letter H and all runtime errors starting with R. Logging errors start with L. https://devcenter.heroku.com/articles/error-codes
    - ์ฆ error๋ฅผ ๊ฒช์์ ๋ Client๊ฐ ๋ฐ๋ response message์ status code๋ 503 ์ด๋ผ๋ ๊ฒ. 
  

- **์ค๋ฅ์ ์์ธ**
    1) ์๋ฒAPI๋ฌธ์์์ ์๊ตฌํ๋ POST๋ฉ์๋ response Message์ keyํ์์ image Array๋ผ๊ณ  ์ฐ์ฌ ์๋ ๊ฒ์ Image๋ผ๊ณ  ์๊ฐํจ. 
        - **ํด๊ฒฐ** : key์ด๋ฆ์ `images`๊ฐ ์๋ `images[]`๋ก ๋ณ๊ฒฝํด์ request์งํ
    2) httpHeader์ body์์ ์ฌ์ฉํ๋ Boundary์ ๊ตฌ๋ถ์ ํ์ง ์์ 
        - Multipart-from ํ์์ผ๋ก ๋คํธ์ํฌ ์์ฒญ์ ์งํํ  ๋ HTTPHeader์ boundary๋ก ์ธ ๋ฌธ์์ด ์ถ๊ฐํ๊ณ  httpBody์์  boundary์์ `--` ๋ฅผ ์ถ๊ฐํด ์ฃผ์ด์ผํ๋ค. ํ์ง๋ง header์ ๋ฏธ๋ฆฌ ์ถ๊ฐํด์ฃผ๋ ๊ฒ์ด๋ผ๊ณ  ์๊ฐํด์ header์ body์ boundary๋ฅผ ๋์ผํ๊ฒ ์๋ ฅํ๋ค.

    3) body์ ์ต์๋์ ๋ฒ๊ธฐ์ง ์๊ณ  ์๋ ฅํจ
        - httpBody์ ๋ค์ด๊ฐ๋ ๋ด์ฉ์ print๋ฅผ ์ด์ฉํด ํ์ธํด๋ณด์๋๋ฐ ์๋์ ๊ฐ์ด ์๋ ฅ๋๋ ๊ฒ์ ํ์ธํ๋ค. ์ฆ Optional() ์์ฒด๋ encode๋์ด ์๋ ฅ๋๋ ์ํ์๋ค. 
        ```swift
        for photo in image {
            body.append("--\(boundary + lineBreak)")
            body.append("Content-Disposition: form-data; name=\"\(photo?.key)\"; filename=\"\(photo?.filename)\"\(lineBreak)")
            body.append("Content-Type: \(photo!.mimeType +  lineBreak + lineBreak)")
            body.append(photo?.data ?? Data())
            body.append(lineBreak)
        }
        ```
        ![](https://i.imgur.com/5XYq373.png)
        - ํด๊ฒฐ : ์ต์๋ ๊ฐ์ ๋ฒ๊ฒจ์ฃผ์๋ค. 
<br>

### 3. DataSource ์ Delegate๊ฐ ๋ถ๋ฆฌ๋ ์ํฉ์์ Model DATA๋ฅผ ์ฌ๋ฌ๊ตฐ๋ฐ์์ ์ฐธ์กฐ ํ  ์ ์๋ ๋ฐฉ๋ฒ
    
- ํ์ฌ๋ `View`์ ๋ณด์ฌ์ง ๋ฐ์ดํฐ๊ฐ `DataSource`์ ํ๋กํผํฐ๋ก ์ ์ฅ๋์ด ์๋ค. Delegateํ์์๋ ํด๋น ๋ชจ๋ธ์ Data์ด ํ์ํ ์ํฉ์ด ์๊ฒผ๋ค. ์ด์ ์ฐ๋ฆฌ๋ Data ํ๋กํผํฐ๋ฅผ Static์ผ๋ก ์ ์ธํ์ฌ์ ํ์ํ๋กํผํฐ๋ก ๋ง๋ค์ด ๋ค๋ฅธ๊ณณ์์ ์ฌ์ฉํ  ์ ์๋๋ก ํด๊ฒฐํ์๋ค. <img src="https://user-images.githubusercontent.com/71247008/131210377-b885482f-4186-4239-8e53-21a4d831959c.png" width="500" height="80">
    - ๋ค๋ง ์ด ๋ฐฉ๋ฒ์ ์ง๊ธ README๋ฅผ ์์ฑํ๋ ์๊ฐ์ ๋ค์ ์ฝ๋๋ฅผ ๋ณด๋ ์ข์ ๋ฐฉ๋ฒ์ด ์๋ ๊ฒ ๊ฐ๋ค๋ ์๊ฐ์ด ๋ ๋ค. 
        - ์ด์  : DataSource ํ์ ํ๋กํผํฐ์ด๊ธฐ ๋๋ฌธ์ DataSource๊ฐ ๊ต์ฒด๋๊ฑฐ๋ํ๋ ์ํฉ์์ ๋ค์ DATA ๋ชจ๋ธ์ ์ด๋๊ฐ์ ์์ฑํด์ผ ๋๊ธฐ๋๋ฌธ
    - ๊ฐ์ ๋ฐฉํฅ : Data๋ฅผ ๊ฐ์ง๊ณ  ์๋ ํ์์ ๋ฐ๋ก ๋ง๋๋ ๋ฐฉ๋ฒ์ด ์๊ฐ๋๋ค. ํด๋น ํ์์ **์ฑ๊ธํด**์ผ๋ก ๊ตฌํํ์ฌ ์ฌ๋ฌ ๊ณณ์์ ์ธ์คํด์ค๋ฅผ ์ ๊ทผ ํ  ์ ์๋๋ก ํ๋ ๋ฐฉ๋ฒ์ด ์ข์ ๊ฒ ๊ฐ๋ค.

<br>

### 4. Delegateํ์์ ๋ฐ๋ก ๋ง๋ค๊ณ  ViewController์์ ํ ๋น ํ์๋๋ฐ ๋ฐ์๋์ง ์๋ ๋ฌธ์  
- **์ํฉ** : `CollectionViewDelegate` ํ์์ ๋ฐ๋ก ๋ง๋ค๊ณ  `ViewController` ํ์์ `viewDidLoad`๋ฉ์๋์์ ๋ค์๊ณผ ๊ฐ์ด ๊ตฌํํ๋๋ฐ ์๋ฌ๋ฉ์ธ์ง๊ฐ ์๊น
    ```swift
    viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = OpenMarketDelegate()
        :
    }
    ```
    - ์๋ฌ๋ฉ์ธ์ง : **`Instance will be immediately deallocated because property 'OpenMarketDelegate' is 'weak`**

- **์ด์ ** : `UICollectionView`์ `dataSource`, `delegate`๋ **weak property**์ด๊ธฐ ๋๋ฌธ์ viewDidLoad๋ด๋ถ์์ ์ธ์คํด์ค๋ฅผ ๋ง๋๋ ๊ฒ์ด ์๋๋ผ `ViewController`์ property๋ก delegate๋ก ์ฌ์ฉํ  ์ธ์จํด์ค๋ฅผ ๋ง๋  ํ ํด๋น ์์ฑ์ `viewDidLoad`๋ฉ์๋ ๋ด๋ถ์์ ์ปฌ๋ ์๋ทฐ์ `delegate`๋ก ํ ๋นํด์ผํ๋ค. 
- **ํด๊ฒฐ** : ์๋์ ๊ฐ์ด ๋ฆฌํฉํ ๋ง ์งํ
    ```swift
    class ViewController {
        let delegate = OpenMarketDelegate()
        :  
        viewDidLoad {
        super.viewDidLoad()
        collectionView.delegate = delegate
        }
        :
    } 
    ```
    


### 5. CodingKey ํ๋กํ ์ฝ์ ์ฑํํ์์๋ ์ฑํํ์ง ์์๋ค๋ ๊ฒฝ๊ณ  ๋ฉ์ธ์ง๊ฐ ๋์จ ๋ฌธ์  
<img src="https://i.imgur.com/N4h9PEY.jpg" width="500" height="300">

- **๋ฌธ์ ์ ์์ธ**
    - ๊ฐ์ค1 : nested type์ผ๋ก Decodableํ๋กํ ์ฝ ์ฑํํ๋ ๊ฒฝ์ฐ CodingKey ์ฌ์ฉ์ด ํ์ฉ๋์ง ์๋๋ค
    - ๊ฐ์ค2 : CodingKey ํ๋กํ ์ฝ ์ฑํํ๋ ๊ณผ์ ์์ ์ฐ๋ฆฌ๊ฐ ๋ชจ๋ฅด๋ ๊ฒ์ด ์๋ค. 
- **์คํ**
    - ๊ฐ์ค1์ ์ํด nested Type์ด ์๋ OpenMarketItemsํ์์ items ์์ฑ์ ํ์์ Item์ผ๋ก ๋ฐ๊พธ๊ณ  Itemํ์์ OpenMarketItems ์ธ๋ถ์์ ๊ตฌํํ์ง๋ง ๋์ผํ ๋ฌธ์ ๊ฐ ๋์๋ค. 

- **๊ฒฐ๋ก ** : ํด๋น ํ์์ `Decodable`์ ์ฑํํ๋ฉด ํ๋กํ ์ฝ ๊ธฐ๋ณธ ๊ตฌํ์ผ๋ก `enum CodingKeys`๊ฐ ์๋์ผ๋ก ๊ตฌํ. ํ์ง๋ง ํ์ฌ ์ํฉ์ `enum CodingKeys` ๋ฅผ ์ง์  ๊ตฌํํ๊ณ  ์๊ธฐ ๋๋ฌธ์, `Decodable`์ ์ฑํํ ํ์์ ํ๋กํผํฐ๋ค์ด `enum CodingKeys`์ `case`์ ์ ๋ถ ์์ด์ผ ํ๋ค. 

<br>
    
### 6. cell์ textLabel์ ๋ฐ์ดํฐ ๋ฐ ์์ฑ์ด ์ ๋๋ก ๋ฐ์๋์ง ์๋ ๋ฌธ์ 
- ์ํฉ : titleLabel์ ์์ด ๊ฒ์ ์์ด์ด์ผํ๋๋ฐ statusLabel์ textColor์ธ ๋ธ๋์์ผ๋ก ๋ํ๋๊ฑฐ๋ ์ํ์ ๋ง์ง ์๋ ์ด๋ฆ์ ๊ฐ์ง๋ ๋ฑ์ ๋ฌธ์ ๊ฐ ์๊น
- ์ด์  : cell ์ฌ์ฌ์ฉ ์ prepareForReuse ๋ก 
- ํด๊ฒฐ : prepareForReuse() ๋ฉ์๋์์ cell์ ๊ตฌ์ฑํ๋ ์์๋ค์ ์ด๊ธฐํ ํด์ฃผ์๋ค. 

<br><br>

### 7. merge ํ ์๊ธด ์ถฉ๋ ์ค๋ฅ
- ์ํฉ : `3-jiss`์ merge ํ ์ถฉ๋ ์ค๋ฅ๊ฐ ์๊น

    <img src = "https://i.imgur.com/YIUkxfX.png" width = 200 >

    <img src = "https://i.imgur.com/OU04Lzn.png" width = 200 >

- ์๋1 : README.md์์ ์ถฉ๋ ๋ ๋ถ๋ถ์ ํ์ธํ๊ณ  ์ญ์  
    - ํ์ง๋ง ์ฌ์ ํ project ํ์ผ์ด ์ด๋ฆฌ์ง ์์ 

- ์๋2 : xcodeproj ํจํค์ง๋ฅผ ์ด์ด์ pbxproj ํ์ฅ์๋ฅผ ๊ฐ์ง ํ์ผ์ ์ถฉ๋ ๋ ๋ถ๋ถ ์ญ์  
    
    <img src = "https://i.imgur.com/XcUuUHd.png" width = 200 >

- `pbxproj`
    - Project๋ Application์ ๋น๋ํ๊ธฐ ์ํ ํ์ผ, ๋ฆฌ์์ค, ์ ๋ณด๋ฅผ ๋ด์ repository. = Package
    - ์ถฉ๋์ด ์๊ธด ์ด์ 
        - ํ ํ๋ก์ ํธ์์ ์ปค๋ฐ์ ๋ฒ๊ฐ์ ๊ฐ๋ฉด์ ํ๋ฉด์ ํด๋น ํ์ผ์ ๋ด์ฉ์ด ์๋ก ๋ฌ๋ผ์ง๊ฒ ๋จ. 
    - ์ง๊ธ๊ณผ ๊ฐ์ ์ถฉ๋์ ๋ฐฉ์งํ๊ธฐ ์ํด์  ๋ณํฉ๊ด๋ จ ์ฌํญ์ ๊ธฐ์ฌํ .gitattributes ํ์ผ์ git์ ์ถ๊ฐํ๋ฉด ๊ด๋ จ ๋ฌธ์ ๊ฐ ์๊ธฐ์ง ์๋๋ค. 

- ์ถฉ๋ ํ์ธ ๋ฉ์ธ์ง์ ๋์ค์ง ์์๋ ์ด์ (์ปค๋ฐ๊ธฐ๋ก๋ ๋ณด์ด์ง ์์)๋ ๋ฌด์์ผ๊น?

    <br>

## V. ์์ฝ๊ฑฐ๋ ํด๊ฒฐํ์ง ๋ชปํ ๋ถ๋ถ

<details>
<summary>6๊ฐ์ง ์์ฌ์</summary>
<div markdown="1">   

1. **์ธ๋์ผ์ดํฐ๊ฐ ์ค์งํ๋ ์์ ์ ์ด๋์ ์ด๋ป๊ฒ ๋ณด๋ด์ค ๊ฒ์ธ๊ฐ?**

- ํ์ฌ ์ธ๋์ผ์ดํฐ๋ `ViewController`์ `View`๋ก ์์ ๋๊ณ  ์๋ค.
- ์ธ๋์ผ์ดํฐ์ ์ค์ง์์ ์ ์ธ๋์ผ์ดํฐ์ ์ ๋๋ฉ์ด์์ ์ค์งํ๊ณ , `View์ ๊ณ์ธต`์์ ์ ๊ฑฐ๋ฅผ ํด์ค์ผ ํ๋๋ฐ ์ค์ง๋๋ ์์ ์ด `DataSource`์ ์์๋ค. `DataSource`๋ ํ์ฌ ๋ค๋ฅธ ํ์์ผ๋ก ์ ์ธ๋์ด์๊ณ , (CollectionView.DataSource๋ฅผ VCํ๋๊ฒ ์๋ ํ์์ ์๋ก ๋ง๋ฆ) ์ด๋ด ๊ฒฝ์ฐ ์ด๋ค ๋ฐฉ๋ฒ์ ์จ์ ์ธ๋์ผ์ดํฐ๋ฅผ ์ค์งํด์ค์ผ ํ ๊น?
    
    (1) **์ธ๋์ผ์ดํฐ ์ฐธ์กฐ ๋๊ฒจ์ฃผ๊ธฐ** :  ์ด ๋ฐฉ๋ฒ์ DataSource ํ์์์ indicator ํ๋กํผํฐ๋ฅผ ๋ง๋ค์ด์ฃผ๊ณ , VC์์ indicator๋ฅผ ์ฃผ์์์ผ์ค๋ค. 
    
    (2) **DataSource๊ฐ ViewController๋ฅผ ์์ ** : VC์ DataSource๊ฐ ์ํ์ฐธ์กฐ์ ๊ฑธ๋ฆด ์ ์์ผ๋, weak ์ฌ์ฉ
    
    (3) **Notification** : ์ด ํ๋ก์ ํธ์์ ์ฌ์ฉํ ๋ฐฉ๋ฒ
    
    (4) **KVO (key-value Observing) ํจํด**
    
    (5) **MVVMํจํด** : ์ด ๋ถ๋ถ์ ๋์ค์ ๊ณต๋ถ๋ฅผ ๋ ํด๋ด์ผ๊ฒ ๋ค. VM์์ ์ต์ ๋น์ ํตํ์ฌ ์์ฑ์ ๋ณํ๋ฅผ ๊ฐ์ง ํ  ์ ์๊ฒ๋ ํ  ์ ์๋ค๋๋ฐ, ์์ง ์ ๋ชจ๋ฅด๊ฒ ์.
<br>

2. **์คํฌ๋กค์ ์งํํ๋ฉด ๋ฐ์ดํฐ๋ฅผ ๋ถ๋ฌ์ฌ๋, ์ ์ ํ๋ฉด์ด ๊น๋นก๊ฑฐ๋ฆฌ๋ ํ์์ด ์์.**
    - ![Simulator Screen Recording - iPhone 12 - 2021-08-28 at 14 38 48](https://user-images.githubusercontent.com/71247008/131210620-9c4d81b3-eae8-4f53-a370-76c57d131054.gif)
    - ์๊ฐํด๋ณด์์๋ CollectionView์ ReloadData() ๋ฌธ์  ์ธ ๊ฒ ๊ฐ๋ค.
    - ReloadData๋ ์ ๋๋ฉ์ด์์ ์ฌ์ฉํ์ง ์๊ธฐ ๋๋ฌธ์ ๊น๋นก๊ฑฐ๋ฆฌ๋ ํ์์ด ์์ ์ ์์๊น? ์๋๋ฉด ๋ค๋ฅธ๋ฐฉ๋ฒ์ด ์์๊น?
        - ReloadData์ ์๋๋ฐฉ์์ ๋ฉ์๋๊ฐ ํธ์ถ๋  ๋ numberOfInSection์ด ํธ์ถ๋๊ณ  cellForItemAt ์ฌ์ฉ๋  cell์ ๋ฆฌํดํด์ฃผ๊ฒ ๋๋ค. ๊ทธ ์ดํ CollectionView์ layoutSubViews์ด ํธ์ถ ๋๋ค๊ณ  ํ๋ค. 
        - CollectionView์ performBatchUpdates(_:completion:) ๋ฉ์๋๊ฐ ์กด์ฌ ํ๋ค๊ณ  ํ๋ค.. ์์ง ์ฌ์ฉ๋ฒ์ ์ ๋ชจ๋ฅด๊ฒ ์.

<br>

3. **CollectionView Cell์ ์ญํ  ๋ถ๋ฆฌ**
    - ํ์ฌ CollectionView Cell์ด confirue ๋ฉ์๋์์ ํด๋น indexPath์ ๋ง๋ Data๋ฅผ ๋ฐ์ Cell View์ ํ์ํด์ฃผ๊ณ  ์์. ํ์ง๋ง configure์์ Data๋ฅผ ๋ฐ์์ ๋ถ๊ธฐ์ฒ๋ฆฌ๋ฅผ ์งํ ํ๊ณ  ์๋ค.  ๊ณฐ๊ณฐํ ์ฐ๋ฆฌ๊ฐ ์๊ฐ ํด ๋ณด์์ ๋ ํด๋น ์ญํ์ View๊ฐ ํ ์ผ์ด ์๋ ๋ค๋ฅธ(VC)๋ฐ์์ ํ  ์ผ ๊ฐ๋ค๋ ์๊ฐ์ด ๋ค์๋ค. ํ์ง๋ง, ์๊ฐ์ด ์๋ ๊ด๊ณ๋ก.. ์ด ๋ถ๋ถ์ ํด๊ฒฐ ํ์ง ๋ชปํ๋ค.
```swift
 if item.stock == 0 {
        statusLabel.text = "ํ์ "
        statusLabel.textColor = .systemYellow
    } else {
        let stock = apply(to: item.stock)
        statusLabel.textColor = .systemGray
        statusLabel.text = "์์ฌ์๋: \(stock)"
    }
```

4. **URLComponent๋ฅผ ์ฌ์ฉํ๋ ๋ถ๋ถ**
    - ์๋์ ๊ฐ์ด URlComponent๊ฐ์ฒด๋ฅผ ์ฌ์ฉํ์ฌ URL์ ๋ง๋ค ์ ์์ง ์์์๊นํ๋ ์์ฌ์์ด ๋จ๋๋ค. 
    ```swift
    private func makeUrlComponent(baseUrl: UrlList, _ path: String) -> Result<URL, NetworkError> {
        var components = URLComponents(string: UrlList.baseUrl.rawValue)
        let cliendID = URLQueryItem(name: "page", value: ":\(path)")
        components?.queryItems = [cliendID]
        guard let finalUrl = components?.url! else { return .failure(NetworkError.urlInvalid) }
        return .success(finalUrl)
    }
    ```

5. **Flowlayout ํ๋์ฝ๋ฉ ํ ๋ถ๋ถ** 
- Layout ํ์ ๋ด๋ถ์์ UICollectionViewFlowLayout ๊ฐ์ฒด๋ฅผ returnํ๋ ๋ฉ์๋๋ฅผ ๋ง๋ค ๋ ๋ด๋ถ ์ฝ๋์ ํ๋์ฝ๋ฉ์ด ๋ง์๋ค. ์ด ๋ถ๋ถ์ ํ๋์ฝ๋ฉ์ ์ด๋ป๊ฒ ํ๋ฉด ์ค์ผ ์ ์์์ง์ ๊ดํ ๊ณ ๋ฏผ์ด ๋ถ์กฑํ๋ ๊ฒ ๊ฐ๋ค. 
    ```swift
        static func generate(_ view: UIView) -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        let width = view.bounds.width / 2.2
        let height = view.bounds.height / 3.6
        
        layout.itemSize = CGSize(width: width, height: height)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)

        return layout
    }
    ```


</div>
</details>

<br><br>


---

## VI. ๊ด๋ จ ํ์ต ๋ด์ฉ 
#### ํ์ต ํค์๋
- HTTP
- ๋คํธ์ํฌ ํต์ 
- url Session
- Cache
- Paging
- UICollectionView
- ๋น๋๊ธฐ ํต์ 
<br>
    
<details>
    <summary>ํ์ต๋ด์ฉ ์ ๋ฆฌ</summary>
    <div markdown="1">       

#### 1. HTTP 
(1) HTTP๋?
- hyper text trasition protocol ์ ์ค์๋ง. ๋คํธ์ํฌ ํต์ ์ ์ด์ฉํ์ฌ ๋ฐ์ดํฐ๋ฅผ ์ฃผ๊ณ  ๋ฐ๊ธฐ ์ํ์ฌ ์๊ธด ์ฝ์์ด๋ค.
- ํด๋ผ์ด์ธํธ๊ฐ url์ ํตํ์ฌ `request(์์ฒญ)` ํ๋ฉด ์๋ฒ์์๋ ํด๋น ์์ฒญ์ฌํญ์ ๋ง๋ ๊ฒฐ๊ณผ๋ฅผ `response(์๋ต)` ํ๋ ํํ๋ก ๋์ํ๋ค. 

(2) Request ์ Response
 - Request Message
    - HTTP Request๋ ๋๊ฒ๋ณด๋ฉด ์ธ๊ฐ์ง ์ข๋ฅ๊ฐ ์๋ค. ์์๋ผ์ธ, ํค๋, ๋ฐ๋
    - start Line์ ์๋ฒ๊ฐ ์ํํด์ผํ  ๋์์ ๋ํ๋ธ๋ค. HTTP request method๋ฅผ ๋ช์.
    - Header๋ ์์ฒญ์ ๋ด์ฉ์ ์ข ๋ ๊ตฌ์ฒด์ ์ํค๊ณ , ์กฐ๊ฑด์ ๋ฐ๋ฅธ ์ ์ฝ์ฌํญ์ ๋ฃ๊ธฐ๋ ํ๋ค. 
    - Body๋ ๋ฆฌ์์ค๋ฅผ ๊ฐ์ ธ์ค๋ Request๋ ๋ณดํต ๋ณธ๋ฌธ์ด ์๋ค. ์ ๋ฌํด์ผ๋  ๋ด์ฉ์ด ์๊ธฐ ๋๋ฌธ์ด๋ค. ์ผ๋ถ ์์ฒญ์ ์๋ฐ์ดํธ๋ฅผ ์ํด ์๋ฒ์ ๋ฐ์ดํฐ๋ฅผ ์ ์กํ๋ค. POST์ ๊ทธ๋ด ํ๋ฅ ์ด ๋๋ค. Data๋ฅผ Body์ ๋ด์ request ์์ฒญ์ ํ๋ค.
    - Body์ ์ข๋ฅ๋ ๋จ์ผ ๋ฆฌ์์ค, ๊ฐ๊ธฐ ๋ค๋ฅธ ๋ฆฌ์์ค๊ฐ ์์ ๊ฒฝ์ฐ ๋ฉํฐํํธ๋ฅผ ์ฌ์ฉํ๋ค.
    - Request HTTP ๋ฉ์์ง ์์ 
    ```swift
    POST / HTTP / 1.1                   <- ์์๋ถ๋ถ
    HOST: localhost:8000                <- header
    Content-Type: multipart/form-data;  <- header
    Content-Length: 333                 <- header
    //ํ์นธ๋์ด์ฐ๋ฉด ๊ทธ ์ดํ์๋ ๋ณธ๋ฌธ์ด ์์๋๋ค.
    -123456          <- body
    (more Data)      <- body
    ``` 
- Response Message
    



#### 2. URLSession
- URLSession์ HTTP, HTTPS ๋ฅผ ํตํด ์ฝํ์ธ ๋ฅผ ์ฃผ๊ณ  ๋ฐ๋ apple ์์ API๋ฅผ ์ ๊ณตํด์ฃผ๋ ํด๋์ค์ด๋ค.
- URLSession์ ์ธ๊ฐ์ง ์ ํ์ ์ ๊ณตํ๊ณ  ์๋ค. URLSession ๊ฐ์ฒด๊ฐ ๊ฐ์ง๊ณ  ์๋ `Confiruation` ํ๋กํผํฐ๋ก ๊ฒฐ์  ํ  ์ ์๋ค.
    - ๊ธฐ๋ณธ์ ์ธ ๋์ ๋ฐฉ๋ฒ์ Session Confiruation์ ๊ฒฐ์ ํ๊ณ  URLSession์ ์์ฑํ๋ค.
ํต์ ์ ํ  URL๊ณผ Request ๋ฅผ ์ค์ ํ๋ค.
์ฌ์ฉํ  Task๋ฅผ ๊ฒฐ์ ํ๊ณ  Task๋ฅผ ์คํํ๋ค.
๋คํธ์ํฌ ํต์ ์ ๊ธฐ๋ณธ์ ์ผ๋ก ๋น๋๊ธฐ ์ฒ๋ฆฌ ์์ผ๋ก ํ์ถ ํด๋ก์ ๋ฅผ ์ฌ์ฉํ์ฌ, ํต์ ์ด ์๋ฃ๋์ ๋ ๋์์ ์ค์ ํ๋ค.


- Task
    - Task ๊ฐ์ฒด๋ Session์ด `request`์ ๋ณด๋ธ ํ, `response`๋ฅผ ๋ฐ์ ๋ ๋ด์ฉ๋ค์ ๋ฐ๋ ์ญํ์ ํ๊ฒ ๋๋ค. 3๊ฐ์ง ์ข๋ฅ์ Task๊ฐ ์๋ค. 
        - Data Task = Data ๊ฐ์ฒด๋ฅผ ํตํด ์ฃผ๊ณ ๋ฐ๋ Task์ด๋ค.
        - Download Task = Data๋ฅผ ํ์ผ์ ํํ๋ก ์ ํ ํ ๋ค์ด ๋ฐ๋ Task์ด๋ค. ๋ฐฑ๊ทธ๋ผ์ด๋์์ ๋ค์ดํ  ์ ์๋ ๊ธฐ๋ฅ์ ์ง์ํ๋ค.
        - Upload Task = Data๋ฅผ ํ์ผ์ ํํ๋ก ์ ํ ํ ์๋ก๋ ํ  ์ ์๋ Task์ด๋ค.

- URLRequest
    - URLRequest๋ฅผ ํตํ์ฌ ์๋ฒ๋ก `request`๋ฅผ ๋ณด๋ผ ๋ ์ด๋ค HTTP Request Method๋ฅผ ์ฌ์ฉํ  ๊ฒ์ธ์ง, ์ด๋ค ๋ด์ฉ์ ์ ์กํ  ๊ฒ์ธ์ง ์ค์  ํ  ์ ์๋ค. 
    - HTTPRequest์ setValue, addValue์ ์ฌ์ฉํ์ฌ ํค๋๋ฉ์์ง๋ฅผ ์ค์ ํ๊ฑฐ๋, ์ถ๊ฐ ํ  ์ ์๋ค. 
    - ํ๋ก์ ํธ URLRequest ์ ์ฉ์ฌํญ.
    ```swift
    private static func createRequest(httpMethod: HTTPMethod, url: URL, body: Data?, _ contentType: ContentType) -> URLRequest {
        var request = URLRequest(url: url)
        request.setValue("\(contentType); boundary=\(Boundary.literal)", forHTTPHeaderField: "Content-Type")
        request.httpMethod = String(describing: httpMethod)
        request.httpBody = body
        return request

    // URLRequest์ ํค๋๋ฅผ ์ค์ ํ๊ณ , 
    // ์ด๋ค request ํ ์ง httpMethod์ ์ค์ ํ๊ณ , 
    // httpbody์ ๋ฐ์ดํฐ๋ฅผ ๋ฃ์ด
    // URLRequest๋ฅผ ๋ฆฌํดํ๊ฒ ๋๋ค. 
    }
    ``` 
<br>


#### 2. Lazy Loading 
- lazy Loading์ด๋?
    - Lazy loading is a design pattern commonly used in computer programming to defer initialization of an object until the point at which it is needed. ์ฆ ํ์ํ ์๊ฐ์๋ง ์ด๊ธฐํ๋๋๋ก ํ๋ ๋์์ธ ํจํด์ด๋ค. 
    - ํ์ด๋ธ๋ทฐ๋ ์ปฌ๋ ์๋ทฐ์ ๊ฒฝ์ฐ ์ฃผ๋ก `tableVeiw(_:cellForRowAt:)`, `collectionView(_:cellForItemAt:)` ๋ฉ์๋์์ `cell`์ด ์คํฌ๋ฆฐ์ ๋ณด์ฌ์ง๊ธฐ ์ง์  ํน์ ๋ณด์ฌ์ง๊ธฐ ์ ์ `cell`์ ๊ตฌ์ฑํ  contents๋ค์ ์ํ ๊ฐ์ฒด๋ฅผ ๊ตฌํํ๋ค. 


#### 3. Cache
(1) Cache๋?
- ์์ฃผ ์ฌ์ฉํ๋ ๋ฐ์ดํฐ๋ ๊ฐ์ ๋ฏธ๋ฆฌ ๋ณต์ฌํด ๋๋ ์์์ฅ์
- ์ธ์  ์ฌ์ฉ : ์บ์์ ๊ทผํ๋ ์๊ฐ๊ณผ ์๋ฒ์ ์๋ ๋ฐ์ดํฐ์ ์ ๊ทผํ๋ ์๊ฐ ์ค ํ์๊ฐ ๋ ์ค๋๊ฑธ๋ฆฌ๋ ๊ฒฝ์ฐ, ๊ฐ์ ๋ค์ ๊ณ์ฐํ๋ ์๊ฐ์ ์ ์ฝํ๊ณ  ์ถ์ ๊ฒฝ์ฐ์ ์ฌ์ฉ
- ์ฅ์  : ๋ ๋น ๋ฅธ ์๋๋ก ๋ฐ์ดํฐ์ ์ ๊ทผํ  ์ ์๋ค. 
- ๊ตฌ๋ถ์ ๊ธฐ์ค : local and Global, ์ ์ฅ ์ฅ์, ์ง์ญ์ฑ์ ๋ฐ๋ผ ์บ์ฌ์ ๊ตฌ๋ถ์ด ๋ฌ๋ผ์ง๋ค. 

    
     
#### 4. UICollectionView
<img src="https://user-images.githubusercontent.com/71247008/131329119-da338da1-ceff-4a48-8646-9270e2c4d08f.png" width="400" height="300">
<br><br>

- ์ปฌ๋ ์๋ทฐ๋ ํ์ด๋ธ๋ทฐ์ ๋น์ทํ ๊ตฌ์กฐ๋ฅผ ๊ฐ์ง๊ณ  ์๋ค. `View`์ ๋ํ๋ด์ผํ๋ ์ ๋ณด๋ฅผ `DataSource`๋ก ์๊ตฌํ๋ฉฐ, ์ด๋ฒคํธ์ ๊ฐ์ ๊ธฐ๋ฅ์ `Delegate`๋ก ๊ตฌํํ๊ณ  ์๋ค. ๋ค๋ง ๋ค๋ฅธ์ ์ด ์๋ค๋ฉด, `CollectionViewFlowLayout` ์ผ๋ก ์์ ํฌ๊ธฐ์ ๋๋น๋ฅผ ์ค์ ํด์ฃผ์ด์ผ ํ๋ค.
- ๊ธฐ๋ณธ์ ์ผ๋ก DataSource ๊ตฌํ์ TableView์ ๋ง์ด ๋ฎ์ ์๋ค. numberOfSections ๋ฉ์๋๋ก ์น์์ ๊ฐฏ์๋ฅผ ์ง์ ํด ์ค ์ ์์ผ๋ฉฐ, numberOfItemsInSection ๋ฉ์๋๋ก ์น์์์ ์์ด ์ผ๋ง๋ ์์ด์ผ ํ ์ง ์๋ ค์ฃผ๊ฒ ๋๋ค. ๋ง์ง๋ง์ผ๋ก cellForItemAt ๋ฉ์๋๋ก ์์ ์์ฑํ๊ณ , ํด๋น ์์ ๋ฐ์ดํฐ๋ฅผ ์ฃผ์์์ผ ๋ฐํ์ ์ํค๋ฉด ๋๋ค.

```swift
//    ์น์์ ๊ฐฏ์๋ฅผ ์ค์ ํ๋ ๋ถ๋ถ
func numberOfSections(in collectionView: UICollectionView) -> Int {
        OpenMarketDataSource.openMarketItemList.count
    }
//    ์น์์ ์์ ๊ฐฏ์๋ฅผ ์ค์ ํ๋ ๋ถ๋ถ
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        OpenMarketDataSource.openMarketItemList[section].items.count
    }
//    Cell์ ์์ฑํ๋ฉฐ, Cell์ configureํ์ฌ Cell์ return ํด์ฃผ๋ ์ญํ์ ๋ด๋น.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "openMarketCell", for: indexPath) as? OpenMarketItemCell else {
            return UICollectionViewCell()
        }
```

- UICollectionViewFlowLayout
<img src="https://user-images.githubusercontent.com/71247008/131330825-95071f5d-ed95-459b-980a-64101bd31e10.png" width="400" height="200">
    - FlowLayout์ ์ฝ๋ ์ ๋ทฐ์ delegate ๋ Flowlayout ํด๋์ค์ ํ๋กํผํฐ๋ฅผ ์ฌ์ฉํ์ฌ ์ํ ํ  ์ ์๋ค.
    - delegate๋ CollecvionView๊ฐ header ๋ footer ๋ฅผ ์ค์ ํ๊ฑฐ๋, ์๋ง๋ค Size๋ฅผ ๋ค๋ฅด๊ฒ ํ๊ณ  ์ถ์ ๋ ์ ์ฉํ๋ค๊ณ  ํ๋ค.




</div>
</details>







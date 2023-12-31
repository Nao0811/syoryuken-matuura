//昇龍拳をした後にもう一度昇龍拳をしようとすると、最初のリュウが残った状態で別のリュウが出てきます。しかし2体目以降のリュウは昇龍拳を放った後にすぐ消えます。(1体目がずっといる状態) どこを改善したら治るか教えていただきたいです！！！

/*参考元https://i-app-tec.com/ios/imageview_animation.html*/

import UIKit

class ViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //押すと昇龍拳発動！！！
    @IBAction func attackBtn(_ sender: Any) {
        //アニメーション用の画像
        //絶対にもっと簡単なコードでたぶん作れる
        let image1 = UIImage(named: "attack1")!
        let image2 = UIImage(named: "attack2")!
        let image3 = UIImage(named: "attack3")!
        let image4 = UIImage(named: "attack4")!
        let image5 = UIImage(named: "attack5")!
        let image6 = UIImage(named: "attack6")!
        let image7 = UIImage(named: "attack7")!
        let image8 = UIImage(named: "attack8")!
        let image9 = UIImage(named: "attack9")!
        let image10 = UIImage(named: "attack10")!
        let image11 = UIImage(named: "attack11")!
        let image12 = UIImage(named: "attack12")!
        let image13 = UIImage(named: "attack13")!
        let image14 = UIImage(named: "attack14")!
        let image15 = UIImage(named: "attack15")!
        let image16 = UIImage(named: "attack16")!
        let image17 = UIImage(named: "attack17")!
        let image18 = UIImage(named: "attack18")!
        let image19 = UIImage(named: "attack19")!
        let image20 = UIImage(named: "attack20")!
        
        var imageListArray:Array<UIImage> = []
        //こっちももっと簡単なコードでたぶん作れる
        imageListArray.append(image1)
        imageListArray.append(image2)
        imageListArray.append(image3)
        imageListArray.append(image4)
        imageListArray.append(image5)
        imageListArray.append(image6)
        imageListArray.append(image7)
        imageListArray.append(image8)
        imageListArray.append(image9)
        imageListArray.append(image10)
        imageListArray.append(image11)
        imageListArray.append(image12)
        imageListArray.append(image13)
        imageListArray.append(image14)
        imageListArray.append(image15)
        imageListArray.append(image16)
        imageListArray.append(image17)
        imageListArray.append(image18)
        imageListArray.append(image19)
        imageListArray.append(image20)
        
        // 画面スクリーンサイズ
                let screenWidth = self.view.bounds.width
                let screenHeight = self.view.bounds.height
         
                // 画像のサイズ
                let imageWidth = image1.size.width
                let imageHeight = image1.size.height
         
                // UIImageView のインスタンス生成,ダミーでimage1を指定
                let imageView:UIImageView = UIImageView(image:image1)
                
                // 画像サイズからImageViewの大きさを設定していく
                let rect = CGRect(x:0,
                                  y:0,
                                  width:imageWidth,
                                  height:imageHeight )
                
                imageView.frame = rect
                
                // 画像が画面中央にくるように位置合わせ
                imageView.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        // view に追加する
        self.view.addSubview(imageView)
        
        imageView.animationImages = imageListArray
                
                // 間隔（秒単位）
        imageView.animationDuration = 1
                // 繰り返し
                imageView.animationRepeatCount = 1
                
                // アニメーションを開始
                imageView.startAnimating()
                
                // アニメーションを終了
                //imageView.stopAnimating()

    }
    
}

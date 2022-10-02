
# Pazarama iOS Bootcamp - Hafta 2 - Ödev  
## Sample Usage
<img src="https://github.com/232-Pazarama-iOS-Swift-Bootcamp/week2_hw2-onurduyar/blob/main/calculator.gif" height="450"/>

## Features
- Some basic operations(+, -, *, /, %)
### Scientific Features 
- Square root
- Two power of number
- ln (loge)
## Operations

 ```swift
import Foundation

enum Operations:String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case SquareRoot = "√¯"
    case TwoPower = "x²"
    case Log = "log"
    case Mod = "%"
    case NULL = "Null"
}
 ```
Bilimsel Hesap Makinesi  
Eğitimlerde üstünde çalıştığımız hesap makinesinin geliştirmesinin tamamlanması ve basit
hesap makinesinin, çeşitli fonksiyonlar eklenerek(karekök, üs alma vb.) bilimsel hesap
makinesine çevrilmesidir. Yapılan bir önceki matematiksel işlem hafızada tutulmalı ve
hesaplamaları yaptığımız label’in bir üstüne daha küçük bir label ekleyerek orada
gösterebiliriz. iPhone’da yer alan hesap makinesini dikkate alabilirsiniz. Tam bir bilimsel
hesap makinesi istemiyoruz. Kendi seçtiğiniz üç farklı özellik eklemeniz yeterli. Tabi bütün
özellikleri tanımlayabiliyorsanız deneyim açısından çok daha iyi olacaktır.  
Değerlendirme Kriterleri  
- Hesap makinesi uygulamasının sorunsuz çalışması.(Dört işlemi yapması ve iOS’da yer
alan hesap makinesine yakın bir deneyim sunması.)  
- En az üç adet bilimsel hesap makinesi özelliğinin eklenmesi.  
- Bir önceki işlemin displayLabel üstüne eklenecek daha küçük fontlu bir label ile
kullanıcıya gösterilmesi.  
iOS hesap makinesi. Solda dik(Portrait), sağda yatay(Landscape) görünüm.  
  
  
  PDF dosyasında görseller mevcuttur.

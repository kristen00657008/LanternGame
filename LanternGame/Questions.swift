//
//  Questions.swift
//  LanternGame
//
//  Created by User16 on 2021/3/5.
//

import Foundation

struct Question {
    var topic: String
    var answer: String
    var guessThing: String
    var options: [String]
    var right_answer_position: Int
}

var questions = [
    Question(topic: "長的少，短的多，腳去踩，手去摸", answer: "梯子", guessThing: "日常用品" , options: ["梯子","椅子","桌子","褲子"], right_answer_position: 0),
    Question(topic: "看看沒有，摸摸倒有，似冰不化，似水不流", answer: "鏡子", guessThing: "日常用品", options: ["梳子","鏡子","衣櫃","剪刀"], right_answer_position: 1),
    Question(topic: "兩姐妹，一樣長，酸甜苦辣她先嚐", answer: "筷子", guessThing: "日常用品", options: ["湯匙","筷子","碗","叉子"], right_answer_position: 1),
    Question(topic: "在家臉上白，出門臉上花，遠近都能到，一去不回家", answer: "信", guessThing: "日常用品", options: ["書","郵票","臉盆","信"], right_answer_position: 3),
    Question(topic: "身小力不小，團結又勤勞。有時搬糧食，有時挖地道。", answer: "螞蟻", guessThing: "動物", options: ["螞蟻","蟑螂","青蛙","蜘蛛"], right_answer_position: 0),
    Question(topic: "說馬不像馬，路上沒有它。若用它做藥，要到海中抓。", answer: "海馬", guessThing: "動物", options: ["海星","海豹","企鵝","海馬"], right_answer_position: 0),
    Question(topic: "黑臉包丞相，坐在大堂上。扯起八卦旗，專拿飛天將。", answer: "蜘蛛", guessThing: "動物", options: ["蟾蜍","蛇","蠍子","蜘蛛"], right_answer_position: 3),
    Question(topic: "吃進的是草，擠出的是寶。捨己為人類，功勞可不小", answer: "奶牛", guessThing: "動物", options: ["奶牛","豬","小白兔","貓咪"], right_answer_position: 0),
    Question(topic: "百姐妹，千姐妹，同床睡，各蓋被", answer: "石榴", guessThing: "水果", options: ["香蕉","西瓜","石榴","芭樂"], right_answer_position: 2),
    Question(topic: "左手五個，左手五個。拿去十個，還剩十個", answer: "手套", guessThing: "日常用品", options: ["安全帽","手套","袖套","頭套"], right_answer_position: 1),
    Question(topic: "一物生得巧，地位比人高。戴上御風寒，脫下有禮貌", answer: "帽子", guessThing: "日常用品", options: ["髮圈","鞋子","帽子","頭帶"], right_answer_position: 2),
    Question(topic: "屋裡一座亭，亭中有個人，天天盪鞦韆，不盪就有病", answer: "鐘擺", guessThing: "日常用品", options: ["鐘擺","手錶","手機","鐘樓怪人"], right_answer_position: 0),
    Question(topic: "頭上亮光光，出門就成雙。背上縛繩子，馱人走四方", answer: "皮鞋", guessThing: "日常用品", options: ["木屐","拖鞋","皮鞋","高跟鞋"], right_answer_position: 2),
    Question(topic: "不是點心不是糖,軟軟涼涼肚裡藏,不能吃來不能喝,每天也要嘗一嘗", answer: "牙膏", guessThing: "日常用品", options: ["牙刷","牙套","牙膏","漱口水"], right_answer_position: 2),
    Question(topic: "樓台接樓台，一層一層接起來，上面冒白氣，下面水開花", answer: "蒸籠", guessThing: "日常用品", options: ["電鍋","蒸籠","瓦斯爐","鍋子"], right_answer_position: 1),
    Question(topic: "長一間小藥房，藥品裡面藏。房子塗白色，十字畫中央", answer: "醫藥箱", guessThing: "日常用品", options: ["醫藥箱","OK蹦","眼藥水","工具箱"], right_answer_position: 0),
    Question(topic: "薄薄一張口，能啃硬骨頭。吃肉不喝湯，吃瓜不嚼豆", answer: "菜刀", guessThing: "日常用品", options: ["水果刀","刮鬍刀","菜刀","剪刀"], right_answer_position: 2),
    Question(topic: "有硬有軟，有長有寬。白天空閒，夜晚上班", answer: "床", guessThing: "日常用品", options: ["棉被","床","床墊","枕頭"], right_answer_position: 1),
    Question(topic: "遠看兩個零，近看兩個零。有人用了行不得，有人不用不得行", answer: "眼鏡", guessThing: "日常用品", options: ["眼鏡","耳塞","耳機","眼藥水"], right_answer_position: 0),
    Question(topic: "前面來只船，舵手在上邊，來時下小雨，走後路已乾", answer: "熨斗", guessThing: "日常用品", options: ["洗衣板","洗衣機","衣架","熨斗"], right_answer_position: 3),
    Question(topic: "萬世太平", answer: "永和", guessThing: "臺灣地名", options: ["永和","汐止","大園","平鎮"], right_answer_position: 0),
    Question(topic: "米老鼠和唐老鴨", answer: "糖", guessThing: "一字", options: ["塘","糖","堂","唐"], right_answer_position: 1),
    Question(topic: "沒到手想搶到手，搶到手卻扔出手。", answer: "籃球", guessThing: "運動品", options: ["羽球","排球","籃球","桌球"], right_answer_position: 2),
    Question(topic: "稀奇真稀奇，天天脫層皮；到了大年夜，有骨卻沒皮。", answer: "日曆", guessThing: "日常用品", options: ["化妝品","衛生紙","時鐘","日曆"], right_answer_position: 3),
    Question(topic: "氣球", answer: "不翼而飛", guessThing: "成語", options: ["不翼而飛","大鵬展翅","多災多難","跟鬼一樣"], right_answer_position: 0),
    Question(topic: "雖有十張口，只有一顆心；要想猜出來，必須動腦筋。", answer: "思", guessThing: "一字", options: ["斯","思","絲","私"], right_answer_position: 1),
    Question(topic: "嘮叨。", answer: "夠", guessThing: "一字", options: ["狗","購","夠","垢"], right_answer_position: 2),
    Question(topic: "蚊子叮 鼠牛虎兔龍蛇馬羊猴雞豬。", answer: "布丁狗", guessThing: "一卡通人物", options: ["布丁狗","海綿寶寶","蠟筆小新","咪露"], right_answer_position: 0),
    Question(topic: "一個公公精神好，從早到晚不睡覺；身體雖小力氣大，千人萬人難推倒。", answer: "不倒翁", guessThing: "一玩具", options: ["巴斯光年","不倒翁","小車車","鋼彈"], right_answer_position: 1),
    Question(topic: "日落。", answer: "洛陽", guessThing: "中國地名", options: ["河北","山東","洛陽","重慶"], right_answer_position: 2),
    Question(topic: "太陽出來它生龍活虎，太陽下山它銷聲匿跡。", answer: "影子", guessThing: "自然現象", options: ["影子","烏雲","打雷","閃電"], right_answer_position: 0),
    Question(topic: "一個巴掌拍不響。", answer: "孤掌難鳴", guessThing: "成語", options: ["臭味相投","孤掌難鳴","孤獨求敗","那拍兩掌"], right_answer_position: 1),
    Question(topic: "聾啞人士對談。", answer: "批", guessThing: "字", options: ["坷","溝","批","披"], right_answer_position: 2),
    Question(topic: "一匹馬兒兩人騎，一頭高來一頭低；馬兒蹦跳不走路，兩人騎著笑嘻嘻。。", answer: "翹翹板", guessThing: "兒童遊樂設施", options: ["翹翹板","單槓","斷軌","大怒神"], right_answer_position: 0),
    Question(topic: "踏階而上。", answer: "步步高升", guessThing: "成語", options: ["不學無術","步步高升","汲汲營營","不告訴你"], right_answer_position: 1),
    Question(topic: "脫了紅袍子，是個白胖子；去了白胖子，是顆黑丸子。", answer: "荔枝", guessThing: "水果", options: ["番茄","葡萄","荔枝","西瓜"], right_answer_position: 2),
    Question(topic: "輕聲細語的說。", answer: "柔道", guessThing: "運動項目", options: ["柔道","劍道","射箭","跳遠"], right_answer_position: 0),
    Question(topic: "吳剛伐桂。", answer: "南崁", guessThing: "桃園地名", options: ["平鎮","南崁","中壢","龍潭"], right_answer_position: 1),
    Question(topic: "久不開門，開門有信來。", answer: "通風報信", guessThing: "成語", options: ["暗通款曲","信口開河","通風報信","風塵仆仆"], right_answer_position: 2),
    Question(topic: "好戲上場。", answer: "開羅", guessThing: "城市名", options: ["倫敦","巴黎","維也納","開羅"], right_answer_position: 3),
    Question(topic: "落花流水春去也。", answer: "夏至", guessThing: "24節氣名", options: ["夏至","春分","冬至","秋分"], right_answer_position: 0),
    Question(topic: "半部春秋。", answer: "秦", guessThing: "姓", options: ["古","秦","周","林"], right_answer_position: 1),
    Question(topic: "有弟弟有姊姊有妹妹。", answer: "歌", guessThing: "字", options: ["吹","歐","歌","歉"], right_answer_position: 2),
    Question(topic: "長年平安。", answer: "永康", guessThing: "臺灣地名", options: ["仁武","清水","中和","永康"], right_answer_position: 3),
    Question(topic: "有水很多不是井，肥肥胖胖不是豬；鮮紅欲滴不是肉，圓圓滾滾不是球。", answer: "西瓜", guessThing: "水果", options: ["西瓜","蘋果","芭樂","香蕉"], right_answer_position: 0),
    Question(topic: "紅色的道路。", answer: "赤道", guessThing: "地理名詞", options: ["彗星","赤道","黑潮","山"], right_answer_position: 1),
    Question(topic: "我的心。", answer: "悟", guessThing: "字", options: ["恆","忻","悟","怡"], right_answer_position: 2),
    Question(topic: "它的周圍繞著一圈寬扁的環狀物，好像戴了戒指一樣。", answer: "土星", guessThing: "行星名", options: ["土星","地球","火星","水星"], right_answer_position: 0),
    Question(topic: "內人。", answer: "梧棲", guessThing: "臺灣地名", options: ["南投","梧棲","沙鹿","大甲"], right_answer_position: 1),
    Question(topic: "少了一本書。", answer: "缺一不可", guessThing: "成語", options: ["萬萬不可","獨一無二","缺一不可","非死不可"], right_answer_position: 2),
    Question(topic: "眾樹成林。", answer: "森", guessThing: "字", options: ["森","目","木","樹"], right_answer_position: 0),
    Question(topic: "七十二小時。", answer: "晶", guessThing: "字", options: ["森","犇","晶","鑫"], right_answer_position: 2),
    Question(topic: "青蛙的天敵，沒有外耳，是個聾子，在地上爬行。", answer: "蛇", guessThing: "動物", options: ["蛇","蠍","蝦","雞"], right_answer_position: 0),
    Question(topic: "有點自大。", answer: "臭", guessThing: "字", options: ["奔","秀","醜","臭"], right_answer_position: 3),
    Question(topic: "小喇叭，掛在籬笆上，很漂亮，可惜吹不響。", answer: "牽牛花", guessThing: "植物", options: ["太陽花","牽牛花","玫瑰花","牡丹花"], right_answer_position: 1),
    Question(topic: "孔雀收屏。", answer: "關羽", guessThing: "三國時代人名", options: ["關羽","劉備","張飛","曹操"], right_answer_position: 0),
    Question(topic: "日落半林中。", answer: "東", guessThing: "字", options: ["西","東","北","南"], right_answer_position: 1),
    Question(topic: "火箭直上。", answer: "通霄", guessThing: "臺灣地名", options: ["鹿港","頭城","通宵","內湖"], right_answer_position: 2),
    Question(topic: "有門沒有鎖，有頂沒有底，不能避風雨，睡覺用得上。", answer: "蚊帳", guessThing: "家庭用品", options: ["冰箱","電視","洗衣機","蚊帳"], right_answer_position: 3),
    Question(topic: "天堂之門。", answer: "神戶", guessThing: "日本地名", options: ["神奈川","東京","北海道","神戶"], right_answer_position: 3),
    Question(topic: "沒有女人的城市。", answer: "漢城", guessThing: "外國地名", options: ["漢城","吉隆坡","曼谷","紐約"], right_answer_position: 0),
    Question(topic: "國王搭飛機。", answer: "王菲", guessThing: "明星", options: ["張菲","王菲","吳宗憲","彭恰恰"], right_answer_position: 1),
    Question(topic: "風光明媚", answer: "景美", guessThing: "台北地名", options: ["大直","天母","景美","內湖"], right_answer_position: 2),
    Question(topic: "狼來了。", answer: "楊桃", guessThing: "水果", options: ["木瓜","草莓","櫻桃","楊桃"], right_answer_position: 3),
    Question(topic: "說他是條牛,無法拉車跑,說她力氣小,卻能背屋跑。", answer: "蝸牛", guessThing: "昆蟲", options: ["蝸牛","螞蟻","蚊子","蝴蝶"], right_answer_position: 0),
    Question(topic: "男生太多。", answer: "妙", guessThing: "字", options: ["沙","炒","妙","吵"], right_answer_position: 2),
]


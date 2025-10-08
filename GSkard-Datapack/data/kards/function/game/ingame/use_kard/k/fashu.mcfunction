execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'神圣之光'}] if score @s kardCount >= #kard_shenshengzhiguang kardCount run function kards:game/yongpaiku/fashu/shenshengzhiguang
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'五谷丰登'}] if score @s kardCount >= #kard_wugufengdeng kardCount run function kards:game/yongpaiku/fashu/wugufengdeng
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'鲜血转化'}] if score @s kardCount >= #kard_xianxuezhuanhua kardCount run function kards:game/yongpaiku/fashu/xianxuezhuanhua
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'洗牌'}] if score @s kardCount >= #kard_xipai kardCount run function kards:game/yongpaiku/fashu/xipai
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'赌命'}] if score @s kardCount >= #kard_duming kardCount run function kards:game/yongpaiku/fashu/duming
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'黑山羊之拥'}] if score @s kardCount >= #kard_heishanyangzhiyong kardCount run function kards:game/yongpaiku/fashu/heishanyangzhiyong
execute if score #system GameStatus matches 1 if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'盈余之力'}] if score @s kardCount >= #kard_yingyuzhili kardCount run function kards:game/yongpaiku/fashu/yingyuzhili
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'超脱洗礼'}] if score @s kardCount >= #kard_chaotuoxili kardCount run function kards:game/yongpaiku/fashu/chaotuoxili
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'预言灾祸'}] if score @s kardCount >= #kard_yuyanzaihuo kardCount run function kards:game/yongpaiku/fashu/yuyanzaihuo
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'重铸'}] if score @s kardCount >= #kard_chongzhu kardCount run function kards:game/yongpaiku/fashu/chongzhu
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'过河拆桥'}] if score @s kardCount >= #kard_guohechaiqiao kardCount run function kards:game/yongpaiku/fashu/guohechaiqiao/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'视角干扰'}] if score @s kardCount >= #kard_shijiaoganrao kardCount run function kards:game/yongpaiku/fashu/shijiaoganrao
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'宰鸡敬猴'}] if score @s kardCount >= #kard_zaijijinhou kardCount run function kards:game/yongpaiku/fashu/zaijijinhou
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'战时生产'}] if score @s kardCount >= #kard_zhanshishengchan kardCount run function kards:game/yongpaiku/fashu/zhanshishengchan
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'水流涌动'}] if score @s kardCount >= #kard_shuiliuyongdong kardCount run function kards:game/yongpaiku/fashu/shuiliuyongdong
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'顺手牵羊'}] if score @s kardCount >= #kard_shunshouqianyang kardCount run function kards:game/yongpaiku/fashu/shunshouqianyang/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'闪电轰鸣'}] if score @s kardCount >= #kard_shandianhongming kardCount run function kards:game/yongpaiku/fashu/shandianhongming/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'劫掠'}] if score @s kardCount >= #kard_jielue kardCount run function kards:game/yongpaiku/fashu/jielue/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'禁字启封'}] if score @s kardCount >= #kard_jinziqifeng kardCount run function kards:game/yongpaiku/fashu/jinziqifeng
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'内核引爆'}] if score @s kardCount >= #kard_neiheyinbao kardCount run function kards:game/yongpaiku/fashu/neiheyinbao
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'背水一战'}] if score @s kardCount >= #kard_beishuiyizhan kardCount run function kards:game/yongpaiku/fashu/beishuiyizhan
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'石化皮肤'}] if score @s kardCount >= #kard_shihuapifu kardCount run function kards:game/yongpaiku/fashu/shihuapifu
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'生产令'}] if score @s kardCount >= #kard_shengchanling kardCount run function kards:game/yongpaiku/fashu/shengchanling
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'以智取胜'}] if score @s kardCount >= #kard_yizhiqusheng kardCount run function kards:game/yongpaiku/fashu/yizhiqusheng
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'整修'}] if score @s kardCount >= #kard_zhengxiu kardCount run function kards:game/yongpaiku/fashu/zhengxiu
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'紧急调遣'}] if score @s kardCount >= #kard_jinjidiaoqian kardCount run function kards:game/yongpaiku/fashu/jinjidiaoqian
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'漫水'}] if entity @s[team=red] unless score 蓝队 diyu matches 1 if score @s kardCount >= #kard_manshui kardCount run function kards:game/yongpaiku/fashu/manshui/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'漫水'}] if entity @s[team=blue] unless score 红队 diyu matches 1 if score @s kardCount >= #kard_manshui kardCount run function kards:game/yongpaiku/fashu/manshui/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'四季如春'}] if score @s kardCount >= #kard_sijiruchun kardCount run function kards:game/yongpaiku/fashu/sijiruchun
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'死刑宣告'}] if score @s kardCount >= #kard_sixingxuangao kardCount run function kards:game/yongpaiku/fashu/sixingxuangao
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'心灵焚烧'}] if score @s kardCount >= #kard_xinlingfenshao kardCount run function kards:game/yongpaiku/fashu/xinlingfenshao
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'起死回生'}] if score @s kardCount >= #kard_qisihuisheng kardCount run function kards:game/yongpaiku/fashu/qisihuisheng
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'春暖花开'}] if score @s kardCount >= #kard_chunnuanhuakai kardCount run function kards:game/yongpaiku/fashu/chunnuanhuakai
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'狼群战术'}] if score @s kardCount >= #kard_langqunzhanshu kardCount run function kards:game/yongpaiku/fashu/langqunzhanshu
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'骤然引爆'}] if score @s kardCount >= #kard_zhouranyingbao kardCount run function kards:game/yongpaiku/fashu/zhouranyingbao
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'隐匿仓库'}] unless score @s yinnicangku matches 1 if score @s kardCount >= #kard_yinnicangku kardCount run function kards:game/yongpaiku/fashu/yinnicangku
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'反转'}] if score @s kardCount >= #kard_fanzhuan kardCount run function kards:game/yongpaiku/fashu/fanzhuan/1
execute if score #system GameStatus matches 1 if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'诅咒护甲'}] if score @s kardCount >= #kard_zuzhouhujia kardCount run function kards:game/yongpaiku/fashu/zuzhouhujia/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'无用'}] if score @s kardCount >= #kard_wuyong kardCount run function kards:game/yongpaiku/fashu/wuyong
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'地狱'}] if entity @s[team=red] unless score 蓝队 manshui matches 1 if score @s kardCount >= #kard_diyu kardCount run function kards:game/yongpaiku/fashu/diyu/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'地狱'}] if entity @s[team=blue] unless score 红队 manshui matches 1 if score @s kardCount >= #kard_diyu kardCount run function kards:game/yongpaiku/fashu/diyu/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'春日影'}] if score @s kardCount >= #kard_chunriying kardCount run function kards:game/yongpaiku/fashu/chunriying/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'酸辣无骨鸡爪'}] if score @s kardCount >= #kard_suanlawugujizhua kardCount run function kards:game/yongpaiku/fashu/suanlawugujizhua/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'图腾进击'}] if score @s kardCount >= #kard_tutengjinji kardCount run function kards:game/yongpaiku/fashu/tutengjingji/1
execute if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'冷效吸血'}] if score @s kardCount >= #kard_lengxiaoxixue kardCount run function kards:game/yongpaiku/fashu/lengxiaoxixue

function kards-dlc:kard/use/fashu
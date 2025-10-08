# GSkard-DLC 卡牌扩展系统

GSkard-DLC 是 GSkard 数据包的扩展系统，允许玩家创建和使用自定义卡牌，为游戏添加更多策略性和多样性。

## DLC 概述

GSkard-DLC 提供了一个完整的卡牌扩展框架，支持创建各种类型的自定义卡牌，包括基本牌、军团牌、装备牌、法术牌、神迹牌、图腾牌、诅咒牌和陷阱牌。

## DLC 文件夹结构

```
kards-dlc/
├── function/                    # DLC 函数文件
│   ├── load.mcfunction         # DLC 加载函数
│   ├── main.mcfunction         # 主函数
│   ├── test.mcfunction         # 测试函数
│   ├── tick.mcfunction         # 每刻执行函数
│   └── kard/                   # 卡牌相关函数
│       ├── use/                # 卡牌使用函数
│       │   ├── jiben.mcfunction    # 基本牌使用
│       │   ├── juntuan.mcfunction  # 军团牌使用
│       │   ├── zhuangbei.mcfunction # 装备牌使用
│       │   ├── fashu.mcfunction    # 法术牌使用
│       │   ├── shenji.mcfunction   # 神迹牌使用
│       │   ├── tuteng.mcfunction   # 图腾牌使用
│       │   ├── zuzhou.mcfunction   # 诅咒牌使用
│       │   └── xianjing.mcfunction # 陷阱牌使用
│       └── type/               # 卡牌类型模板
│           ├── jiben/          # 基本牌模板
│           ├── juntuan/        # 军团牌模板
│           ├── zhuangbei/      # 装备牌模板
│           ├── fashu/          # 法术牌模板
│           ├── shenji/         # 神迹牌模板
│           ├── tuteng/         # 图腾牌模板
│           ├── zuzhou/         # 诅咒牌模板
│           ├── xianjing/       # 陷阱牌模板
│           └── shipin/         # 饰品模板
└── dialog/                     # 对话框配置
    └── kard/                   # 卡牌对话框
        ├── jiben/              # 基本牌对话框
        ├── juntuan/            # 军团牌对话框
        ├── zhuangbei/          # 装备牌对话框
        ├── fashu/              # 法术牌对话框
        ├── shenji/             # 神迹牌对话框
        ├── tuteng/             # 图腾牌对话框
        ├── zuzhou/             # 诅咒牌对话框
        ├── xianjing/           # 陷阱牌对话框
        ├── yansheng/           # 衍生牌对话框
        └── wangzhibaoku/       # 王之宝库对话框
```

## 场地标记点分布

游戏场地使用标记点系统来定位卡牌效果的位置：

- 标记点标签格式：`<team>_marker_<number>`
- 例如：`red_marker_1`、`blue_marker_1`

### 场地布局

```
13  12  11     
    10        
9 8 7 6 5
    4
3   2   1

    0
    
1   2   3      
    4        
5 6 7 8 9
    10
11  12  13
```

## 卡牌系统

### 基本牌 (jiben)
基础召唤和攻击卡牌，通常用于召唤单个生物。

#### 示例：凋零骷髅 (diaolingkulou)
在对方7号点位召唤一只凋零骷髅

**函数路径**: `kards:game/yongpaiku/jiben/diaolingkulou`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon wither_skeleton ~ 0 ~ {Team:red,equipment:{mainhand:{id:"minecraft:stone_sword"}},attributes:[{id:"follow_range",base:100}]}
execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon wither_skeleton ~ 0 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:stone_sword"}},attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_diaolingkulou kardCount
```

### 军团牌 (juntuan)
召唤多个单位的卡牌，适合大规模战斗。

#### 示例：蜂群 (fengqun)
在多个点位召唤蜜蜂群

**函数路径**: `kards-dlc:kard/type/juntuan/template_juntuan/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=red] at @e[tag=blue_marker_4] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}
    execute if entity @s[team=red] at @e[tag=blue_marker_6] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}
    execute if entity @s[team=red] at @e[tag=blue_marker_8] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}
    execute if entity @s[team=red] at @e[tag=blue_marker_10] run summon bee ~ 5 ~ {Team:red,AngerTime:1000000000,Tags:["Mob_Start"]}

    execute if entity @s[team=blue] at @e[tag=red_marker_4] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}
    execute if entity @s[team=blue] at @e[tag=red_marker_6] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}
    execute if entity @s[team=blue] at @e[tag=red_marker_8] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}
    execute if entity @s[team=blue] at @e[tag=red_marker_10] run summon bee ~ 5 ~ {Team:blue,AngerTime:1000000000,Tags:["Mob_Start"]}

    execute if entity @s[team=red] if entity @e[tag=!Mob_Start,type=bee] as @e[tag=Mob_Start] run tp @s @e[tag=!Mob_Start,type=bee,limit=1,team=red]
    execute if entity @s[team=blue] if entity @e[tag=!Mob_Start,type=bee] as @e[tag=Mob_Start] run tp @s @e[tag=!Mob_Start,type=bee,limit=1,team=blue]
    tag @e[tag=Mob_Start] remove Mob_Start
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_juntuan kardCount
```

### 装备牌 (zhuangbei)
为玩家提供装备和武器，增强战斗力。

#### 示例：弩 (nu)
给予玩家一把弩

**函数路径**: `kards-dlc:kard/type/zhuangbei/template_zhuangbei/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
    give @s minecraft:crossbow[minecraft:custom_name={italic:false,text: "弩",color:"gold"},lore=[{text: "新时代战斗工具!",color:"gray",italic:false}],custom_data={kards:'弩'},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]},charged_projectiles=[{id:"minecraft:arrow",count:1b}]]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_zhuangbei kardCount
```

### 饰品牌 (shipin)
提供特殊效果的饰品，佩戴后持续生效。

#### 示例：海龟鳞甲 (haiguilinjia)
给予玩家海龟鳞甲饰品

**函数路径**: `kards-dlc:kard/type/shipin/template_shipin/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
    give @s minecraft:turtle_scute[custom_name={italic:false,text: "海龟鳞甲",color:"gold"},lore=[[{text: "放在背包最右侧一列佩戴 同个配件只生效一个",color:"gray",italic:false}],[{text: "",color:"gray",italic:false}],[{text: "佩戴时：",color:"gray",italic:false}],[{text: "+5 护甲值",color:"blue",italic:false}],[{text: "+1 盔甲韧性",color:"blue",italic:false}]],max_stack_size=1,custom_data={kards:'海龟鳞甲'}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_shipin kardCount
```

### 法术牌 (fashu)
施放各种法术效果，包括伤害、治疗、控制等。

#### 示例：神圣之光 (shenshengzhiguang)
为玩家恢复生命值

**函数路径**: `kards-dlc:kard/type/fashu/template_fashu/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
function kards:game/yongpaiku/xianjing/jiance/fashujiance
scoreboard players operation @s kardCount -= #kard_shenshengzhiguang kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s HealBack 32
```

### 神迹牌 (shenji)
强大的特殊效果卡牌，通常有全局影响。

#### 示例：超频 (chaopin)
为队伍补充卡牌数量

**函数路径**: `kards-dlc:kard/type/shenji/template_shenji/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
function kards:game/yongpaiku/xianjing/jiance/shenjijiance
    scoreboard players add @s kardCount 15
    execute store result score 人数 b_alive if entity @a[team=blue,gamemode=adventure]
    execute store result score 人数 r_alive if entity @a[team=red,gamemode=adventure]
    execute if entity @s[team=blue] if score 人数 b_alive matches ..2 run scoreboard players add @a[team=blue,gamemode=adventure] kardCount 10
    execute if entity @s[team=red] if score 人数 r_alive matches ..2 run scoreboard players add @a[team=red,gamemode=adventure] kardCount 10
scoreboard players set @s ChaoPin 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_shenji kardCount
```

### 图腾牌 (tuteng)
提供持续效果的图腾，每回合自动触发。

#### 示例：模板图腾 (mobantuteng)
在指定位置召唤图腾

**函数路径**: `kards-dlc:kard/type/tuteng/tempalte_tuteng/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon sheep ~ 0 ~ {Team:red,Tags:["tuteng","tuteng.template"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Color:14b,Age:0,Silent:1b}
    execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon sheep ~ 0 ~ {Team:blue,Tags:["tuteng","tuteng.template"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Color:11b,Age:0,Silent:1b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_tuteng kardCount
```

### 诅咒牌 (zuzhou)
对敌方施加负面效果，削弱敌人。

#### 示例：模板诅咒 (mobanzuzhou)
对敌方玩家施加诅咒效果

**函数路径**: `kards-dlc:kard/type/zuzhou/template_zuzhou/use`

```mcfunction
function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=red] as @a[team=blue,gamemode=adventure] run function kards-dlc:kard/type/zuzhou/template_zuzhou/use2
    execute if entity @s[team=blue] as @a[team=red,gamemode=adventure] run function kards-dlc:kard/type/zuzhou/template_zuzhou/use2
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_template_zuzhou kardCount
```

### 陷阱牌 (xianjing)
设置陷阱等待敌人触发，适合防守策略。

#### 示例：术法失效 (shufashixiao)
设置法术失效陷阱

**函数路径**: `kards:game/yongpaiku/xianjing/used/shufashixiao`

```mcfunction
execute if entity @s[team=red] if score @s kardCount >= #kard_template_xianjing kardCount if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'术法失效'}] unless score 蓝队 xianjin_shufashixiao matches 1 run function kards:game/yongpaiku/xianjing/used/shufashixiao
execute if entity @s[team=blue] if score @s kardCount >= #kard_template_xianjing kardCount if items entity @s weapon.offhand #kards:kard[custom_data~{kards:'术法失效'}] unless score 红队 xianjin_shufashixiao matches 1 run function kards:game/yongpaiku/xianjing/used/shufashixiao
```
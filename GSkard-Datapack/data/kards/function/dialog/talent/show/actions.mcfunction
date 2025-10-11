execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"white"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方回合结束时 ","color":"red"},{"text":"你的","color":"gray"},{"text":"K不再重置\n","color":"gold"},\
        {"text":"但你每回合只能获得","color":"gray"},{"text":"等同于80%Kmax的K\n","color":"red"},{"text":"该计算结果向下取整","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"light_purple"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[贪欲]\n","color":"white"},\
        {"text":"每1次使用贪欲增加层数\n","color":"light_purple"},{"text":"改为\n","color":"gray"},{"text":"每2次使用贪欲增加层数","color":"light_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"white"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[墓园狂欢]\n","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每击杀1个生物","color":"gold"},\
        {"text":"使你的","color":"gray"},\
        {"text":"近战伤害增加0.75%\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用弩击杀生物 增加3%弩填装速度\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次受到伤害","color":"red"},\
        {"text":"有","color":"gray"},\
        {"text":"12%的概率抽一张牌","color":"gold"},\
        {"text":"每秒最多触发20次","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"每有1个队友死亡","color":"gold"},\
        {"text":" 每个友方回合开始时\n","color":"gray"},\
        {"text":"+25经验+8♥生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你","color":"gray"},\
        {"text":"第1次死亡后复活\n","color":"gold"},\
        {"text":"并","color":"gray"},\
        {"text":"恢复所有生命值","color":"green"},\
        {"text":"且获得","color":"gray"},\
        {"text":"5s抗性提升5\n\n","color":"gold"},\
        {"text":"复活后","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加 最大生命减少20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"选择后你","color":"gray"},\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"使你的所有队友","color":"gray"},\
        {"text":"抽2张","color":"gold"},\
        {"text":"[神迹牌]\n\n","color":"white"},\
        {"text":"随后灵魂化身为光\n","color":"gray"},\
        {"text":"每5s向你面朝方向发射1颗光球\n","color":"gold"},\
        {"text":"命中队友恢复血量 命中敌人造成伤害\n","color":"gold"},\
        {"text":"光球对图腾无效\n","color":"dark_gray"},\
        {"text":"拥有天赋","color":"dark_gray"},\
        {"text":"复生诅咒","color":"red"},\
        {"text":"时不能选择","color":"dark_gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"对你造成最大生命值的8%的真实伤害\n","color":"red"},\
        {"text":"然后抽3张牌额外+5K\n\n","color":"gold"},\
        {"text":"你死后 恶魔会拿走你的掉落物","color":"dark_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"计算你的生命值与队伍中生命值最高的玩家的差值\n","color":"gold"},\
        {"text":"获得等量的生命恢复\n","color":"green"},\
        {"text":"受重伤影响\n\n","color":"dark_gray"},\
        {"text":"但你的生命值将不能再高于场上生命值最高的队友\n","color":"red"},\
        {"text":"且任意队友死亡后你也会死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"gold"}],\
        "tooltip": [\
        {"text":"立刻获得","color":"gray"},\
        {"text":"16Kmax\n","color":"gold"},\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"你每有8Kmax额外获得1Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你每消耗2Kmax\n","color":"gold"},\
        {"text":"友方回合开始时","color":"gray"},\
        {"text":"你额外获得4K并抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"励兵秣马","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用5张牌\n","color":"gold"},\
        {"text":"就","color":"gray"},\
        {"text":"+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"透支未来","color":"aqua"}],\
        "tooltip": [\
        {"text":"获得30Kmax 抽5张牌\n","color":"gold"},\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"gold"}],\
        "tooltip": [\
        {"text":"你立即穿戴全套拥有","color":"gray"},\
        {"text":"绑定诅咒","color":"red"},\
        {"text":"的","color":"gray"},\
        {"text":"下界合金盔甲\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标\n","color":"gold"},\
        {"text":"但在本局游戏内","color":"gray"},\
        {"text":"无法使用卡牌","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你无法穿戴护甲\n","color":"red"},\
        {"text":"但","color":"gray"},\
        {"text":"护甲值+30 攻击伤害+40%\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"你抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内 友方回合结束时\n","color":"gray"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的1半\n","color":"gold"},\
        {"text":"分配等额无视护甲的伤害于敌方玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方生物死后","color":"red"},\
        {"text":"你有8%的概率抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 21 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"穷兵黩武","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内 任意回合开始时\n","color":"gray"},\
        {"text":"丢弃背包内1张牌\n","color":"red"},\
        {"text":"造成其等同于花费的1.5倍破甲伤害分配至敌方所有玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1021"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 22 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战术打击","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[法术牌]","color":"light_purple"},{"text":"时\n","color":"gold"},\
        {"text":"有50%的概率随机对1个敌方玩家造成如下效果之一\n","color":"gold"},\
        {"text":"眩晕","color":"dark_gray"},{"text":"1s\n","color":"gray"},\
        {"text":"旋转","color":"gray"},{"text":"0.5s\n","color":"gray"},\
        {"text":"冻结","color":"aqua"},{"text":"1s\n","color":"gray"},\
        {"text":"点燃","color":"red"},{"text":"0.5s\n","color":"gray"},\
        {"text":"重伤","color":"dark_gray"},{"text":"3s\n","color":"gray"},\
        {"text":"击飞","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1022"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 23 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"闪击战法","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[基本牌]","color":"blue"},{"text":" [军团牌]","color":"dark_green"},{"text":"时\n","color":"gold"},\
        {"text":"随机2个友方怪物获得1s速度2\n","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1023"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 24 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"好人寥寥","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用非","color":"gold"},{"text":"[衍生牌]","color":"aqua"},{"text":"时\n","color":"gold"},\
        {"text":"有15%的概率抽取1张同种类的卡牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1024"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方回合结束时 ","color":"red"},{"text":"你的","color":"gray"},{"text":"K不再重置\n","color":"gold"},\
        {"text":"但你每回合只能获得","color":"gray"},{"text":"等同于80%Kmax的K\n","color":"red"},{"text":"该计算结果向下取整","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"light_purple"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[贪欲]\n","color":"white"},\
        {"text":"每1次使用贪欲增加层数\n","color":"light_purple"},{"text":"改为\n","color":"gray"},{"text":"每2次使用贪欲增加层数","color":"light_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[墓园狂欢]\n","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每击杀1个生物","color":"gold"},\
        {"text":"使你的","color":"gray"},\
        {"text":"近战伤害增加0.75%\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用弩击杀生物 增加3%弩填装速度\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次受到伤害","color":"red"},\
        {"text":"有","color":"gray"},\
        {"text":"12%的概率抽一张牌","color":"gold"},\
        {"text":"每秒最多触发20次","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"每有1个队友死亡","color":"gold"},\
        {"text":" 每个友方回合开始时\n","color":"gray"},\
        {"text":"+25经验+8♥生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你","color":"gray"},\
        {"text":"第1次死亡后复活\n","color":"gold"},\
        {"text":"并","color":"gray"},\
        {"text":"恢复所有生命值","color":"green"},\
        {"text":"且获得","color":"gray"},\
        {"text":"5s抗性提升5\n\n","color":"gold"},\
        {"text":"复活后","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加 最大生命减少20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"选择后你","color":"gray"},\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"使你的所有队友","color":"gray"},\
        {"text":"抽2张","color":"gold"},\
        {"text":"[神迹牌]\n\n","color":"white"},\
        {"text":"随后灵魂化身为光\n","color":"gray"},\
        {"text":"每5s向你面朝方向发射1颗光球\n","color":"gold"},\
        {"text":"命中队友恢复血量 命中敌人造成伤害\n","color":"gold"},\
        {"text":"光球对图腾无效\n","color":"dark_gray"},\
        {"text":"拥有天赋","color":"dark_gray"},\
        {"text":"复生诅咒","color":"red"},\
        {"text":"时不能选择","color":"dark_gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"对你造成最大生命值的8%的真实伤害\n","color":"red"},\
        {"text":"然后抽3张牌额外+5K\n\n","color":"gold"},\
        {"text":"你死后 恶魔会拿走你的掉落物","color":"dark_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"计算你的生命值与队伍中生命值最高的玩家的差值\n","color":"gold"},\
        {"text":"获得等量的生命恢复\n","color":"green"},\
        {"text":"受重伤影响\n\n","color":"dark_gray"},\
        {"text":"但你的生命值将不能再高于场上生命值最高的队友\n","color":"red"},\
        {"text":"且任意队友死亡后你也会死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"gold"}],\
        "tooltip": [\
        {"text":"立刻获得","color":"gray"},\
        {"text":"16Kmax\n","color":"gold"},\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"你每有8Kmax额外获得1Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你每消耗2Kmax\n","color":"gold"},\
        {"text":"友方回合开始时","color":"gray"},\
        {"text":"你额外获得4K并抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"励兵秣马","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用5张牌\n","color":"gold"},\
        {"text":"就","color":"gray"},\
        {"text":"+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"透支未来","color":"aqua"}],\
        "tooltip": [\
        {"text":"获得30Kmax 抽5张牌\n","color":"gold"},\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"gold"}],\
        "tooltip": [\
        {"text":"你立即穿戴全套拥有","color":"gray"},\
        {"text":"绑定诅咒","color":"red"},\
        {"text":"的","color":"gray"},\
        {"text":"下界合金盔甲\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标\n","color":"gold"},\
        {"text":"但在本局游戏内","color":"gray"},\
        {"text":"无法使用卡牌","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你无法穿戴护甲\n","color":"red"},\
        {"text":"但","color":"gray"},\
        {"text":"护甲值+30 攻击伤害+40%\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"你抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内 友方回合结束时\n","color":"gray"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的1半\n","color":"gold"},\
        {"text":"分配等额无视护甲的伤害于敌方玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方生物死后","color":"red"},\
        {"text":"你有8%的概率抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 21 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"穷兵黩武","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内 任意回合开始时\n","color":"gray"},\
        {"text":"丢弃背包内1张牌\n","color":"red"},\
        {"text":"造成其等同于花费的1.5倍破甲伤害分配至敌方所有玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1021"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 22 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战术打击","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[法术牌]","color":"light_purple"},{"text":"时\n","color":"gold"},\
        {"text":"有50%的概率随机对1个敌方玩家造成如下效果之一\n","color":"gold"},\
        {"text":"眩晕","color":"dark_gray"},{"text":"1s\n","color":"gray"},\
        {"text":"旋转","color":"gray"},{"text":"0.5s\n","color":"gray"},\
        {"text":"冻结","color":"aqua"},{"text":"1s\n","color":"gray"},\
        {"text":"点燃","color":"red"},{"text":"0.5s\n","color":"gray"},\
        {"text":"重伤","color":"dark_gray"},{"text":"3s\n","color":"gray"},\
        {"text":"击飞","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1022"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 23 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"闪击战法","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[基本牌]","color":"blue"},{"text":" [军团牌]","color":"dark_green"},{"text":"时\n","color":"gold"},\
        {"text":"随机2个友方怪物获得1s速度2\n","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1023"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 24 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"好人寥寥","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用非","color":"gold"},{"text":"[衍生牌]","color":"aqua"},{"text":"时\n","color":"gold"},\
        {"text":"有15%的概率抽取1张同种类的卡牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1024"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方回合结束时 ","color":"red"},{"text":"你的","color":"gray"},{"text":"K不再重置\n","color":"gold"},\
        {"text":"但你每回合只能获得","color":"gray"},{"text":"等同于80%Kmax的K\n","color":"red"},{"text":"该计算结果向下取整","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"light_purple"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[贪欲]\n","color":"white"},\
        {"text":"每1次使用贪欲增加层数\n","color":"light_purple"},{"text":"改为\n","color":"gray"},{"text":"每2次使用贪欲增加层数","color":"light_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[墓园狂欢]\n","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每击杀1个生物","color":"gold"},\
        {"text":"使你的","color":"gray"},\
        {"text":"近战伤害增加0.75%\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用弩击杀生物 增加3%弩填装速度\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次受到伤害","color":"red"},\
        {"text":"有","color":"gray"},\
        {"text":"12%的概率抽一张牌","color":"gold"},\
        {"text":"每秒最多触发20次","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"每有1个队友死亡","color":"gold"},\
        {"text":" 每个友方回合开始时\n","color":"gray"},\
        {"text":"+25经验+8♥生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你","color":"gray"},\
        {"text":"第1次死亡后复活\n","color":"gold"},\
        {"text":"并","color":"gray"},\
        {"text":"恢复所有生命值","color":"green"},\
        {"text":"且获得","color":"gray"},\
        {"text":"5s抗性提升5\n\n","color":"gold"},\
        {"text":"复活后","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加 最大生命减少20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"选择后你","color":"gray"},\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"使你的所有队友","color":"gray"},\
        {"text":"抽2张","color":"gold"},\
        {"text":"[神迹牌]\n\n","color":"white"},\
        {"text":"随后灵魂化身为光\n","color":"gray"},\
        {"text":"每5s向你面朝方向发射1颗光球\n","color":"gold"},\
        {"text":"命中队友恢复血量 命中敌人造成伤害\n","color":"gold"},\
        {"text":"光球对图腾无效\n","color":"dark_gray"},\
        {"text":"拥有天赋","color":"dark_gray"},\
        {"text":"复生诅咒","color":"red"},\
        {"text":"时不能选择","color":"dark_gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"对你造成最大生命值的8%的真实伤害\n","color":"red"},\
        {"text":"然后抽3张牌额外+5K\n\n","color":"gold"},\
        {"text":"你死后 恶魔会拿走你的掉落物","color":"dark_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"计算你的生命值与队伍中生命值最高的玩家的差值\n","color":"gold"},\
        {"text":"获得等量的生命恢复\n","color":"green"},\
        {"text":"受重伤影响\n\n","color":"dark_gray"},\
        {"text":"但你的生命值将不能再高于场上生命值最高的队友\n","color":"red"},\
        {"text":"且任意队友死亡后你也会死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"gold"}],\
        "tooltip": [\
        {"text":"立刻获得","color":"gray"},\
        {"text":"16Kmax\n","color":"gold"},\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"你每有8Kmax额外获得1Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你每消耗2Kmax\n","color":"gold"},\
        {"text":"友方回合开始时","color":"gray"},\
        {"text":"你额外获得4K并抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"励兵秣马","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用5张牌\n","color":"gold"},\
        {"text":"就","color":"gray"},\
        {"text":"+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"透支未来","color":"aqua"}],\
        "tooltip": [\
        {"text":"获得30Kmax 抽5张牌\n","color":"gold"},\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"gold"}],\
        "tooltip": [\
        {"text":"你立即穿戴全套拥有","color":"gray"},\
        {"text":"绑定诅咒","color":"red"},\
        {"text":"的","color":"gray"},\
        {"text":"下界合金盔甲\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标\n","color":"gold"},\
        {"text":"但在本局游戏内","color":"gray"},\
        {"text":"无法使用卡牌","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你无法穿戴护甲\n","color":"red"},\
        {"text":"但","color":"gray"},\
        {"text":"护甲值+30 攻击伤害+40%\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"你抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内 友方回合结束时\n","color":"gray"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的1半\n","color":"gold"},\
        {"text":"分配等额无视护甲的伤害于敌方玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方生物死后","color":"red"},\
        {"text":"你有8%的概率抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 21 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"穷兵黩武","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内 任意回合开始时\n","color":"gray"},\
        {"text":"丢弃背包内1张牌\n","color":"red"},\
        {"text":"造成其等同于花费的1.5倍破甲伤害分配至敌方所有玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1021"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 22 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战术打击","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[法术牌]","color":"light_purple"},{"text":"时\n","color":"gold"},\
        {"text":"有50%的概率随机对1个敌方玩家造成如下效果之一\n","color":"gold"},\
        {"text":"眩晕","color":"dark_gray"},{"text":"1s\n","color":"gray"},\
        {"text":"旋转","color":"gray"},{"text":"0.5s\n","color":"gray"},\
        {"text":"冻结","color":"aqua"},{"text":"1s\n","color":"gray"},\
        {"text":"点燃","color":"red"},{"text":"0.5s\n","color":"gray"},\
        {"text":"重伤","color":"dark_gray"},{"text":"3s\n","color":"gray"},\
        {"text":"击飞","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1022"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 23 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"闪击战法","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[基本牌]","color":"blue"},{"text":" [军团牌]","color":"dark_green"},{"text":"时\n","color":"gold"},\
        {"text":"随机2个友方怪物获得1s速度2\n","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1023"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 24 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"好人寥寥","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用非","color":"gold"},{"text":"[衍生牌]","color":"aqua"},{"text":"时\n","color":"gold"},\
        {"text":"有15%的概率抽取1张同种类的卡牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1024"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方回合结束时 ","color":"red"},{"text":"你的","color":"gray"},{"text":"K不再重置\n","color":"gold"},\
        {"text":"但你每回合只能获得","color":"gray"},{"text":"等同于80%Kmax的K\n","color":"red"},{"text":"该计算结果向下取整","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"light_purple"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[贪欲]\n","color":"white"},\
        {"text":"每1次使用贪欲增加层数\n","color":"light_purple"},{"text":"改为\n","color":"gray"},{"text":"每2次使用贪欲增加层数","color":"light_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[墓园狂欢]\n","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每击杀1个生物","color":"gold"},\
        {"text":"使你的","color":"gray"},\
        {"text":"近战伤害增加0.75%\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用弩击杀生物 增加3%弩填装速度\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次受到伤害","color":"red"},\
        {"text":"有","color":"gray"},\
        {"text":"12%的概率抽一张牌","color":"gold"},\
        {"text":"每秒最多触发20次","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"每有1个队友死亡","color":"gold"},\
        {"text":" 每个友方回合开始时\n","color":"gray"},\
        {"text":"+25经验+8♥生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你","color":"gray"},\
        {"text":"第1次死亡后复活\n","color":"gold"},\
        {"text":"并","color":"gray"},\
        {"text":"恢复所有生命值","color":"green"},\
        {"text":"且获得","color":"gray"},\
        {"text":"5s抗性提升5\n\n","color":"gold"},\
        {"text":"复活后","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加 最大生命减少20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"选择后你","color":"gray"},\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"使你的所有队友","color":"gray"},\
        {"text":"抽2张","color":"gold"},\
        {"text":"[神迹牌]\n\n","color":"white"},\
        {"text":"随后灵魂化身为光\n","color":"gray"},\
        {"text":"每5s向你面朝方向发射1颗光球\n","color":"gold"},\
        {"text":"命中队友恢复血量 命中敌人造成伤害\n","color":"gold"},\
        {"text":"光球对图腾无效\n","color":"dark_gray"},\
        {"text":"拥有天赋","color":"dark_gray"},\
        {"text":"复生诅咒","color":"red"},\
        {"text":"时不能选择","color":"dark_gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"对你造成最大生命值的8%的真实伤害\n","color":"red"},\
        {"text":"然后抽3张牌额外+5K\n\n","color":"gold"},\
        {"text":"你死后 恶魔会拿走你的掉落物","color":"dark_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"计算你的生命值与队伍中生命值最高的玩家的差值\n","color":"gold"},\
        {"text":"获得等量的生命恢复\n","color":"green"},\
        {"text":"受重伤影响\n\n","color":"dark_gray"},\
        {"text":"但你的生命值将不能再高于场上生命值最高的队友\n","color":"red"},\
        {"text":"且任意队友死亡后你也会死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"gold"}],\
        "tooltip": [\
        {"text":"立刻获得","color":"gray"},\
        {"text":"16Kmax\n","color":"gold"},\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"你每有8Kmax额外获得1Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你每消耗2Kmax\n","color":"gold"},\
        {"text":"友方回合开始时","color":"gray"},\
        {"text":"你额外获得4K并抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"励兵秣马","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用5张牌\n","color":"gold"},\
        {"text":"就","color":"gray"},\
        {"text":"+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"透支未来","color":"aqua"}],\
        "tooltip": [\
        {"text":"获得30Kmax 抽5张牌\n","color":"gold"},\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"gold"}],\
        "tooltip": [\
        {"text":"你立即穿戴全套拥有","color":"gray"},\
        {"text":"绑定诅咒","color":"red"},\
        {"text":"的","color":"gray"},\
        {"text":"下界合金盔甲\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标\n","color":"gold"},\
        {"text":"但在本局游戏内","color":"gray"},\
        {"text":"无法使用卡牌","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你无法穿戴护甲\n","color":"red"},\
        {"text":"但","color":"gray"},\
        {"text":"护甲值+30 攻击伤害+40%\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"你抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内 友方回合结束时\n","color":"gray"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的1半\n","color":"gold"},\
        {"text":"分配等额无视护甲的伤害于敌方玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方生物死后","color":"red"},\
        {"text":"你有8%的概率抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 21 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"穷兵黩武","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内 任意回合开始时\n","color":"gray"},\
        {"text":"丢弃背包内1张牌\n","color":"red"},\
        {"text":"造成其等同于花费的1.5倍破甲伤害分配至敌方所有玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1021"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 22 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战术打击","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[法术牌]","color":"light_purple"},{"text":"时\n","color":"gold"},\
        {"text":"有50%的概率随机对1个敌方玩家造成如下效果之一\n","color":"gold"},\
        {"text":"眩晕","color":"dark_gray"},{"text":"1s\n","color":"gray"},\
        {"text":"旋转","color":"gray"},{"text":"0.5s\n","color":"gray"},\
        {"text":"冻结","color":"aqua"},{"text":"1s\n","color":"gray"},\
        {"text":"点燃","color":"red"},{"text":"0.5s\n","color":"gray"},\
        {"text":"重伤","color":"dark_gray"},{"text":"3s\n","color":"gray"},\
        {"text":"击飞","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1022"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 23 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"闪击战法","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[基本牌]","color":"blue"},{"text":" [军团牌]","color":"dark_green"},{"text":"时\n","color":"gold"},\
        {"text":"随机2个友方怪物获得1s速度2\n","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1023"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 24 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"好人寥寥","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用非","color":"gold"},{"text":"[衍生牌]","color":"aqua"},{"text":"时\n","color":"gold"},\
        {"text":"有15%的概率抽取1张同种类的卡牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1024"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方回合结束时 ","color":"red"},{"text":"你的","color":"gray"},{"text":"K不再重置\n","color":"gold"},\
        {"text":"但你每回合只能获得","color":"gray"},{"text":"等同于80%Kmax的K\n","color":"red"},{"text":"该计算结果向下取整","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"light_purple"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[贪欲]\n","color":"white"},\
        {"text":"每1次使用贪欲增加层数\n","color":"light_purple"},{"text":"改为\n","color":"gray"},{"text":"每2次使用贪欲增加层数","color":"light_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[墓园狂欢]\n","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每击杀1个生物","color":"gold"},\
        {"text":"使你的","color":"gray"},\
        {"text":"近战伤害增加0.75%\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用弩击杀生物 增加3%弩填装速度\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次受到伤害","color":"red"},\
        {"text":"有","color":"gray"},\
        {"text":"12%的概率抽一张牌","color":"gold"},\
        {"text":"每秒最多触发20次","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"每有1个队友死亡","color":"gold"},\
        {"text":" 每个友方回合开始时\n","color":"gray"},\
        {"text":"+25经验+8♥生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你","color":"gray"},\
        {"text":"第1次死亡后复活\n","color":"gold"},\
        {"text":"并","color":"gray"},\
        {"text":"恢复所有生命值","color":"green"},\
        {"text":"且获得","color":"gray"},\
        {"text":"5s抗性提升5\n\n","color":"gold"},\
        {"text":"复活后","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加 最大生命减少20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"选择后你","color":"gray"},\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"使你的所有队友","color":"gray"},\
        {"text":"抽2张","color":"gold"},\
        {"text":"[神迹牌]\n\n","color":"white"},\
        {"text":"随后灵魂化身为光\n","color":"gray"},\
        {"text":"每5s向你面朝方向发射1颗光球\n","color":"gold"},\
        {"text":"命中队友恢复血量 命中敌人造成伤害\n","color":"gold"},\
        {"text":"光球对图腾无效\n","color":"dark_gray"},\
        {"text":"拥有天赋","color":"dark_gray"},\
        {"text":"复生诅咒","color":"red"},\
        {"text":"时不能选择","color":"dark_gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"对你造成最大生命值的8%的真实伤害\n","color":"red"},\
        {"text":"然后抽3张牌额外+5K\n\n","color":"gold"},\
        {"text":"你死后 恶魔会拿走你的掉落物","color":"dark_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"计算你的生命值与队伍中生命值最高的玩家的差值\n","color":"gold"},\
        {"text":"获得等量的生命恢复\n","color":"green"},\
        {"text":"受重伤影响\n\n","color":"dark_gray"},\
        {"text":"但你的生命值将不能再高于场上生命值最高的队友\n","color":"red"},\
        {"text":"且任意队友死亡后你也会死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"gold"}],\
        "tooltip": [\
        {"text":"立刻获得","color":"gray"},\
        {"text":"16Kmax\n","color":"gold"},\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"你每有8Kmax额外获得1Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你每消耗2Kmax\n","color":"gold"},\
        {"text":"友方回合开始时","color":"gray"},\
        {"text":"你额外获得4K并抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"励兵秣马","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用5张牌\n","color":"gold"},\
        {"text":"就","color":"gray"},\
        {"text":"+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"透支未来","color":"aqua"}],\
        "tooltip": [\
        {"text":"获得30Kmax 抽5张牌\n","color":"gold"},\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"gold"}],\
        "tooltip": [\
        {"text":"你立即穿戴全套拥有","color":"gray"},\
        {"text":"绑定诅咒","color":"red"},\
        {"text":"的","color":"gray"},\
        {"text":"下界合金盔甲\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标\n","color":"gold"},\
        {"text":"但在本局游戏内","color":"gray"},\
        {"text":"无法使用卡牌","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你无法穿戴护甲\n","color":"red"},\
        {"text":"但","color":"gray"},\
        {"text":"护甲值+30 攻击伤害+40%\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"你抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内 友方回合结束时\n","color":"gray"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的1半\n","color":"gold"},\
        {"text":"分配等额无视护甲的伤害于敌方玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方生物死后","color":"red"},\
        {"text":"你有8%的概率抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 21 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"穷兵黩武","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内 任意回合开始时\n","color":"gray"},\
        {"text":"丢弃背包内1张牌\n","color":"red"},\
        {"text":"造成其等同于花费的1.5倍破甲伤害分配至敌方所有玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1021"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 22 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战术打击","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[法术牌]","color":"light_purple"},{"text":"时\n","color":"gold"},\
        {"text":"有50%的概率随机对1个敌方玩家造成如下效果之一\n","color":"gold"},\
        {"text":"眩晕","color":"dark_gray"},{"text":"1s\n","color":"gray"},\
        {"text":"旋转","color":"gray"},{"text":"0.5s\n","color":"gray"},\
        {"text":"冻结","color":"aqua"},{"text":"1s\n","color":"gray"},\
        {"text":"点燃","color":"red"},{"text":"0.5s\n","color":"gray"},\
        {"text":"重伤","color":"dark_gray"},{"text":"3s\n","color":"gray"},\
        {"text":"击飞","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1022"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 23 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"闪击战法","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[基本牌]","color":"blue"},{"text":" [军团牌]","color":"dark_green"},{"text":"时\n","color":"gold"},\
        {"text":"随机2个友方怪物获得1s速度2\n","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1023"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 24 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"好人寥寥","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用非","color":"gold"},{"text":"[衍生牌]","color":"aqua"},{"text":"时\n","color":"gold"},\
        {"text":"有15%的概率抽取1张同种类的卡牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1024"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方回合结束时 ","color":"red"},{"text":"你的","color":"gray"},{"text":"K不再重置\n","color":"gold"},\
        {"text":"但你每回合只能获得","color":"gray"},{"text":"等同于80%Kmax的K\n","color":"red"},{"text":"该计算结果向下取整","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"light_purple"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[贪欲]\n","color":"white"},\
        {"text":"每1次使用贪欲增加层数\n","color":"light_purple"},{"text":"改为\n","color":"gray"},{"text":"每2次使用贪欲增加层数","color":"light_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"视为你使用了","color":"gray"},\
        {"text":"[墓园狂欢]\n","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每击杀1个生物","color":"gold"},\
        {"text":"使你的","color":"gray"},\
        {"text":"近战伤害增加0.75%\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用弩击杀生物 增加3%弩填装速度\n","color":"gold"},\
        {"text":"该效果可无限叠加","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"gold"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次受到伤害","color":"red"},\
        {"text":"有","color":"gray"},\
        {"text":"12%的概率抽一张牌","color":"gold"},\
        {"text":"每秒最多触发20次","color":"dark_gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"每有1个队友死亡","color":"gold"},\
        {"text":" 每个友方回合开始时\n","color":"gray"},\
        {"text":"+25经验+8♥生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"red"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你","color":"gray"},\
        {"text":"第1次死亡后复活\n","color":"gold"},\
        {"text":"并","color":"gray"},\
        {"text":"恢复所有生命值","color":"green"},\
        {"text":"且获得","color":"gray"},\
        {"text":"5s抗性提升5\n\n","color":"gold"},\
        {"text":"复活后","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加 最大生命减少20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"选择后你","color":"gray"},\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"使你的所有队友","color":"gray"},\
        {"text":"抽2张","color":"gold"},\
        {"text":"[神迹牌]\n\n","color":"white"},\
        {"text":"随后灵魂化身为光\n","color":"gray"},\
        {"text":"每5s向你面朝方向发射1颗光球\n","color":"gold"},\
        {"text":"命中队友恢复血量 命中敌人造成伤害\n","color":"gold"},\
        {"text":"光球对图腾无效\n","color":"dark_gray"},\
        {"text":"拥有天赋","color":"dark_gray"},\
        {"text":"复生诅咒","color":"red"},\
        {"text":"时不能选择","color":"dark_gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"对你造成最大生命值的8%的真实伤害\n","color":"red"},\
        {"text":"然后抽3张牌额外+5K\n\n","color":"gold"},\
        {"text":"你死后 恶魔会拿走你的掉落物","color":"dark_purple"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"友方回合开始时\n","color":"gray"},\
        {"text":"计算你的生命值与队伍中生命值最高的玩家的差值\n","color":"gold"},\
        {"text":"获得等量的生命恢复\n","color":"green"},\
        {"text":"受重伤影响\n\n","color":"dark_gray"},\
        {"text":"但你的生命值将不能再高于场上生命值最高的队友\n","color":"red"},\
        {"text":"且任意队友死亡后你也会死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你每消耗2Kmax\n","color":"gold"},\
        {"text":"友方回合开始时","color":"gray"},\
        {"text":"你额外获得4K并抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"励兵秣马","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每使用5张牌\n","color":"gold"},\
        {"text":"就","color":"gray"},\
        {"text":"+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"透支未来","color":"aqua"}],\
        "tooltip": [\
        {"text":"获得30Kmax 抽5张牌\n","color":"gold"},\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你的Kmax不再在友方回合开始时增加","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"gold"}],\
        "tooltip": [\
        {"text":"你立即穿戴全套拥有","color":"gray"},\
        {"text":"绑定诅咒","color":"red"},\
        {"text":"的","color":"gray"},\
        {"text":"下界合金盔甲\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标\n","color":"gold"},\
        {"text":"但在本局游戏内","color":"gray"},\
        {"text":"无法使用卡牌","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内","color":"gray"},\
        {"text":"你无法穿戴护甲\n","color":"red"},\
        {"text":"但","color":"gray"},\
        {"text":"护甲值+30 攻击伤害+40%\n","color":"gold"},\
        {"text":"且","color":"gray"},\
        {"text":"不会成为诅咒护甲的选中目标","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"你抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"dark_red"}],\
        "tooltip": [\
        {"text":"在本局游戏内 友方回合结束时\n","color":"gray"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的1半\n","color":"gold"},\
        {"text":"分配等额无视护甲的伤害于敌方玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"友方生物死后","color":"red"},\
        {"text":"你有8%的概率抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 21 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"穷兵黩武","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内 任意回合开始时\n","color":"gray"},\
        {"text":"丢弃背包内1张牌\n","color":"red"},\
        {"text":"造成其等同于花费的1.5倍破甲伤害分配至敌方所有玩家","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1021"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random6 matches 22 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战术打击","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[法术牌]","color":"light_purple"},{"text":"时\n","color":"gold"},\
        {"text":"有50%的概率随机对1个敌方玩家造成如下效果之一\n","color":"gold"},\
        {"text":"眩晕","color":"dark_gray"},{"text":"1s\n","color":"gray"},\
        {"text":"旋转","color":"gray"},{"text":"0.5s\n","color":"gray"},\
        {"text":"冻结","color":"aqua"},{"text":"1s\n","color":"gray"},\
        {"text":"点燃","color":"red"},{"text":"0.5s\n","color":"gray"},\
        {"text":"重伤","color":"dark_gray"},{"text":"3s\n","color":"gray"},\
        {"text":"击飞","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1022"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 23 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"闪击战法","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用","color":"gold"},{"text":"[基本牌]","color":"blue"},{"text":" [军团牌]","color":"dark_green"},{"text":"时\n","color":"gold"},\
        {"text":"随机2个友方怪物获得1s速度2\n","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1023"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 24 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"好人寥寥","color":"aqua"}],\
        "tooltip": [\
        {"text":"在本局游戏内\n","color":"gray"},\
        {"text":"你每次使用非","color":"gold"},{"text":"[衍生牌]","color":"aqua"},{"text":"时\n","color":"gold"},\
        {"text":"有15%的概率抽取1张同种类的卡牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1024"\
        }\
    }

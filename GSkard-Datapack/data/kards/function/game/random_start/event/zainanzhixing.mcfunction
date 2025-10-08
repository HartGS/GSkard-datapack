scoreboard players set red jiangshuzhe_shizhong 1
scoreboard players set blue jiangshuzhe_shizhong 1

scoreboard players set red jiangshuzhe_hetun 1
scoreboard players set blue jiangshuzhe_hetun 1

scoreboard players set red jiangshuzhe_leibao 1
scoreboard players set blue jiangshuzhe_leibao 1

tellraw @a [{translate: "kards.function.game.random_start.event.zainanzhixing.1", fallback: "本回合讲述的故事是...\n",color: "white"},[{translate: "kards.function.game.random_start.event.zainanzhixing.2", fallback: "《灾难》",color: "dark_red",bold: true},{translate: "kards.function.game.random_start.event.zainanzhixing.3", fallback: "——",color:"white"},{translate: "kards.function.game.random_start.event.zainanzhixing.4", fallback: "河豚\n",color: "green",bold: true}],[{translate: "kards.function.game.random_start.event.zainanzhixing.5", fallback: "[本回合内 随机召唤河豚至随机玩家]\n",color: "gray"}],{translate: "kards.function.game.random_start.event.zainanzhixing.2", fallback: "《灾难》",color: "dark_red",bold: true},{translate: "kards.function.game.random_start.event.zainanzhixing.3", fallback: "——",color:"white"},{translate: "kards.function.game.random_start.event.zainanzhixing.6", fallback: "雷暴\n",color: "green",bold: true},{translate: "kards.function.game.random_start.event.zainanzhixing.7", fallback: "[本回合内 随机召唤雷暴至随机玩家]\n",color: "gray"},{translate: "kards.function.game.random_start.event.zainanzhixing.2", fallback: "《灾难》",color: "dark_red",bold: true},{translate: "kards.function.game.random_start.event.zainanzhixing.3", fallback: "——",color:"white"},{translate: "kards.function.game.random_start.event.zainanzhixing.8", fallback: "失重\n",color: "green",bold: true},{translate: "kards.function.game.random_start.event.zainanzhixing.9", fallback: "[本回合内 随机玩家失重]",color: "gray"}]

tellraw @a {translate: "kards.function.game.random_start.event.zainanzhixing.10", fallback: "在这个篇章 灾难席卷 人们艰难求生",color: "dark_gray",italic: true}

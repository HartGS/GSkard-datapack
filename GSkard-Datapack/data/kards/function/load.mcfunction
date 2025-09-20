#注册队伍
team add red
team add blue
team add lobby
team add Spectator
team add Running
#注册bossbar
bossbar add minecraft:start_game ""
schedule clear kards:lobby/bossbar/color/1
schedule clear kards:lobby/bossbar/color/2
schedule clear kards:lobby/bossbar/color/3
schedule clear kards:lobby/bossbar/color/4
function kards:lobby/bossbar/color/1

bossbar add minecraft:worldborder {text:"边界收缩倒计时",color:"green"}
bossbar add minecraft:roundtime ""
bossbar add minecraft:pvptime {text:"等待开放",color:"green"}

bossbar set minecraft:roundtime color green
bossbar set minecraft:pvptime color green
#注册计分项目
scoreboard objectives add use_kard_xp dummy
scoreboard objectives add zombie_enhance_2 dummy
scoreboard objectives add GameCount dummy
scoreboard objectives add Talent_trigger dummy
scoreboard objectives add Talent_Survival dummy
scoreboard objectives add Talent_Combat dummy
scoreboard objectives add Talent_Count dummy
scoreboard objectives add Talent_Main dummy
scoreboard objectives add enchantment_yuezhan_temp dummy
scoreboard objectives add enchantment_fengxingzhe_temp dummy
scoreboard objectives add enchantment_dadishenyou_temp dummy
scoreboard objectives add enchantment_chance_temp dummy
scoreboard objectives add open_wiki dropped:bookshelf
scoreboard objectives add UseItem.Crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add Xp_Temp1 dummy
scoreboard objectives add Xp_Temp2 dummy
scoreboard objectives add Xp_Temp3 dummy
scoreboard objectives add Mob_Count_Silingwushi dummy
scoreboard objectives add Mob_Count_Silingpucong dummy
scoreboard objectives add Mob_Count_Silingpucong_Max dummy
scoreboard objectives add mainhand_enchantment_levels dummy
scoreboard objectives add damage_protection dummy
scoreboard objectives add damage_protection_temp dummy
scoreboard objectives add Number dummy
scoreboard objectives add Xp_Point_Total dummy
scoreboard objectives add Xp_Levels dummy
scoreboard objectives add Mob_Count_Illager dummy
scoreboard objectives add If_Mount_Alive dummy
scoreboard objectives add Mob_Count_Nether dummy
scoreboard objectives add Mob_Skill_Time dummy
scoreboard objectives add temp_Mob_Move1 dummy
scoreboard objectives add temp_Mob_Move2 dummy
scoreboard objectives add temp_Mob_Move3 dummy
scoreboard objectives add temp_Mob_Move1_ dummy
scoreboard objectives add temp_Mob_Move2_ dummy
scoreboard objectives add temp_Mob_Move3_ dummy
scoreboard objectives add Mob_Attack_Time dummy
scoreboard objectives add dialog trigger
scoreboard objectives add tutengjinji dummy
scoreboard objectives add yangyandajian_particle dummy
scoreboard objectives add Particle_distance dummy
scoreboard objectives add diaolingtaidao_diaoxiezhihua_give dummy
scoreboard objectives add tianshenshibanjia_damage dummy
scoreboard objectives add tianshenshibanjia_hurt minecraft.custom:minecraft.damage_taken
scoreboard objectives add tianshenshibanjia_hurt_temp dummy
scoreboard objectives add tianshenshibanjia_xiansheng dummy
scoreboard objectives add tianshenshibanjia_attack_time dummy
scoreboard objectives add tianshenshibanjia_knockback_resistance dummy
scoreboard objectives add RunningTime_adv dummy
scoreboard objectives add feileishen dummy
scoreboard objectives add Use_K_temp dummy
scoreboard objectives add Use_Kmax_temp dummy
scoreboard objectives add Use_K_Round dummy
scoreboard objectives add Use_K_Game dummy
scoreboard objectives add Use_Kmax_Round dummy
scoreboard objectives add Use_Kmax_Game dummy
scoreboard objectives add music dummy
scoreboard objectives add JinFaJieJie dummy {text:"禁法结界",color:"dark_aqua",bold:true,hover_event:{action:"show_text",value:{text:"回合开始时费用减半"}}}
scoreboard objectives add ChaoPin dummy {text:"超频",color:"dark_aqua",bold:true}
scoreboard objectives add zombie_enhance dummy
scoreboard objectives add temp dummy
scoreboard objectives add temp_2 dummy
scoreboard objectives add hurt_by_mafeng dummy
scoreboard objectives add YongHan_DongJie_liushi dummy
scoreboard objectives add YongHan_liushi dummy
scoreboard objectives add lindongzhikai_lingyu dummy
scoreboard objectives add YongHan dummy
scoreboard objectives add ZhongShang_Tick dummy
scoreboard objectives add ZhongShang_Round dummy
scoreboard objectives add random_panduolamohe dummy
scoreboard objectives add tanyumohe_cishu dummy
scoreboard objectives add tanyu_temp dummy
scoreboard objectives add tanyu_temp_1 dummy
scoreboard objectives add tanyu_temp_2 dummy
scoreboard objectives add tanyu_zuzhou dummy
scoreboard objectives add tanyu_fashu dummy
scoreboard objectives add tanyu_zhuangbei dummy
scoreboard objectives add tanyumohe dummy
scoreboard objectives add tanyu dummy
scoreboard objectives add newzombie dummy
scoreboard objectives add chengmo dummy
scoreboard objectives add muyuankuanghuan dummy
scoreboard objectives add yinnicangku dummy
scoreboard objectives add langqunzhanshu dummy
scoreboard objectives add peiyangshi dummy
scoreboard objectives add zibaotuteng_zibao dummy
scoreboard objectives add shengmingtuteng dummy
scoreboard objectives add shengmingtuteng_Healback dummy
scoreboard objectives add random_hunluantuteng dummy
scoreboard objectives add random_busituteng dummy
scoreboard objectives add DongJie_damage dummy
scoreboard objectives add suanlawugujizhua dummy
scoreboard objectives add random_suanlawugujizhua dummy
scoreboard objectives add enchantment_linghundaji_maxhealth dummy
scoreboard objectives add enchantment_linghundaji_damage_Time dummy
scoreboard objectives add diaolingtaidao_damage_add dummy
scoreboard objectives add Fire_wait dummy
scoreboard objectives add yangyandajian_fenshaozhiyu_damage dummy
scoreboard objectives add yangyandajian_fenshaozhiyu dummy
scoreboard objectives add yangyandajian dummy
scoreboard objectives add yanyangdajian_Time dummy
scoreboard objectives add diaolingtaidao_wither_rose_Healback dummy
scoreboard objectives add diaolingtaidao_wither_rose dummy
scoreboard objectives add diaolingtaidao_hold dummy
scoreboard objectives add diaolingtaidao_tujing dummy
scoreboard objectives add diaolingtaidao_damage dummy
scoreboard objectives add diaolingtaidao dummy
scoreboard objectives add diaolingtaidao_Time dummy
scoreboard objectives add PoJia dummy
scoreboard objectives add shizhongjian_template_1 dummy
scoreboard objectives add shizhongjian_template_2 dummy
scoreboard objectives add shizhongjian_template_3 dummy
scoreboard objectives add enchantment_zhiming_cishu dummy
scoreboard objectives add fengbaozhanchui_xuneng_Time dummy
scoreboard objectives add fengbaozhanchui_xuneng dummy
scoreboard objectives add fengbaozhanchui_lightning_bolt dummy
scoreboard objectives add Damage minecraft.custom:damage_dealt
scoreboard objectives add HealBack_Wait dummy
scoreboard objectives add enchantment_chance_shixue dummy
scoreboard objectives add MaxHealth dummy
scoreboard objectives add Health health
scoreboard objectives add XuanZhuan dummy
scoreboard objectives add sanrenchengzhong dummy
scoreboard objectives add kutongzhuanhua_Time dummy
scoreboard objectives add damage_kutongzhuanhua_zhenshi dummy
scoreboard objectives add damage_kutongzhuanhua_wuli dummy
scoreboard objectives add damage_kutongzhuanhua dummy
scoreboard objectives add kutongzhuanhua dummy
scoreboard objectives add kunanyaolan_sneak dummy
scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorDX dummy
scoreboard objectives add VectorDY dummy
scoreboard objectives add VectorDZ dummy
scoreboard objectives add shield_hold dummy
scoreboard objectives add random_gamerule_start dummy
scoreboard objectives add linghunshouge totalKillCount
scoreboard objectives add sishenjianglin dummy
scoreboard objectives add random_gamerule dummy
scoreboard objectives add linghunshougeqi totalKillCount
scoreboard objectives add huoqiutouzi dummy
scoreboard objectives add yanyangdajian_jiben dummy
scoreboard objectives add yanyangdajian_juntuan dummy
scoreboard objectives add lifetime dummy
scoreboard objectives add level_zhongchui dummy
scoreboard objectives add shengji_zhongchui dummy
scoreboard objectives add killed_entity dummy
scoreboard objectives add jishengnianyeHealback dummy
scoreboard objectives add enchantment_chance_huanman dummy
scoreboard objectives add enchantment_chance_xuruo dummy
scoreboard objectives add enchantment_level dummy
scoreboard objectives add enchantment_chance_diaoling dummy
scoreboard objectives add enchantment_chance_piaofu dummy
scoreboard objectives add enchantment_chance_zhongdu dummy
scoreboard objectives add enchantment_chance_shiming dummy
scoreboard objectives add enchantment_liansuo dummy
scoreboard objectives add enchantment_liansuo_damage dummy
scoreboard objectives add haogaowuyuan dummy
scoreboard objectives add diyu dummy
scoreboard objectives add roundtimeOper dummy
scoreboard objectives add cishu dummy
scoreboard objectives add CanuseKard dummy
scoreboard objectives add MapMode dummy
scoreboard objectives add kardCount dummy
scoreboard objectives add kardCountmax dummy
scoreboard objectives add Level level
scoreboard objectives add Levels dummy
scoreboard objectives add level dummy
scoreboard objectives add level_jhlb dummy
scoreboard objectives add level_jinjian dummy
scoreboard objectives add level_tiejian dummy
scoreboard objectives add level_zuanshijian dummy
scoreboard objectives add level_xiajiehejinjian dummy
scoreboard objectives add level_tiefu dummy
scoreboard objectives add level_zuanshifu dummy
scoreboard objectives add shengji_jhlb dummy
scoreboard objectives add shengji_jinjian dummy
scoreboard objectives add shengji_tiejian dummy
scoreboard objectives add shengji_zuanshijian dummy
scoreboard objectives add shengji_xiajiehejinjian dummy
scoreboard objectives add shengji_tiefu dummy
scoreboard objectives add shengji_zuanshifu dummy
scoreboard objectives add random9 dummy
scoreboard objectives add jianshi minecraft.used:minecraft.bow
scoreboard objectives add jiangshuzhe_random1 dummy
scoreboard objectives add jiangshuzhe_random2 dummy
scoreboard objectives add jiangshuzhe_leibao dummy
scoreboard objectives add jiangshuzhe_shizhong dummy
scoreboard objectives add jiangshuzhe_hetun dummy
scoreboard objectives add jiangshuzhe_sudu dummy
scoreboard objectives add jiangshuzhe_liliang dummy
scoreboard objectives add jiangshuzhe_yinshen dummy
scoreboard objectives add jiangshuzhe_yinshen_jishi dummy
scoreboard objectives add jiangshuzhe_bolun dummy
scoreboard objectives add jiangshuzhe_diyu dummy
scoreboard objectives add jiangshuzhe_jixing dummy
scoreboard objectives add jiangshuzhe_silie dummy
scoreboard objectives add jiangshuzhe_silie1 minecraft.custom:minecraft.damage_taken
scoreboard objectives add jiangshuzhe_silie2 dummy
scoreboard objectives add damage_jilu dummy
scoreboard objectives add r_death dummy
scoreboard objectives add b_death dummy
scoreboard objectives add r_number dummy
scoreboard objectives add b_number dummy
scoreboard objectives add xianjin_shifaxiaogui dummy
scoreboard objectives add xianjin_jingxiahezi dummy
scoreboard objectives add xianjin_molifushi dummy
scoreboard objectives add xianjin_shufashixiao dummy
scoreboard objectives add xianjin_sunhaoguodu dummy
scoreboard objectives add xianjin_shusifangshou dummy
scoreboard objectives add xianjin_yaoyuandeqiao dummy
scoreboard objectives add xianjin_hewei dummy
scoreboard objectives add xianjin_buwendingdezhaohuan dummy
scoreboard objectives add xianjin_laizishenchu dummy
scoreboard objectives add xianjin_qinglvqianmou dummy
scoreboard objectives add xianjin_youdi dummy
scoreboard objectives add xianjin_qianjunyifa dummy
scoreboard objectives add chuanci minecraft.used:minecraft.trident
scoreboard objectives add chuancichangjiCount dummy
scoreboard objectives add hurt_chuanci dummy
scoreboard objectives add arrow minecraft.dropped:minecraft.arrow
scoreboard objectives add youchangjiedai dummy
scoreboard objectives add random_clear dummy
scoreboard objectives add fashucishu dummy
scoreboard objectives add jibencishu dummy
scoreboard objectives add juntuancishu dummy
scoreboard objectives add zhuangbeicishu dummy
scoreboard objectives add shenjicishu dummy
scoreboard objectives add xianjincishu dummy
scoreboard objectives add zuzhoucishu dummy
scoreboard objectives add tutengcishu dummy
scoreboard objectives add changhuan_times dummy
scoreboard objectives add xiajiehejinhujia dummy
scoreboard objectives add XuanYun dummy
scoreboard objectives add DuanTui dummy
scoreboard objectives add DongJie dummy
scoreboard objectives add kapaishuliang dummy
scoreboard objectives add random_shijiao1 dummy
scoreboard objectives add random_shijiao2 dummy
scoreboard objectives add wait_end dummy
scoreboard objectives add red_end dummy
scoreboard objectives add blue_end dummy
scoreboard objectives add Leave_Game minecraft.custom:minecraft.leave_game [{text: "离开游戏",color:"gold",bold:true}]
scoreboard objectives add Ready dummy
scoreboard objectives add Ready_count dummy
scoreboard objectives add Ready_Num dummy
scoreboard objectives add chuandai_xjhj dummy
scoreboard objectives add Color dummy
scoreboard objectives add tuteng_Health dummy
scoreboard objectives add hurt_lindongzhikai dummy
scoreboard objectives add stophurt_lindongzhikai dummy
scoreboard objectives add in_lindongzhikai dummy
scoreboard objectives add leave_lindongzhikai dummy
scoreboard objectives add kunanyaolan_damage dummy
scoreboard objectives add kunanyaolan_hurt_1 minecraft.custom:minecraft.damage_taken
scoreboard objectives add kunanyaolan_hurt_2 minecraft.custom:minecraft.damage_taken
scoreboard objectives add kunanhuashen_live dummy
scoreboard objectives add kunanhuashen_attack_time dummy
scoreboard objectives add healback_kunanyaolan dummy
scoreboard objectives add used_zhengyizhichui1 dummy
scoreboard objectives add used_zhengyizhichui2 dummy
scoreboard objectives add sishenzhilian_soul_small dummy
scoreboard objectives add sishenzhilian_soul_medium dummy
scoreboard objectives add used_sishenzhilian dummy
scoreboard objectives add used_zhengyichangji dummy
scoreboard objectives add used_qinglingzhiyu dummy
scoreboard objectives add qinglingzhiyu_Time dummy
scoreboard objectives add shengchanling dummy
scoreboard objectives add random_enchantments dummy
scoreboard objectives add qinglvqianmou dummy
scoreboard objectives add use_kard dummy
scoreboard objectives add use_kard_fashu dummy
scoreboard objectives add muyuankuanghuan1 dummy
scoreboard objectives add muyuankuanghuan2 dummy
scoreboard objectives add muyuankuanghuan3 dummy
scoreboard objectives add join_red minecraft.dropped:minecraft.red_banner
scoreboard objectives add join_blue minecraft.dropped:minecraft.blue_banner
scoreboard objectives add banner_count dummy
scoreboard objectives add wiki minecraft.dropped:minecraft.cartography_table
scoreboard objectives add wiki_count dummy
scoreboard objectives add wait_start dummy
scoreboard objectives add fashu_duming dummy
scoreboard objectives add wuxiuzhihuo dummy
scoreboard objectives add wuxiuzhihuo_rongzhu dummy
scoreboard objectives add wuxiuzhihuo_shengji dummy
scoreboard objectives add wuxiuzhihuo_random dummy
scoreboard objectives add wuxiuzhihuo_throw minecraft.dropped:minecraft.lantern
scoreboard objectives add wuxiuzhihuo_jiben minecraft.dropped:minecraft.music_disc_mall
scoreboard objectives add wuxiuzhihuo_juntuan minecraft.dropped:minecraft.music_disc_cat
scoreboard objectives add wuxiuzhihuo_fashu minecraft.dropped:minecraft.music_disc_mellohi
scoreboard objectives add wuxiuzhihuo_xianjin minecraft.dropped:minecraft.music_disc_wait
scoreboard objectives add wuxiuzhihuo_zhuangbei minecraft.dropped:minecraft.music_disc_13
scoreboard objectives add wuxiuzhihuo_tuteng minecraft.dropped:minecraft.music_disc_blocks
scoreboard objectives add wuxiuzhihuo_zuzhou minecraft.dropped:minecraft.music_disc_stal
scoreboard objectives add wuxiuzhihuo_shenji minecraft.dropped:minecraft.music_disc_strad
scoreboard objectives add stopsound trigger {text: "停止播放",color:"gold",bold:true}
scoreboard objectives add SpellTicks dummy
scoreboard objectives add ram_cooldown_ticks dummy
scoreboard objectives add is_panicking dummy
scoreboard objectives add pingbi dummy
scoreboard objectives add manshui dummy
scoreboard objectives add random3.1 dummy
scoreboard objectives add silingfashu dummy
scoreboard objectives add silingzhaohuan dummy
scoreboard objectives add fashu_heishanyangzhiyong dummy
scoreboard objectives add random_start dummy
scoreboard objectives add round_panding dummy
scoreboard objectives add Gamerule_PVP_round dummy
scoreboard objectives add RoundCount dummy
scoreboard objectives add DifficultyRound dummy
scoreboard objectives add YunSuan_1 dummy
scoreboard objectives add YunSuan_2 dummy
scoreboard objectives add YunSuan_3 dummy
scoreboard objectives add YunSuan_4 dummy
scoreboard objectives add xianjin_toulianghuanzhu dummy
scoreboard objectives add end dummy
scoreboard objectives add sishenzhilian_damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add sishenzhilian_damage_tongji dummy
scoreboard objectives add xiangzhaoyushi dummy
scoreboard objectives add senlinzhihu_absorbed minecraft.custom:damage_absorbed
scoreboard objectives add senlinzhihu_taken minecraft.custom:damage_taken
scoreboard objectives add oiiaioiiiiai dummy
scoreboard objectives add jinziqifeng dummy
scoreboard objectives add wuwangchuchang dummy
scoreboard objectives add in_wuwangjiangshi dummy
scoreboard objectives add wait_spawn dummy
scoreboard objectives add HealBack dummy
scoreboard objectives add MapCount dummy
scoreboard objectives add senlinzhihu_HealBack dummy
scoreboard objectives add GameMode dummy
scoreboard objectives add RunningTime dummy
scoreboard objectives add RunningTime_All dummy
scoreboard objectives add RunningTime_Tick dummy
scoreboard objectives add RunningTime_Sec dummy
scoreboard objectives add RunningTime_Min dummy
scoreboard objectives add RunningTimeOper_Sec dummy
scoreboard objectives add RunningTimeOper_Min dummy
scoreboard objectives add touxiang dummy
scoreboard objectives add reset trigger
scoreboard objectives add dituxuanze dummy
scoreboard objectives add roundtime dummy
scoreboard objectives add jiben dummy
scoreboard objectives add kujie dummy
scoreboard objectives add GameStatus dummy
scoreboard objectives add GameRound dummy
scoreboard objectives add UUID.0 dummy
scoreboard objectives add UUID.1 dummy
scoreboard objectives add UUID.2 dummy
scoreboard objectives add UUID.3 dummy
scoreboard objectives add Fire dummy
scoreboard objectives add Fire_take_damage dummy
scoreboard objectives add Scale trigger

# 注册卡牌数量
data modify storage settings kard_count set value \
{\
    jiben:26,\
    juntuan:265,\
    zhuangbei:420,\
    tuteng:13,\
    fashu:43,\
    shenqi:18,\
    zuzhou:11,\
    xianjing:13,\
    shipin:105\
}

# GSkard-1.5
tellraw @a ["==========================\n",{color:"#2a17fd",text:"         "},{color:"#f19013",text:"G"},{color:"#ed7d19",text:"S"},{color:"#ea6a1f",text:"k"},{color:"#e75725",text:"a"},{color:"#e3442b",text:"r"},{color:"#e03131",text:"d"},{color:"gold",text:"已经加载！"},"\n",{color:"aqua",text:"             版本："},{color:"green",text:"1.5"},"\n=========================="]
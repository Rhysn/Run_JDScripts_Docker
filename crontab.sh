# 脚本更新 >>
55 * * * * bash /Run_JDScripts_Docker/sync.sh 1>/proc/1/fd/1 2>/proc/1/fd/2 > /logs/sync.log && date >> /logs/sync.log 2>&1
# 更新邀请码 >>
12 0 * * * bash /Run_JDScripts_Docker/updateShareCodes.sh 1>/proc/1/fd/1 2>/proc/1/fd/2 > /logs/updateShareCodes.log 2>&1
# 兑换任务脚本 >>
0 0-16/8 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_joy_reward.js > /logs/jd_joy_reward.log 2>&1 | sed 's/^/ 【宠汪汪积分兑换京豆】/'; "
0 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /env; source /cookies; node /scripts/jd_blueCoin.js > /logs/jd_blueCoin.log 2>&1 | sed 's/^/ 【京小超兑换奖品】/'; "
0,1 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /env; source /cookies; node /scripts/jd_car_exchange.js > /logs/jd_car_exchange.log 2>&1 | sed 's/^/ 【京东汽车兑换】/'; "
# 无邀请任务脚本 >>
10 9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_bean_change.js > /logs/jd_bean_change.log 2>&1 | sed 's/^/ 【京豆变动通知】/'; "
10,40 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_big_winner.js > /logs/jd_big_winner.log 2>&1 | sed 's/^/ 【翻翻乐大赢家】/'; "
22 0-23/3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jxmc.js > /logs/jd_jxmc.log 2>&1 | sed 's/^/ 【惊喜牧场】/'; "
8 */3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_speed.js > /logs/jd_speed.log 2>&1 | sed 's/^/ 【天天加速】/'; "
12 16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_market_lottery.js > /logs/jd_market_lottery.log 2>&1 | sed 's/^/ 【幸运大转盘】/'; "
11-51/20 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_health_collect.js > /logs/jd_health_collect.log 2>&1 | sed 's/^/ 【东东健康社区收能量】/'; "
#14 5,12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/monk_shop_add_to_car.js > /logs/monk_shop_add_to_car.log 2>&1 | sed 's/^/ 【加购有礼】/'; "
18 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_crazy_joy_coin.js > /logs/jd_crazy_joy_coin.log 2>&1 | sed 's/^/ 【疯狂Joy挂机】/'; "
40 */2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_moneyTree.js > /logs/jd_moneyTree.log 2>&1 | sed 's/^/ 【京东摇钱树】/'; "
0-59/30 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_moneyTree_help.js > /logs/jd_moneyTree_help.log 2>&1 | sed 's/^/ 【京东摇钱树帮助】/'; "
#5 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_zoo.js > /logs/jd_zoo.log 2>&1 | sed 's/^/ 【动物联萌】/'; "
#45 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_zoo2.js > /logs/jd_zoo2.log 2>&1 | sed 's/^/ 【动物联萌】/'; "
#48 */12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_zooMap.js > /logs/jd_zooMap.log 2>&1 | sed 's/^/ 【动物联萌店铺任务】/'; "
#*/30 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_zooCollect.js > /logs/jd_zooCollect.log 2>&1 | sed 's/^/ 【动物联萌收金币】/'; "
15 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_joy_feedPets.js > /logs/jd_joy_feedPets.log 2>&1 | sed 's/^/ 【宠汪汪喂食脚本】/'; "
16 */2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_djjl.js > /logs/jd_djjl.log 2>&1 | sed 's/^/ 【京东电竞经理】/'; "
4 */4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_superMarket.js > /logs/jd_superMarket.log 2>&1 | sed 's/^/ 【东东超市】/'; "
39 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_pigPet.js > /logs/jd_pigPet.log 2>&1 | sed 's/^/ 【金融养猪】/'; "
1 */12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_priceProtect.js > /logs/jd_priceProtect.log 2>&1 | sed 's/^/ 【价格保护】/'; "
25 6,12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_DrawEntrance.js > /logs/jd_DrawEntrance.log 2>&1 | sed 's/^/ 【天天优惠大乐透】/'; "
15 9,20 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/adolf_superbox.js > /logs/adolf_superbox.log 2>&1 | sed 's/^/ 【京东超级盒子】/'; "
#34 0,1 * 5,6 * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/adolf_newInteraction.js > /logs/adolf_newInteraction.log 2>&1 | sed 's/^/ 【618新品鉴赏】/'; "
#13-53/5 8-20 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_family.js > /logs/jd_family.log 2>&1 | sed 's/^/ 【京东家庭号】/'; "
1 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_shop.js > /logs/jd_shop.log 2>&1 | sed 's/^/ 【进店领豆脚本】/'; "
#30 10,12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_superBrand.js > /logs/jd_superBrand.log 2>&1 | sed 's/^/ 【万物皆可国创】/'; "
8 0,20 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_necklace.js > /logs/jd_necklace.log 2>&1 | sed 's/^/ 【点点券】/'; "
14 10,16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_try.js > /logs/jd_try.log 2>&1 | sed 's/^/ 【京东试用】/'; "
15 8,13,18 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/ddo_pk.js > /logs/ddo_pk.log 2>&1 | sed 's/^/ 【京享值PK】/'; "
25 9,10 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_qjd.js > /logs/jd_qjd.log 2>&1 | sed 's/^/ 【全民抢京豆】/'; "
10 0,6-23/1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_summer_movement.js > /logs/jd_summer_movement.log 2>&1 | sed 's/^/ 【燃动夏季】/'; "
12 6-23/1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_summer_movement_help.js > /logs/jd_summer_movement_help.log 2>&1 | sed 's/^/ 【燃动夏季】/'; "
15,46 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_NewSign.js > /logs/jd_NewSign.log 2>&1 | sed 's/^/ 【新登陆】/'; "
13 1,16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_gold_creator.js > /logs/jd_gold_creator.log 2>&1 | sed 's/^/ 【金榜创造营】/'; "
28 9,16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/star_dreamFactory_tuan.js > /logs/star_dreamFactory_tuan.log 2>&1 | sed 's/^/ 【惊喜梦工厂开团】/'; "
37 */2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/monk_pasture.js > /logs/monk_pasture.log 2>&1 | sed 's/^/ 【有机牧场】/'; "
31 */2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_qqxing.js > /logs/jd_qqxing.log 2>&1 | sed 's/^/ 【QQ星系牧场】/'; "
15 5,6,7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_goodMorning.js > /logs/jd_goodMorning.log 2>&1 | sed 's/^/ 【早起福利】/'; "
15 22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_msj.js > /logs/jd_msj.log 2>&1 | sed 's/^/ 【零食街】/'; "
45 9,21 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_MMdou.js > /logs/jd_MMdou.log 2>&1 | sed 's/^/ 【MM豆】/'; "
1-59/23 0,5 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/JD_DailyBonus.js > /logs/JD_DailyBonus.log 2>&1 | sed 's/^/ 【京豆签到脚本】/'; "
5 7,17,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_club_lottery.js > /logs/jd_club_lottery.log 2>&1 | sed 's/^/ 【摇京豆脚本】/'; "
1,23 1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_redPacket.js > /logs/jd_redPacket.log 2>&1 | sed 's/^/ 【全民开红包脚本】/'; "
16 1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_delCoupon.js > /logs/jd_delCoupon.log 2>&1 | sed 's/^/ 【优惠券删除】/'; "
#59 9,10 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_europeancup.js > /logs/jd_europeancup.log 2>&1 | sed 's/^/ 【欧洲杯】/'; "
16 10,12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_paoku.js > /logs/jd_paoku.log 2>&1 | sed 's/^/ 【京东跑酷】/'; "
25 2,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_nzmh.js > /logs/jd_nzmh.log 2>&1 | sed 's/^/ 【女装盲盒】/'; "
34 6,10 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_kd.js > /logs/jd_kd.log 2>&1 | sed 's/^/ 【京东快递】/'; "
2,44 6,7,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_speed_redpocke.js > /logs/jd_speed_redpocke.log 2>&1 | sed 's/^/ 【京东极速版红包】/'; "
12 */4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_joy.js > /logs/jd_joy.log 2>&1 | sed 's/^/ 【宠汪汪】/'; "
47 6,7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_rankingList.js > /logs/jd_rankingList.log 2>&1 | sed 's/^/ 【京东排行榜】/'; "
39 15,16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_lotteryMachine3.js > /logs/jd_lotteryMachine3.log 2>&1 | sed 's/^/ 【京东抽奖机互助】/'; "
11 6-22/8 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_lotteryMachine.js > /logs/jd_lotteryMachine.log 2>&1 | sed 's/^/ 【京东抽奖机】/'; "
35 6-20/7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_beauty.js > /logs/jd_beauty.log 2>&1 | sed 's/^/ 【美丽研究院】/'; "
10,25 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_ms.js > /logs/jd_ms.log 2>&1 | sed 's/^/ 【京东秒秒币】/'; "
31,36 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_bean_home.js > /logs/jd_bean_home.log 2>&1 | sed 's/^/ 【任务京豆】/'; "
37,42 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_car.js > /logs/jd_car.log 2>&1 | sed 's/^/ 【京东汽车】/'; "
#16 7,8 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jx_sign.js > /logs/jx_sign.log 2>&1 | sed 's/^/ 【京喜签到】/'; "
17,26 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_speed_sign.js > /logs/jd_speed_sign.log 2>&1 | sed 's/^/ 【京东极速版签到】/'; "
7,37 1,13 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_syj.js > /logs/jd_syj.log 2>&1 | sed 's/^/ 【十元街】/'; "
22 8,16,20 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_jxd.js > /logs/jd_jxd.log 2>&1 | sed 's/^/ 【京小兑】/'; "
5 9,13 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_jin_tie.js > /logs/jd_jin_tie.log 2>&1 | sed 's/^/ 【领津贴】/'; "
#33 10 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_starStore.js > /logs/jd_starStore.log 2>&1 | sed 's/^/ 【星店长】/'; "
10-15/5 11 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_live.js > /logs/jd_live.log 2>&1 | sed 's/^/ 【京东直播任务】/'; "
50 23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_unsubscribe.js > /logs/jd_unsubscribe.log 2>&1 | sed 's/^/ 【京东取关商品】/'; "
#3 0,10,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/monk_shop_lottery.js > /logs/monk_shop_lottery.log 2>&1 | sed 's/^/ 【店铺大转盘】/'; "
#36 5,14 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/monk_shop_follow_sku.js > /logs/monk_shop_follow_sku.log 2>&1 | sed 's/^/ 【关注有礼】/'; "
#5 8,14,20 19-25 5 * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/z_mother_jump.js > /logs/z_mother_jump.log 2>&1 | sed 's/^/ 【母婴跳一跳】/'; "
#10 */3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_mohe.js > /logs/jd_mohe.log 2>&1 | sed 's/^/ 【5G魔盒】/'; "
# 固定邀请码脚本 >>
34 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_jdfactory.js > /logs/jd_jdfactory.log 2>&1 | sed 's/^/ 【东东工厂】/'; "
#0,16 0,22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_city.js > /logs/jd_city.log 2>&1 | sed 's/^/ 【城城领现金】/'; "
7-47/20 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_dreamFactory.js > /logs/jd_dreamFactory.log 2>&1 | sed 's/^/ 【京喜工厂】/'; "
0 1,21 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_star_shop.js > /logs/jd_star_shop.log 2>&1 | sed 's/^/ 【明星小店】/'; "
0,7 6-18/6,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_fruit.js > /logs/jd_fruit.log 2>&1 | sed 's/^/ 【东东农场】/'; "
11 0,8,13,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_cfd.js > /logs/jd_cfd.log 2>&1 | sed 's/^/ 【财富岛】/'; "
59 11,12,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_cfdtx.js > /logs/jd_cfd.log 2>&1 | sed 's/^/ 【财富岛套现】/'; "
11 7,21 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_flipcards.js > /logs/jd_flipcards.log 2>&1 | sed 's/^/ 【省钱大赢家之翻翻乐】/'; "
39 0,8,13,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_cfd_loop.js > /logs/jd_cfd_loop.log 2>&1 | sed 's/^/ 【财富岛loop】/'; "
13 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_jdzz.js > /logs/jd_jdzz.log 2>&1 | sed 's/^/ 【京东赚赚】/'; "
5 6-18/6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_pet.js > /logs/jd_pet.log 2>&1 | sed 's/^/ 【东东萌宠】/'; "
6-51/15 7-23/1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_plantBean.js > /logs/jd_plantBean.log 2>&1 | sed 's/^/ 【种豆得豆】/'; "
13 7,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_crazy_joy.js > /logs/jd_crazy_joy.log 2>&1 | sed 's/^/ 【疯狂Joy】/';  "
3 */3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_cash.js > /logs/jd_cash.log 2>&1 | sed 's/^/ 【京东领现金】/'; "
1 8,12,18 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_bookshop.js > /logs/jd_bookshop.log 2>&1 | sed 's/^/ 【口袋书店】/'; "
11 */4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_health.js > /logs/jd_health.log 2>&1 | sed 's/^/ 【东东健康社区】/'; "
#15 */6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_global.js > /logs/jd_global.log 2>&1 | sed 's/^/ 【环球挑战赛】/'; "
13 1,22,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_daily_lottery.js > /logs/jd_daily_lottery.log 2>&1 | sed 's/^/ 【每日抽奖】/'; "
# 动态邀请码脚本 >>
#0,19 */6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /ShareCodes/Temp.sh; source /overall; source /env; source /cookies; node /scripts/jd_carnivalcity.js > /logs/jd_carnivalcity.log 2>&1 | sed 's/^/ 【手机狂欢城】/'; "
#33 */6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /ShareCodes/Temp.sh; source /overall; source /env; source /cookies; node /scripts/z_carnivalcity.js > /logs/z_carnivalcity.log 2>&1 | sed 's/^/ 【手机狂欢城】/'; "
0 1-23/3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /ShareCodes/Temp.sh; source /overall; source /env; source /cookies; node /scripts/jd_mohe.js > /logs/jd_mohe.log 2>&1 | sed 's/^/ 【5G魔盒】/'; "
# 远程邀请码脚本 >>
23 4,5,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_small_home.js > /logs/jd_small_home.log 2>&1 | sed 's/^/ 【东东小窝】/'; "
# 无参数脚本 >>
57 22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_cookies_status.js > /logs/jd_cookies_status.log 2>&1 | sed 's/^/ 【获取有效期状态】/'; "
#0,30 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_live_redrain.js > /logs/jd_live_redrain.log 2>&1 | sed 's/^/ 【超级直播间红包雨】/'; "
11 1,12,22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jump.js > /logs/jd_jump.log 2>&1 | sed 's/^/ 【跳跳乐瓜分京豆】/'; "
31 16-23/1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_half_redrain.js > /logs/jd_half_redrain.log 2>&1 | sed 's/^/ 【半点红包雨】/'; "
#1 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_super_redrain.js > /logs/jd_super_redrain.log 2>&1 | sed 's/^/ 【整点红包雨】/'; "
#1 20 1-18/1 6 * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/long_hby_lottery.js > /logs/long_hby_lottery.log 2>&1 | sed 's/^/ 【618主会场红包雨】/'; "
#17 16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_task_sharecode.js > /logs/jd_task_sharecode.log 2>&1 | sed 's/^/ 【获取活动分享码】/'; "
#17 15 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_get_share_code.js > /logs/jd_get_share_code.log 2>&1 | sed 's/^/ 【获取活动邀请码】/'; "

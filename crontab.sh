# 脚本更新 >>
55 * * * * bash /Run_JDScripts_Docker/sync.sh 1>/proc/1/fd/1 2>/proc/1/fd/2 > /logs/sync.log && date >> /logs/sync.log 2>&1
# 更新邀请码 >>
#12 0 * * * bash /Run_JDScripts_Docker/updateShareCodes.sh 1>/proc/1/fd/1 2>/proc/1/fd/2 > /logs/updateShareCodes.log 2>&1
# 通知脚本 >>
10 9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_bean_change.js > /logs/jd_bean_change.js.log 2>&1 | sed 's/^/ 【京豆变动通知】/'; "
# 兑换任务脚本 >>
0 0-16/8 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_joy_reward.js > /logs/jd_joy_reward.js.log 2>&1 | sed 's/^/ 【宠汪汪积分兑换京豆】/'; "
#0 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /env; source /cookies; node /scripts/jd_blueCoin.js > /logs/jd_blueCoin.js.log 2>&1 | sed 's/^/ 【京小超兑换奖品】/'; "
#0 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /env; source /cookies; node /scripts/jd_cash_exchange.js > /logs/jd_jd_cash_exchange.js.log 2>&1 | sed 's/^/ 【领现金兑换】/'; "
0,1 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /env; source /cookies; node /scripts/jd_car_exchange.js > /logs/jd_car_exchange.js.log 2>&1 | sed 's/^/ 【京东汽车兑换】/'; "
13 1,22,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_daily_lottery.js > /logs/jd_daily_lottery.js.log 2>&1 | sed 's/^/ 【每日抽奖】/'; "
0,9 0,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_ddworld_exchangebean.js > /logs/jd_ddworld_exchangebean.js.log 2>&1 | sed 's/^/ 【东东世界兑换】/'; "
0 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_reward.js > /logs/jd_reward.js.log  2>&1 | sed 's/^/ 【兑换】/'; "
# JS脚本（无助力） >>
1-59/23 0,5 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/JD_DailyBonus.js > /logs/JD_DailyBonus.js.log 2>&1 | sed 's/^/ 【京豆签到脚本】/'; "
58 7,15,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_validate_Worker.js > /logs/jd_validate_Worker.js.log 2>&1 | sed 's/^/ 【默认预存5个validate】/'; "
0 6-22/2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_lsj.js > /logs/jd_lsj.js.log 2>&1 | sed 's/^/ 【零食街】/'; "
13 6,22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jxg.js > /logs/jd_jxg.js.log 2>&1 | sed 's/^/ 【京小鸽】/'; "
31,36 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_bean_home.js > /logs/jd_bean_home.js.log 2>&1 | sed 's/^/ 【任务京豆】/'; "
35 6-20/7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_beauty.js > /logs/jd_beauty.js.log 2>&1 | sed 's/^/ 【美丽研究院】/'; "
19 1-22/2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_big_winner.js > /logs/jd_big_winner.js.log 2>&1 | sed 's/^/ 【翻翻乐大赢家】/'; "
37,42 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_car.js > /logs/jd_car.js.log 2>&1 | sed 's/^/ 【京东汽车】/'; "
3 10,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_ccSign.js > /logs/jd_ccSign.js.log 2>&1 | sed 's/^/ 【领券中心签到】/'; "
24 3,10,13 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_cjhz.js > /logs/jd_cjhz.js.log 2>&1 | sed 's/^/ 【京东超级盒子】/'; "
5 7,17,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_club_lottery.js > /logs/jd_club_lottery.js.log 2>&1 | sed 's/^/ 【摇京豆脚本】/'; "
15 2,6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_connoisseur.js > /logs/jd_connoisseur.js.log 2>&1 | sed 's/^/ 【内容鉴赏官】/'; "
25 7,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_ddly.js > /logs/jd_ddly.js.log 2>&1 | sed 's/^/ 【东东乐园】/'; "
16 1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_delCoupon.js > /logs/jd_delCoupon.js.log 2>&1 | sed 's/^/ 【优惠券删除】/'; "
40 0-23/2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_djjl.js > /logs/jd_djjl.js.log 2>&1 | sed 's/^/ 【电竞经理】/'; "
43 11,15 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_dpqd.js > /logs/jd_dpqd.js.log 2>&1 | sed 's/^/ 【店铺签到】/'; "
22 8 1-20 * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_dqmh.js > /logs/jd_dqmh.js.log 2>&1 | sed 's/^/ 【东东电器盲盒】/'; "
6 9,11 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_dwapp.js > /logs/jd_dwapp.js.log 2>&1 | sed 's/^/ 【积分换话费】/'; "
11 0,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_fission.js > /logs/jd_fission.js.log 2>&1 | sed 's/^/ 【超市换豆】/'; "
37 0,11 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_genz.js > /logs/jd_genz.js.log 2>&1 | sed 's/^/ 【芥么赚豪礼】/'; "
14 10,16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_try.js > /logs/jd_try.js.log 2>&1 | sed 's/^/ 【京东试用】/'; "
13 1,22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_gold_creator.js > /logs/jd_gold_creator.js.log 2>&1 | sed 's/^/ 【金榜创造营】/'; "
43 6,7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_goodMorning.js > /logs/jd_goodMorning.js.log 2>&1 | sed 's/^/ 【早起福利】/'; "
31 16-23/1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_half_redrain.js > /logs/jd_half_redrain.js.log 2>&1 | sed 's/^/ 【半点红包雨】/'; "
11-51/20 1-5/1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_health_collect.js > /logs/jd_health_collect.js.log 2>&1 | sed 's/^/ 【东东健康社区收能量】/'; "
41 1,5 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jin_tie.js > /logs/jd_jin_tie.js.log 2>&1 | sed 's/^/ 【领津贴】/'; "
0 */12,18 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_jingxianghongbao.js > /logs/jd_jingxianghongbao.js.log 2>&1 | sed 's/^/ 【京享红包】/'; "
26 3,15 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_joypark_task.js > /logs/jd_joypark_task.js.log 2>&1 | sed 's/^/ 【汪汪乐园养joy每日任务】/'; "
12 */4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_joy.js > /logs/jd_joy.js.log 2>&1 | sed 's/^/ 【宠汪汪】/'; "
43 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jxqd.js > /logs/jd_jxqd.js.log 2>&1 | sed 's/^/ 【惊喜签到】/'; "
3 10,22 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_kd.js > /logs/jd_kd.js.log 2>&1 | sed 's/^/ 【快递签到】/'; "
10-15/5 11 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_live.js > /logs/jd_live.js.log 2>&1 | sed 's/^/ 【京东直播任务】/'; "
13 14,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_lol.js > /logs/jd_lol.js.log 2>&1 | sed 's/^/ 【电竞预言家】/'; "
11 6-22/8 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_lotteryMachine.js > /logs/jd_lotteryMachine.js.log 2>&1 | sed 's/^/ 【京东抽奖机】/'; "
12 10,16 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_market_lottery.js > /logs/jd_market_lottery.js.log 2>&1 | sed 's/^/ 【幸运大转盘】/'; "
9 */3,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_mohe.js > /logs/jd_mohe.js.log 2>&1 | sed 's/^/ 【5G魔盒】/'; "
10,25 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_ms.js > /logs/jd_ms.js.log 2>&1 | sed 's/^/ 【京东秒秒币】/'; "
1 0,9,19,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jx_nnfls.js > /logs/jx_nnfls.js.log 2>&1 | sed 's/^/ 【牛牛福利舍】/'; "
25 2,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_nzmh.js > /logs/jd_nzmh.js.log 2>&1 | sed 's/^/ 【女装盲盒】/'; "
39 1-19/6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_pigPet.js > /logs/jd_pigPet.js.log 2>&1 | sed 's/^/ 【金融养猪】/'; "
41 13,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_ppdz.js > /logs/jd_ppdz.js.log 2>&1 | sed 's/^/ 【泡泡大战】/'; "
4 */12,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_price.js > /logs/jd_price.js.log 2>&1 | sed 's/^/ 【价格保护】/'; "
47 6,7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_rankingList.js > /logs/jd_rankingList.js.log 2>&1 | sed 's/^/ 【京东排行榜】/'; "
1,23 1 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_redPacket.js > /logs/jd_redPacket.js.log 2>&1 | sed 's/^/ 【全民开红包脚本】/'; "
36 6,14 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_selectionOfficer.js > /logs/jd_selectionOfficer.js.log 2>&1 | sed 's/^/ 【选品师】/'; "
1 0 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_shop.js > /logs/jd_shop.js.log 2>&1 | sed 's/^/ 【进店领豆脚本】/'; "
14 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_sign_graphics.js > /logs/jd_sign_graphics.js.log 2>&1 | sed 's/^/ 【验证签到】/'; "
20 1,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_sjjc.js > /logs/jd_sjjc.js.log 2>&1 | sed 's/^/ 【手机竞猜】/'; "
2,44 0,5,7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall;  source /cookies; node /scripts/jd_speed_redpocke.js > /logs/jd_speed_redpocke.js.log 2>&1 | sed 's/^/ 【京东极速版红包】/'; "
17,26 7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_speed_sign.js > /logs/jd_speed_sign.js.log 2>&1 | sed 's/^/ 【京东极速版签到】/'; "
3 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_super_redrain.js > /logs/jd_super_redrain.js.log 2>&1 | sed 's/^/ 【整点红包雨】/'; "
30 10,12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_superBrand.js > /logs/jd_superBrand.js.log 2>&1 | sed 's/^/ 【首页下拉】/'; "
4 1-23/4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_superMarket.js > /logs/jd_superMarket.js.log 2>&1 | sed 's/^/ 【东东超市】/'; "
7,37 13,21 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_vivo.js > /logs/jd_vivo.js.log 2>&1 | sed 's/^/ 【vivo蚊子腿】/'; "
19 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_ttpt.js > /logs/jd_ttpt.js.log 2>&1 | sed 's/^/ 【天天拼图】/'; "
50 23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_unsubscribe.js > /logs/jd_unsubscribe.js.log 2>&1 | sed 's/^/ 【京东取关商品】/'; "
21 23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_unsubscriLive.js > /logs/jd_unsubscriLive.js.log 2>&1 | sed 's/^/ 【京东取关主播】/'; "
21 10,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_wish.js > /logs/jd_wish.js.log 2>&1 | sed 's/^/ 【众筹许愿池】/'; "
14 0-23/6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_wsdlb.js > /logs/jd_wsdlb.js.log 2>&1 | sed 's/^/ 【柠檬我是大佬农场】/'; "
23 7,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_xsljd.js > /logs/jd_xsljd.js.log 2>&1 | sed 's/^/ 【限时抢京豆】/'; "
35 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_ys.js > /logs/jd_ys.js.log 2>&1 | sed 's/^/ 【预售福利机】/'; "
44 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_zsign.js > /logs/jd_zsign.js.log 2>&1 | sed 's/^/ 【芥么签到】/'; "
14 16,21 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jump.js > /logs/jd_jump.js.log 2>&1 | sed 's/^/ 【跳跳乐瓜分京豆】/'; "
# JS脚本（带助力）>>
6 6-23/2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_plantBean.js > /logs/jd_plantBean.js.log 2>&1 | sed 's/^/ 【种豆得豆】/'; "
34 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_jdfactory.js > /logs/jd_jdfactory.js.log 2>&1 | sed 's/^/ 【东东工厂】/'; "
1 8,12,18 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /cookies; node /scripts/jd_bookshop.js > /logs/jd_bookshop.js.log 2>&1 | sed 's/^/ 【口袋书店】/'; "
34 */3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /cookies; node /scripts/jd_cash.js > /logs/jd_cash.js.log 2>&1 | sed 's/^/ 【京东领现金】/'; "
27 * * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_dreamFactory.js > /logs/jd_dreamFactory.js.log 2>&1 | sed 's/^/ 【京喜工厂】/'; "
0,7 6-18/6,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_fruit.js > /logs/jd_fruit.js.log 2>&1 | sed 's/^/ 【东东农场】/'; "
11 1,13,16,21 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /cookies; node /scripts/jd_health.js > /logs/jd_health.js.log 2>&1 | sed 's/^/ 【东东健康社区】/'; "
11 2,3,19 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_z_health_community.js > /logs/jd_z_health_community.js.log 2>&1 | sed 's/^/ 【健康社区2】/'; "
13 1,2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_jdzz.js > /logs/jd_jdzz.js.log 2>&1 | sed 's/^/ 【京东赚赚】/'; "
5 6-18/6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_pet.js > /logs/jd_pet.js.log 2>&1 | sed 's/^/ 【东东萌宠】/'; "
# 动态邀请码脚本 >>
0 */6 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /ShareCodes/Temp.sh; source /overall; source /env; source /cookies; node /scripts/jd_carnivalcity.js > /logs/jd_carnivalcity.js.log 2>&1 | sed 's/^/ 【手机狂欢城】/'; "
19 6-23/12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /ShareCodes/Temp.sh; source /overall; source /env; source /cookies; node /scripts/jd_tyt.js.js > /logs/jd_tyt.js.log 2>&1 | sed 's/^/ 【柠檬推一推】/'; "
# 远程邀请码脚本 >>
#23 4,5,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_small_home.js > /logs/jd_small_home.js.log 2>&1 | sed 's/^/ 【东东小窝】/'; "
# TS脚本 >>
19 3,9,19,23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jx_nnfls.ts > /logs/jx_nnfls.ts.log 2>&1 | sed 's/^/ 【牛牛福利舍】/'; "
28 3,15,17 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; ts-node /scripts/jd_yili_cow.ts  >> /scripts/logs/jd_yili_cow.log 2>&1 | sed 's/^/ 【伊利牛】/'; "
1 1,9,12,18 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jd_bean_box.ts > /logs/jd_bean_box.ts.log 2>&1 | sed 's/^/ 【领京豆-任务】/'; "
16 8,14 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jd_foodRunning.ts > /logs/jd_foodRunning.ts.log 2>&1 | sed 's/^/ 【jd_foodRunning.ts】/'; "
46 2,4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jd_IndustryLottery.ts > /logs/jd_IndustryLottery.ts.log 2>&1 | sed 's/^/ 【jd_IndustryLottery.ts】/'; "
26 6,7 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jd_getUp.ts > /logs/jd_getUp.ts.log  2>&1 | sed 's/^/ 【起床了】/'; "
34 1-22/3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jd_qq_pasture.ts > /logs/jd_qq_pasture.log 2>&1 | sed 's/^/ 【QQ牧场】/'; "
37 2,4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; ts-node /scripts/jd_tewu.ts > /logs/jd_tewu.ts.log 2>&1 | sed 's/^/ 【首页下拉】/'; "
# JS + TS 脚本
41 1-23 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_cfd.js > /logs/jd_cfd.js.log; ts-node /scripts/jd_cfd.ts > /logs/jd_cfdts.ts.log  2>&1 | sed 's/^/ 【财富岛】/'; "
45 3,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_ddworld.js > /logs/jd_ddworld.js.log; ts-node /scripts/jd_ddworld.ts > /logs/jd_ddworld.ts.log  2>&1 | sed 's/^/ 【东东世界】/'; "
26 11,12 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /env; source /cookies; node /scripts/jd_ddworld.js > /logs/jd_ddworld.js.log; ts-node /scripts/jd_fruit_moreTask.ts > /logs/jd_fruit_moreTask.ts.log  2>&1 | sed 's/^/ 【农场补充任务】/'; "
20 1-23/3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_joypark_joy.js > /logs/jd_joypark_joy.js.log; ts-node /scripts/jd_joy_park.ts > /logs/jd_joy_park.ts.log 2>&1 | sed 's/^/ 【汪汪乐园养joy】/'; "
53 */3 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_jxmc.js > /logs/jd_jxmc.js.log; ts-node /scripts/jd_jxmc.ts > /logs/jd_jxmc.ts.log  2>&1 | sed 's/^/ 【惊喜牧场】/'; "
40 */2 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /overall; source /cookies; node /scripts/jd_moneyTree.js > /logs/jd_moneyTree.js.log; ts-node /scripts/jd_moneyTree.ts > /logs/jd_moneyTree.ts.log 2>&1 | sed 's/^/ 【京东摇钱树】/'; "
22 3,4 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /Run_JDScripts_Docker/ShareCodes/Default.sh; source /overall; source /env; source /cookies; node /scripts/jd_xtg.js > /logs/jd_xtg.js.log; ts-node /scripts/jd_xtg.ts > /logs/jd_xtg.ts.log  2>&1 | sed 's/^/ 【星推官】/'; "
# 三脚本
23 2,9 * * * bash -c "exec 1<>/proc/1/fd/1; exec 2<>/proc/1/fd/2; set -o allexport; source /cookies; node /scripts/jd_jmf.js > /logs/jd_jmf.js.log; node /scripts/jd_mf.js > /logs/jd_mf.js.log; ts-node /scripts/jd_mofang.ts > /logs/jd_mofang.ts.log 2>&1 | sed 's/^/ 【京东小魔方】/'; "

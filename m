Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4932375262A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 17:08:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2F44613D9;
	Thu, 13 Jul 2023 15:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2F44613D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689260914;
	bh=KogW7yqs5YnsMk/FDtDqy3n2yQfN57fIuHP7s7DBdxk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DGuVF83H8Kzeo11OanvGTZlJuqOX0o06iQRWxdMZx523knPjEnIPAKA78jwYO2I1y
	 qJXx8YY9c0XcAFkWv0peddpG8d1o4GKPVptqiyFz6WHShr3owz8ZLxThhY0GQZ2fvn
	 +ZUUNmk0zIZs5qOfcfmpfl19irJXo3EtehK7LkwG86Yw/rn/YEPDHQ1hIO5jSesoXl
	 WvwNk3LbZfqlxNjclIsyuoQO84Zd01334gEynRpJf5H7QcYmIo9kuDI6N/3FDHvJeW
	 e0rp39jbemuHG5I23wy+7ZMU+oIemUdNczB/J4LXCEnf1kjSfjwSpFdDP46peeTpzz
	 QNBpr/vEwfnyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LE0ZRDqvtymo; Thu, 13 Jul 2023 15:08:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B69B2613D2;
	Thu, 13 Jul 2023 15:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B69B2613D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A684F1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A62E403C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A62E403C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UpackCUhbZ9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 01:46:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1BDC40122
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01on2100.outbound.protection.outlook.com [40.107.255.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1BDC40122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:46:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVNRwIEIUqWKfTMsU4XLvJEkU62hzSA9pdB5J7lCNtvSlBdJjPVqeqQ2LY5KRxSUOktbNUMdK6iC/q8Wtb6dszTQCc76cV0nSao46eL9DVcQC0hwQghZaeLxxDEO2mx5uQL6OghMPymIv0gvj1elin54K+AFTvZJn8gFLslsnlOKuNfqKQUyQj+36l7ykdaRxLqumhsqUdMXAoCecmjVyNqV0Xa2iX/hdD7uUh6pgPPqB2BqkMufSplupPHU6tVxOgpH0z/yMEPPaYWFSnPYcIuI+qzQQxgE9m1sP9d5OkbzD6Cl1KI5S7Mm98BTqtN+ORBsNVgdO8kalK0y3ohLKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o3j91ECzpMSvjhK6Ni4NGb1lVilXiKwFwAjfBY+q/F4=;
 b=Ugu06djzod8USILApXNG+Wgvhsg877fsI94tW+kVFIG6dDnDpRQSYlrcVlG0PvM/RY66GhRJujbBLNsLwYbRGxGOeas4arVTzIZlY1IaDTl2IjoxjkxCCpG4mTSxahidQi6CGE4Q4BJwqtBGlgDyj9k8j8jIv4bmiusY3Sfaqf4Ixp0tKdoshz671Bx+kgAwhcZXN7wcMHD/H1S/m4KdXlXqfjMLFfolAgd+z6iWfbWlefYHREvUEYbGkiJcXGtYUj+CGTVW7/P9yir8G5dWpU7Qp2FlJY/2FbavP1gRlY6yZuv8szx43ZuiLmyo0V7rI0EO30fZD23NBDLvKZU9qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SG2PR06MB3743.apcprd06.prod.outlook.com (2603:1096:4:d0::18) by
 KL1PR0601MB4033.apcprd06.prod.outlook.com (2603:1096:820:24::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Thu, 13 Jul
 2023 01:46:49 +0000
Received: from SG2PR06MB3743.apcprd06.prod.outlook.com
 ([fe80::2a86:a42:b60a:470c]) by SG2PR06MB3743.apcprd06.prod.outlook.com
 ([fe80::2a86:a42:b60a:470c%4]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 01:46:49 +0000
From: Wang Ming <machel@vivo.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shannon Nelson <shannon.nelson@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 13 Jul 2023 09:42:39 +0800
Message-Id: <20230713014250.11770-1-machel@vivo.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0129.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::33) To SG2PR06MB3743.apcprd06.prod.outlook.com
 (2603:1096:4:d0::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PR06MB3743:EE_|KL1PR0601MB4033:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a9153b6-4cbb-43f9-8077-08db834305c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WNz2jzQG5RgV2nCCeCGUFgY6ZgVfxCdPL5kCYBKresxs/LQywBVelJW6zg/BvqdVAlexM7u6HE5ZntI7LB/N7SCJDpPekvTwJZoyT87yQUE9nhIqFVT1Mc565UB0qM3X2fgopf/c1ucaAlOHi0w2G2FuyAjUtzOxhXgqT3YGj5zKfbxnGX22aCSLmWZd3X2XImSJKrVJrjFu8/sxCNqDnfFyk4zxInP4a7MQcnxSQqo+d/fTC+IRSGKM/XBxhiRkxSmYurphliZOW6m0mlYHHkatOFP/9YTDAoqWaW26oiWNqSJBpApgDrRIG/i4IzDy+vsSVVhT6OgnS8cktYEzoqndPqZiNFQT+2aYgytjyiCduj9tlz10JaCeusiNDXMcm3IMIIcHZBfJnIX+4MNUABFbODTrothvkVids9AlPzroBtvRAo2RPYhRH2Nv15pU8Yg0fGU7EkEGGnoeRDgQoAT9iZNmr9CNBaXNzfWkYqQAxPX96VCCHIMiHAWkDwaIOR+2ju7lN0Mq9YKQ9R7+/D2bnXSXENtwa+/TS7gfUFrO3Z6Ri1hLh2h90oEHUReZEoibFv3QFCOAdbAIp58rGUtLPehQVfCHuzNrqyrVY9/26NnOm2szKK7osCRzK87k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SG2PR06MB3743.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(396003)(376002)(366004)(346002)(136003)(451199021)(7416002)(5660300002)(8676002)(8936002)(4326008)(66556008)(4744005)(41300700001)(2906002)(66476007)(316002)(66946007)(110136005)(6666004)(6486002)(6512007)(52116002)(1076003)(6506007)(26005)(186003)(107886003)(83380400001)(2616005)(36756003)(86362001)(38100700002)(38350700002)(478600001)(921005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V5aHOoyju3TCJJdIyzr7GsmjZiPIF7lP3iD9Sk3GEkgRI3WrMah3r4pcqgyi?=
 =?us-ascii?Q?i9rcJE827ZUphcQkaqtj3ttI+53fg7Mchvqq45EkKKcMZiU1MTwanaNusBmk?=
 =?us-ascii?Q?JcFNEKM71EAbPpSniCqFcShnc8IWuQ2hcU6MjpjXNK+fSttneGPdKWoM5+Om?=
 =?us-ascii?Q?PtRWT3lnHGwcDK9ZWnMfMiBtgklJ3+eWyXdBklJJIyQ/LgvI7VJaUso0KGgm?=
 =?us-ascii?Q?4GrAHmyYNawlAn5LNQj6eg+rhuaAURx4vZnYheLE4lkk/usVGcHVpLF4P5SE?=
 =?us-ascii?Q?TVKqLI023icypiSgFvGNp+Ou45yOF5DYCaVTwSiTM/DpRIykS0tZSO8o/GLM?=
 =?us-ascii?Q?5P24iOXkLur1T87qoncDI5z1LXYk+VeYMXn8xl/oUsl+AY8I7gEcQux7FtbE?=
 =?us-ascii?Q?D+tg+AfqDZtqjd6jjMBb4AnFFRqtUkz1IfbgeUitrzMX2ZszJAW4w1B9W8Qq?=
 =?us-ascii?Q?A1MpBkG/3zw9JYz4v0n4jkgkBjKOVcYvVwsTwVXY7/de2IhTzaFWJ93JC3me?=
 =?us-ascii?Q?T6X7iASBIRwERnga6EIGvcVyBEy0MIUQ56mWddB0kHWiVdppT2f53SeQpxoT?=
 =?us-ascii?Q?YRgAL2a53nb8HofPn44itGsUmBLeq9MYGRR1DtJ8b8fo375ri0Q5axpDGi1h?=
 =?us-ascii?Q?EdetnfhV53wVB9gFn3MaiOWpkkSngFCF3WuIjJO37CX/DWajJ11kmLuc6dZS?=
 =?us-ascii?Q?6H4BdbyfVv+MSN7F6/6L089jpclzzHqzkWuYgFe/FKvMxKH1VKauNJNvdiLw?=
 =?us-ascii?Q?+2qKNXbJ6rtMLXGbkbcj56uttowJ3Dzp23JlvlOOqpsGK8dfwH4iE8tL5T8T?=
 =?us-ascii?Q?gg6hP0fw2gcyMxTD3Sia/YXpMIRQJm2W/pC7IBBVVTsAGiQaG5F9Q/Tv3wdF?=
 =?us-ascii?Q?17zqZunq2C+rPPiuHVoFhHFnBNfTxhbboDEQyOBT0ceeNYsfjiFMiw1Bpz8q?=
 =?us-ascii?Q?C6ttwkZO0ZDwZgh2jgG7PAu2Tr5uZOrfz2aJc+RsQVlHMZnHwjp6hmOLAbkj?=
 =?us-ascii?Q?KEIYtNOnSoMvkAiqz8PvkfoQ8vI2m9iFV8dSxXOWsFoFbQnGmQknuFcWKqZ0?=
 =?us-ascii?Q?MpV2LoxVYgTiG8b0ZXmVSE9FXkQ7sZgsQ5Hz5pLuS7gdI1s72XdjF3DHfiLX?=
 =?us-ascii?Q?q4ESvUc5JimL6Dj36MRgm/BIO7F5KNjXuf+ONemqZ4BxceJ8QCeY050QFwJi?=
 =?us-ascii?Q?ed5YOMjkj6emSum+zTIZnkLebZd/+RcZoIrOG5Y8eIUR6xcJQErBqTF9AZzi?=
 =?us-ascii?Q?AhMTZISSiV5p2LABbTS5dkheKnTjxtxRoa83kkY8fYhkl6DpNfxxhEu8dOh8?=
 =?us-ascii?Q?Yzau/ycPOFTN//hlWpqD1gm0nfdi7ScxacgbblZ+/K79cN3CYBsBfTwp5Rmv?=
 =?us-ascii?Q?HoZ1BuqD+8p5nnTcHuUix9wj6UMlfSNWv15kE9GpQrsIP6xJcym43qJC5UfQ?=
 =?us-ascii?Q?N+3vzExteptXKD/2XgOhItGnyvN4cFBKhVNkXcMWyRK1K/nxoAw/DZDbe09T?=
 =?us-ascii?Q?0qAkLUB8PRhmnApva6dLA96p1ibjnWo4ZTG6qxXBDRrY+DBNUKxbmvvdqBD/?=
 =?us-ascii?Q?99h+Q65G25ieSDWpAXkHTw1PrkJMPbIkUKFoEY8A?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a9153b6-4cbb-43f9-8077-08db834305c0
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3743.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 01:46:48.9856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIPTqBI1N6ACbHmlFF3RyAN6STBCc3q0lYNIiIJIo8GC7PK0XwaJppMMJdxoQ0NHtFX6f4+uRhwVrX/8hFCI4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB4033
X-Mailman-Approved-At: Thu, 13 Jul 2023 15:08:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o3j91ECzpMSvjhK6Ni4NGb1lVilXiKwFwAjfBY+q/F4=;
 b=EwrYEx25+X+1FIIvt6t4fS2qkw/cUOAaKDDPByE43YtpSSnmOXV6oo9RWTlG66LvfTOiGNexPZMb80JcAnNpjmp3xbUPi+Rnb4gV5cd1FqvcebxQK41WnwC+xZFQgj/isklPN09pllkRGR7SfzF467vH9+ybOAUqBUyvo/ye+D7PXrEFTYyH66KQv8Nxvpk55qshhvwbLR8iOP8vBocsPM4fSZxjB4CtP77X1eeH8h9aJAxE0tmAp4qm44hIRBlleCOfzjG7ePEIMRLVNBQF7ELtM32ADimRXm0l9VGf3qrOz9yuANKsZvRw9ZcqTx0jS1SDQP3p2JX+O1x0Ptk+7Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=EwrYEx25
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: [Intel-wired-lan] [PATCH net v1] i40e:Fix an NULL vs IS_ERR() bug
 for debugfs_create_dir()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Wang Ming <machel@vivo.com>, opensource.kernel@vivo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The debugfs_create_dir() function returns error pointers.
It never returns NULL. Most incorrect error checks were fixed,
but the one in i40e_dbg_init() was forgotten.

Fix the remaining error check.

Signed-off-by: Wang Ming <machel@vivo.com>

Fixes: 02e9c290814c ("i40e: debugfs interface")
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 9954493cd448..62497f5565c5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1839,7 +1839,7 @@ void i40e_dbg_pf_exit(struct i40e_pf *pf)
 void i40e_dbg_init(void)
 {
 	i40e_dbg_root = debugfs_create_dir(i40e_driver_name, NULL);
-	if (!i40e_dbg_root)
+	if (IS_ERR(i40e_dbg_root))
 		pr_info("init of debugfs failed\n");
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

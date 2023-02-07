Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5F568D9CE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 14:56:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18DC18124F;
	Tue,  7 Feb 2023 13:56:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18DC18124F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675778170;
	bh=ZT2HR9W8DacZLPnLLae9y90UEEcfZ90QbBZXkTLqgEs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dxjJXX4QsOItQpnQnSUi652D9uQXdnGKdXTCQYpU3GPxFAuEbm4ABU6qf6sHc3wtx
	 SPfDlrsN0DKtUIWULAN5b4ghjCSfdoQx3ZQIDa+JBVqgByjygsJef+yKl3I2J20N+l
	 5g4K/Biexma1gowQr2VUiJggpM9AR4B23Pe+tXU8UGfFKurnNCl0KIstND0m8UCUtr
	 Ve7XpWqkZhmhIXtjyeTnoOvRCspihtcfnHxcGinKqkYBNGmi7l0cubgFOm16VzU+6t
	 UEd0RtFxI8wukJKmGWCaLOTbkAulUJtu/9x900LCBXRc2C3R5t318rYwSEmQC6j/vN
	 ZucYoufgfhCuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8sGLXygxGoJx; Tue,  7 Feb 2023 13:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0695E80F2C;
	Tue,  7 Feb 2023 13:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0695E80F2C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52B481BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2CE660F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2CE660F4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qj2qAfQhBRte for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 13:55:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB89460F58
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2045.outbound.protection.outlook.com [40.107.7.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB89460F58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tw0TYAPApxagtVnRUaWswVFZJmEWCPNEW479i5tuZUtxdS6DtP9idYPIbkbO9lx/XDMlPVNCt/gzbYsdabfDmi0XLXVeAjsYPGSiJ+D7bj0qTunRRhuf2AEASCLECKPG+nrxG5bDBI/eFa5viHEgqwTR/MMke6aptE6w9224fRMeZHM/CH3bdKaT4zRvGdOXBGButHvMJehwIn21m422DPJs575mRrBPe7CJzOHq3u3cd5Wh/4uFlOHpHQnbv6vg5DWF9EOBSbDoChMRiBXcwzwa4BA1uPrtB+X7Z4fHM7HhIBNv4n+9EdzlvoeBDC4yVFheDtNrrKIkc2tjaSVhWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CP0C8XuxhRhjJ3S8DDhYJcQ3CWW3ebtd1z1t6Dke0iw=;
 b=ENemoPMaCI4IHOxdo6TkGA3fVUUNW8aUv9YMvn6DUSeOI9PmlOZta5+zEtbjTBi9TycwPyyHiHCiF494wThcvbUmyeHBM2Dp0cCsQ4+dboBzvV8nQ7iLQaiutRAi5N4Mt44M65eF7v9gk0n55YE4luwK0KNX5So85A8xTeEh2aIwZw2M6OQ3KuJT25QzxZJJiYlC961gQOV3mHUSyKuP4afB39K94k6MdveSk0iMPQKvcXTRWFPD9odMea2NSqcxg2DM6gFWAGyvuH6Q6ohOmJtgaEBYkWoSFL3JAYERmcvKix8W/pp0LifAZIyYqrlPpt09JVwXTUw2++ScbuWnkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8115.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 13:55:25 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 13:55:24 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Feb 2023 15:54:35 +0200
Message-Id: <20230207135440.1482856-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0023.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::15) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM9PR04MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: 61534432-ed8e-4701-a47b-08db0912f587
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UiYMPGAI2GuYzdNfgAa/Om9GtNwYwY3fycUGxCFqfxMYG60jaS8T31KSXvhIqEfIFoMVP5UslURYBQyEZecpzWCGk+PKLf1uPYLOKfNHDU4s9JMSStWpbY8CollYcbl6sZRVC6lUgDC2uzlxSz0qN9RYX4V5s20WSap9qCeS5kOYMAzsQ1CS85oGHdj+1a2xbSb618nu1s7fQ1a95UGrI83rnxj3RqAiAlsw3s/vbEIpXf4IVCB2wB2kSIuFuYKTSsGsq3Rhk3EE/eMPOYHSyeUUV+eBZFSsBYEFlREhCudSHe/aARSlzAPfNkxjftXM/QSYY/u28uuX4KPKhjF6KDMlQZ19QNScFqFg0OP8du+ufySinVWUGzoSoNbBbU22Y68BpI98AySc+gBXMqlarj0kfSqMCX5zXCvNHJqGo1OoCATGbuI/y2DtNcnSXp6G2+7ZOXdUuxMCvq39RwdSadfEdYYjX51JDXQ7kUAfnWs2BiJapQWXGxix8rClkw2ByfOvSdo7yMQaWgDo0a6Ey9mm4Q0Rt3lRHtE8rBEr+Q4lgQWF1WAXN/DikMO5V8HSBEHLB8gRhVP/0CpJKkXurKfhA+oeFjUBKafHwUydQsVqD37cIkDSkbOfXxGlYZl49Iq+3+L1GIXaStFt54PXUeJj4oUikRkZqipxO5P9m8Zg7xxSO/kSFf6EyRbkKuoYyv7xRGlmfVuMSjJ17WN/CQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(2906002)(8676002)(38350700002)(38100700002)(316002)(83380400001)(6916009)(66556008)(66476007)(8936002)(4326008)(41300700001)(44832011)(5660300002)(7416002)(66946007)(2616005)(6666004)(1076003)(6506007)(478600001)(6486002)(186003)(26005)(6512007)(86362001)(54906003)(52116002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8a4POQWROvwPHR66S5BgvLXQZatAkI5Qix7TU2W9F/6K3LjFq6zndx8rypqC?=
 =?us-ascii?Q?ms1E+tmL+DoTGoxZiRSTVFqbxN7ZSnx2272Kf5dBRBHlHo4GHsb3SmYq15qs?=
 =?us-ascii?Q?vDfiRHW/Qb1xLiqLKnSM9sUaFlLgTmxw2jZj3df6VRKh93zrjWFi+2X9qNVT?=
 =?us-ascii?Q?7DgJBiqYXbO9eSRA7W0K2xM1DXEtyvqAC2A+Q3JeBoCrTSPtkHzsaHx0o7aW?=
 =?us-ascii?Q?LVUB9vwLad1IFB/nbdUxmJrk6ugXUakDuEHbw+ToPc6O+eC8klujDD/FutnX?=
 =?us-ascii?Q?OymcFYvpGUHw3s242eNm+ZxWT5Ct2y1rNaUYPQkVi7UPqInQ9O5Cg/vQO3NA?=
 =?us-ascii?Q?nvE18iv7TAkpan/TyIGth6U4s1FhLb6UC2L8gl85chh8EKH1+zY5WPexDuXV?=
 =?us-ascii?Q?+qOJenxPd7TL2+E0C8Efnn8mdd8rGLMdPclGihv0g1VlbgQ7vVsQgChiLaXZ?=
 =?us-ascii?Q?e6SBIxhXpSdB/0Et4n/7BnWje8Z09d/2p4RoXtDF+swmg6lJ8cCho+IPmfSg?=
 =?us-ascii?Q?QSlhvPErVpBNGZHf32hxnQIYCytdAVdu4gHvSqhI0h6MwrAslaxk1DBZXoLR?=
 =?us-ascii?Q?9gPTTwv9/Hsg6/TaEEI0v4WtgbvYnxi5z1NBtfRcHHZFgo83VDkQO3ldANl8?=
 =?us-ascii?Q?vDwPXgrTw1ixNVaf2ElgChosz7f2M6CSI5IMK5uJqKi8K0PFM5lJf4H9Dau2?=
 =?us-ascii?Q?/C/WqTf1iCbOkSK33WhHv976hKUjjHikoT4BXGazM6dxY3lJRdkhXN2vRcy5?=
 =?us-ascii?Q?j8RDkkOUrJwKfW6OSF84kgiNzipIbI7ZLwRlUJw87XVd6kEbBm4VwonalqwH?=
 =?us-ascii?Q?n68tRpvbiIABKBieYtJau1uFWzdb1nSPhbTWmdEG34aDzQGTzjY+z5l9MyN6?=
 =?us-ascii?Q?/W6c0PeIe1+aPTaPzxfLlUHPcU8jRw65MUKdLKYqvlMYGsBSaf5zbiFWqMEq?=
 =?us-ascii?Q?2ZQIfbHQz4h7eUmxkWdRDlSLMbiTzNMbvvHJq1VKUkHtv4UyhsS6aLQ+THDJ?=
 =?us-ascii?Q?K6qhVJ9DKNxhIRwFZucLhuHYQsdjW+qdl9J1X8i10du4KNgA/EuK6ozRhAn/?=
 =?us-ascii?Q?McnpqaGJ/sHhmTSyJqQbARkPjhCFxFcHNl3Mnc5MziVhHSWDf7csWimuaGV8?=
 =?us-ascii?Q?ZRsCCBCMINKOIoE1iZT8+sU+S/kIF7YPU6Ly3XHZAFcT4FeOjckSiRV2kV9a?=
 =?us-ascii?Q?rSXdrw57h1GgY9QcEd6uB/NLGuFIFRqC2HpuRKTMwrPGhAKXTV2irCqavnrR?=
 =?us-ascii?Q?6ZktEynAdc/WC13mGLBULfNNhhIQN4DddAXqHF1uxaurvDqx4n7aWyd3yYha?=
 =?us-ascii?Q?jpC+HTw/4jRDv8VQETbQXUb8FdyL1eZml+LG7krSdj0ELRIefoIO3yG3KhIR?=
 =?us-ascii?Q?KMHcalO6Q8u4bpwqiNkTkE0y5CaNPJiAr5tzFPsI2dGUkSW0qP1Aaz7eB+oU?=
 =?us-ascii?Q?zZiszvPqt4pjz46AXSCBsElufzjq9P+WzwIKBBPCgiY1e+RoztQdmjDNPju9?=
 =?us-ascii?Q?b/2W774piu126iDVtM6Jlw+bQYQNPH5PC4G9kcBi9q50O9HXrVhGs3MKLHir?=
 =?us-ascii?Q?Nx+vjAlfAtRru+IQLWdjN8V0aKmAWK+kblCopuMXlXF8+nKT9XL9fTyXg7h9?=
 =?us-ascii?Q?Hw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61534432-ed8e-4701-a47b-08db0912f587
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 13:55:24.0175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aKYW4eNbBQf2hAynvO61MegsDnGtr6FylIBM8XpEBHzzLxS8lQQeHsLMitpwYvRiE/9jusCduKWMy+bhfHwCTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CP0C8XuxhRhjJ3S8DDhYJcQ3CWW3ebtd1z1t6Dke0iw=;
 b=NnmDgqkL73qfZdMBNlUnTeJD3ihyU+SGHJY+ICXgpzxgm/W+vUNUwtT9YYza4cjXh15F7wAaqN9bgIWRV6+3odYB4sdN3QMkFNKijR7Fdj+bZa7X1+t7xaMI6BV1fmXvvQ4gcLnj6fp5T0ypOn9BgY1dkmbc76tcDV907hvDAng=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=NnmDgqkL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 10/15] net/sched: make stab
 available before ops->init() call
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
Cc: Jiri Pirko <jiri@resnulli.us>, intel-wired-lan@lists.osuosl.org,
 Kurt Kanzenbach <kurt@linutronix.de>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some qdiscs like taprio turn out to be actually pretty reliant on a well
configured stab, to not underestimate the skb transmission time (by
properly accounting for L1 overhead).

In a future change, taprio will need the stab, if configured by the
user, to be available at ops->init() time. It will become even more
important in upcoming work, when the overhead will be used for the
queueMaxSDU calculation that is passed to an offloading driver.

However, rcu_assign_pointer(sch->stab, stab) is called right after
ops->init(), making it unavailable, and I don't really see a good reason
for that.

Move it earlier, which nicely seems to simplify the error handling path
as well.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
v1->v2: none

 net/sched/sch_api.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/net/sched/sch_api.c b/net/sched/sch_api.c
index c14018a8052c..e9780631b5b5 100644
--- a/net/sched/sch_api.c
+++ b/net/sched/sch_api.c
@@ -1282,12 +1282,6 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
 	if (err)
 		goto err_out3;
 
-	if (ops->init) {
-		err = ops->init(sch, tca[TCA_OPTIONS], extack);
-		if (err != 0)
-			goto err_out5;
-	}
-
 	if (tca[TCA_STAB]) {
 		stab = qdisc_get_stab(tca[TCA_STAB], extack);
 		if (IS_ERR(stab)) {
@@ -1296,11 +1290,18 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
 		}
 		rcu_assign_pointer(sch->stab, stab);
 	}
+
+	if (ops->init) {
+		err = ops->init(sch, tca[TCA_OPTIONS], extack);
+		if (err != 0)
+			goto err_out5;
+	}
+
 	if (tca[TCA_RATE]) {
 		err = -EOPNOTSUPP;
 		if (sch->flags & TCQ_F_MQROOT) {
 			NL_SET_ERR_MSG(extack, "Cannot attach rate estimator to a multi-queue root qdisc");
-			goto err_out4;
+			goto err_out5;
 		}
 
 		err = gen_new_estimator(&sch->bstats,
@@ -1311,7 +1312,7 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
 					tca[TCA_RATE]);
 		if (err) {
 			NL_SET_ERR_MSG(extack, "Failed to generate new estimator");
-			goto err_out4;
+			goto err_out5;
 		}
 	}
 
@@ -1321,6 +1322,8 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
 	return sch;
 
 err_out5:
+	qdisc_put_stab(rtnl_dereference(sch->stab));
+err_out4:
 	/* ops->init() failed, we call ->destroy() like qdisc_create_dflt() */
 	if (ops->destroy)
 		ops->destroy(sch);
@@ -1332,16 +1335,6 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
 err_out:
 	*errp = err;
 	return NULL;
-
-err_out4:
-	/*
-	 * Any broken qdiscs that would require a ops->reset() here?
-	 * The qdisc was never in action so it shouldn't be necessary.
-	 */
-	qdisc_put_stab(rtnl_dereference(sch->stab));
-	if (ops->destroy)
-		ops->destroy(sch);
-	goto err_out3;
 }
 
 static int qdisc_change(struct Qdisc *sch, struct nlattr **tca,
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

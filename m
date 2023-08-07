Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FC2772EFF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 21:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC3F380DC6;
	Mon,  7 Aug 2023 19:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC3F380DC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691437111;
	bh=E+nSYi1xf12K+deiejHW20B1LhPm1D9FwMp9Sagmyps=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rFokDvuCCfirMc+1NMK4cmJbG5U1h/PlgQ17VnQA2taURAaB7rDSVyUP4fZM6vbXi
	 AKNI9IEyseY02ATQRN+WFOuJBWrgVvmjYy1kYevVlf9DAGGpY04bS81RFKmLWqhemF
	 cqmyuYJLlLRJAqncHg7J3gWc7jxRtVcHOAd9TZvrk/S7DFj9/1kTNs1rM2JGzB7tFT
	 pBmtctzU3NSh9zSdIqhEQF9/ru1XawJd0R1k2GgeA8mC+0q3DgmbX/vY/OnIUeR2mb
	 4WPDroH57NFSp19K+OuM83TZ9m3L3wN2168xeEbz/HQ41r7kDoAHiCm7M0pt+mkiMh
	 EdOE6UZ4I26Uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eyx89pz_REVc; Mon,  7 Aug 2023 19:38:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B820780AEA;
	Mon,  7 Aug 2023 19:38:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B820780AEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C30641BF284
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D10640131
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D10640131
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMU0dbXPPDPZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 19:37:48 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2077.outbound.protection.outlook.com [40.107.104.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D079F404A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D079F404A6
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YO9mfXrF4vBKoVKDSym9u0ZdbitkgkAvsKyqGRLdQPIuV0T3XxJkEHcTF+PEKkATvXOM3KS3TfhA7TIle4oHbJkLivujRedfhuAS9loRbI+VUe/CPSKtUDSTmmywkkjfZPIfcx03n4N9TJiRIovEFC63atz2zSDh1C00UReQmQBSduhz5WBVi8q20Kfl7KTi9BxX+xpwYh9FyvV94KlPBtD5apEiwxkGyn3QraikPyQppiv6JELKmWY4ReahhwMTsSoJ14FSt5ALLjTAsDA0leLDGgHHW43IuoZIpMSOIat2PeIe5rbrtchg/oX+HpiyqAdL+G1MoL1eL9qDLidoKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A3xMrLEX1BqcLSxrITZlrQvBSaLNXcOGJHw9v5sDdBY=;
 b=LBBtWaevY0p5yAOIsGAMIO5emXWdgwIkEzsMc+EKZaIDmLYuUpMi4n0zNBFjeSMtwEAe2lMqRiNfC8SGdrpyUof4Rnhz4ijVS/iXk9C0VyMsBcIcxbew0sokKDr5YN3brEsXVU156/DBt3TQLJfrBdNWW+PrdfrWvjtJp8vIXDLzdX+WLz5Kl6bwra2lRq1sliQs6n55XnGtYLtfr+6dQxY2QQav20/HEoxyd9GvfHArVAkUUDAyyc2+vpZ6dRzXXqoISUgzIacnS/Jiv2haLrmJl/H9cUhXPFTsY7V51nmTE027oy/JQ5mGu5D6XiWWTQf8Va2OYkRVh18lEGjRVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB9451.eurprd04.prod.outlook.com (2603:10a6:10:368::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 19:37:45 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 19:37:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Aug 2023 22:33:24 +0300
Message-Id: <20230807193324.4128292-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
References: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR01CA0136.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::41) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB9451:EE_
X-MS-Office365-Filtering-Correlation-Id: f9d84cc8-35d7-4013-b879-08db977dc600
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JSVevBwQgYa69oIV7J9hZ4EtXSDFcHR+CEqSYHBgVNR0FX/pIogbVIAz4zjaRT9uCqk2JLduXwFRVSnDDYVPq2E5e8Wpq9MNDazoceJJFi2Rj8CXK2CNhPaLMjC+J5GmVl4T9dc53rWX3P9vBuPyDfIIgtouFmjifgSKZMBSf1bE20HAOn8SNhEJ/pM6YcXeAtsypplAHoqHhfk7kFC4WJ4wVSpuaRiFSzX4D6aor2ddE1+4hE+8BqmMH5mDhxBCxqu1igyOzHoCKu5oQTh6isksFxfW2+7CcxbwwiAjWVXI5p2gYv3EhDd0ja2bYgV3CHPYz3eW/XO7VkUlEFpyqjkzUUw4x39HgodY64cG80879REDICRFX8E3VaorMsM376F7hrUa9nXEvEaISowuBS3vYidvR7eTrYpQGaz4x6xSQ9TSmTAX1TvDuIEttcMs6sgXv6XofjnqQGIFhTL/4hThBsLahOmzDb5I3h1GdPRXSFpj5tWb5425ZM/tZTGJ5i/bwCdHSeajIy/iZWb/oEHCZdPb/CK590WfFRMUMXWRYTq0M4/6NypeOCWAwE1fEVOWfq4QGhE1DH8Coh3c1UkcPi9f8YpybuI9lxWcu9Ixk9jIo6PKrTVckPqLT8Lf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(186006)(1800799003)(451199021)(15650500001)(1076003)(41300700001)(26005)(2906002)(5660300002)(44832011)(83380400001)(7416002)(8676002)(8936002)(2616005)(6916009)(86362001)(316002)(6506007)(54906003)(38350700002)(38100700002)(6486002)(66476007)(66556008)(478600001)(52116002)(66946007)(6666004)(6512007)(4326008)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+HABeMmt2QZsAS1xllHzQmFQEv+VIkqz1IRk+A8UkTAYtLrv2VJY/Lp5w6N6?=
 =?us-ascii?Q?Q41AkL9kt23YQJgwO5LJUqUUnTb8EG8vLNR2qF+eam01Oy7fYh22Jx4yP5t9?=
 =?us-ascii?Q?YoPfgyFJ/C7YTxdC6H8sg+MoyK9Tl5mlB5TacXwIufJs+QfayE4x8a676b9n?=
 =?us-ascii?Q?xinz4KHdvkmXI2BLB70EVlJ4BQxaChiRR0HZmFathZIeDCB0YM418GeasoiB?=
 =?us-ascii?Q?y0RZ/2KICXXp+dZtsyj1TBsvwKRSV8CLTu9M+yddzZL3C7/hkbdZnpCQgYIT?=
 =?us-ascii?Q?557z1lbKDLbo8MTPaHvU1h4urXqq3LhzgbWBR/G/pwa/QV+mivsPPL2Tbh+3?=
 =?us-ascii?Q?II+KSzpJekU62lAuy/eLXvoNtrmx3TEqlRbpR4zX32ag4VReOPDXDFlcGWi9?=
 =?us-ascii?Q?iO7S6naVhJQMxLcT/i1cTIBbF/MMkzmbx8PKrqLXoAFl0rFbuiTjjGYYyvRi?=
 =?us-ascii?Q?paLdAaL4HZYWmKMYIYxQ1k+8mzG30CVF4YfE0I+aGoEx1Ti7SmCBZxWqJlgB?=
 =?us-ascii?Q?OeoVvdbFjHlVCGN29TUyNk9secVCTEHHwV0KeaxDSAakREjVycFoK+rkIFnC?=
 =?us-ascii?Q?wge3gE9rLy7ePruBofPzUkzfg/vO6WyMKN9x5y/1EmO7ojWaAaFgb55WvbvH?=
 =?us-ascii?Q?2nYpms0S7LT2yGbkmMZWYFL8a1L4/Bq6edNwYKaD/nDZqZCIYCuz/SmM0t+h?=
 =?us-ascii?Q?L1OjoFlJq829iOjiig3t1HMW9vEMgAtM27kPOhUdozMcdeDkairASJHRoCYm?=
 =?us-ascii?Q?53S2xNWbsY0yBCeq87PKYl/Pi+3Ko+hvM9VCv9XAu3AwGwtJpfmsiret4OiS?=
 =?us-ascii?Q?HcwQt+BUrUyxVACFB8/RCGVGVAr1l7499kma56zhAuGLFp2dPe+zoo8Sbe78?=
 =?us-ascii?Q?cBib1Z+SoCEF8o1ExIZddYT5CZTF35tXBjGbk2OoKHpTpeJuryP9Zp5IjLcF?=
 =?us-ascii?Q?ItOmP1wF/qiIVuys4i0jTRaxeNhAt0VO2mx82GyjXeMlkg1EzZiPeAB8Ku7N?=
 =?us-ascii?Q?XH40OTMl/KG+cPrDFV7j927eWcgCLPg6+nQfVXcWA1/p4vOGkp3xz0VwxDly?=
 =?us-ascii?Q?aseaw63OvGFK6FqBs6WA2C4JmHf9i6x/M0KguVttGJDq/S1tvgpmjpqm47Xp?=
 =?us-ascii?Q?dzBa4EKl80L+JN7Cb1Xf3nhni18oDQJA9iSKgjYe/uZ/aSlxSRcJe59iaULn?=
 =?us-ascii?Q?HYAof+2hrvdRD45sb7tcG9BZxstHTnHIHAFPCi/BDhBs6Mmh8+EYWgv1ON0E?=
 =?us-ascii?Q?UyqqP7lMYAW3Xjn6LHeDUyxPlb0wg379bvw3wVcA1CMd6o5qLHPEqJ+7RFs+?=
 =?us-ascii?Q?pQp9nxsWiNZ/DsSFa2aRkPKK7So4+bXaNvarhHxkOYslen/TnVqpnelBrsZd?=
 =?us-ascii?Q?Xv7wdEKnjX7+BI1mKnGOCO3lhAVMsOcLw8OYd83pjHgWzunKvpicPvor9B8Z?=
 =?us-ascii?Q?E//C0WWL+PGFPljsET/6ZkZFn820vwv8tDm1swUpNVkkdK9nhtUxSl/mqtQb?=
 =?us-ascii?Q?RQ+oy+2P2rUOam/5tuYMfpnvuEzzLCe7Imra81flMlMJ3sWmIRSFZD5tw1Yl?=
 =?us-ascii?Q?t1M8gGGHDfYmvmhfYeLG0TnpEFjOQMNrMoGoDBIwDfT30jNR1MDwOyUjVbPL?=
 =?us-ascii?Q?rw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9d84cc8-35d7-4013-b879-08db977dc600
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 19:37:45.3584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tb8k29buXQruybpWREu5pL7/sbnmoWmCU42WpU2Z40n9ELoTHalOGww7QaYqTqiZdiZRRfdLZtHGuSdI64kDow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9451
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A3xMrLEX1BqcLSxrITZlrQvBSaLNXcOGJHw9v5sDdBY=;
 b=BMBeZZVc23cxdA8pc+GB01SLuQdCJJPtO5bSQ2wsSrpKbnTfnGu0EhkwT/8zidVgozdCuh+zBOHQX4QqDyIF16EZwjhNrA4KUL9Dw+6WVvc6UOX51+Appt5V/5ibxh5SDKhewpUFhrEVoDurtnuOjOKz4fFsIHc0qxCqBjToKMs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=BMBeZZVc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v4 net-next 11/11] selftests/tc-testing:
 verify that a qdisc can be grafted onto a taprio class
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The reason behind commit af7b29b1deaa ("Revert "net/sched: taprio: make
qdisc_leaf() see the per-netdev-queue pfifo child qdiscs"") was that the
patch it reverted caused a crash when attaching a CBS shaper to one of
the taprio classes. Prevent that from happening again by adding a test
case for it, which now passes correctly in both offload and software
modes.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Pedro Tammela <pctammela@mojatatu.com>
---
v3->v4: none
v2->v3: fix expected output for test 6a83 (missing "refcnt 2")
v1->v2: patch is new

 .../tc-testing/tc-tests/qdiscs/taprio.json    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
index f475967c509f..0599635c4bc6 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
@@ -206,5 +206,55 @@
             "$TC qdisc del dev $ETH root",
             "echo \"1\" > /sys/bus/netdevsim/del_device"
         ]
+    },
+    {
+        "id": "a7bf",
+        "name": "Graft cbs as child of software taprio",
+        "category": [
+            "qdisc",
+            "taprio",
+            "cbs"
+        ],
+        "plugins": {
+            "requires": "nsPlugin"
+        },
+        "setup": [
+            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
+            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI"
+        ],
+        "cmdUnderTest": "$TC qdisc replace dev $ETH handle 8002: parent 8001:8 cbs idleslope 20000 sendslope -980000 hicredit 30 locredit -1470",
+        "expExitCode": "0",
+        "verifyCmd": "$TC -d qdisc show dev $ETH",
+        "matchPattern": "qdisc cbs 8002: parent 8001:8 hicredit 30 locredit -1470 sendslope -980000 idleslope 20000 offload 0",
+        "matchCount": "1",
+        "teardown": [
+            "$TC qdisc del dev $ETH root",
+            "echo \"1\" > /sys/bus/netdevsim/del_device"
+        ]
+    },
+    {
+        "id": "6a83",
+        "name": "Graft cbs as child of offloaded taprio",
+        "category": [
+            "qdisc",
+            "taprio",
+            "cbs"
+        ],
+        "plugins": {
+            "requires": "nsPlugin"
+        },
+        "setup": [
+            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
+            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 flags 0x2"
+        ],
+        "cmdUnderTest": "$TC qdisc replace dev $ETH handle 8002: parent 8001:8 cbs idleslope 20000 sendslope -980000 hicredit 30 locredit -1470",
+        "expExitCode": "0",
+        "verifyCmd": "$TC -d qdisc show dev $ETH",
+        "matchPattern": "qdisc cbs 8002: parent 8001:8 refcnt 2 hicredit 30 locredit -1470 sendslope -980000 idleslope 20000 offload 0",
+        "matchCount": "1",
+        "teardown": [
+            "$TC qdisc del dev $ETH root",
+            "echo \"1\" > /sys/bus/netdevsim/del_device"
+        ]
     }
 ]
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

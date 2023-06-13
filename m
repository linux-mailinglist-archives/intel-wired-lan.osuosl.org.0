Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B4272EE6A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 23:56:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B669C418B3;
	Tue, 13 Jun 2023 21:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B669C418B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686693371;
	bh=dCaWg9rgffSKAuXodTgyOSWXh7at59c9UxEif8CtJcQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wTKRzlo01FDfTW7uMTKij/oiqREJnouKS9fjNfA38trmg8LTPy+zuE56rfeRpu125
	 1X9A5gRqAG36gH5pTbWLXjwcglE4T1VBLlnr1behmOMa/8rIxXgV5AIQQKw/qw2wbd
	 LYatspjNFGMC/uj4oSqmv8cHua6OqeQURUKHI054dnAQeyAViV2XVXykYfPvpUwI3+
	 9GxsnXUp9dQ74ieYt3sAkB3RlyxPKMEGjKeFPgQmiqr3cIM4TmIy085siftftg5rUt
	 Mly6E/Jjycqk64XmoSGEtRn+IzJ9vd4baNRk8FxAJ+/0k6o/FBgJfb7BhOa7CT9Ywo
	 0zHAF7qr+qFeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JC8T5Y2mlvtF; Tue, 13 Jun 2023 21:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A53CA40944;
	Tue, 13 Jun 2023 21:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A53CA40944
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1FB71BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C10D40BC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C10D40BC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2CvcvMuUL8o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 21:55:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 725F9400FD
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 725F9400FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 21:55:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gEoL2H6YnxnQ7SPQ4y5a6PaHfWp42EEQFGID22V1PsCd0o4LBPgwtgIiIg32nu+V1l477ePFfWTKOqV7EAXarg9L0wiVZ9PKwqegmsjoEe/yQ6X7FW5zcsC04or13NCk+QenYlyqjNaBo56jrWVNGYg3YpmnEjh4Kh5EKYOuTmEFT0rNt6ceKX7ZsVlwrUrVRzMS8ixZt/2/oQdhZEK9IP6yCDMmCVRGgy8wCY7oU91BjwmGFx5MNf3+4I3O7V1CLGTDfqgpfsD3TlcJgl2rjVnvKGl2LpKnMkVfZoGxxNROCA5idPsGAsY2/NxrwLXWRWabCetkL+IMJ4tAiUlEsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MX3iB/nahx7RwwciSfwiW96dMRT0Lo9yFXu/sqQl0rs=;
 b=ghfaEqGnO7rdmxGyCCWDbWFFLHMvLmeuwKmRth3HxOdHS3ibeWzut3QriIt3n2kkE7BbrgXMhkOaHl5Ls1K3xBLkXJ47pc8DurEZutUulHEGDEsVUcMsas0QPH2sC43UFfciK2jcWkwa0AJ3cLEujJfO4cRK9NdBsSjiGJ9Ua/+EukMLNejt3YAuBUISMHDTfwtWem/kT2PyRlMTMWbugIKoYAU/VRHcZqiscE71H3D9W7B15al3kvYdLrGf7UbtcbjY5rf17SclX1Pv0QYiPidASpORZkHZFSDI4TLbDAFil/YCHTFS9WZFJq3LacGkSNHf5YBpxtYcQOx4YR67nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Tue, 13 Jun
 2023 21:55:01 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.045; Tue, 13 Jun 2023
 21:55:01 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 00:54:39 +0300
Message-Id: <20230613215440.2465708-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR04CA0044.eurprd04.prod.outlook.com
 (2603:10a6:208:1::21) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a5aac3d-c2d8-4caa-3e33-08db6c58d661
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CYdYNeuTfwLE7v0F5SEQAjBJRZ+agrq8J618BpPZWibA1bHwTQSwebLXAO4kG/tPGyrSz9OCxyyARFUayuVktVdIOezAus/ys662lQipCXnErZS3ccaO9scITXGxZDB/JcdtJK4KTwv2lSlV6n1VM3F2VVtVr5dEih3zlnf5MgzIqsedokxYe4Ln5xrG2pHQ+7XNj+WprjYlup5FW7rJPE/7QbnoEVPxwkkc+FuEjZ7lx4BkfvtJQldSGFuY7AD/18ZwbwArcT5j01YaV9BJhw+kLW9M16v36WYmdKEXtuG08oKH2R6HaetQjha8YkbrFPG4WqfoniZIjvXIbbz+EGvXfZ69Cal9JsqPocJeMj2HdvxGm0jMwDRNIzQG+uc7dsA1jxmtLiJE3g4zT2WtEil2cpPht5Of+wSDIov69v3LORSoPA4LldcxN5QQBJez3ST1nBW5LBGXi0/7vnMoI8b2U9TPHWP+ahVtNmSqZm6vjzu5dJRYe8X6nZZVupmZlAd+38DVmsd91AyCypVo6SeTc1DEZ9wwBv2kxram8B3m/AjlCSlTkSkdWHDL2O+EToL19rsbncjbiIaK6FYi19XLt7hZXJ1AaXoz3dBHHg/LYW7XgL3vCAAHrcMuU7Mi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199021)(6916009)(66946007)(4326008)(66556008)(36756003)(186003)(54906003)(478600001)(2616005)(2906002)(66476007)(8676002)(6666004)(316002)(41300700001)(86362001)(6486002)(7416002)(6506007)(1076003)(8936002)(44832011)(83380400001)(26005)(5660300002)(38100700002)(52116002)(38350700002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vw/jbRxYrOie2wrFnZiewiyupJOMN6SsPj3LDTf4Y2VCUoDArtkd1SkiwWau?=
 =?us-ascii?Q?2WMb3HFoGWV2UfL0y+Eu0RrqepDGuVYqz1GmykwqN4XIha4Y3SFGTcFkTd/i?=
 =?us-ascii?Q?EvJYmp3MJENeFfmfBgWv2mf4FvTAeHf4ffJf3iL+FLSnuvaoG9UE8PxKxZxA?=
 =?us-ascii?Q?fi0W1T/RRWGXK5apW2eKxDrvAYh6FUZWJvXX+3/ceoNZrXzxHX7//7pbTnWH?=
 =?us-ascii?Q?GkyyTO1PxsmdQr/AyhNrNMxm2KBoF4nY50t01/vHhYxIsU+TWS6SpEEf2nZm?=
 =?us-ascii?Q?SOrOmrq/aZuJWhW4QrZFtRWrmDZMyck3lq8SuulkGaaKe7YQYp+6am+GjBNX?=
 =?us-ascii?Q?oYAcKATQJU56R1bcWQbf5peT+GoBQoe+B74HdcKVG7SDCmUvSIx71fGbG7se?=
 =?us-ascii?Q?0LBswGHGavqC0xzB5BIdeBd3+IFd1FK7rUUC9BBRxOyQog/z3Oyniet2F5Gj?=
 =?us-ascii?Q?0WOK19q3T1dDBH1axlL2OgyRNQoU6ADszYKiCSQx1Hj5MZt0C3Q3e47TNoOP?=
 =?us-ascii?Q?Q0kSjpmxKzvzQ5XAhWLBtWky8tEILX3m53G+WAA4Ujq6LlSxMrfF2Ch8dlXb?=
 =?us-ascii?Q?1sZ98oKNXqSAx0Vhbj2AhWcZjiU/x+hVRLR+hTY99b9QACdojgiWou5gH3zh?=
 =?us-ascii?Q?+DouzdJPVWS7eMqQGfdIFIhxf8aJWwHy/BgCJgn7tPqnunQCJdeXbMKxpPem?=
 =?us-ascii?Q?/CWJRLylfFcd0p0/eMPltKs3p80CpL3pFdj+GAx/8fUfMWeOa3Ft6yth7N09?=
 =?us-ascii?Q?1rws4hcuTyNnsaW2YAkU2cayeOsQUBjidxI9noyw6zyFRosWpjykOnp3GCKo?=
 =?us-ascii?Q?QXtCiHPw3x5WFNz3/k1P9hVRKjMsKi/1EuXiJY31U+a7Zq390fEYSy7LPEtQ?=
 =?us-ascii?Q?xLtHuMaaWRTlr+Gpcj2Hem1qb+Zxzp0dnQRpwzZMpwW3aw246zZZTHhQaRaW?=
 =?us-ascii?Q?dd40m9O7QYbUnhG8rJ8AsxaulOeaNke5ptuby+8VocLgr0SB8kFuXBPO4gaR?=
 =?us-ascii?Q?2ZV52b9L1IJfehNg4lAlMZutSLNHFPKzhfN2iDuov9RxbwdG6SwLQCUryNzl?=
 =?us-ascii?Q?pf5CjrJDkMth3Y2kd2+spd58+7dZ7BmuI8kIeJE/BnRq0N81UK5+sJGg/k2J?=
 =?us-ascii?Q?BWZysRihbDBPo/4knR9Bc/sILNlbWY4XnSY5rXaJ0Qm1Lvmfc1DlLs3BhGpk?=
 =?us-ascii?Q?KCAFzCXFwX7F82cc0VLXFWg7x9HrSv9207/w9AI0l98ELWB/7TBJgD2W9mN0?=
 =?us-ascii?Q?Do5nM7YSuxCAdAgnW06CSMtAoOJWHyuiVJeWRVvy81iJ/jCD22qTgWbdALYn?=
 =?us-ascii?Q?iHP+s/G72L+UaW4oLEhfMXub3eNSEpTaidpmGthjJ2VPvgTa6y8s+ZmYcxeK?=
 =?us-ascii?Q?LO8YmlXmy9z4j3wi/XwiVbCoDdLTMkzmv3WIimRtLpkx0Ecc8JQcTN44G+Lh?=
 =?us-ascii?Q?htK5sLfLVYfcPpDV4kryuKDKxDJdoEAXLp5gIxpeX71hV87uO/MDi8mBUhth?=
 =?us-ascii?Q?H4faZqCTG7GSRO5Q5ktWNvy+VOdaUiynEuEU4BTLchFvLghB8mEmvhsXrqFs?=
 =?us-ascii?Q?ogwfSfJkfXjwkKESo/FA5GRNtDI6514IWsmJYSrel1cv3lti95Ww+ylz9nf2?=
 =?us-ascii?Q?Fw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a5aac3d-c2d8-4caa-3e33-08db6c58d661
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 21:55:01.4445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6cmw/BtO9ZFeisiC0FfxmQ/vBJry26vr6N1aOuDLYPQKIhey9wc4zbxewED07TQTu5txLUPW+C6xd9yAwxaNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MX3iB/nahx7RwwciSfwiW96dMRT0Lo9yFXu/sqQl0rs=;
 b=bGJSCvtDuCnbWacTEJo1Q8QAKGg73C3CZFNvhABmZbGKV/kTkxZysCmId4xGVRWcSWaxjLj4L1N6wlCcHU1vHOpgfiPHfnXYyAIv3479Sdvdenudke3AoAfGwaxk+zbfRqUngltgejECa25nyR1C9hKxOTyw4SWQ6kBEgTdr/gA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=bGJSCvtD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 8/9] selftests/tc-testing:
 test that taprio can only be attached as root
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

Check that the "Can only be attached as root qdisc" error message from
taprio is effective by attempting to attach it to a class of another
taprio qdisc. That operation should fail.

In the bug that was squashed by change "net/sched: taprio: try again to
report q->qdiscs[] to qdisc_leaf()", grafting a child taprio to a root
software taprio would be misinterpreted as a change() to the root
taprio. Catch this by looking at whether the base-time of the root
taprio has changed to follow the base-time of the child taprio,
something which should have absolutely never happened assuming correct
semantics.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: patch is new

 .../tc-testing/tc-tests/qdiscs/taprio.json    | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
index a44455372646..58d4d97f4499 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
@@ -131,5 +131,53 @@
         "teardown": [
             "echo \"1\" > /sys/bus/netdevsim/del_device"
         ]
+    },
+    {
+        "id": "39b4",
+        "name": "Reject grafting taprio as child qdisc of software taprio",
+        "category": [
+            "qdisc",
+            "taprio"
+        ],
+        "plugins": {
+            "requires": "nsPlugin"
+        },
+        "setup": [
+            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
+            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI"
+        ],
+        "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI",
+        "expExitCode": "2",
+        "verifyCmd": "$TC -j qdisc show dev $ETH root | jq '.[].options.base_time'",
+        "matchPattern": "0",
+        "matchCount": "1",
+        "teardown": [
+            "$TC qdisc del dev $ETH root",
+            "echo \"1\" > /sys/bus/netdevsim/del_device"
+        ]
+    },
+    {
+        "id": "e8a1",
+        "name": "Reject grafting taprio as child qdisc of offloaded taprio",
+        "category": [
+            "qdisc",
+            "taprio"
+        ],
+        "plugins": {
+            "requires": "nsPlugin"
+        },
+        "setup": [
+            "echo \"1 1 8\" > /sys/bus/netdevsim/new_device",
+            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 flags 0x2"
+        ],
+        "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 flags 0x2",
+        "expExitCode": "2",
+        "verifyCmd": "$TC -j qdisc show dev $ETH root | jq '.[].options.base_time'",
+        "matchPattern": "0",
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

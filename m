Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2FC76BC61
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F6116110D;
	Tue,  1 Aug 2023 18:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F6116110D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690914346;
	bh=INZsQc5YWDWHWri+qLvLg/X4jwt0SdivYr56YIIY66s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lA4WiZ3IQoAXkYleG9eQvSUjCaZjsr7iq+6YngW2lRw1MLBEQ6V5aQZKBeQydMqmF
	 ur+Hk4vUyhe14hu/Rbi9n9obpF0SfzCZDbPhxUV3nsOa3cOVedBLNqZHh7I19oeSPz
	 91KkfTXWrthVoawYlLraQwngpe28k+iEBOhiu2ovIbI4BRMH58rvKtAsXbMJJDVjCr
	 bWsxejYxdgg+TbIBjIVv3fZVWMsEGaePVsPruYrzvykz/bY2+u9J+ELEIQ5m8D9fiE
	 83hOr6S0fvGVo1w+pBSTjQqUc0hzj30d0CySNjeS6mpJOO4dKsKiMoK3nvGQDgDlmK
	 N4aOE3zsSbBzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T53dvwM-7Cni; Tue,  1 Aug 2023 18:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57C3D6072A;
	Tue,  1 Aug 2023 18:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57C3D6072A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EE0B1BF360
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FDDB40524
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FDDB40524
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DraFA8R6iYCy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:24:58 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2048.outbound.protection.outlook.com [40.107.104.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BADB400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BADB400C5
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTl0D2YE40DKwCxyx0cNKcBdTUshdX9fy47eQzLdIq1pBSf5Lel9og8W0HflrmjoASQJBn0OJ1D7w3G71LX55lreh3oOZEzYol7C1KspzzCXyReCt7O/TlK/y2p46HSX+EOzl0mOGyujJG2vby/m2jY6VAal8GiKNUK0V8Gl2RjVja/0DvdRbAqxu/i1KkyjtWUpa734ObcFFJXNkBMlgiqPSf/hwCItFaU2hKSgv+aCQONAo51KUkkGjb6O3415G9wM3ZtalDSbnTR2LpoJlsXE1bmAEHHInp5qjoOSc1Du1+EoCzKuSRsRQLlPubta6OBuF0F67pYZZ3gggv55EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FJOJWLJJSzjR9MCfwYjq0sWsA+KZ3LomuYdZ+8LGZeA=;
 b=H9jBv1gy+fZwddNfSKECAG6IVKaFXHHJ7R6y59rUMo4KJBeIMSo2uv/r/yvf9tyyRPI8uifRYplQolfUqaSjmxFyM02hyCtpIBQtdT3fuIIRwOqDiBM4EUTodh57C75aSM6r8S+RulyayrNyhdJ+vDfM4Teg/a4BI1ftuSCKv0dmuYw/eNaTyRs9mp2C53frwgDHS8YoS7fdiCFtYbA4YXwBuEBTlF/tHmcr6C5jBFfnaumoTrUV6MMR55pmBdJN/vEqt+6cTCls93Buag5TJWvnEgbs5nxi8rG27fJOWI02N2sNk8DVsr2757Z/McyugbPP2FWQia3VoWLKwOnCCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8796.eurprd04.prod.outlook.com (2603:10a6:20b:40b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Tue, 1 Aug
 2023 18:24:55 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.045; Tue, 1 Aug 2023
 18:24:55 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Aug 2023 21:24:21 +0300
Message-Id: <20230801182421.1997560-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0030.eurprd03.prod.outlook.com
 (2603:10a6:208:14::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8796:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bebd2f7-5672-4c3a-add3-08db92bc9aff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +fBg7O92Ub3d9UCAoLNyrZ+GRLPsrdw4Kxv13Kp+IOx3aR8LuJGtC+p95Ac3vQ/rYHfPHYZXe17Evs2riHh0sNWBVhebtOl+cq4NG0f3EWfTZS/bhB4vB9yCSp9NTWMQdqAAcs3Ch/9jcvCQll9UU198fmZ3BVR7TgsYeg00Ufcg6b+qbAcnMPTuek//WJysvhwICm2yuZsuMfXzs7dCqTAyiZpXKeYox95usF2TkpHfzwes+XImrScufuF1c8qoZITgNqdn5Cu7VxFxl/WRydA2lHgQoCShnQ+aHHC6QjEzSa4X1Wwb4T+EGa6qvrXlr/n3pdaB6CuLDahUUZ9B3wtht7+vTFcWPOJfXdFt0nSLt/v8Umr6zCt8rn820qrQQYKOR4sao0WZSqybEyARNWDFHy8xpl5O3KEiHS9DPua1WZ1LSpsCDatChKNyZCQFvQhhnWmh+AUCRe18KBHGPid7JTg4SDP/mFn4YbV7XA3OE/HB0pIbFD3xoLim5WnnicoshzX4m2YU97+G1XVQ7qfj+D/ij8u+V46ZlWnJzLEIwdKvsnzYVBNdrnkNi4oGM8XUaguruJU22EXnRkheB1JjG0qdw8kNx6WnWdA3NiPg4hjU1nZDeA3tOsCNgSJl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(136003)(346002)(39860400002)(396003)(376002)(451199021)(15650500001)(38350700002)(2906002)(1076003)(6506007)(26005)(186003)(38100700002)(52116002)(316002)(83380400001)(2616005)(5660300002)(66946007)(44832011)(8676002)(36756003)(8936002)(6916009)(7416002)(54906003)(41300700001)(478600001)(6512007)(6666004)(6486002)(4326008)(66556008)(66476007)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dk/9s3mSknKxrk5ZvFdry+eUpiA2JRh4XNJBbNoXADImJGzpczMGJUrxriES?=
 =?us-ascii?Q?PL8b9R3Kd0siBcOHsjeHEJ/obLxIze/8qFTLqI6pLVL4VdhWKgFxEBUSLr3r?=
 =?us-ascii?Q?uHRtSgji8+pF9RB6PA0EKPoC14IZ/HXZn+N2jWcI2y12Cdbe7s+QdKiah8v8?=
 =?us-ascii?Q?Wvo+wAbcOX8rzbmFKo6mJ83+T86A9+Y4yH5gSny1nKip96W2Pq4IS3F3mKvo?=
 =?us-ascii?Q?dsZ5IwokZ3X9Pi6QF9Zwo1aqgtKzNlL1PBbG0poKH+mEWM5TuzH/DR6wkogU?=
 =?us-ascii?Q?jKs8bkKEPAy8130nN3TfYxUcxEKOYZ3GhJl7XJ3VCMTDVx+XT1rRUbc8qhE1?=
 =?us-ascii?Q?SF6OnXlznBbIRp7j8U8wYEDJv2+a2rQUOhHBN+TXNbuzoLJ4OFDcuIhK1Ion?=
 =?us-ascii?Q?gBCk75RE8XgerNE3e9JGMBx31SOWyk0ll/iIh+gG0AosuJvHsldJB0FltDO4?=
 =?us-ascii?Q?G4vAOP2XyFdB02YUF0wXmNnvF67mMQIub6fb9iXxWi/SgGs1ugp3itw/4jnp?=
 =?us-ascii?Q?Lhy+OIjNRf7A17OyeGB2hy6kL9lrIGAFbHx3kG/vTYDaG7RxdZn8jOe4g/Dz?=
 =?us-ascii?Q?NizsQPOaghSED+0+Pc5omGW/UznckO7LlxPATw7Jj96lnNeClT6RtOVn81/l?=
 =?us-ascii?Q?VhhfuhkUtbP+20kd8RZkVGvH7E/jP2IgRp0hSuo8ctYZuxtCBMk8TbHcG/uS?=
 =?us-ascii?Q?u5PTOJA7WPbmvcUVxDO8/SpoG2Q974gOVRuyuBCfLeimonu/X/Sm9zc2Irux?=
 =?us-ascii?Q?Us6YaGFwSfGANW/wNbxKRIfrXOG69Gbr3SMec8a7JLC/EDnmdE2VDHwiO5HZ?=
 =?us-ascii?Q?MvWZLg9eIhZShXOjCuR9aSxzKFXUfqD9k6plCZXP2lzIPKdZwPJaJC5y/NAJ?=
 =?us-ascii?Q?VnxeF4PYp7NIAqSFC+YO3NJOB5fVEHS2OnwGTFGYNwgEOU1ly+Nfy8jpGVNe?=
 =?us-ascii?Q?PMIVmZ5G9XVnR3DuWrQNS8WeYRoRCvsWt0fsrNecLzvXycj/LhBO7ZM7FWwO?=
 =?us-ascii?Q?OiOcvMVRSQ6GlvsdzKphMp7dMYt5wQY1X/anv3VAQFXhLSDG1/ik1azpJX+j?=
 =?us-ascii?Q?lj2Utcaympr4fXXQBqKmjjqZyzl7pwK7UvAqzRxbDIJsq9wI/kK2uDqgmsko?=
 =?us-ascii?Q?1BJRSutct26Sbr0n+pO4YkNi58iX86JzBdsQ7Fb+/UiIrbuzJWePeO22QEnU?=
 =?us-ascii?Q?/+VNY1tzApbUqtUhEH404PTW0rGK3zfDFW3AtN1Z9W2JZWDMPo/ww0pHhXZW?=
 =?us-ascii?Q?ZriZp05DmSripRghkD9WMIF3TyXh/qqWCjzhhKmbvhpYkzvM9croIDSnDBWO?=
 =?us-ascii?Q?h3wazUFc960W2qwYRFmSt/gkj7V9NUD34Tpr/KPVoW0T3ceINxHrJrejmfUF?=
 =?us-ascii?Q?SUDD14sb/UpTo/iIzUqSRUG0Kw7k2boxgQx8bGczgM/kajSvmAv4p5Fj9cKn?=
 =?us-ascii?Q?yfYgfmQ7JXWAwNim5Wt/MwK8/2nu+Ye0d4hvsZrwXB8PbVs018aMpgw1S0at?=
 =?us-ascii?Q?q/0I0X6nhZMpPyy9brjDUrkIPH8EbQkTdurb5O1OUVUmG+LfS32BW/EWXx7I?=
 =?us-ascii?Q?Wb0KdRoMuggEnVXHp0CD+5knpLdbHcCpjSeESYBjvRvzTRZ0MyYf/H/9hdAG?=
 =?us-ascii?Q?Fw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bebd2f7-5672-4c3a-add3-08db92bc9aff
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 18:24:55.6351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ME5Wx9E2vOwpyiQeidMeWV0TSaZWw+EayhVUD3IIUNY5MyAuw6pFwZ78Py4mWsftj386i0IVaEDiqz4ueousA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8796
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FJOJWLJJSzjR9MCfwYjq0sWsA+KZ3LomuYdZ+8LGZeA=;
 b=DAKP4trvVx0QuK5BE/FC6bQJnWAYODbSmWHzVUgafXy+ZEVB4qtjrBG3LmmMMdKmGzLCZXpziQZn85ovvChb4sX2ZOutm4xas/zX8FNjuQfMrTZ1CM4MeGJ8/wVXTnOUqaTuo1wCDxPtY+E+fa9hwEgVJo8+5EUf2wR1gCk8rpw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=DAKP4trv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v3 net-next 10/10] selftests/tc-testing:
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
v2->v3: fix expected output for test 6a83 (missing "refcnt 2")
v1->v2: patch is new

 .../tc-testing/tc-tests/qdiscs/taprio.json    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
index 8dbed66a9acc..de51408544e2 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
@@ -179,5 +179,55 @@
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

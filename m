Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CA2772EFD
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 21:38:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD85781EDE;
	Mon,  7 Aug 2023 19:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD85781EDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691437106;
	bh=+hGKwiY1BBQglR9S58XG00AbRa2rmYfME48gxsrjsD4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=saIl5Ztpk6KcpVVDeiXLMPgngl7LAdJLnG9qfAeAcxvvDVE9vf7y6bsJu2z7LN/OE
	 w2Wc6LYDZlkU4CQLgdybMiimdMIJCwQPKQQTuiNEDkwA6goMa6D60yYW4aFTfCZD1Z
	 SXBW+r3Rq7bTXCOfOoC2X9wmr1VcgaBw/r+Dp3EkShy4RSX16D+G6H4C2OVaV18/ie
	 49Kexpsl7N5rWxnB5ooZhEW55thf9drx8/dMlHoVV29plGH6Rn4U/qYoC5La4QWBZL
	 0xlNCny40NYq9RTQTpd+6vUFYsbFDrEL5JndUtMgxfSdryasOmgLiTk5Pea2Yh+7SP
	 pzkqVpwLYew9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWmvetjmOyY0; Mon,  7 Aug 2023 19:38:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F6C681E93;
	Mon,  7 Aug 2023 19:38:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F6C681E93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B85D71BF284
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E52C40131
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E52C40131
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVO5j2XpRBWL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 19:37:47 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2077.outbound.protection.outlook.com [40.107.104.77])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A66440297
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 19:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A66440297
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqSt/FMT9/09rCOkXl7L6Zwz4BPAQcGj2CHLl2edE5JB6WW4ZxVJ9s0cktBxcuv2F9vA9VMnvEXJ5gyx0xt+O1FUBQoQQqfiuEkqHU5fMyJBkL+6Tj8WgzccbN4SUEC1mYdfdduAUa0yiaLmhfEdB2rDmWSAE43gYthqv7ZwTgGFs7xQ8wRmuRrYC/o5MX9OC9lSh5IK5j/5i2Ou6lPV3aQwtR+Bo46xfYT+7cKcKrTDqYYyCOxIDfjVr+Y2WFMYs2kZrvTogm2LrJwWvqR3VY0VCnoWGbbpR8ewUUakiHF9UgD8fwq+ygsvqdX1y9UD/MaItDI5dxDFCKsWqLTluw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kjrN9GQQoUjes+E+zAVZMFtIhSOlOE/TXQ5ItcnhiRs=;
 b=bZ2AaD0O/gwxxQOrNChI7oUPSPzSCGWDMYvwLRx+bf+jrlo+9zjMTL+egCu/ZFZFEhlt8R74Jv8z08IGTLqCBNZ8Gq9mNC1VYnDGjwibYD2/0mlRKl+XHMdvnyS4D/mGTxfi9zbuUAnwAxmnPc8OUppGm1YVP30CVtqytnOlQBQno3VfByQWyDVBFq36PHu+v8Z6f4W/G5M6O8V2ZjalVk8OignZgPIgOwquxPCThQsewb1aeRGoUJ9e8zHhs6CGkV743AYecv9iP6vZAzYAejgLPZxpZ98ATIyrxv/HUiOkn1SYQKSyDaVC/VMBgWq7LX/IOdguZdrhh4mLb03Mkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DB9PR04MB9451.eurprd04.prod.outlook.com (2603:10a6:10:368::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 19:37:44 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::d4ed:20a0:8c0a:d9cf%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 19:37:44 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Aug 2023 22:33:23 +0300
Message-Id: <20230807193324.4128292-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
References: <20230807193324.4128292-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR01CA0136.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::41) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DB9PR04MB9451:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e2f995f-0551-44d1-7394-08db977dc557
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ayit6om9XjCkI4jDOP5+tqVtf2mvYEiZXfoCQMM5zH8gXlPCkm90HPsV2T10Il6MqQIcSMQj1mgXZuX067xUWJ9s2gJzzV75tP4KMKw9tyd6cEAEtZ4G4+VGJu7Vr7SmoSJ9UWEWnQ9GcXNYxiOzGpEhRvvUUa/bx7F9hQ87e+l+F6SszarswpUe3LNsHUpOpbQf3bQ86w5OxF8SO4nhQ6x3sJZjUU2ZgGd1eNIkdvuWC9E4U09VvRutpjf+nmeNIgJq1Np2bMkzraxWoQBfE8C07a/4mI7FpO/ibbvJYHVDKs4021kwBlI9OS0+t7jqJ+XQSk0iETh73vj0uQaDippVjRwsPCjOeMbVOsqS2InxSmWy7fyDkwIe1yANBfx9YG7Agc+wV8Q5a6OQvlReNOR2yYKAlcERmhMpIUYEju3WKw+d0Nt7IUSw2lf1DcIZPj8ZqEQOryYFm8J+vYoa+F7pTgEmhWoRzbCPFTALucxcJMIPqyZoRUa/CPRtzccjmi5I0v/2r9Nzr2liZRL7eCUqmo5OkX8GdOzeXp6vHQkKdCnDLzc8JbpeamzTsECJICfsdE8ljrf922YTwgoASnUt2Nzt82U3tEMP/ErFC3SdX8SXM4GejN4u+0bITP6M5ITNKhNY3QnDfXgTuCm0DQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(186006)(1800799003)(451199021)(1076003)(41300700001)(26005)(2906002)(5660300002)(44832011)(83380400001)(7416002)(8676002)(8936002)(2616005)(6916009)(86362001)(316002)(6506007)(54906003)(38350700002)(38100700002)(6486002)(66476007)(66556008)(478600001)(52116002)(66946007)(6666004)(6512007)(966005)(4326008)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NiD0/lpznLJfeeRp9ffS8GIpByRidJ6yoRXAMB6yqRshhyp35QsTFTFyRI+Q?=
 =?us-ascii?Q?4AEGU/8qhiVWtfir3wN+/ps3dNPwhTgOywRw0ofRkkrAJorWOin0Xx0FDCgq?=
 =?us-ascii?Q?fG7SmwI8rs06vssaiUlgLcYGxfKBr/XY1fQ6P/LkbcjUzpDV6FzzTh+bhUke?=
 =?us-ascii?Q?vOiz4ZlFkxOSi+fu5WXSmlvj8LyIwOD1z3M2VHtGf77tAD88s/oc5AtLJGvx?=
 =?us-ascii?Q?/wA9UIW10XcY7zI2t49Xu7i6IUwOGfUrXHWU886Y4LKrUOiH5CEN+a4AnoHy?=
 =?us-ascii?Q?OnQQvwWkKxAu/8AY5sufbmZZK76P2oOELEzJzLxsZoWHGMRazF9y9g6wj8U5?=
 =?us-ascii?Q?RC07+FW2Z/YjuS3v7YRVQ20Q6rSfvMEeGJnuzoI/Kwsil/z4FpJWBxMRIQst?=
 =?us-ascii?Q?gmmS5NRri5mBiqsGp2mhugMbKy+AxaNazLf/LluH8STWE2R9Te+Sf6g3YQit?=
 =?us-ascii?Q?tW74aBzGksRvaHNP2KE9XN0ToMm1yi+M1hnTZJT6r55p2Mmf7O2aIBJCbISi?=
 =?us-ascii?Q?x0MTgozx/PG7DDKWUwM+6OX8/tuwWKK0bX2GSzOdPzhwQfMzVivofm1Hb5L6?=
 =?us-ascii?Q?M+/bGEFD7M+wcA3Ph1qSiF00LcKRJ55mtS1nWkmMFdNVvnZGdmtW1MuhlSfX?=
 =?us-ascii?Q?+kb3kelh+VidUwSOecTi2oB16FZIW9typdUzhgq1y0CarXosxgzIkCMwAwgk?=
 =?us-ascii?Q?A07fq4H+EwsliveEOIWFMABm+oKLLEdK3TFUpdzGITYwP4Ny60KVqXTKalsM?=
 =?us-ascii?Q?p9QSlToMjwmEfhMo8+b32M6g91dl3bl8Tq2XMDYMqbhkgFKP9Wyb8Z0vAAuJ?=
 =?us-ascii?Q?+S9JPfZbvvXd57j6GRNquFGhcKuNa8iT7WzDc8NuGvFNO5vE19V08Y86ex9h?=
 =?us-ascii?Q?R34HBSgl+TD4ElZswTZmXy1DpxdwD4wmzcdOlbN0OTLcWIWkredQC1dEOSM/?=
 =?us-ascii?Q?ekIH335ZVNSr4XAOyza8eFxzwA0x9hQmARkmoJ/YVhyWz4PEHGtdsxa4t59a?=
 =?us-ascii?Q?/Rrwh8MPpd19vFaCSfnnKP2HlIIi3+JcSrD9a0L8fV0PWB/Y4IN4XDF7XExy?=
 =?us-ascii?Q?eyqu7VSh1/u40807wrXF6Rp61+3sP4nleoSleMSUx4Xs7myIbuVupZiiUV2C?=
 =?us-ascii?Q?BTrjgdQmcQfZXbwsrC0RiJHXG8NuN9+fnrMCKVh1WR0+UcNP0Yc970zxlU+n?=
 =?us-ascii?Q?GWKfUG5PxKlJ3A4pMmQ9H1l+UY45KIYhBPYeuIUbdLWtejrCwv4g1PIsGGn6?=
 =?us-ascii?Q?R+qivwfjR5RtMtn9SWWn1m9Oz9cRuaTtF/IveppcRyRLa0XNZnO/MQ7OE5oO?=
 =?us-ascii?Q?vX8sQZw4pdBSEGK2DMMccoKgR3WaNKlSTSQBj4SS22mxsL1bQq+tYyS+P+xh?=
 =?us-ascii?Q?eo74kM3HgljWQuNvvQWsoniNUmJAidscrMp9ZbFFSPPRoc/XrZiGWLjdmd4y?=
 =?us-ascii?Q?NBLlTXKXXv/eCZLOw/lrJJ3Y/BNhKfBtHq7JgLUyt9QoTCLNOTVvJk2ssOb9?=
 =?us-ascii?Q?jhfHSde8h94CjBsaGvLwCYlfz2hGQb7l8R/VEZDeGkcg7nC8OlRfpB9S3kG5?=
 =?us-ascii?Q?EQuLLSxF7q9n6dwOYNowXczUeyFogJ0cAZBNdGv5mMP2lfq6ArBd6lCktFMP?=
 =?us-ascii?Q?Xg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2f995f-0551-44d1-7394-08db977dc557
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 19:37:44.1633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YzJnwEa4RkTfP0/vNZSGIT3a/1hwdSuRac7nbKPV7y1hPGxUQt4f9WDaHUINRkL19f+ydPd2+2rFEp64vCrudA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9451
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjrN9GQQoUjes+E+zAVZMFtIhSOlOE/TXQ5ItcnhiRs=;
 b=fpg6cjLnJWRinsiD0eVTkgit39rs6ZePoFcCfMyKxpd/+B29btsTsyNVXVJwRgpE8q3CmVzsG98QEUIHI5qBTyvCpm+Nzgkb+MqalrJJBbWMu9nZ8mulk6slQJJBsycNlrRc21lhyPn7IY0lTqu0LAZMUvpGS99KILvM7Q6afz0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=fpg6cjLn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v4 net-next 10/11] selftests/tc-testing:
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

Vinicius points out that looking at "base_time" in the tc qdisc show
output is unreliable because user space is in a race with the kernel
applying the setting. So we create a helper bash script which waits
while there is any pending schedule.

Link: https://lore.kernel.org/netdev/87il9w0xx7.fsf@intel.com/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Pedro Tammela <pctammela@mojatatu.com>
---
v3->v4:
introduce (and use) taprio_wait_for_admin.sh. The test depends upon this
taprio patch to work properly:
https://patchwork.kernel.org/project/netdevbpf/patch/20230807160827.4087483-2-vladimir.oltean@nxp.com/
Note: I couldn't find a way around the horrible tcmd.safe_substitute(NAMES)
and the string quoting (no possibility to perform complex shell operations)
than to put the logic I needed in a separate shell script and execute that.

v2->v3: none
v1->v2: patch is new

 .../tc-testing/taprio_wait_for_admin.sh       | 16 ++++++
 .../tc-testing/tc-tests/qdiscs/taprio.json    | 50 +++++++++++++++++++
 2 files changed, 66 insertions(+)
 create mode 100755 tools/testing/selftests/tc-testing/taprio_wait_for_admin.sh

diff --git a/tools/testing/selftests/tc-testing/taprio_wait_for_admin.sh b/tools/testing/selftests/tc-testing/taprio_wait_for_admin.sh
new file mode 100755
index 000000000000..f5335e8ad6b4
--- /dev/null
+++ b/tools/testing/selftests/tc-testing/taprio_wait_for_admin.sh
@@ -0,0 +1,16 @@
+#!/bin/bash
+
+TC="$1"; shift
+ETH="$1"; shift
+
+# The taprio architecture changes the admin schedule from a hrtimer and not
+# from process context, so we need to wait in order to make sure that any
+# schedule change actually took place.
+while :; do
+	has_admin="$($TC -j qdisc show dev $ETH root | jq '.[].options | has("admin")')"
+	if [ "$has_admin" = "false" ]; then
+		break;
+	fi
+
+	sleep 1
+done
diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
index 860b55df0d6d..f475967c509f 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
@@ -156,5 +156,55 @@
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
+            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI",
+            "./taprio_wait_for_admin.sh $TC $ETH"
+        ],
+        "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI",
+        "expExitCode": "2",
+        "verifyCmd": "bash -c \"./taprio_wait_for_admin.sh $TC $ETH && $TC -j qdisc show dev $ETH root | jq '.[].options.base_time'\"",
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
+            "$TC qdisc replace dev $ETH handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 flags 0x2",
+            "./taprio_wait_for_admin.sh $TC $ETH"
+        ],
+        "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 flags 0x2",
+        "expExitCode": "2",
+        "verifyCmd": "bash -c \"./taprio_wait_for_admin.sh $TC $ETH && $TC -j qdisc show dev $ETH root | jq '.[].options.base_time'\"",
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

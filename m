Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5682768D9BF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 14:55:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2F26417F7;
	Tue,  7 Feb 2023 13:55:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2F26417F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675778126;
	bh=k6gwKqHODMcCzcUL9CUkSGNN2lCoBcciABm9bX1kMGg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rknWmth5hMVDjo2RGfSYwNkBRPA/Ap5FOQEFirRf5xOxw57ZYR0AxDdwF8V486Gmw
	 C5Kq20n41PicOuLhGTNXRkjMdeZLZkymChOOjPAfBfZgqE8uStSNJBRPAOoR7mc1/F
	 1agKgDpF/RrDQvkvEq6gV+CdqZ5iCz+YT9rq//dbRUKMy/A6VJq2ukAgouj3EGOWwR
	 Cgy3czk7/7NS7KWL4j+btyGlfw6u3F9KAYYElcNPqn7KzIP+aviKIgOxvXje70b3r4
	 g3HJsFYzhy8y04C3K3nEH5hW+/B8xKxWRpse9wqSK0uUM1+dnZsWERZT6d9EgSncU2
	 CP3mUtH6GqAAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHEoOTVvqQZ0; Tue,  7 Feb 2023 13:55:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60739417CF;
	Tue,  7 Feb 2023 13:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60739417CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC6801BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9066F405FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9066F405FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GcnfStcP44tk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 13:55:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3E40405DF
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2082.outbound.protection.outlook.com [40.107.7.82])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3E40405DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 13:55:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhin7T+3sep4cfnBejxE6lXjilUdQbmOAEIkjIpablbpdcG/f6SqvW5+qI1aGCQKxEw/QuR0hsHi0siFb+vozJBh+Ow6GNiRUM8RIwYZmI3oMEA0GAclgTTFoDOz5Pc1lk6iTafmnZEHRkN14Pf0e/nXOLcqNakhzt4szcgxKaUfJQ19sFXUH+zArUK7Nw/qZByX17ftOOYZew1qS2DR93uay4esdCPxQPjcalxk/EzJ46nPZoomeFKyRPZ/A7FpZCU/jZStG3Frm5NrWIdQAbPR1H1BexSTFA9u7mvndiXdozsrici7+7NXgSVAa/mucph9Z+MBeJ22K4zm1eqqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zfhrjPSjui4if/GUKgW56m5Qa6cwOnErqbD1OIc1QKE=;
 b=YR0hxPyklRvKpOBscP9YVgp7fWZLQttckUTEeoKHeMp0PsHjjLJQcnyCJXzUQ7nYjVp/l77gSuPleNHwGh8GlppcATnGYmwkuC0WCuLKRpVodj41VZTT4v6+riR8KgeingtExDDwkOfhJ7h/9pqFs6gJDM4QgToE+UFGbza/CMPmHtGEJ96QpKpvKMiOhmemJuWkBlvGnybEEVPCRH195pIHbylEj5FkxxHkAmU94TeMxUJkr3uZ9PxhJSn6kKRYXblKJb4jNFFGKW8FTdK1SkvGqy7tkUaqo7NK+U8YxigVMC1BDCHIxyQXz/pAxn2pXl184EIXmX0JcxVwdEXxHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8115.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 13:55:08 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3cfb:3ae7:1686:a68b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 13:55:08 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Feb 2023 15:54:28 +0200
Message-Id: <20230207135440.1482856-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0023.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::15) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM9PR04MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: af1f0f20-4742-45de-9e97-08db0912ec56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nYzKwNjxBjDKEDsxO4lIqXq2qSZ1Rpb4zpDFXMgA/Si+oAyLnygAHOLuQezyZq9yU8YD/mGoahsTOSPkHAKoS8YWAavNY6sXDOR4Vm5moc/y94Zd+WWXBtGqQCFajegEDb9KDOwLsSyIRb8Qv41uLKDYbP3v5QXXgavMrbVU2RilOp7arXdqQCcSg/pjk2yuZhxEsDinuJU0303sfrCRZGB+U5mKUahbQ5sx1lG1Tbb1k/66PFutRsZ3EgiiCyOE5UD6Z6GdvLawBgY/zVYYr9RT0vAGaeBvegFfGn1g3mSY45en9n37LJMezcQ8Yjcv9CbllJKXDANfjmZAdJ0jZ3lg9BW+mY+eVhXA2TS9BuR0UQzLvgt5s7jnvEtTTMIVdqcBqUModafI3/7puMvWG4nfXiYW9wNEdbhISoerG8bbmqKXm2kcOdnCcP1mBCsB1t75vVR+ykuQhDxIPXWGxOkKUuALt9LJPOiojWWUsIE1cCYstfG6LBo3yx/XEvKYAisktPgnbrr1cXkPNStVbQzsNWO52efwIKyFCtTCtT6hxG2nIFOgrhDZWDlflC2vGgdHh5TJJdi3QOQ7y+gjs1uWNnZhPRyt95+sd0moXex6+9z+mwwjx6z3RrXGhSbVByHGq6mVn5qqoxPXK1Dze9LUe9kDvfadwTTXsZEGhBrMlTXbSkpqmOtJVGdnYaAbI5Gxmlo7H0Le5D+2LorfVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(2906002)(8676002)(38350700002)(38100700002)(316002)(83380400001)(6916009)(66556008)(66476007)(8936002)(4326008)(41300700001)(44832011)(5660300002)(7416002)(66946007)(2616005)(6666004)(1076003)(6506007)(478600001)(6486002)(186003)(26005)(6512007)(86362001)(54906003)(52116002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r0zTEVyFLOB+JQnoOUAPZr7i/tyfie9JUef8Gl9zmgmP7DdB5C55GJeOo4vQ?=
 =?us-ascii?Q?9pIYaaxI8tWPFP7l6qYvPVflvQQRyv2tOsLHIVJHqaeSSCIHIR5AoPL2bKPd?=
 =?us-ascii?Q?8dDtxj+YXlGlNzwgDiHUYVhsmHQMshwQv9djcFlddWtBgqe8J2SmebYGwjKf?=
 =?us-ascii?Q?Fz7uWAUVGO3ZBsMV03Dz3rPJHDuBnDcLjkQFKxYBSmF/bdsDRiDmpNJqOlnI?=
 =?us-ascii?Q?dWGxWmMRAPXQrN1w5ChPf0K4Of/NudZFrBq7+d4NsdkTbpqE0D5Eb/VXW/3j?=
 =?us-ascii?Q?OitUCr+DKNdy93EjuDZlmRD2ZT+kuDPVn4Qhik8HhIaKlzJbwHGh8QTjzvVQ?=
 =?us-ascii?Q?VIa439Zw1EIL1fapd9Ggwraj/9nd9msNOTmWj1oCTtv2iZQR9PHzEZi3ukYU?=
 =?us-ascii?Q?qR/Ipci7xQp4G5YPf2da/iDvDgtATZ9UgqWnbr/9n3H55zj0zAsbp+cfA6Vi?=
 =?us-ascii?Q?pWUpDXlNFEl687coi/yNWaD1YeRJkw0y/p6Gzjvk2GtmT4pJ9tzOVr27VNUS?=
 =?us-ascii?Q?2LqY3itJH09LtVYDf1z6aq7UOz20MmVpKeJr2hysW9+69jO9oeT0MJvkMgDc?=
 =?us-ascii?Q?UYWNHihQucLvasyGGjbe3f2RPY3MhonPn1uRRjVpjeIv0VbHJykXdgagdl1d?=
 =?us-ascii?Q?Hocft7fS9ldzFj4NJ9mEiPqVX2q2V+5Cni53+kw8tK6PA4kih5qldB3v8oi6?=
 =?us-ascii?Q?0ZVwjDPj8ZoZD1Af06v4N/TMRMIv3bltBZ1lH7xRO+6K13+SiA0jMULs6qHx?=
 =?us-ascii?Q?3ccYdjXF7W3Sdw+QMa9eeIorKSGIe1/+puNjxw/GT8xJmJ/AIevG2eBYadyd?=
 =?us-ascii?Q?TYI9+Vf/5N+IUAwbh29wG5PytrbTXBtDcsJazp5653zH3wgD4K1MpjFUChWZ?=
 =?us-ascii?Q?jYxPiz0gVMt4pLguCc+lRV+YLWCIpSpwgSDluCVaWXN20RqOE9Wdd6Zqc1nZ?=
 =?us-ascii?Q?/5qLXErGUOB+ItoiWhEYMEOjrLKTLdivMSI8HiUz/3+3djWXgIauf9337y5M?=
 =?us-ascii?Q?niZHqCnTz0IjZ5X/r7r7FOQyBQm9TDMrF8L+9i+weRsxPOP8mxMNIM21hNAk?=
 =?us-ascii?Q?5TYF88QzROxNlTacuABy9H4anVJaoLyXipnxsJTbHQ5hKAMgMh3t7Q7Ro/BY?=
 =?us-ascii?Q?S/qCZaoc8F7kSbV0+uzK3FnZ4zrS9AqaCo0hLZxpaPRIzkO3UVKQEqLRnXBt?=
 =?us-ascii?Q?wTUwC/G1BVh6howPMkslsIc17iHdCXmb/NK+aIeDbzisJyWPJlW/HJFc1O/G?=
 =?us-ascii?Q?BgHinhCR+szIT/18Et8gv2rAgHqSl6mqTSuBvo1O5ZjDnOqrQEapJqDVDG5d?=
 =?us-ascii?Q?yZsH0m/UzHnBoGCpKg12Zx4mZx4uJnWj6+kL93EcOjCDajG4zlRawpXPEPw2?=
 =?us-ascii?Q?hz2N9Pi17YvZ+kP0djM1vZWR0UrFBMSSUYPyqQ6POznaWSji59T+qoM1ImmA?=
 =?us-ascii?Q?RAo53cZAgN4A9XXr49QvO2C1DGZ3al3sd62gU73mOTj41EqoUY2/PfojEBDV?=
 =?us-ascii?Q?l5j5vWMGSWR46F2GrD2ygsMZf+MfWtyHOwZ346yqdvr+8VLFoJ2w0XBm+LcJ?=
 =?us-ascii?Q?PQCGE3A12ZlpBK2XN8JUmsJOaT7HYRjgtFYlnXRExe0F3uWQCgjZ43kERGFt?=
 =?us-ascii?Q?4A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af1f0f20-4742-45de-9e97-08db0912ec56
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 13:55:08.7217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kI7xcjmsZ1AMQbmkJdWZb/edO2Ywy4rXu1NdMEUtE9hbfjpO9sC5d0O9ua95nvb/7zcSsmKgHuk4Zj2B9lApxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zfhrjPSjui4if/GUKgW56m5Qa6cwOnErqbD1OIc1QKE=;
 b=E13BP41utSGx/QRWzre8/cpoKOkJpTrINPtBqyfvFWXpBGFiIHO9Ki1uDDgoxxHiRzQbcAjl28HbBb2qxPbrhLaQlGPg0GspFbjeCqnYizbqDgR6qcJx5Ty4Oe05SbfrfPJmrnj3aMW1G9Xyg+SmdBEKHnAyxyTpB1/2GlKAc78=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=E13BP41u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v2 net-next 03/15] net/sched: taprio:
 refactor one skb dequeue from TXQ to separate function
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

Future changes will refactor the TXQ selection procedure, and a lot of
stuff will become messy, the indentation of the bulk of the dequeue
procedure would increase, etc.

Break out the bulk of the function into a new one, which knows the TXQ
(child qdisc) we should perform a dequeue from.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
v1->v2: none

 net/sched/sch_taprio.c | 121 +++++++++++++++++++++--------------------
 1 file changed, 63 insertions(+), 58 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 0fde303978a5..272a8b7c0f9f 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -512,6 +512,66 @@ static void taprio_set_budget(struct taprio_sched *q, struct sched_entry *entry)
 			     atomic64_read(&q->picos_per_byte)));
 }
 
+static struct sk_buff *taprio_dequeue_from_txq(struct Qdisc *sch, int txq,
+					       struct sched_entry *entry,
+					       u32 gate_mask)
+{
+	struct taprio_sched *q = qdisc_priv(sch);
+	struct net_device *dev = qdisc_dev(sch);
+	struct Qdisc *child = q->qdiscs[txq];
+	struct sk_buff *skb;
+	ktime_t guard;
+	int prio;
+	int len;
+	u8 tc;
+
+	if (unlikely(!child))
+		return NULL;
+
+	if (TXTIME_ASSIST_IS_ENABLED(q->flags)) {
+		skb = child->ops->dequeue(child);
+		if (!skb)
+			return NULL;
+		goto skb_found;
+	}
+
+	skb = child->ops->peek(child);
+	if (!skb)
+		return NULL;
+
+	prio = skb->priority;
+	tc = netdev_get_prio_tc_map(dev, prio);
+
+	if (!(gate_mask & BIT(tc)))
+		return NULL;
+
+	len = qdisc_pkt_len(skb);
+	guard = ktime_add_ns(taprio_get_time(q), length_to_duration(q, len));
+
+	/* In the case that there's no gate entry, there's no
+	 * guard band ...
+	 */
+	if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
+	    ktime_after(guard, entry->close_time))
+		return NULL;
+
+	/* ... and no budget. */
+	if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
+	    atomic_sub_return(len, &entry->budget) < 0)
+		return NULL;
+
+	skb = child->ops->dequeue(child);
+	if (unlikely(!skb))
+		return NULL;
+
+skb_found:
+	qdisc_bstats_update(sch, skb);
+	qdisc_qstats_backlog_dec(sch, skb);
+	sch->q.qlen--;
+
+	return skb;
+}
+
 /* Will not be called in the full offload case, since the TX queues are
  * attached to the Qdisc created using qdisc_create_dflt()
  */
@@ -537,64 +597,9 @@ static struct sk_buff *taprio_dequeue(struct Qdisc *sch)
 		goto done;
 
 	for (i = 0; i < dev->num_tx_queues; i++) {
-		struct Qdisc *child = q->qdiscs[i];
-		ktime_t guard;
-		int prio;
-		int len;
-		u8 tc;
-
-		if (unlikely(!child))
-			continue;
-
-		if (TXTIME_ASSIST_IS_ENABLED(q->flags)) {
-			skb = child->ops->dequeue(child);
-			if (!skb)
-				continue;
-			goto skb_found;
-		}
-
-		skb = child->ops->peek(child);
-		if (!skb)
-			continue;
-
-		prio = skb->priority;
-		tc = netdev_get_prio_tc_map(dev, prio);
-
-		if (!(gate_mask & BIT(tc))) {
-			skb = NULL;
-			continue;
-		}
-
-		len = qdisc_pkt_len(skb);
-		guard = ktime_add_ns(taprio_get_time(q),
-				     length_to_duration(q, len));
-
-		/* In the case that there's no gate entry, there's no
-		 * guard band ...
-		 */
-		if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
-		    ktime_after(guard, entry->close_time)) {
-			skb = NULL;
-			continue;
-		}
-
-		/* ... and no budget. */
-		if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
-		    atomic_sub_return(len, &entry->budget) < 0) {
-			skb = NULL;
-			continue;
-		}
-
-		skb = child->ops->dequeue(child);
-		if (unlikely(!skb))
-			continue;
-
-skb_found:
-		qdisc_bstats_update(sch, skb);
-		qdisc_qstats_backlog_dec(sch, skb);
-		sch->q.qlen--;
-
-		goto done;
+		skb = taprio_dequeue_from_txq(sch, i, entry, gate_mask);
+		if (skb)
+			goto done;
 	}
 
 done:
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

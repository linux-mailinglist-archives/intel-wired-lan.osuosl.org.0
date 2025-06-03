Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0246ACC1D0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 10:10:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F317240B3D;
	Tue,  3 Jun 2025 08:10:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rP3W5KwOjPPP; Tue,  3 Jun 2025 08:10:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3543408FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748938202;
	bh=p6QdSHRQibY5GhEPYBs11/eRb5U50DqEtSR6+Z646mc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dYjJwZZPHrL8RFepYFg5UIoALLD5t0MEZcJkUeTRD0usV8XJ4jtPFENDtq1Ob5949
	 y2Gt0XOLw/CNJbnMyhrqcNO2eIppTx4s/J8zu/bzoY2oi8ZI2l8V4Gl4RKJyTg7sua
	 SseQwVP1ujs5BHooCeRPYCl9sA119p1VvVsOM618yUZqWWGuiFTdPqllh8g0SrTtKJ
	 NFqKW2Kx0uEHdVYeATMr552dbE3bSRM665v5c8lEyB0cYAduMfjs4utaYHPf4NQ9zj
	 iBW/8ZA2F1A17qcu0FiNZ6vk6M1/gUpl6EdWUremoMiFQmXJIEk7jZFdq2R+H8R404
	 vvBBJZVy4HQEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3543408FD;
	Tue,  3 Jun 2025 08:10:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 120D815F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 08:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC4FF4032E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 08:10:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rzo_dKEtxafK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 08:10:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.223.49;
 helo=nam11-dm6-obe.outbound.protection.outlook.com;
 envelope-from=ian.ray@gehealthcare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0B01411DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0B01411DB
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2049.outbound.protection.outlook.com [40.107.223.49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0B01411DB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 08:09:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PovbIOgMYc2eh6cmk9UziCJMMb9Ek9P4B/kaYe9CWRcH5WTb0+e4btOQayWAkx0vaiOWc/aTrxWmXHtfq3mr87SrKrFiWY4pyjXfD/LG+INNf8GEFvvcFod5eyi1FqKyvMqRIeNarTFcb88asl490j+g6X/aQ21M8BgDlTxQk4wtslfjvXOOqtbeAP7ymJPp7yGOAg+VU27+BuK06Wb3AA/sQ0p1mf8BoKDkbTNMIPlxtAAgsVr4nEP0CFP/ay5jWiOHCmddWLGg53U5P2lbiyiEPw7X5ADteOuaDT1/rPOTe/yeGbAyH33U9LuuTTkMsGapS35bqeHDPLGXU7GEOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6QdSHRQibY5GhEPYBs11/eRb5U50DqEtSR6+Z646mc=;
 b=NBEaNtPUu68BPO8y7TOolhZXzQD/lZiDOvuuyugN5WAj5OiLOdSv1GZ6AmFpLbiDgM6+2Pnhi3MJUG9TRC7gX9LRsEtFTTQxJtrXLLsUuRIEaGtikp3LDFldeOd+9BbmHqpLn0seWLJHVhfnCEDyuB/ZVhfwWlE6eWv8hTrEz8hmGGnA86iNRyrNXr4lLFa7uezPvkV/L5Ax3sVohWEjE7mTelodaERE9Ox1QVPFoW4DEQgb95J7lCa1ryw9gHhqweq6DVdDwESntGMn0lt61rfrIEdVQ1S4Q2pf5g22JiIzKr+OATtTCXxcV6oLDzkKSeS85IUsOSgK77HbqXn8Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
Received: from BY3PR10CA0001.namprd10.prod.outlook.com (2603:10b6:a03:255::6)
 by PH7PR22MB3687.namprd22.prod.outlook.com (2603:10b6:510:1d6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.33; Tue, 3 Jun
 2025 08:09:57 +0000
Received: from SJ5PEPF00000207.namprd05.prod.outlook.com
 (2603:10b6:a03:255:cafe::70) by BY3PR10CA0001.outlook.office365.com
 (2603:10b6:a03:255::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8746.31 via Frontend Transport; Tue,
 3 Jun 2025 08:09:56 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 SJ5PEPF00000207.mail.protection.outlook.com (10.167.244.40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8792.29 via Frontend Transport; Tue, 3 Jun 2025 08:09:56 +0000
Received: from 56525d0f2b9b.fihel.lab.ge-healthcare.net
 (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
 by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 72556CFB7B;
 Tue,  3 Jun 2025 11:09:53 +0300 (EEST)
From: Ian Ray <ian.ray@gehealthcare.com>
To: horms@kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: brian.ruley@gehealthcare.com, Ian Ray <ian.ray@gehealthcare.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  3 Jun 2025 11:09:49 +0300
Message-ID: <20250603080949.1681-1-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF00000207:EE_|PH7PR22MB3687:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 8ca331e6-f183-4425-4468-08dda2760743
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|82310400026|36860700013|1800799024|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NaC03s3GRkkABrVF7vkhZ93zLSyzuAIUc3oaLqTDu947NPg6ImE2KSdp9HVB?=
 =?us-ascii?Q?O2mH7CQluIArgDxoX+gkBhADfD8EvTR8bZs1xntLo/6YOxQF7tilXgrdiEnN?=
 =?us-ascii?Q?ZyyMokdl1tGrS6QI8YJFjlSZ5RPvflsyyaauG4zrXcjyYhc+GZdl7mS2cGQo?=
 =?us-ascii?Q?19VUGUxaBr+XF9QdySXskT7e0WjtsUP23Kuz2F7HXBdU+Bn6E0M8uSVfggme?=
 =?us-ascii?Q?A/+VsA9RCce7x8hP9NuZmMOFZ6nZyDbapzVXQ+wLiiiNkRG1rCIA8TFynWPp?=
 =?us-ascii?Q?nze1/s/+YqS1xxGV4oOHv+zYzjL602damNbPx+h3rR3Xzs+J51gRdeQLnvQM?=
 =?us-ascii?Q?eaGd8Zj009d+CDJhVw8AQfX642zO6gCSAR9hNDuexcCUoOiAcwtxZpKR1eQk?=
 =?us-ascii?Q?+HpK+Ve7/r3QYJ4m+NKFPwDVqWWrvHqI8S4LMmPW8j+Rz6sgsukjR1uReZh/?=
 =?us-ascii?Q?R3Cq6pEdeghWwUgWvIAAiSSPlA9RH2uVe1ymEkrelD4OYdZibn2L+aaGJ224?=
 =?us-ascii?Q?oK8qcHbDUWvJmivCG1SBbysc2PrRdCZLxXnFb0s0uSyyKETQah88vgm5aQWa?=
 =?us-ascii?Q?vgYqfIOXgGFsLFURfa3RwxIswP7rzE/4rXdBeAusOHyxTsyLpQfTAr0H4VoW?=
 =?us-ascii?Q?IZWad83qhoKRFe4ibBtyoZH8Hz6uUX0Qc4VLgIqBtW14m/j0q8qYcEypSJUC?=
 =?us-ascii?Q?rmbccbsrKnxuX3pS4RFh+XhHhfpoy8F0j03HSSFjl1r5ra/z2/Kle90LRYMM?=
 =?us-ascii?Q?FO7ZOBpLn2mA/nX7OK1BKjNc4oumEDugr32kLNT4DJJpFWrbXm/auuokmCTe?=
 =?us-ascii?Q?QgiY8A0ND6SypcxKE3wrlCPA4q5FOQ1EopQZnkNneRlbYUXTTi4rDcLSXNt1?=
 =?us-ascii?Q?RA3+Sc5H5zq5eROkz+N73mDaWhWtkjfT3MdtPSzQuVRkZ6RItVVqRmouNNma?=
 =?us-ascii?Q?o9CQ1JcaXT7m4nNzYLP6RCM11awNuAIXbpVfyxplbdVjEKYosHh/KAvFMGfv?=
 =?us-ascii?Q?JfjMJlFcxbwG0sv8kb1ju7RritKhgZs708YdcJgdiWaX1aPE4LnwjWk+5kXq?=
 =?us-ascii?Q?h9iQ8KV/7663o/D9+g8liM+8JTwGM/GGsr0HGICk77Mm3I8cbtTFWqMjBz8j?=
 =?us-ascii?Q?cmmiD/V5b+CskoE5/HPyXy5fhYTN26ffkRAo8bzQxD/f8kKDrSST/LMooKWg?=
 =?us-ascii?Q?77KXFaBHZ1Uokg8sbbfErlhr90G+CHfw6l15W47dhFCzJjdXxPySuebqBQc6?=
 =?us-ascii?Q?M/w589eLdOl7rZkd3P3PQ6Hh5RwmJQJ2prLaIzABo7w+RWTk8wSlfYQoVZV4?=
 =?us-ascii?Q?EWFU/JYO8o22uaKgSXiwIiu7VrCpZXHnBTF3fx757pMzx8SJLco7XK+4mAUY?=
 =?us-ascii?Q?ppQ5tiiOsr/rWmYft6FInoDfrHrc3+xiI7lcCSbu7G2s2/DJVO2J5omGtpgH?=
 =?us-ascii?Q?49NDj3byy9zIri4daKp/oRn5/qW6QjZHMPPA7GXAuGpaKmbNS47Z1oQIQZ+c?=
 =?us-ascii?Q?pkUk/BZHjx0yjUu2Oa1TqDW8mL5az5rkU8Kf?=
X-Forefront-Antispam-Report: CIP:165.85.157.49; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mkerelay1.compute.ge-healthcare.net;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024)(13003099007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 08:09:56.5609 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca331e6-f183-4425-4468-08dda2760743
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf; Ip=[165.85.157.49];
 Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-SJ5PEPF00000207.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR22MB3687
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gehealthcare.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p6QdSHRQibY5GhEPYBs11/eRb5U50DqEtSR6+Z646mc=;
 b=Pzvzk5+VckQ4c//1TpKbTW+HZR7uZnZ6oy8XGGJzcBZQD4FcNpbweS7Krzz9tFgnY+3+EoJI3suf6lfp/f1mKDXEqmXm7ZJhrkJAIzNtpSJpxEjbucBkShBKdkRH/ujnIZ/vGTBsYW3xYSy9ETBHo1RnoiSzDg+lcajFiSvKO54ojbPSkWoSbUmRkXnFMgp9Vv402yxQHzwIRupwyu3sl0CPpfKeQfiZPRmYeQwsfBS6o2oIp6REATdBwY8MrKUkqn/PnmLVYGwU8oInXSQM9U7N9JKT2bkZXucK3jb0ltQjfnlZvJdF/bN8G/N68fM2Gql755RKS/FLx1nQozyQMw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gehealthcare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gehealthcare.com header.i=@gehealthcare.com
 header.a=rsa-sha256 header.s=selector1 header.b=Pzvzk5+V
Subject: [Intel-wired-lan] [PATCH v2] igb: Fix watchdog_task race with
 shutdown
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A rare [1] race condition is observed between the igb_watchdog_task and
shutdown on a dual-core i.MX6 based system with two I210 controllers.

Using printk, the igb_watchdog_task is hung in igb_read_phy_reg because
__igb_shutdown has already called __igb_close.

The fix is to delete timer and cancel the work after settting IGB_DOWN.
This approach mirrors igb_up.

reboot             kworker

__igb_shutdown
  rtnl_lock
  __igb_close
  :                igb_watchdog_task
  :                :
  :                igb_read_phy_reg (hung)
  rtnl_unlock

[1] Note that this is easier to reproduce with 'initcall_debug' logging
and additional and printk logging in igb_main.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
Changes in v2:
- Change strategy to avoid taking RTNL.
- Link to v1: https://lore.kernel.org/all/20250428115450.639-1-ian.ray@gehealthcare.com/
---
 drivers/net/ethernet/intel/igb/igb_main.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9e9a5900e6e5..a65ae7925ae8 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2175,10 +2175,14 @@ void igb_down(struct igb_adapter *adapter)
 	u32 tctl, rctl;
 	int i;

-	/* signal that we're down so the interrupt handler does not
-	 * reschedule our watchdog timer
+	/* The watchdog timer may be rescheduled, so explicitly
+	 * disable watchdog from being rescheduled.
 	 */
 	set_bit(__IGB_DOWN, &adapter->state);
+	timer_delete_sync(&adapter->watchdog_timer);
+	timer_delete_sync(&adapter->phy_info_timer);
+
+	cancel_work_sync(&adapter->watchdog_task);

 	/* disable receives in the hardware */
 	rctl = rd32(E1000_RCTL);
@@ -2210,9 +2214,6 @@ void igb_down(struct igb_adapter *adapter)
 		}
 	}

-	timer_delete_sync(&adapter->watchdog_timer);
-	timer_delete_sync(&adapter->phy_info_timer);
-
 	/* record the stats before reset*/
 	spin_lock(&adapter->stats64_lock);
 	igb_update_stats(adapter);
--
2.49.0


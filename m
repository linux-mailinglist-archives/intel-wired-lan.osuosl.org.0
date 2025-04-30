Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 776D9AA42F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 08:13:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5E9B60B5D;
	Wed, 30 Apr 2025 06:13:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IWMca3wuQWXA; Wed, 30 Apr 2025 06:13:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 483D460B38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745993624;
	bh=TeCyw32QqhEy6rLUjCRZJ8l6PfDyWm0B67y/uXdaVro=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VkzV7ttmI2OkdBPMreafdi64KB50DsiLRvU69ZFHzEXZOJKXuRL96/qM7y3k88J1Y
	 dp8wrwurzcTDnyZ2P9KJb3DOuq2NYXMJ0faRJ2hkNLZbB/0EOI3eZkqvNaPhVanJ75
	 b+15ObNn1C875cB2EF915/3EuvRRA1kszhJEz/5oS2FnBi30THWYoQ+95aqH3grNJt
	 TL6sU8/ystGpWl+c31ZxsFf5BWKYV+9xSMMhCG8mvhX2Asl9IY7897315qkJx6WkH7
	 IjF4IdjAjh6FYCr7miSYn8ZdwaFKjzmk2oGrrsZmv7MH/wAMf6ZXBYcsSZ/5V8WFqy
	 qN2Gt3OUi88iA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 483D460B38;
	Wed, 30 Apr 2025 06:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B50D1C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 06:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4D4EB408FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 06:13:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EVQvGjqjqFgs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 06:13:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.237.56;
 helo=nam12-bn8-obe.outbound.protection.outlook.com;
 envelope-from=ian.ray@gehealthcare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A138403B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A138403B8
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2056.outbound.protection.outlook.com [40.107.237.56])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A138403B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 06:13:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v4mLhzX8R/+yTLkBkhDPaMUDsEAvK5Q6kmw2I2zrmQcJMW8SzYjS1j4q65bqX1fJrsJWK6HYmSy9IM+rvgMqDTJTjMD1WBTKKUYOACTUeimC5FxwwEbsQCWgoLHS8xdZ/ZjxbihrizkCHZi5CbhJTy7vUZ4eA7e9eqyZwIqMqW+issX5MgIKc+1D8eM0cqy552S/Gd0RAnApg3LOW7F4QV1bJI1lIbDWJ7GVmFgqQzaxfG3BsOsahAAgOpDoSfPWQ6ZI4S7wE/6vbY5LSW1bT0ZAzzRDLWDG27NldFyhB81uUdxVZWTej+WitK4qXSb8bBvfbBzSj6XMsI/F2Yq1Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TeCyw32QqhEy6rLUjCRZJ8l6PfDyWm0B67y/uXdaVro=;
 b=fRZX47Y9rKWVklPfXk/UcQeuNeeaVcfJPssQTiN7o1kfxYTml3ksYlePHLEzzSXKHfiLXHty/jBnNXLwnXeo27bZTNwxAy7EL01OTllHNDTY5eCHDWbN4T1suXYpYN0bqgISpCOza7dULte0cyzcPm80QYqSv8P6LLU71WVXs99Cn7rzi96pdbj/LeJHp2i7egF8x/An9Bft+55sSUQywPeWDceSCQsQJdOywQ/NFfGarDft8qH4dx8YQMUDUqXxik7oF18S/swMDbqocQVm3oeJqhqtsvUo7mAf3Jxqx0DHxXeBzUv2bEYYPdqNToCzTBENhb6sM459QFisKsrF5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
Received: from SA9PR13CA0096.namprd13.prod.outlook.com (2603:10b6:806:24::11)
 by MW4PR22MB2973.namprd22.prod.outlook.com (2603:10b6:303:180::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Wed, 30 Apr
 2025 06:13:38 +0000
Received: from SA2PEPF000015CA.namprd03.prod.outlook.com
 (2603:10b6:806:24:cafe::34) by SA9PR13CA0096.outlook.office365.com
 (2603:10b6:806:24::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.33 via Frontend Transport; Wed,
 30 Apr 2025 06:13:38 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay1.compute.ge-healthcare.net;
Received: from atlrelay1.compute.ge-healthcare.net (165.85.157.49) by
 SA2PEPF000015CA.mail.protection.outlook.com (10.167.241.200) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.20 via Frontend Transport; Wed, 30 Apr 2025 06:13:38 +0000
Received: from 0ec9f3ddc3bf (zoo13.fihel.lab.ge-healthcare.net
 [10.168.174.111])
 by builder1.fihel.lab.ge-healthcare.net (Postfix) with SMTP id BB28FCFB78;
 Wed, 30 Apr 2025 09:13:34 +0300 (EEST)
Date: Wed, 30 Apr 2025 09:13:34 +0300
From: Ian Ray <ian.ray@gehealthcare.com>
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 ian.ray@gehealthcare.com
Message-ID: <aBG_jm62ngj0Mqq-@0ec9f3ddc3bf>
References: <20250428115450.639-1-ian.ray@gehealthcare.com>
 <20250429152021.GP3339421@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250429152021.GP3339421@horms.kernel.org>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF000015CA:EE_|MW4PR22MB2973:EE_
X-MS-Office365-Filtering-Correlation-Id: 4326da8c-3e7f-45f6-75eb-08dd87ae25b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700013|82310400026|1800799024|376014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?f2V+LjK+1s4//FJ8v+2ZE6rHIn/n/W+Eq4dCi/5RsWsjtDftvSWWPgKU4c4g?=
 =?us-ascii?Q?a0yUkTCk8fdJZXX5dwZR4Kh8VEzlqCegLNdmSrGQZunOnUv1c5bCw4THr0hi?=
 =?us-ascii?Q?JO1PO1xSoWyrWvGlN3tacZ3fX9/yRmVTTBGlRPa+37aMMB5AO5tGoRUeR4DG?=
 =?us-ascii?Q?B5ekEeU8jP3kc508P2gzv5veuCol0NoyZ/Kpkz0oZDaV8Z293AqlBVu+RpUN?=
 =?us-ascii?Q?D/48VabIqgD8J9Cw2qRqLkH7kHaxwMbHfg7mNwvPTw05SunsfpEcAcu37Ma0?=
 =?us-ascii?Q?KG0lzHGBrArhHqyb0OAi9R/EHKBxHGw40mfF+hmJiPQvdsNwo8ObZtGBe79Y?=
 =?us-ascii?Q?kbr684FeqKwnn8foyKN3P4qf/Jierac/XmUvQtIyYfCMRDMsTkzZMjL68+ff?=
 =?us-ascii?Q?kYDuQUyf/ZmlRaT1cQ5QWeHhS4QIKXTylv8l4UVSoxVyQouyPKi0cAs2GUgM?=
 =?us-ascii?Q?oU610YYA7FFG/fDtdDhC2O4NmiWN6Cz/Rk2+oTAQmdKGjoRgLxo5gp8MB5mh?=
 =?us-ascii?Q?aHeyCPqpGoTjLd6naGByc45t0OVOPULghZcCsrA5pTmBP1SmTbi6/edEJGCd?=
 =?us-ascii?Q?6WH2GIwNSWT7P4HgTb4Yov+lk1Oevd/HykvGnzTuNDywblj2qu7kNb9W6SSg?=
 =?us-ascii?Q?3YLjNLYA4ql5i/VB6IetaACLRlXPwkKTkew/Iv/stGDKIOlm1QA7CnOpuVrI?=
 =?us-ascii?Q?BM21xb8DmDSo0f9i2fCGi2FzHRtqvP2tWhGU9fkhZjKxDPWoE21Uta3TxGaL?=
 =?us-ascii?Q?Y1JwGFolxs+maLGv1+mnblqzTkicZKCpxLSTF1cx5j7tdrFsRi1y0hTup5vz?=
 =?us-ascii?Q?lSSM8DB9m/ovR1W8EBbCm5rHZU1I71mN9SutByB/Nv0lLYgip15jaI3jbK2d?=
 =?us-ascii?Q?bccf03NJ9gAKGP68Z8ZGwJEGwqX2YrFSDMr9579oPPc9uG0pnXDPohI4Yu1X?=
 =?us-ascii?Q?RJMv99/WJbJfrgUZMlfLlE4/bRnF9ubIZ89c0eXZjvppob6icUVZzZf9WfPM?=
 =?us-ascii?Q?qa7FrOijuNFHIDaCA6PggYy10pr0KQ88bG5R0W96lXDSY/ljinf534w1zrrn?=
 =?us-ascii?Q?2H/9xuFOFi3w2LSE8WKl6t0B+GKKbeqkm7f47bYVu5vZ1JVHIj6N+rk6kiA/?=
 =?us-ascii?Q?Hn3hUhZ9TqaVluPuYgjZ0GZjnlD1SGrVyveM40rTexO75podc53nH6qspYxB?=
 =?us-ascii?Q?zdWhv/1kkBjDGwX5PXPQmLDm+trXkwFdWi4q/KozQBEIGYgK5x2BEMHZZAVe?=
 =?us-ascii?Q?DQCLxDKROJEZO57bGZlk+b+YyoaKiH1RulrhqtIMMwuHAEiqGlflDwNSezPV?=
 =?us-ascii?Q?nUDPkqg2++ETcIBrbtNfEtEN0SqWr7OGXOUyY1eupCwAETwRAs+qKGtQfwBQ?=
 =?us-ascii?Q?yzlFLdAeS81vE7Psg5CNbm8YAu/wJaWZ/AMUywk1EjhHqFtajvkrr4lkYppI?=
 =?us-ascii?Q?94TzzGLFmYJpwyD8a8yOxVzfSZphGM5bGwBddvgcsai6Ns2GL1IL5XCWusQx?=
 =?us-ascii?Q?66VqlXMkcNhxsQZfXKgLG7yQQKseILPlNp0B?=
X-Forefront-Antispam-Report: CIP:165.85.157.49; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:atlrelay1.compute.ge-healthcare.net;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 06:13:38.0832 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4326da8c-3e7f-45f6-75eb-08dd87ae25b5
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf; Ip=[165.85.157.49];
 Helo=[atlrelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-SA2PEPF000015CA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR22MB2973
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gehealthcare.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TeCyw32QqhEy6rLUjCRZJ8l6PfDyWm0B67y/uXdaVro=;
 b=wYZ8EB20vAkgIaKw4U4bSQ8lXA/JH95PiWdabI6sv4R4G5uKVjDtDy4FFbvsBSf+wmPIcF34u8hFs1/3bpWbOxYy1HWrvrWkg+7kqieHXz1tPnjoOxLUy5eRH4j+iFnxIzyzNUd9IBbKiqVgoMGc5FR5SUjaYqSFCxrkLxavT9liWuBxDmugpCGc/u9UgRpVJWLbkq7dfZMASrJGpz3ruIYq83GJXrogBn+eVp6mgNwCNJh/GTLlX3NTZ6T1SJPAqk50Cybdg9u4hdyN/yWTeaSPVKFpYoYevYqJHefV+oFlQ8ZzDiSQ0zCQ45Q3kRJCRQzLGGWyIlfVmKu4tY3qbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gehealthcare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gehealthcare.com header.i=@gehealthcare.com
 header.a=rsa-sha256 header.s=selector1 header.b=wYZ8EB20
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix watchdog_task race with
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

On Tue, Apr 29, 2025 at 04:20:21PM +0100, Simon Horman wrote:
> + Toke
> 
> On Mon, Apr 28, 2025 at 02:54:49PM +0300, Ian Ray wrote:
> > A rare [1] race condition is observed between the igb_watchdog_task and
> > shutdown on a dual-core i.MX6 based system with two I210 controllers.
> >
> > Using printk, the igb_watchdog_task is hung in igb_read_phy_reg because
> > __igb_shutdown has already called __igb_close.
> >
> > Fix this by locking in igb_watchdog_task (in the same way as is done in
> > igb_reset_task).
> >
> > reboot             kworker
> >
> > __igb_shutdown
> >   rtnl_lock
> >   __igb_close
> >   :                igb_watchdog_task
> >   :                :
> >   :                igb_read_phy_reg (hung)
> >   rtnl_unlock
> >
> > [1] Note that this is easier to reproduce with 'initcall_debug' logging
> > and additional and printk logging in igb_main.
> >
> > Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
> 
> Hi Ian,
> 
> Thanks for your patch.
> 
> While I think that the simplicity of this approach may well be appropriate
> as a fix for the problem described I do have a concern.
> 
> I am worried that taking RTNL each time the watchdog tasks will create
> unnecessary lock contention. That may manifest in weird and wonderful ways
> in future.  Maybe this patch doesn't make things materially worse in that
> regard.  But it would be nice to have a plan to move away from using RTNL,
> as is happening elsewhere.
> 
> ...

Hi Simon,

Many thanks for the review.  I've been reflecting on the patch (and
discussing internally) and I think it would be better to model the
behaviour on igb_remove instead of igb_reset_task.  Meaning that the
timer should be deleted, and the work cancelled, after setting bit
IGB_DOWN.  This would mirror igb_up.  (And has the advantage of not
using the RTNL.)

(As you can probably tell) I am not very familiar with this subsystem,
but the modified proposal, below, works well in my testing.  I will
happily send a V2 if you think this is a better direction.

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 291348505868..d4b905469cc2 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2173,10 +2173,14 @@ void igb_down(struct igb_adapter *adapter)
        u32 tctl, rctl;
        int i;

-       /* signal that we're down so the interrupt handler does not
-        * reschedule our watchdog timer
+       /* The watchdog timer may be rescheduled, so explicitly
+        * disable watchdog from being rescheduled.
         */
        set_bit(__IGB_DOWN, &adapter->state);
+       del_timer_sync(&adapter->watchdog_timer);
+       del_timer_sync(&adapter->phy_info_timer);
+
+       cancel_work_sync(&adapter->watchdog_task);

        /* disable receives in the hardware */
        rctl = rd32(E1000_RCTL);
@@ -2207,11 +2211,6 @@ void igb_down(struct igb_adapter *adapter)
                }
        }

-       del_timer_sync(&adapter->watchdog_timer);
-       del_timer_sync(&adapter->phy_info_timer);
-
-       cancel_work_sync(&adapter->watchdog_task);
-
        /* record the stats before reset*/
        spin_lock(&adapter->stats64_lock);
        igb_update_stats(adapter);

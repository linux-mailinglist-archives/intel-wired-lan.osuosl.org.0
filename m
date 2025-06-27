Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 819E4AEB8E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 15:29:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54D208445E;
	Fri, 27 Jun 2025 13:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhmlI6-t1GF0; Fri, 27 Jun 2025 13:29:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3B378445F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751030945;
	bh=eF3N9Hs4FL4yAT9TCiuvGagJDX1oMXKdzIIQJEohH5g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DLfWF/vXgPNj91o/W4/Ew7sSKxew8MinRolUCQKeczegKeHadTsNQC317IbJK+f0R
	 dZycLeyjYdAcb5rY9I/WxQ8EscP72ZiqfUgwTL+YchLXq0j1MH1w7B0UqYByQadQMt
	 C61DKmoNf7k8RlqJ8zIql/18LFtlIOqMVnhL+S7iU31m8Qz+r67SbvZlZWnkEmiBaV
	 e50a6K+faINtOTI+xqTpB6+Y8gFUg+/MbJaPbRqQvBWCQRirVeyPUF5Q8JRYnEIk5V
	 ic6kc81500O2xkx86nQ8pA9imTGf9gp7Z4vMUXcQgfC1uj6uN+hv/r6vtibSVmVHfa
	 LOpQ5uhekpp+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3B378445F;
	Fri, 27 Jun 2025 13:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EAD3D154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC45661294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:29:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXnxyo3TfTAk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 13:29:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.236.41;
 helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=ian.ray@gehealthcare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1502261289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1502261289
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1502261289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:29:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nS04Pzg3wkuO0DkZtwuyTD6QxYVB/jewBa20C0C06Ej9TmuvkZ+fAgmMBllZ4yYhY2+QsGB6aO68mi+qB7Q56rRbpFscjkcxQ6GH6SEtpwHFMD/hIgrm2t8dS4e8j8zWfkb0cP5uh9pmFPftwwPSk3x0JzLCksPZ26bULJqnLSNHqVEWEqCn8wHrTD+Ca44/br3WQf9svTrO2JoasTUNQzETm2VeK0K5RpvPl1rOo5VkJP2Eh1N0j1hjj7Ds+i3898OJZ5FNuvqJ51jcGg/Canb5uJJkor8azNd2AFIPbGFXRLGiVPd9Ks7TbIbLpZO2Jv4QpwXuhn2H6H6h5oiTQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eF3N9Hs4FL4yAT9TCiuvGagJDX1oMXKdzIIQJEohH5g=;
 b=RFqACo3T6eo983XGYO+69TgGdHndPDu/M3HiUHx+drVyR0wm2qmSQO7Gp0Z0+W5wY8gEtidKtcrGTATQ58O66ie142yXXiWO1eDi/iB72mqtim8n6mpcsNO4FvBidx5x+K+OO6HGEdCDBuZZa5UCyNvDP14sQaaaAnmkXG7g9PCv1PAn+2zpVr/3D8ap4lpMnacWkTSVBJ+UHnbDVhCAvXPcw5lN/mpAHW87+j5ZCV0YBQjxAiu2Hr8mOKnAGzVzKjymRBBKtPLD4D9POpFxVo1ou7p4HcYn1eEqsvNQt3vvNaTkcWF7HpKR2SaSB7w56LR+h7wASGrpuMlPfYHEvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
Received: from BN0PR04CA0005.namprd04.prod.outlook.com (2603:10b6:408:ee::10)
 by PH7PR22MB4020.namprd22.prod.outlook.com (2603:10b6:510:240::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.22; Fri, 27 Jun
 2025 13:29:01 +0000
Received: from BN2PEPF000044AA.namprd04.prod.outlook.com
 (2603:10b6:408:ee:cafe::31) by BN0PR04CA0005.outlook.office365.com
 (2603:10b6:408:ee::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8880.20 via Frontend Transport; Fri,
 27 Jun 2025 13:29:01 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay2.compute.ge-healthcare.net;
Received: from atlrelay2.compute.ge-healthcare.net (165.85.157.49) by
 BN2PEPF000044AA.mail.protection.outlook.com (10.167.243.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8880.14 via Frontend Transport; Fri, 27 Jun 2025 13:29:00 +0000
Received: from b3410ffb93c4 (zoo13.fihel.lab.ge-healthcare.net
 [10.168.174.111])
 by builder1.fihel.lab.ge-healthcare.net (Postfix) with SMTP id 26113D04CB;
 Fri, 27 Jun 2025 16:28:57 +0300 (EEST)
Date: Fri, 27 Jun 2025 16:28:56 +0300
From: Ian Ray <ian.ray@gehealthcare.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, horms@kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <aF6cmKkrJSV_AWBN@b3410ffb93c4>
References: <20250603080949.1681-1-ian.ray@gehealthcare.com>
 <20250605184339.7a4e0f96@kernel.org>
 <aEaAGqP-KtcYCMs-@50995b80b0f4>
 <20250609161039.00c73103@kernel.org>
 <aEgokTyzDrZ6p4aL@21d8f0102f10>
 <3504878c-6b3f-4d5f-bcfd-2e7e4a912570@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3504878c-6b3f-4d5f-bcfd-2e7e4a912570@intel.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN2PEPF000044AA:EE_|PH7PR22MB4020:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c1c0c05-5a8e-4a8a-5aaa-08ddb57e939c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|36860700013|82310400026|376014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZDTcVL5VwPasy23p/Yn/v/olPpuw4kw69H7/K8PP1SKG+jSxctBc8y0CjVc3?=
 =?us-ascii?Q?syF7znNAxcw6EQBmii72+Qj74cQnLe1AqhspNKtpMsTkIBaU+YNvvjRG5n4g?=
 =?us-ascii?Q?JiuCuYicTZd8IspbKtWoYhqnTWJE1klVHu49nxA2jFARc/2rchnLpyJ/FxSw?=
 =?us-ascii?Q?6QJmUE9H+D4b985HT7TiVKRFKOLBD3Kxh4acTeMHV3On1kT/IDBhAHdylgFS?=
 =?us-ascii?Q?tDDn7Lb7tWOLlR53DaR3nyIDmY7iY0NjBjZCAicjH9rsDCInaZXg0sVJMIsX?=
 =?us-ascii?Q?PCFxMt6dx2KKrRnBz7JGU1EQt49SmVtr1AdTaV4NMwwHzcFFMaTkssVZ3Yag?=
 =?us-ascii?Q?TqYtHm6/aNa3VXFTz/CxRk+ER1b3DghLMvlh3uTqhsTcs6Ji4OWOqLZscy/6?=
 =?us-ascii?Q?XF1OAHZdLR5HKHJzVymJPJF8MhQgAkTfgUFHONZufIvhjPgKX7mOwjQ3wEkH?=
 =?us-ascii?Q?pMQYPxMMvX8innP9d6W3vXdoahAxuEMzV1DoGnWNITd5VIVAIAGNQuYDroGw?=
 =?us-ascii?Q?s+tbGXmNHOBx6/Vb61ATDSC66nMVRD2cnJFlJBLVQyK1JNBdjfg4wTfrSyRr?=
 =?us-ascii?Q?HwhPYUL9he+6jb1KJREJhKJ42UNt5SM41yxgRVlKBWNA31f+0i3NhT4N0RoY?=
 =?us-ascii?Q?MeFpx8F9kYfnx2GkeNkNBjRnVoMo1p+o6Wmma2nKr2uYde3zabNocNkBK+ou?=
 =?us-ascii?Q?ggD5JxFRTzsHvK8iseO0yi2xS8R1gqXglwrqUMvvQReaAotvRA6OAXzsR7Bl?=
 =?us-ascii?Q?A9EJ3COoA4Qy5ODD6F7odY4MvMq926UpLta0L3iUBYJXiiktTTY/9W1rpeh+?=
 =?us-ascii?Q?rVdqZmHYgGqMG84HqpBkrY+6As+jtAXfNCQV9vNCShZcK7+jb8aABC6aePbB?=
 =?us-ascii?Q?8NXRu9C+pGvHYh5MyhNVDtR03z+XDXE74+ARQIC5J1rIMIZrBFLRAtFVoiYT?=
 =?us-ascii?Q?5pNtoB6qKYJCZv1LzYdZ0ZewIefTAai2e3Ee3cr+aQSVIuQa4xRZa039yTzc?=
 =?us-ascii?Q?OWywt3NSMYjqllgwxpELLLYKlWajArQZnbZhgL3DtsEze3Nz3LOX8znsle9E?=
 =?us-ascii?Q?NjbLTb9YkdXAgyGF9AhM8y1JxurQdei+dY1/sNVEXNRsSVo3ZWuC5BVH6wgJ?=
 =?us-ascii?Q?B/PB+/RWHB7NciHk5FB6YGCAT9nwzZqs9uDKOq30Lye/B2+YeL9TqBs5Zlal?=
 =?us-ascii?Q?yFc0TiT//oxTZKN/sBRrHlTJndsbU/RP723qVDfdd570PJ/asqHlmkbRhWbd?=
 =?us-ascii?Q?nONPh3+SlddAm1oslSRWX9Z13ym242Z+CySSQKjLZ0w6/Iz4hCrLC2bRjTCw?=
 =?us-ascii?Q?05DhknU/mx4IaVTmk1UA4ufn7zs27flOH6jdlEhkQHNXU/vHBv3oetsfH+c0?=
 =?us-ascii?Q?Upm7D75LzwTOg5Ln5mWOVNP37y24IsKQJg0//9GkG+VY6O50JPTthaUQOz6e?=
 =?us-ascii?Q?IG5biQHyThkTXUxqz9Pt2W7haj9Que50Xl7ai5Y1FnIl/7hpxizupBLE/hx3?=
 =?us-ascii?Q?1zFreG0O9iADMD5NGLB7WM1zL2Ng9G0/TRhJ?=
X-Forefront-Antispam-Report: CIP:165.85.157.49; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:atlrelay2.compute.ge-healthcare.net;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 13:29:00.1407 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c1c0c05-5a8e-4a8a-5aaa-08ddb57e939c
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf; Ip=[165.85.157.49];
 Helo=[atlrelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BN2PEPF000044AA.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR22MB4020
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gehealthcare.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eF3N9Hs4FL4yAT9TCiuvGagJDX1oMXKdzIIQJEohH5g=;
 b=rY6u5fxhTkwRVJpIjnSo5+kzu+VhZpbZWDJK2nUKhSRML+kZb7SaXJK0tP2fQJtJWhg6PLBL63exa7PocxQzbmdop+uuhuGs8puNGrb1cOBpBp1/ltljIouOLcqhIA+Eh5Y9qvPLRP3MzpAf+6WnDMz5UsMblDJ8xvXHgsDMAvXL7NaVjPeh52zCoyu33+WmOqJZ4N9qy4zyhQjQiSLJ9O9AQyLsJVILiRwuO2SwVn9D+Cm4JPuLqdvPD5U+GfKSnH3C6wEoPVrNcbo4kfMxwUJPWd1bBzBmAcJW2gz2SiFW7mzhILlcIjWKhRv5jhKCLa+nymb+x9HWnT7c821xIw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gehealthcare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gehealthcare.com header.i=@gehealthcare.com
 header.a=rsa-sha256 header.s=selector1 header.b=rY6u5fxh
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix watchdog_task race with
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

On Mon, Jun 16, 2025 at 02:47:29PM -0700, Jacob Keller wrote:
> On 6/10/2025 5:44 AM, Ian Ray wrote:
> > On Mon, Jun 09, 2025 at 04:10:39PM -0700, Jakub Kicinski wrote:
:
> > IIUC set_bit() is an atomic operation (via bitops.h), and so
> > my previous comment still stands.
> >
> > (Sorry if I have misunderstood your question.)
> >
> > Either watchdog_task runs just before __IGB_DOWN is set (and
> > the timer is stopped by this patch) -- or watchdog_task runs
> > just after __IGB_DOWN is set (and thus the timer will not be
> > restarted).
> >
> > In both cases, the final cancel_work_sync ensures that the
> > watchdog_task completes before igb_down() continues.
> >
> > Regards,
> > Ian
> 
> Hmm. Well set_bit is atomic, but I don't think it has ordering
> guarantees on its own. Wouldn't we need to be using a barrier here to
> guarantee ordering here?
> 
> Perhaps cancel_work_sync has barriers implied and that makes this work
> properly?

Ah, I see.  I checked the cancel_work_documentation and implementation
and I am not sure we can make any assumptions about barriers.

Would two additional calls to smp_mb__after_atomic() be acceptable?
Something like this (on top of this series v2).

-- >8 --
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a65ae7925ae8..9b63dc594454 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2179,6 +2179,7 @@ void igb_down(struct igb_adapter *adapter)
         * disable watchdog from being rescheduled.
         */
        set_bit(__IGB_DOWN, &adapter->state);
+       smp_mb__after_atomic();
        timer_delete_sync(&adapter->watchdog_timer);
        timer_delete_sync(&adapter->phy_info_timer);

@@ -3886,6 +3887,7 @@ static void igb_remove(struct pci_dev *pdev)
         * disable watchdog from being rescheduled.
         */
        set_bit(__IGB_DOWN, &adapter->state);
+       smp_mb__after_atomic();
        timer_delete_sync(&adapter->watchdog_timer);
        timer_delete_sync(&adapter->phy_info_timer);
-- >8 --

Thanks,
Ian

> 
> > ORDERING
> > --------
> >
> > Like with atomic_t, the rule of thumb is:
> >
> >  - non-RMW operations are unordered;
> >
> >  - RMW operations that have no return value are unordered;
> >
> >  - RMW operations that have a return value are fully ordered.
> >
> >  - RMW operations that are conditional are fully ordered.
> >
> > Except for a successful test_and_set_bit_lock() which has ACQUIRE semantics,
> > clear_bit_unlock() which has RELEASE semantics and test_bit_acquire which has
> > ACQUIRE semantics.
> >
> 
> set_bit is listed as a RMW without a return value, so its unordered.
> That makes me think we'd want clear_bit_unlock() if the cancel_work_sync
> itself doesn't provide the barriers we need.
> 
> Thanks,
> Jake

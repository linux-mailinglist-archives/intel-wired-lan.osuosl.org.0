Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B58AAD1896
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 08:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5017880D78;
	Mon,  9 Jun 2025 06:33:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HUEfBEHljOuW; Mon,  9 Jun 2025 06:33:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFC2680D84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749450785;
	bh=MmAYUg7O6dkTdkIiBtg/5kdLBbcYIVSTeEcnUEGi/DI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OFn/p3KaOJdAy80DnN3qNPg1sK7ALRrKvZ3bHM5dJ1rCHKoe7VAI84HmNYN3V6uEe
	 WcyT1JCQ4+IUhb9FEm5i50GNJJEqgpslpXCnNSv0q1gDxF4PuLVovwkzyONARTIKgi
	 ZB9yFau7gX+sjSJFYuBmVRSCkDYiGaHoo3bb/zmrcYIih64GJvD5KfaUq0HTl2EG2E
	 8RHu76LOxGpj6XYEAmiPSnME+NQGC8QuTvlyVSEv1Hfk62kKFetiC7XScWk9JMfQ9P
	 Kh8obcK9MlWP0Js3A6otehzo2SG4Iu8QLiKSFa/BIel9+A3aH+fnOOgIQJCsplwRFq
	 8/gP7aQtYQRBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFC2680D84;
	Mon,  9 Jun 2025 06:33:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E94D31F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 06:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB2F6409C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 06:33:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZ27zSjDpilM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 06:33:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.88;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=ian.ray@gehealthcare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 20C77409BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20C77409BD
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2088.outbound.protection.outlook.com [40.107.220.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20C77409BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 06:33:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t/nImNYuP+mRD5wT+27xKPxiZFfffxbkvir4jHjhbnFV9shDSyBud3ldVYuJUi7Wz5Nr8V1WYQzQsNqwRwGvQIB17n2LokfvR/BVJXKQoHHpFEwi7K1FEIlijlfFd+l6k95ayzpZ87NhaTQ+vpX3+AC25kAJWkHxHI2O76xRgHgbciJ3ZiKQMG5DTs1HHDVuPXX6Lwg9JPz63Hl4gsbJhjZvYZRG43gi6vGJ8y9GHIXQWaTEm3w1pZhaeCK8YKQ3M4R4g6EAezzrwef3qGkuoXvO/nzLqMDPyG51AH0YP0aRzp8oGlFutEBI3rHAVTyeY6sabpAfzW/5CpuUu+o18w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MmAYUg7O6dkTdkIiBtg/5kdLBbcYIVSTeEcnUEGi/DI=;
 b=QGJ6uddIn9eihynipaVxlsuQ9lC/Xdf+DcuQywY+VmxxM2Ft70UKtnwLyhCubgFvea7NdciQQoW/y4Ur+XxuiO3Esbej5i653/VtUTP5VE1aNjT6VISf9GGWO+L3pJGmVPUOcPWHcnYokT1V0tToFFO6W3vgfocAEPHbtcm+375mdv0NsAD+j6B8Z7v6s7HKvM+m6dk/ahPPGNwdp+VQSPQmUSs9D6Vv8eCwWsAC3u5UU1ZOV3yh1NbmcX/ZxGo098tYHeKw3FaELOQo2CWgRlQjwvPfQLCYfFGVFyNPkoWASBMCyLWqkJghq3C9MrT1s8GbbIcisoTWgh31djS/Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
Received: from DS7PR03CA0250.namprd03.prod.outlook.com (2603:10b6:5:3b3::15)
 by LV8PR22MB5198.namprd22.prod.outlook.com (2603:10b6:408:1cc::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.22; Mon, 9 Jun
 2025 06:33:02 +0000
Received: from CH3PEPF00000016.namprd21.prod.outlook.com
 (2603:10b6:5:3b3:cafe::90) by DS7PR03CA0250.outlook.office365.com
 (2603:10b6:5:3b3::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.35 via Frontend Transport; Mon,
 9 Jun 2025 06:33:02 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay2.compute.ge-healthcare.net;
Received: from mkerelay2.compute.ge-healthcare.net (165.85.157.49) by
 CH3PEPF00000016.mail.protection.outlook.com (10.167.244.121) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.2 via Frontend Transport; Mon, 9 Jun 2025 06:33:02 +0000
Received: from 50995b80b0f4 (zoo13.fihel.lab.ge-healthcare.net
 [10.168.174.111])
 by builder1.fihel.lab.ge-healthcare.net (Postfix) with SMTP id 61CCDCFB78;
 Mon,  9 Jun 2025 09:32:59 +0300 (EEST)
Date: Mon, 9 Jun 2025 09:32:58 +0300
From: Ian Ray <ian.ray@gehealthcare.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: horms@kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <aEaAGqP-KtcYCMs-@50995b80b0f4>
References: <20250603080949.1681-1-ian.ray@gehealthcare.com>
 <20250605184339.7a4e0f96@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250605184339.7a4e0f96@kernel.org>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PEPF00000016:EE_|LV8PR22MB5198:EE_
X-MS-Office365-Filtering-Correlation-Id: 78273920-4ec6-4f47-2d9b-08dda71f7bf6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|36860700013|82310400026; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0EUZVTxUZmGOQ+1cN7Vq2K/B3OJ76+a8yx2ITFQIGa6+vDQCRpZvuHMJ37kf?=
 =?us-ascii?Q?6l30cmqoeboYsutYFefNi68bkGtJ2Xi4Bz0LPPWs4DLYQ+Hn4PvHfWbmxRMx?=
 =?us-ascii?Q?NamO++jfXcDiAtVu2UR1DSRRB1cpHC6oVa8InYmqjTnOSQ8bRVH+pjjHxAAk?=
 =?us-ascii?Q?qUuEdengWr5Ap5CVb2moJi2UzAVQMaHUPIDcIF2gbeYT1x7QHV52EyYUWnG2?=
 =?us-ascii?Q?nVMI34jf7YAQCSVDg0aMJTC970okIXrstFFETPSON9Sb1iNdb6NSN2gxSeVe?=
 =?us-ascii?Q?JlxqxK4EZqjf+QAGW6hwppw5ofpUeERIsSSe5psx6gBkvNW/7NACBGO3vNuX?=
 =?us-ascii?Q?1p3OyXaPXTt7VVA+PbJ+HQrbocj+sPJzCXZawv2jIfOCPJzAPnsKtGDKg1En?=
 =?us-ascii?Q?0r69jKLdcMy+X7OvPsQu36LJuXabUxxRaIRR7zCzLp2Ev5ji7kora5AbJMUP?=
 =?us-ascii?Q?027SD5lhV+px/AQmqmj1+cAeXpIb+G3kxqa+0o6zWogOKXOlIZWoMWAYenJo?=
 =?us-ascii?Q?VpezRk2Ph348d8A+tSMeAY24Dgww1kigQgSbrwraA7ulgQTnD/5FtzXx81HF?=
 =?us-ascii?Q?yg74fWb7q54+xICru1W3EM4iu+U4zZ/Q6W6EjlwQYsvOqNBgA8qWP+DeD+pr?=
 =?us-ascii?Q?To+F/NL0p+AMHgTB90aSwuJ7Nr3Bod74qHTbEolm/4nkFCrjVcKCTgbcQBgb?=
 =?us-ascii?Q?01mDb+IXoWEPw6iJgpOK2CmcCUCuzGw//irSuq4iExtSSXN+GG7TyY9mOaF4?=
 =?us-ascii?Q?5eKHAikX5DBbO5ZahILHG5sxhADfBI6ZqTiP1ro50cIGEs2imPYpzn4guThC?=
 =?us-ascii?Q?RNuNfhDt0JhHwqvUT9hbCs7SQuoxW8lM83vQYQtkxFH5xKbEXgrXyOopoyNk?=
 =?us-ascii?Q?+G11+mIodadAb5TVCVQEEfTbFqzS3lv2d6xJJhbxKlYGD92zXfI3pj0e3vfr?=
 =?us-ascii?Q?VVSRvOVeFkJ6ZJQsrdhYoxkCoTeJv31JlPknVixEnDuKgpPsrqhEWtplpmTV?=
 =?us-ascii?Q?wx4oDgFGLD/8M+08YuIn1hAHGlXq5bBUvDSkzDrCuUcJiMARsnCMlmLzweJg?=
 =?us-ascii?Q?IyWoGOXYdiTP/NSvXFj+JJkEWDO5VkQKaIrO9/tUJM4uCo7B91eoJ1EkKp+W?=
 =?us-ascii?Q?CwRrBU2zmnQ1DA7hAs47zYoT1xqdhUhGPmkuXXZdembH7qcPjVjkq2ri/CZm?=
 =?us-ascii?Q?p8kddxjboPWYdntBOY20RePBkLYCGCA90V+8QQydvc7UsMYF2myJnshhZXRQ?=
 =?us-ascii?Q?WBPSEOW4UuAy8Tu86WiS1J8mxOehrH5xd8pNkMgZOKEY6Z2v49v2mG40vSkJ?=
 =?us-ascii?Q?lmgyaAIO3/xrpy74J8rOMjfG9//y/JBH9zc1kNGb7aiZdZX+gg+neZ7lH2A0?=
 =?us-ascii?Q?FW5bG9pXE/fhJ/MLNz9ktOw/HgqpkobHK1UwUg/QA7w3Ko+kSnHknSPLl7JD?=
 =?us-ascii?Q?wIkSGwaZ7zW1zSozxAc68SCXyEXW1podytZ1/z+E4FPAW3YnxtSMqum0wcMl?=
 =?us-ascii?Q?r0lymfMIsNxIHSkFoVsYR3hYvmziXqLABdJT?=
X-Forefront-Antispam-Report: CIP:165.85.157.49; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mkerelay2.compute.ge-healthcare.net;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2025 06:33:02.0719 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 78273920-4ec6-4f47-2d9b-08dda71f7bf6
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf; Ip=[165.85.157.49];
 Helo=[mkerelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CH3PEPF00000016.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR22MB5198
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gehealthcare.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MmAYUg7O6dkTdkIiBtg/5kdLBbcYIVSTeEcnUEGi/DI=;
 b=gosGOGoXoBO6EFKSYJ7BLzdxI/HVgSxGIoekTpHZVDjT7XYqX5FhEiNcxi/kRSkMki5i2CmOIGi0cZTTtoWlaczV9vfq77CCxj72YuPScUdfdyDbVvszTuFQPeuuwhcokYmXac8EeXkie4PalmhFJYScIEgrGA+IjM0vaKwgugA6wjjEH8hPIvIjEOCQehW3PsHocbEnKBcVIxAmJms/29AQmZc+D+foXSn0C5tPEskCX9EFjCU4QSh2NNj1S2IKA7W3+6GwxctMT5hCu49PIWJXwvKzaEsd6BIvPK6BZa0k39DxV/8xkCxhsw3JCVlia8HA8E0Gw5NKuZLcrrartQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gehealthcare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gehealthcare.com header.i=@gehealthcare.com
 header.a=rsa-sha256 header.s=selector1 header.b=gosGOGoX
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

On Thu, Jun 05, 2025 at 06:43:39PM -0700, Jakub Kicinski wrote:
> On Tue,  3 Jun 2025 11:09:49 +0300 Ian Ray wrote:
> >       set_bit(__IGB_DOWN, &adapter->state);
> > +     timer_delete_sync(&adapter->watchdog_timer);
> > +     timer_delete_sync(&adapter->phy_info_timer);
> > +
> > +     cancel_work_sync(&adapter->watchdog_task);
> 
> This doesn't look very race-proof as watchdog_task
> can schedule the timer as its last operation?

Thanks for the reply.  __IGB_DOWN is the key to this design.

If watchdog_task runs *before* __IGB_DOWN is set, then the
timer is stopped (by this patch) as required.

However, if watchdog_task runs *after* __IGB_DOWN is set,
then the timer will not even be started (by watchdog_task).

Regards,
Ian

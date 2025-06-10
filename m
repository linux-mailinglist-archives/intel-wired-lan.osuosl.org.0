Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22454AD36DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 14:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E636607E6;
	Tue, 10 Jun 2025 12:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qF6SIkvwXmh7; Tue, 10 Jun 2025 12:44:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFC5D607F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749559449;
	bh=5rvFG/s44dSh43jpN7X+yiaV6dbW7lt4BxMya6NDJbQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=npnXA9nO4BAbWFHaqBwunkP9c0La4H2XpG58lH2TrKIkIxWnaTOSmNZMZe6xyOaWg
	 wmosckv9F2kefY6yin8EYH1jfJUJ+tGK56Vw8xkQNAoLCJXSi6swcDQ5O+qfn1SasS
	 R+gTxZ2xSk9deharbcelS+i6RGnTbKL/zVRsFDlDMt2+RPQ5POz1tMVZ8ImAyjmXWU
	 4f8+9WTZLd2P2aUGAyH1JrELySh1w41CRDcz6ljuLjtbnTJ72+TLwACm0+SOqx7HH5
	 2CKuOnXl6VPjbrSnpKRPlfHIUWE5ITvaI0zCKVw9K56FLC8jLQhmag/ep+PRyVVpti
	 E+B/r41SvwMQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFC5D607F5;
	Tue, 10 Jun 2025 12:44:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E890D183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 12:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2E3640DB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 12:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rOMZ-wGcoT7D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 12:44:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.95.58;
 helo=nam02-dm3-obe.outbound.protection.outlook.com;
 envelope-from=ian.ray@gehealthcare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 28D5B40D74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28D5B40D74
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2058.outbound.protection.outlook.com [40.107.95.58])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28D5B40D74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 12:44:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/Vci3Lftfc0qsspKoh3yByRmIwMG5sU1o+/Wywj7Q9Cd+j/OwTWobAu87rKJPjHFJdMJ/sLXAOpmpZAhZS38PEK4Hw7xowgdAV0b9gaMNzOuYjMfPWEc2Fw+PMPRlSNYA0GDVDCaSQ4BJFbOXHMFH+Wog2bNEHzE9+ufivYZjk09NVRhGyKX66xowLGYG6OP/3HUakHoFQ++5s0qU9z/Eq4TpSi56KTjHPlOeKo77mODnAK4/ZJOp/67J0gQHVsgUaIXvOW0vneB3EBC9Tv2FmNqo2xvN9Gv+dyK5DQmAVQi6sCiP+sfipNDBuD/VkC+QRkSdSALyomFibUrYsb6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rvFG/s44dSh43jpN7X+yiaV6dbW7lt4BxMya6NDJbQ=;
 b=jWqTXEHvO0XGzjJ1xPwpfjBsYw335b4ALZNf6G8sgZVPmu9I05vQnvJXgRKncpnbbBnafsXW37qdifXjGoyDrgXiVsYLIB2Pwu7gYIsJVbzCGwagvm1nmfBBUHEjkvFkfP5DBHm2VMNCQDYutKhgESea6i4grbLcCzXsKl0tBWSg4NWNkx0ZqLo74Taq7apWhxzlbYXlQHBqnjCwg69cQDfwhm1MRpcLN10mdDAwF+qznvEPUr/gtySSMCeOEgUpx073s8L3BRzpPITO6w2Pnfygy3F0SUW8lnuvMe4x/FOuSM8GSphJKS8XiJNwnIIC2WiUnPjXxWHrei8Ysm4aXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=lists.osuosl.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
Received: from SN1PR12CA0054.namprd12.prod.outlook.com (2603:10b6:802:20::25)
 by SJ2PR22MB5058.namprd22.prod.outlook.com (2603:10b6:a03:593::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.28; Tue, 10 Jun
 2025 12:44:05 +0000
Received: from SN1PEPF0002636B.namprd02.prod.outlook.com
 (2603:10b6:802:20:cafe::f3) by SN1PR12CA0054.outlook.office365.com
 (2603:10b6:802:20::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8792.35 via Frontend Transport; Tue,
 10 Jun 2025 12:44:05 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 SN1PEPF0002636B.mail.protection.outlook.com (10.167.241.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.15 via Frontend Transport; Tue, 10 Jun 2025 12:44:04 +0000
Received: from 21d8f0102f10 (zoo13.fihel.lab.ge-healthcare.net
 [10.168.174.111])
 by builder1.fihel.lab.ge-healthcare.net (Postfix) with SMTP id B877ECFB78;
 Tue, 10 Jun 2025 15:44:01 +0300 (EEST)
Date: Tue, 10 Jun 2025 15:44:01 +0300
From: Ian Ray <ian.ray@gehealthcare.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: horms@kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <aEgokTyzDrZ6p4aL@21d8f0102f10>
References: <20250603080949.1681-1-ian.ray@gehealthcare.com>
 <20250605184339.7a4e0f96@kernel.org>
 <aEaAGqP-KtcYCMs-@50995b80b0f4>
 <20250609161039.00c73103@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250609161039.00c73103@kernel.org>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002636B:EE_|SJ2PR22MB5058:EE_
X-MS-Office365-Filtering-Correlation-Id: 095b0773-11d4-4c9f-7eb3-08dda81c7bf9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700013|82310400026|376014|1800799024; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BRPsOpj/K3MrTn8e2G4sBnyOV0oECsv6bvMeV6o1KcrcsIUzfi+rDWBrtBKt?=
 =?us-ascii?Q?JU35j1AEaPIl3GZNI/t2WEyUNAFC3vOUIeVFRDBKx3K5IuaP3l9P/wi6GRWC?=
 =?us-ascii?Q?gRZkjZDRCe9fbheQkDm9/gmvKEDkxLyNgQ7+sNQrjb1aWHn6BeAT+/zMtFQa?=
 =?us-ascii?Q?qEeJi+UA05zqmz/xk3ds2Jh1AeB4sdAB9xKBARHSc8f/IvOC4iiTZGqQ2oQF?=
 =?us-ascii?Q?Ri6NwIsRrAkTV1qeKRVw57YSEWWnsQOXtYac+XuVQ1cer2zv1fSaqLgLzd86?=
 =?us-ascii?Q?PR/9/tPp/LUMFM2nY66oYUkR8jp0LL3auXkpk+3s20Ix+Ec9GsT3gGm64AnI?=
 =?us-ascii?Q?G3bvaYUBqoYA3mjR3bEgjCuuDMMH626QLmPsqUvDur2VarpI33Bq8Lfppu/k?=
 =?us-ascii?Q?tZ1UJ7aYdtYRimijtSwA99rLTXNAuL4CHhIMTxCEGKIepkRhNOIs41CZpDbs?=
 =?us-ascii?Q?+HnnlTWyXfid6N7wT+1gH5I9/9JIuX0H2qgUy4KCaipj4jr8GOSAGk2BRtiW?=
 =?us-ascii?Q?7eTseIpanKt797LCg8Jb/qzay2gfGmD7KWdKahO9nqgxbzsseJuuwVsdyLdV?=
 =?us-ascii?Q?LG5KaepiovmFioVKz6HHaSr17WzEXEcqs3KGRLvcZlfL8c8m6WtfCnnp9IqF?=
 =?us-ascii?Q?2XHApsc6Ma9wdH3/HVXGejWj2wmnexIl4B3yQTHKSgiw6NbkmshR3tl1H65r?=
 =?us-ascii?Q?FlkONtpeCQKSKPUXnj+E4Kokn1HyLNfvfCn11zwCdoMpIpbIsNNJXQBtx3sq?=
 =?us-ascii?Q?9HxUPrZSZepXfKY5hxBYXkXSImIYjOjgRS2Hn0zXY/Gt92ExMW17LJNA8FN7?=
 =?us-ascii?Q?eD+YJe+4Iu3RSAMoQW3mJ3coLfWxImBmYF22SVOAqB3B+MiqPzf6bfTgsQwT?=
 =?us-ascii?Q?SBl8VoICgrYejhHO2+eYePMb0O+fe0hNrhT59Z8ru89rXD9DY7OcSPrKs71W?=
 =?us-ascii?Q?Z2A1K6lF+EuDkptG/vl3eGkwoqoxQcI6ONFMn4HC0eCQXVZyvCLf5GfU7BMQ?=
 =?us-ascii?Q?frToLyTrAyBGhuQOCfg1DJWQ6axSCuNzIGRFdwR7XZy16ZU7RNlHMb2GwZNq?=
 =?us-ascii?Q?FBHPS0TVHdqlfkQDd23Ti3HU1sxymTwjq9aMfwl51KsovJKqRgfopcOLwX2K?=
 =?us-ascii?Q?37yxK+Z8b9X9sPy554HKoHWdK5kG3GNf52hs9t6kDkwVONylZoxXD9MRxFRi?=
 =?us-ascii?Q?iM2Nguvw9UpX/KYsUZWqB2rvcULEBpK2o5qrSrV+wCyfvdeq9vX6jBIOP+7O?=
 =?us-ascii?Q?2zRr7g6grBETJONm45/FY0VoKscJu8IgyUeHwL9CH8fsPhwj6LWj3Loq8HTQ?=
 =?us-ascii?Q?H1LR2aGRIzrjDor+bifWiNKt8UpDbfKnyb4nTHRlBqnKlyhlg63N6RUCXe1F?=
 =?us-ascii?Q?boZ3WYCtkOycY9FK8dm4JjbxSN1YCbehW6LX+/ID+1Qj3/m/ZFFmitVwxVam?=
 =?us-ascii?Q?jm5GS/SSiEygHomPtkDng0bD8M23WqMZIsLsqqa0l+5QnLlV6wBVi9S4CO6D?=
 =?us-ascii?Q?FfFkn9vglM7VWvMFMYBrbL1MoPhC6ovxtJrZ?=
X-Forefront-Antispam-Report: CIP:165.85.157.49; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mkerelay1.compute.ge-healthcare.net;
 PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 12:44:04.7046 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 095b0773-11d4-4c9f-7eb3-08dda81c7bf9
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf; Ip=[165.85.157.49];
 Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-SN1PEPF0002636B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR22MB5058
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gehealthcare.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rvFG/s44dSh43jpN7X+yiaV6dbW7lt4BxMya6NDJbQ=;
 b=RuYpR94Yx/P6q6W5Brjh1HSVdBWdMzXNIK9n25LxOLJhxXl0SwDZDGWgKvA72NkK7kIyrnsP58A+sXXQx9qbElkT70jAo2O7qeM33dwYkEiUcUHBBk+jxo3YwN4b3QCvwLRguWPEUa7ji+u+YtL+3To3BbEySwdJZ7jXNewFIiuzNT2tIo5BuSQq18/OpUvgyEV7sSfizoyMTDct9x6bgowSkwv4cnL5r6dZw1ch5Gt0MEPvMj/uiU6P1he7pQJimkc9tWP9G7SHIUX7Pt95nM5K9+g9+1Nc2xX9xXka4GKuiOGYXwdscX87nH5uLo5e7sKkwllwAjibCGbtTFYp7g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gehealthcare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gehealthcare.com header.i=@gehealthcare.com
 header.a=rsa-sha256 header.s=selector1 header.b=RuYpR94Y
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

On Mon, Jun 09, 2025 at 04:10:39PM -0700, Jakub Kicinski wrote:
> On Mon, 9 Jun 2025 09:32:58 +0300 Ian Ray wrote:
> > On Thu, Jun 05, 2025 at 06:43:39PM -0700, Jakub Kicinski wrote:
> > > On Tue,  3 Jun 2025 11:09:49 +0300 Ian Ray wrote:
> > > >       set_bit(__IGB_DOWN, &adapter->state);
> > > > +     timer_delete_sync(&adapter->watchdog_timer);
> > > > +     timer_delete_sync(&adapter->phy_info_timer);
> > > > +
> > > > +     cancel_work_sync(&adapter->watchdog_task);
> > >
> > > This doesn't look very race-proof as watchdog_task
> > > can schedule the timer as its last operation?
> >
> > Thanks for the reply.  __IGB_DOWN is the key to this design.
> >
> > If watchdog_task runs *before* __IGB_DOWN is set, then the
> > timer is stopped (by this patch) as required.
> >
> > However, if watchdog_task runs *after* __IGB_DOWN is set,
> > then the timer will not even be started (by watchdog_task).
> 
> Well, yes, but what if the two functions run *simultaneously*
> There is no mutual exclusion between these two pieces of code AFAICT

Thank you for clarifying.

IIUC set_bit() is an atomic operation (via bitops.h), and so
my previous comment still stands.

(Sorry if I have misunderstood your question.)

Either watchdog_task runs just before __IGB_DOWN is set (and
the timer is stopped by this patch) -- or watchdog_task runs
just after __IGB_DOWN is set (and thus the timer will not be
restarted).

In both cases, the final cancel_work_sync ensures that the
watchdog_task completes before igb_down() continues.

Regards,
Ian

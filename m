Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7031385A2E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 13:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE95381DCA;
	Mon, 19 Feb 2024 12:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4tgG-rLOn5SR; Mon, 19 Feb 2024 12:13:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B10B181DCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708344799;
	bh=AnyhMm8T+6QkouziiMQfmSaEypXIMPnD1nYL74ik90M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4gdGA9G/9d0vnX99pjdN4NhW66pE8qGv2IIrXOgbWvuuRcZoe6vG0SA/hRsHRChD/
	 R8s0nhEF0Pqx2oZQ9CJSs4j4++teX2bX4VKlZPcpuOA6exleVfikzdTVQGHPnUKn87
	 nKXpNlTStrbdGMd2hvcyyTVTZG6owTH1wr0ASNBqgEArwfqMw6YL13YoodSu28cilg
	 n+0LEgMk9SFC/m/cxdkSWS7XRCuohBbXMC+VKmeSU4JWRvTgCoChSuwkldB8mii/Rr
	 GIOjlV8KIpefMOi9/CrJTabkXWMPZNUr2/fQ41uikuxEAPKdg/c58U1OnTfCQqGb35
	 kgN+qIkGCHTdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B10B181DCB;
	Mon, 19 Feb 2024 12:13:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D12351BF228
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 12:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9FFB81769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 12:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMkhSrNG3HB6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 12:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8DD4881764
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DD4881764
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DD4881764
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 12:13:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="2323885"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="2323885"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 04:13:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="9099485"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2024 04:13:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 19 Feb 2024 04:13:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 19 Feb 2024 04:13:13 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 19 Feb 2024 04:13:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlUlpo2gDVxIDrNMuZM7srGE7SgNFdXks1szHCyg1AOK+M4rFNDBv3Rpd8xUEL9+rtkhO9IVcjHMKIgg8kaeFvTyxdU/EElvO8og7Qi+E6eMUiC+K/OPQ/Ra+LsiLV4YTL1c6mBs8zxyDlJFADIydHfiY7oPJ1tyynbG+fIVtiUg68DVpdlHd80266KWRyha8j+GIphJhgZFGp1vR/iY8J0Ti1ZS932KlDNACuC4/MI44MfBp/ShfqJ0y1Y2vSVYwDzCedNMp4IEx+OfYOvTiwjKAewaTcwoSeRgfKaX0Hhv980vXFcbQ0SRwX5e3ChLxe8zNFTDdqI7Q1k+Z+xXFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AnyhMm8T+6QkouziiMQfmSaEypXIMPnD1nYL74ik90M=;
 b=oZVZ6JGq3J3pYwim9gY820pCB/HR551FO+oAJUCp35MhXvhhALXEGL5+i0ToEfSSzLSzi8ZtDS+Ifr8qW58hg7dpgF6FvtQUT0MDFmIIo6FSyZZQg3EPKQ9+Ub8tTy9gKoN0dBM8ZYtsnDLQhNY3WrT2DY+IQJKeKApnjEovuedBVdv/wGeZc6Ua3BuIP44bTY5ejo/O2PBVkR27MHy4Jz6H63FRmzIrYWoo/96JmJtEtyj3eIlHAL0CBVZ1G+XGRVTOKyNWLAqm46eBAez7irZsdptr6SZNnRIIZ0HR0hjTZ+1NdUMG1uCDeBOsBbirwNf4k2LJ8/QRWqBQvCrACg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY5PR11MB6392.namprd11.prod.outlook.com (2603:10b6:930:37::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.29; Mon, 19 Feb 2024 12:13:10 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7292.036; Mon, 19 Feb 2024
 12:13:10 +0000
Date: Mon, 19 Feb 2024 13:13:04 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>
Message-ID: <ZdNF0ArChUkGzk42@boxer>
References: <20240219090843.9307-1-florian.kauer@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240219090843.9307-1-florian.kauer@linutronix.de>
X-ClientProxiedBy: DBBPR09CA0041.eurprd09.prod.outlook.com
 (2603:10a6:10:d4::29) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY5PR11MB6392:EE_
X-MS-Office365-Filtering-Correlation-Id: 2317593f-1a63-4e60-86df-08dc314423c4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i9Is87oJIl9rIQ9CtPhV67oItodjb30MmYmQB4Y2w11xFkRTZBqCmXPVYd7DpnJNpZuP+7A4gF0EGiqTuvZxh0h1ZLTbBEa8vXIrYb55DSqnW4hNiUffpfGtACetNEAs9U9k6/K3bkl/Kc8OcFP52GVf/Ee/xHULOmZyY3Ttc9UONhfOb7W0Y51z3bFykoqP49OEM6rVnFOOPKSnkNiUJXiiW4O4zd4/kK1DCtg+nW5e82g8KA+xjY6OKPfQe2AWpYn3LTx0m2kst/oPFaJN7yFuLG2QANizgjyCbOxwNw0aBkKNcdsphK4fI6sxVbQ5+YutmRyzQsOmYjJF4j0UNoce3ZguoRbkaBwNuqGASB+LZBSaTbHgUWzl90qWuBo2bmiEBLL8yH9r+80P44KR+lhSRUC6K3I9rmpqpI2/fe98Wx5TFCmwCLwU2SaxgnOwCc4XbYXVgZkTDtD9gZUSAXPUCfxy0vvoovmBpqJeg37LMSai8eBIO/oSx1/mhVaX59Vw5665t2A6tu2BrM5VdWkngdtaR9umtAcZHwzULw8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tqwmGu7yZhp8xAXwJe8PnNrveWwha7ZJus4BJ9jGVuvhK1LucWSoqRdPqqoN?=
 =?us-ascii?Q?Ngge7Vol1IYIR3QsyBwchFEn2jOvRfCp6SchSLx8DOZoP1Sw72Sj9WT0CYiw?=
 =?us-ascii?Q?86PfzVLjl0i1q5Lla32MYR9y/Mcj6sVy8Gc2shHzzWSjsxRs60ZK+7whtbK5?=
 =?us-ascii?Q?Z0oZg2L+6p0/RKRAwu2tzSbGFsMmb+ex2iYVd/+SkNHpN4TCM/jDLmWTIhB0?=
 =?us-ascii?Q?NHbsReCQQ/oUjwTznXsErOZPJMVdbfcbkuw3E+nk5QsHNxQCYTJ0mBZHPuLK?=
 =?us-ascii?Q?JIvVi2KL88toMpCdkyKj3zZyuC3I5I2Muqe21Tzxud2e5wdB2E9yFh6rbLKj?=
 =?us-ascii?Q?7T2xn1mJcitUNRPMgH1mcaoOQIUTI8i7bGH2fxIHP8JixWt3FmF4v2VW9Ipu?=
 =?us-ascii?Q?+2iOAAmvFqfaKmQzjHPExvZYcU0ewe2b1dsmIg+nXfG2DjHngbYrlMe5E0Hr?=
 =?us-ascii?Q?Hz6aY64u0x2sPktb9jjGorDhl5nTmrIrmKCjV2ndGnZJsUvXHWj3ESIh3itV?=
 =?us-ascii?Q?l2qeS/ifIT8fILUCo0U/NgQxUaVcC7THvosoUzCr4ODUiRY9Z3d16NvowxK6?=
 =?us-ascii?Q?SivnC3k+fDpNudituNYT5InT43xPONxKR/cgBmTO8eOzDep7ZyHymJVMeoKu?=
 =?us-ascii?Q?dQnPOQRN0XmGtg+KCemmrqwMlpooW/Ukges62kDZ2mxzLUiZ4CP1kJCLkAlm?=
 =?us-ascii?Q?JBvYnm1+LNlt4rputZyzyR3VSGBLVQMqCTmzB7W4k4aIdllPlcBCJ1ZiaRTY?=
 =?us-ascii?Q?qTOx/CrfZtfqCwSor14GsbxPlglnN+1FcU4fjPXHCfrrSkmC21X3/Qoo6Plz?=
 =?us-ascii?Q?6TvXCDtaU3IRcfLOqNc7kAMvPekc2n6+fZsi+sBR4IC9OO6Mv6o4CREhSMsr?=
 =?us-ascii?Q?IRRnRP1z3e6CEtfrFPMFF+wyJaBf+Mu3jACZh0eO1NziPl/ayyV+L3GROyqI?=
 =?us-ascii?Q?hOS7CoKdlxBhvVNWZ93GVqnLxNf7v/AMoIgWgKJktrxEHPb1S7q/yOke0pJ3?=
 =?us-ascii?Q?0S1m+7W6rzQDJ/oUCKBMUElxUr/T+9MK2rVbXMiwfjklCbUGcy0BPaYUpBKP?=
 =?us-ascii?Q?Cdob3fo9rfXpnqzvgnh8+ZPIdrIAJk04Sf6EVrVEpXyWpjxYUqCs32V7ZxbT?=
 =?us-ascii?Q?TNkB9gFcKSvkqSUQiEIqT1GzX65Odm/lxFNz5oqh1o5n6jPcdipj6XxN0ksb?=
 =?us-ascii?Q?zXuMHuE+GaQlxREgaeE9niN/sn8nnfFNP6BLHOac51EQAkHpYauVDVtdvY5/?=
 =?us-ascii?Q?Em56yQSqIxvrPLikDCzi8pSJJGbUSWzhVcVTNMXbCucAioQwLCE/ztiK7vfQ?=
 =?us-ascii?Q?fBQraq6X0UNRM/D5j9CzPH82fLWcyBZryGp0Gz5N3a8I1kQtSHQL8ZGaf7rc?=
 =?us-ascii?Q?Emj6NA9wvKsMcxjFmtAlNCeOtGl29q4GsBnpmEU2Iul1Jiar9keIHd9gf+8o?=
 =?us-ascii?Q?RHtRBw3K7vZs5p/dWPBfK2mhv7otVbXJLRvKEqnvvaphXk+BVwCYV8oHfjul?=
 =?us-ascii?Q?xuTYcWsXQrRQrAFDUUaCa85RUmbnWqB5oofpldjeJqh+Q3s9Ekb+oO+fKldR?=
 =?us-ascii?Q?p7vTlt4ao2Ktxh/VDDxvMzmda/lUP9rXoJfuwYdmzdVZtCfaQXtyzZeDWylm?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2317593f-1a63-4e60-86df-08dc314423c4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2024 12:13:10.8556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LI+0794D0d1WMK3eZQOz79gELSXQeSkmIfE6lmii1bJj/nCHqjJTJr3MSNIHG2fiA1DqZMECKaqQOqdT9BHbziQ0q21RXbI75oE/LNHB5MI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6392
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708344797; x=1739880797;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PnSbytyJSaftXPQLerwmFUymUD9y2mNSlyqQUDNfqOk=;
 b=aoCZFdCeGodZScmKXJkE4AY055cOttu/zzDJ1sGb9QSnmEbDBdSxZpYX
 Z94s1U7ZU0dCZ0H3uafJqOEFWaXHpphZjzeo86s2M/E4l8Ka4Wtoz/yPK
 Dh2ogBW5eCohTMB+g9YI27ioZsrMbZQobuSQL558GqPcLrFTtQOEejEhK
 vpCgOaTHS+IFBKvdvtrQMGJM/+6LSJ8GPnyonHtcZI6N9dmN4TjLUTt1y
 pzqeadHT1feG7kVARB53fNytX6Zne8AErT3ka4+O88J2hwMJktnCCIonD
 6SCTLoLUQcEk3a1lThRcBTi73Af9/v4FVRuozzCBI3+0YJUlY+NvUJyF8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aoCZFdCe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: avoid returning frame
 twice in XDP_REDIRECT
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
Cc: Andre Guedes <andre.guedes@intel.com>, linux-kernel@vger.kernel.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jithu Joseph <jithu.joseph@intel.com>,
 intel-wired-lan@lists.osuosl.org, kurt@linutronix.de, John
 Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 19, 2024 at 10:08:43AM +0100, Florian Kauer wrote:
> When a frame can not be transmitted in XDP_REDIRECT
> (e.g. due to a full queue), it is necessary to free
> it by calling xdp_return_frame_rx_napi.
> 
> However, this is the reponsibility of the caller of
> the ndo_xdp_xmit (see for example bq_xmit_all in
> kernel/bpf/devmap.c) and thus calling it inside
> igc_xdp_xmit (which is the ndo_xdp_xmit of the igc
> driver) as well will lead to memory corruption.
> 
> In fact, bq_xmit_all expects that it can return all
> frames after the last successfully transmitted one.
> Therefore, break for the first not transmitted frame,
> but do not call xdp_return_frame_rx_napi in igc_xdp_xmit.
> This is equally implemented in other Intel drivers
> such as the igb.
> 
> There are two alternatives to this that were rejected:
> 1. Return num_frames as all the frames would have been
>    transmitted and release them inside igc_xdp_xmit.
>    While it might work technically, it is not what
>    the return value is meant to repesent (i.e. the
>    number of SUCCESSFULLY transmitted packets).
> 2. Rework kernel/bpf/devmap.c and all drivers to
>    support non-consecutively dropped packets.
>    Besides being complex, it likely has a negative
>    performance impact without a significant gain
>    since it is anyway unlikely that the next frame
>    can be transmitted if the previous one was dropped.
> 
> The memory corruption can be reproduced with
> the following script which leads to a kernel panic
> after a few seconds.  It basically generates more
> traffic than a i225 NIC can transmit and pushes it
> via XDP_REDIRECT from a virtual interface to the
> physical interface where frames get dropped.
> 
>    #!/bin/bash
>    INTERFACE=enp4s0
>    INTERFACE_IDX=`cat /sys/class/net/$INTERFACE/ifindex`
> 
>    sudo ip link add dev veth1 type veth peer name veth2
>    sudo ip link set up $INTERFACE
>    sudo ip link set up veth1
>    sudo ip link set up veth2
> 
>    cat << EOF > redirect.bpf.c
> 
>    SEC("prog")
>    int redirect(struct xdp_md *ctx)
>    {
>        return bpf_redirect($INTERFACE_IDX, 0);
>    }
> 
>    char _license[] SEC("license") = "GPL";
>    EOF
>    clang -O2 -g -Wall -target bpf -c redirect.bpf.c -o redirect.bpf.o
>    sudo ip link set veth2 xdp obj redirect.bpf.o
> 
>    cat << EOF > pass.bpf.c
> 
>    SEC("prog")
>    int pass(struct xdp_md *ctx)
>    {
>        return XDP_PASS;
>    }
> 
>    char _license[] SEC("license") = "GPL";
>    EOF
>    clang -O2 -g -Wall -target bpf -c pass.bpf.c -o pass.bpf.o
>    sudo ip link set $INTERFACE xdp obj pass.bpf.o
> 
>    cat << EOF > trafgen.cfg
> 
>    {
>      /* Ethernet Header */
>      0xe8, 0x6a, 0x64, 0x41, 0xbf, 0x46,
>      0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
>      const16(ETH_P_IP),
> 
>      /* IPv4 Header */
>      0b01000101, 0,   # IPv4 version, IHL, TOS
>      const16(1028),   # IPv4 total length (UDP length + 20 bytes (IP header))
>      const16(2),      # IPv4 ident
>      0b01000000, 0,   # IPv4 flags, fragmentation off
>      64,              # IPv4 TTL
>      17,              # Protocol UDP
>      csumip(14, 33),  # IPv4 checksum
> 
>      /* UDP Header */
>      10,  0, 1, 1,    # IP Src - adapt as needed
>      10,  0, 1, 2,    # IP Dest - adapt as needed
>      const16(6666),   # UDP Src Port
>      const16(6666),   # UDP Dest Port
>      const16(1008),   # UDP length (UDP header 8 bytes + payload length)
>      csumudp(14, 34), # UDP checksum
> 
>      /* Payload */
>      fill('W', 1000),
>    }
>    EOF
> 
>    sudo trafgen -i trafgen.cfg -b3000MB -o veth1 --cpp
> 
> Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Apparently fdc13979f91e ("bpf, devmap: Move drop error path to devmap for
XDP_REDIRECT") addressed all ndo_xdp_xmit callbacks but igc support was
added shortly after that...?

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ba8d3fe186ae..81c21a893ede 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6487,7 +6487,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>  	int cpu = smp_processor_id();
>  	struct netdev_queue *nq;
>  	struct igc_ring *ring;
> -	int i, drops;
> +	int i, nxmit;
>  
>  	if (unlikely(!netif_carrier_ok(dev)))
>  		return -ENETDOWN;
> @@ -6503,16 +6503,15 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>  	/* Avoid transmit queue timeout since we share it with the slow path */
>  	txq_trans_cond_update(nq);
>  
> -	drops = 0;
> +	nxmit = 0;
>  	for (i = 0; i < num_frames; i++) {
>  		int err;
>  		struct xdp_frame *xdpf = frames[i];
>  
>  		err = igc_xdp_init_tx_descriptor(ring, xdpf);
> -		if (err) {
> -			xdp_return_frame_rx_napi(xdpf);
> -			drops++;
> -		}
> +		if (err)
> +			break;
> +		nxmit++;
>  	}
>  
>  	if (flags & XDP_XMIT_FLUSH)
> @@ -6520,7 +6519,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
>  
>  	__netif_tx_unlock(nq);
>  
> -	return num_frames - drops;
> +	return nxmit;
>  }
>  
>  static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
> -- 
> 2.39.2
> 

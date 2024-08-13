Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB3095041F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 13:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CE6A80B56;
	Tue, 13 Aug 2024 11:49:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vAFEInMwrW4L; Tue, 13 Aug 2024 11:49:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C882680B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723549775;
	bh=9W2PmRxVZaTopLKPv2FuG1/ZBL7I2BokLPKLdSOxkmA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7BMdIXWfSxweDBVOUd0NIpdm501KVAn3wjBnSSt+3LbocQw6SvOvLZhTH3xej0AS6
	 LX9KNszi8NIfyGbh2doK1HSmrsqkT6e5gd+ziksriLlhjthSK2F/XK8UKOE05nL5wJ
	 0pvk/UEn4j4tKavM2FrjdrRxyP0XWghg5mJtR8f19/gpM2nbDJ1DEi3DGUvOjlB32j
	 aYW8lX97z/oDMaoId7bxD9DExw29YOfEX+EfIyAXPEwCYhoA2MI19/PypE3VJd8O2k
	 bdPmcxB7DHqL2hHv2Uyj4r5fD8bIerD74C61gFPLFAH+l1W2HP8Cn8SBIGPpeNmDIp
	 o6MLWi+ldxHeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C882680B1D;
	Tue, 13 Aug 2024 11:49:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F13A1BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16CA980B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBHPiMW8S9xd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 11:49:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8B3C780ADE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B3C780ADE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B3C780ADE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:49:32 +0000 (UTC)
X-CSE-ConnectionGUID: ZVklGTaTR+6KZgyhqjQcIg==
X-CSE-MsgGUID: 0Q7jNSZpS6qLu/v3hcMA0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="44227606"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="44227606"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 04:49:30 -0700
X-CSE-ConnectionGUID: ARwwo4pdRdWatORF2Gvbdw==
X-CSE-MsgGUID: AzqfSpwVQl6dtymN1b6Ikg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58337931"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 04:49:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 04:49:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 04:49:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 04:49:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NLXCUpXm2xA8zXUZgM/SOdPl/gU8OyQ1tnp6Nffo1YplxenY46UsRQYHugZ30aROU2b3w5zCxK64/WqM5jGLS7sMZGht7ftfUuZyG9MtLkwkA5x+LTGL8N8G3dfgiyy2yoUk1GyRcoy4eJ/AoQXhgUhjmKNNcRbL/wbdiVfPrWmuhH57HYhk754aR08DyX0KSM5xFMjwoOoUBAltROR17QSd/JLBKxGer+DWKUwBKg/l+PUaudSIANGAPRB+da3VeWaALO32PaO+DJdjb5KwRcEzp+4vaRhD8UOVVmueXCD8u4XZo0IH8sGuIu+qvU/Foq+T8BHRNuDyHTM5QNEPuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9W2PmRxVZaTopLKPv2FuG1/ZBL7I2BokLPKLdSOxkmA=;
 b=nXI/KdOON/YyxT+nRBNbBaRhDwWfWrxxVYSsdc8JuVdIlzKRbMACnBrWK3wN1AqGOPdwWTqxY6cEoKvarlkdXgP3lqbo0Y3OVswosso/6/QvlmQbotaKHbHEEUhIn8GMPmB2YgSBtR4IGIHdrfhECulBiICU38JWPuUsA36JymVHmZRn3o2BbYyMEtceHvAwPFL8lwhYzydduE7U+QlvRFugKi7EhSUXn86gYjuf3hfZx5+Esw+dAVCw2CcKjvbD9l8Y4ebh2P+0TH8z5e/glYvtuDnDNMGywmOB4DSWtyP401qvb+LGHKor3xOp8oFhMOPxqJT6ektgmE/VCGOgjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB7479.namprd11.prod.outlook.com (2603:10b6:510:27f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7828.25; Tue, 13 Aug 2024 11:49:26 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7828.023; Tue, 13 Aug 2024
 11:49:26 +0000
Date: Tue, 13 Aug 2024 13:49:15 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Message-ID: <ZrtIO2durwKP7ue/@boxer>
References: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
X-ClientProxiedBy: MI0P293CA0006.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB7479:EE_
X-MS-Office365-Filtering-Correlation-Id: 21d1e0c5-9a03-4f1f-0a2b-08dcbb8dfb7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZvoFTATMU3Tm+vU2iRR2lDKBbfW6sBkILu5X3VE2f2zaap58trRY71RpNOiD?=
 =?us-ascii?Q?V1doH1NYB3HDVSvogj1RQjrINU9xdoOGt1l9aWbnNgISIBV5NakoDqXHCQRA?=
 =?us-ascii?Q?/kcLOHRmFxAQb7mx51SUkc0DJje94ucxWT3mX4fqeN3lfN2/uO5xely4JgxF?=
 =?us-ascii?Q?ex+eZsSm9ZWke0WfffScqMDqa6xvQvA9FikxlGtP+YlqIj6LIvFluHv+uHwE?=
 =?us-ascii?Q?5XZqb+Z531J5RlsGPrLjtXyli6telym+bmSBDRvxoF2Dy/SbEqtkTmlpvLdL?=
 =?us-ascii?Q?lAXprhwlU/Jgr8upJrNxFUT2G0cKfOmeCqfp0enuqU1FlipJFrbuWEO9g5gk?=
 =?us-ascii?Q?xVcOsGMyVjVDbGtvVgNqW40f6w7eEFUYhOxQ6PdCLBC57/tFn7JtrUap8TxT?=
 =?us-ascii?Q?Kc0bnhUHj68odiovW5EjPhxSNpmCyjmD/jOEumeXqByeeCPK5BR/T9ck3v4B?=
 =?us-ascii?Q?o8gUcD+H8uyTQm7pdbRJHl4aFy0X9Ig/9Ao6p8KevmXVVK/Pcl8/v3sSH6C2?=
 =?us-ascii?Q?y7+eljGGjUlHq5YrtVbb8LWiDMx+3wyNj/Ugp6fi4ZzkJ3WuGTCbo0imtxXc?=
 =?us-ascii?Q?ywKh06Yv4jf05p5A7wKgdo606E7am8WhiJXkXEWACJN3q17BWENjNX9RBcCS?=
 =?us-ascii?Q?VS9aqYs1ixE4iEaJj/8ursqoKTNZKDQzH3uJIZjGqkyGqpDnC5KAElvzebUl?=
 =?us-ascii?Q?BUen9OsXfsvUXZ5sUnhRiwc1bE1RwKLceo6w42swGS7PVFmbSo+BThadIKcW?=
 =?us-ascii?Q?3od+M5RMHabWXbAfo4HFqn+5TfVLlHglQsboC+h3KnVq5JGb5UzI12cSEqel?=
 =?us-ascii?Q?RePgzZbBD1RVbJRuIqOo7921PCo0odcpLlUldnGXMKyCYRJfur7d9o3cuE3t?=
 =?us-ascii?Q?R1a4a74T+11aM+dzBNKlrd7vlI0bJtvUAAESNp2yaq+YrOGfLDiof47BJlMS?=
 =?us-ascii?Q?8cJpclCReUOos5uIz99+7k0L1Mmu6c+tdZCxubfrdpweel+VxMoJS+R1yfQ/?=
 =?us-ascii?Q?Pzk4AMS68Vbgb+5c5y8aaRURJ2mV6zxkccD1iWc3lZ4pP9GAfTLEx3fHkk3I?=
 =?us-ascii?Q?VLK3LLTToWyqTTVeG+qqG+GxRt2Tr85yktZFAvZyGySFV1SbAAswW2+NSbw1?=
 =?us-ascii?Q?3BO0cARvEDa1//UnTQegISfbMcHq0+RZzBmN4NR9XvztFGrET7GwfMMgK6md?=
 =?us-ascii?Q?6icL3hr8zXfTbtF+9p5vCraNlQpET0OzofGC9ZaBxjB38oZTBXNpjZ5slApx?=
 =?us-ascii?Q?o35bkW/06nNos1noYzskXh5zj4pV/piSFrg+BEuaurWWuYya7opxPyCOHfkl?=
 =?us-ascii?Q?SFI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I4pc/t3Hx/WeQaEh5w73TZLyErqSa4O4ptCl9b8jmU+Et8xqKGy8iKoz9UH9?=
 =?us-ascii?Q?PQ3NILhnqXkf8yowoHktyus+glyWv9ZlYruLwnXi2ae/vhxXj8uZMWB5Fg+5?=
 =?us-ascii?Q?s5XPDfgYmyApzemPfsRuXZfvngvuwO1KdgM8VpPC2zp6Jjvb2RJ7x8ZAHJCN?=
 =?us-ascii?Q?eHXSvT0KYOgauccq+G8b97WQaty0Q8ey9ybBd3WsL1ggQ9bM5zTMP8WHyQA+?=
 =?us-ascii?Q?aP7Wf+C/tZcwrbSR/csJjBzyyGQnu0IeL/82W0vcRvPR0l19ldto6QMrsDs2?=
 =?us-ascii?Q?4P5CAJSHTs95vOhLmLoYC6SoBdlR+8nrk28Q32UAjCaH0vobicC1kbbDAfRm?=
 =?us-ascii?Q?5fCQp1cCAQRqaTs5dl2JjyOSD7LSEzm7ZLQ2nm0mmwDbfaPUW7OyVguhW5Ig?=
 =?us-ascii?Q?Nmi2X4uhWCBPODAsEZsJ3rqtL6nN6rddj1gfn5ibcXxe5Tg5j0aWbLkZvQSw?=
 =?us-ascii?Q?UzY5jfHxENkswewebFYsEN8K+CfAo38hnzbvK3agqrQmJn1t371SIyjLTN8m?=
 =?us-ascii?Q?UFNhCpcfw7hCqGrRhkL/Lhv9f7yrAnhH8dOuWlJfzcWCZDu7KVTa8UKamX5O?=
 =?us-ascii?Q?PoR2KGska5Z8yVsUHiMASRPS/D4G2DORdOU6ALPkIxy46TZIGJJGEg3Zpn0h?=
 =?us-ascii?Q?P+7Q7sbR4zBEpFrFwEaiKn+BWd2zotSOdKjkcVvjM9BNhmDUOs6BSSQ12aVH?=
 =?us-ascii?Q?G4QucDFeLHpRdtW1eqdcnwVr0+ac/cT21KmHm4c7XBFMW09rA0XuQLnV7IpZ?=
 =?us-ascii?Q?Zl6Pal1sipJHAhxeHx9h9bMc7H5shYvxS2ewnxF5bXghmrALI3kIN7HJ9Iak?=
 =?us-ascii?Q?SEzj2SBM29MOGguWfcnM+mjzep50ZHwNK4nCZ+nGSG5tHWaRw1DD0aEsR4wP?=
 =?us-ascii?Q?NpPKcCc/VMRC+8LWzePWVCRT2wqtPhN+YZ/V7buDKJzx3Wki4ZVmVuOb49em?=
 =?us-ascii?Q?Pp0Oil1djl+up2XdtOBMTqLTNNh52+/2o/Cd51LdJom3bxDHX03Jml4Qm26u?=
 =?us-ascii?Q?Ce2BE8pFCdhtmuF77cg/6fJib7v2L6E4j2/OPVGTCHHXvDP7jrhiJ5re0F/c?=
 =?us-ascii?Q?NtaN0iy0ayHJIz1aJw9T6Gl6lgJOpfk1/Wypl69Bxf95SF+us+Q0lIMn823h?=
 =?us-ascii?Q?fUfMbRIWKj1OBbH0mLRXuElN4lkDgrH2wgpkJLy4qy9mnqpb5R7Z69SqBFL/?=
 =?us-ascii?Q?X4LP4O0gVEEydpxe/hVSEi6ps6QAd6h55zZA2tkW3qeQvmpTBHhl6CUArd9j?=
 =?us-ascii?Q?vgzao5RjYRg6413y+toMAfJ1M0398hTE5J6hzdJeXmXc38pb1yy+ZN33DtSb?=
 =?us-ascii?Q?50FzOkWUeF7n78BYHgk6wk/zt0qqz/2hVh3deRE3thPxBA8cIn5cf5osG+TL?=
 =?us-ascii?Q?EDD3VyWwe/N8gp/MirRONvjL6ohS0/+we0zBnSt7eqoUFEheC/v1wmcsjg+D?=
 =?us-ascii?Q?9ifh4FXZthuiUK+fy8nkbgZRfeamRYg6gaUwV0ab7RMXN7qGoYXs97mmnKKD?=
 =?us-ascii?Q?e1HixZmx82wcjN/SofYcLQ/hvzVD5YsOBiwsjNAeGLZusGkoCfRiBim4pCWs?=
 =?us-ascii?Q?BEH05oyEMC7zcOzW5dSbMCiu/CY7QGdu+sgSE8GnGlzEJmcN7DvSNuXiIBR2?=
 =?us-ascii?Q?ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d1e0c5-9a03-4f1f-0a2b-08dcbb8dfb7a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 11:49:26.4395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /NDPlthjtZ95joCCjpl/VtejywevCo5QUQzntXCqN0iEa8hrYsio3T3reSEYPa44mi0t0+nDi9ckYDSL4EvzKIz7CISHTfTNEvWNEt2mWbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723549772; x=1755085772;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kD2LXdnl176zvn8PT4klFVIK8h5+nhY2s0MfewO2jh0=;
 b=g/u+q+44rYV5/a3oJhY5JXcUFUJO2Q6aGrDO/KjFQKvIyhUyERQAe7EF
 opliIQJA4ImRJbDOIJLM1Qjme/WrihhP3TCIuH9ZbC0lhvWJ+iQih7znm
 Obf4SWKrlOWxIwswmg2MWqv01ZFRDeDiA2GzOI41E96qcvPZTePyaRzLQ
 J7rk/ecC+W1QvTrYZG/e3ilOBZ4KZE6fZaTPDLIN9jG4kkTs6YTaLKi8u
 T+/xKuvJj/TR3Ko9q349KwUClCLsvGOQU2I2TY0GqR+AWEvihdJ8Dd8GW
 zj8djKJbfBSnr6rLD5WXqf4CY/JeH0C1LG0b7RbGIDv9BCxJfFwON0HN5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g/u+q+44
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 12, 2024 at 02:50:09PM +0200, Dawid Osuchowski wrote:
> Ethtool callbacks can be executed while reset is in progress and try to
> access deleted resources, e.g. getting coalesce settings can result in a
> NULL pointer dereference seen below.
> 
> Reproduction steps:
> Once the driver is fully initialized, trigger reset:
> 	# echo 1 > /sys/class/net/<interface>/device/reset
> when reset is in progress try to get coalesce settings using ethtool:
> 	# ethtool -c <interface>
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> PGD 0 P4D 0
> Oops: Oops: 0000 [#1] PREEMPT SMP PTI
> CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
> RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
> RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
> RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
> R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
> FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
> Call Trace:
> <TASK>
> ice_get_coalesce+0x17/0x30 [ice]
> coalesce_prepare_data+0x61/0x80
> ethnl_default_doit+0xde/0x340
> genl_family_rcv_msg_doit+0xf2/0x150
> genl_rcv_msg+0x1b3/0x2c0
> netlink_rcv_skb+0x5b/0x110
> genl_rcv+0x28/0x40
> netlink_unicast+0x19c/0x290
> netlink_sendmsg+0x222/0x490
> __sys_sendto+0x1df/0x1f0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x82/0x160
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> RIP: 0033:0x7faee60d8e27
> 
> Calling netif_device_detach() before reset makes the net core not call
> the driver when ethtool command is issued, the attempt to execute an
> ethtool command during reset will result in the following message:
> 
>     netlink error: No such device
> 
> instead of NULL pointer dereference. Once reset is done and
> ice_rebuild() is executing, the netif_device_attach() is called to allow
> for ethtool operations to occur again in a safe manner.
> 
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")

What about other intel drivers tho?

> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> ---
> Changes since v1:
> * Changed Fixes tag to point to another commit
> * Minified the stacktrace
> 
> Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5be90@kernel.org/
> Previous attempt: https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@linux.intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index eaa73cc200f4..16b4920741ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -608,6 +608,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  			memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_qopt));
>  		}
>  	}
> +	if (vsi->netdev)
> +		netif_device_detach(vsi->netdev);
>  skip:
>  
>  	/* clear SW filtering DB */
> @@ -7568,11 +7570,13 @@ static void ice_update_pf_netdev_link(struct ice_pf *pf)
>  
>  		ice_get_link_status(pf->vsi[i]->port_info, &link_up);
>  		if (link_up) {
> +			netif_device_attach(pf->vsi[i]->netdev);
>  			netif_carrier_on(pf->vsi[i]->netdev);
>  			netif_tx_wake_all_queues(pf->vsi[i]->netdev);
>  		} else {
>  			netif_carrier_off(pf->vsi[i]->netdev);
>  			netif_tx_stop_all_queues(pf->vsi[i]->netdev);
> +			netif_device_detach(pf->vsi[i]->netdev);
>  		}
>  	}
>  }
> -- 
> 2.44.0
> 
> 

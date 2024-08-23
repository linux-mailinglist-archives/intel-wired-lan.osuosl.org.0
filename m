Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AAB95CB3A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 13:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18BBC8188D;
	Fri, 23 Aug 2024 11:20:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PuLE8yijRtnn; Fri, 23 Aug 2024 11:20:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CA89818AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724412040;
	bh=3FOKuEFOYRIpccfxG8w8QOqDUqDv76LVSxdB8ETRXpg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z86v0hqap/D5uj6Syn8Q8DnY0c8PQuJDu7+K4+xYu75SdDxwFWnQzGlYZOlmu32oO
	 4VLQYuPIJjwGSwd/crzvTg+hFfvBLqb7OKk8RbPps+1buEWpBMlflPj1AlCGidhogQ
	 c7tyDLkv+pcpoTmjeByxeMzSoO31hiL2nYbi5Oz1mqTlOWm4BI72pGE/pn/mLJmcmo
	 ISgE+vQJmu4KTh8jy/4YGB1RUF0zt4FW26jTR4TIxOZAs4npyG5iLtb9VPFq+yzYHo
	 gjAKmCEU4k7RVDjyyEvE03cElmIe2p2O6xVEqwKI5p1tF9PhY8D75FEfjbKnBgSC4z
	 HDBtHjBrxMU/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CA89818AC;
	Fri, 23 Aug 2024 11:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCB81BF314
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 11:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AAE08186B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 11:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nDgRArLwIwV1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 11:20:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4DFDB817BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DFDB817BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DFDB817BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 11:20:36 +0000 (UTC)
X-CSE-ConnectionGUID: o3Kerf25SHuBIlaN4TYyhg==
X-CSE-MsgGUID: CTv7V3SHSBqyzlr3k79PLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33441444"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="33441444"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 04:20:36 -0700
X-CSE-ConnectionGUID: IwbE52FsQNmi9g9REs/row==
X-CSE-MsgGUID: sEPoMaXkSRmfANw0ZGSyEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="61917894"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Aug 2024 04:20:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 23 Aug 2024 04:20:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 23 Aug 2024 04:20:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 23 Aug 2024 04:20:34 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 23 Aug 2024 04:20:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wa98Zl2I70BZ5sZ8CJR9wVHPfQPp83X8paoIAg2tHNtLNm4NMAi5YQQbcXyfLNQM75ZLPHWZPgWsl9laDOp1gGg7jBjPCiro3PGYZAzhF9cN68br6XAwCgpGVOLa9XdqB6sk+QtRkPOv54vMfNZ5MbZooH7wuS5U0e5wm3x1LO3dGuEl+GcTJovXJ2GEQ4/yHzjX/w2IcafNkj9XAQIerYY8kefgITVGpcUyh07b5CuNhop/1WArAALeAjXE3vBEaIA5mKA+7uRv4MEuz+0TL12AbsoxSZ6OjZnR2Z7hl1/w4EAH3Tp4hwAKyELbEXBEaVzOrbgvU2NnsczPcJSPFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3FOKuEFOYRIpccfxG8w8QOqDUqDv76LVSxdB8ETRXpg=;
 b=vjXz0tEjT5Vpe+ercNW3WIh6BaKxSBgUiUHP2btwDMUy4YSrXwlpl4NImT6+E7ULvRKJ61eyoTl2PuVO2DwmSey2NqLLMVeqcPBHfh3Zdf8rCc9Ba9AzGV/vt6xDl1poYIMD7Kz6YDrDM53lk32cwaDgTlS5Thq+AH15YPtN4oM8yIBA/cBIzP91witI1Ye9765B+xZ6zEkM2qq4xkMzluL192+B0rzz4TNe+gmL/DRZpKZofFpVkOGTPxR+QoxO0apubzfc1wXozFZXyGYs7vb+ej4H98YatRwywquTzP1GTWiopAYGTgT3MCqxmXZuDW2JHyZFCyUPSIuku0zYVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Fri, 23 Aug
 2024 11:20:31 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 11:20:31 +0000
Date: Fri, 23 Aug 2024 13:20:22 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <ZshwdidOXJGojVaa@boxer>
References: <20240823095933.17922-1-larysa.zaremba@intel.com>
 <20240823095933.17922-2-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240823095933.17922-2-larysa.zaremba@intel.com>
X-ClientProxiedBy: ZR2P278CA0061.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA2PR11MB5033:EE_
X-MS-Office365-Filtering-Correlation-Id: 72880fa7-61d6-4c70-514e-08dcc3659926
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3MBFGWREq9NLFx9v0HhyiWFfUski0FF8qPNu39WFbil+8Luv50qq6PwvC5Sf?=
 =?us-ascii?Q?WA3Qz7tbpc+yIwPKsEq/vBTA3nfx0OXvj33CXw2dDk5uW43osjtsD/BkiMmy?=
 =?us-ascii?Q?qXlJSC1Q2beuPxJqJe3G7GqEeGPkxZ6lYxIWYidBrlAgDyCh1BaHW+kDMMGg?=
 =?us-ascii?Q?foVXrs2Pev9/OlMGs0qYjoxUsckGzyJj8JHDDvymXEKDoYgmkeTRdz15eaBZ?=
 =?us-ascii?Q?b1psFcpWrWpEjOO1/25erurx+pNY375TwECWbQfZ5LfHXepYHJTbHwYU+T1A?=
 =?us-ascii?Q?tYwZtS4v37eBryzXxypF7pYU24tK5FBWb9vNFHf/FkR6Jn4GWv+81RePz7Bx?=
 =?us-ascii?Q?fYFqpF4RfeZ5/1UaXURHB2jgTk6oUv57EiNA9878sds/Yc5rCmzGW2Yrgt5P?=
 =?us-ascii?Q?RbdQEglh3gkZWZCL9S9sVvYvCn+FRzhMKpMSsLo+Tq8EjAYaK8PRSZAqkFUT?=
 =?us-ascii?Q?TQeRAPhR0q3bX0sViySNBT0D9HZAQ0s7U3oZQW3sgyliYc7HbNeANoBgzKgI?=
 =?us-ascii?Q?DO1g2M5v2+kJF5bZRtvZNUjzDrDKB6hmxSg8n185+Ko8/2SjYAZosBd9QzPw?=
 =?us-ascii?Q?INZRkZH9S1lnfvqLrBW65s7u+nmYIm8wqUi3bo+uao14NIhQL9BqIF+iHEQi?=
 =?us-ascii?Q?VcmR2HgXBBw7/vjSEiX3KRq84DUvBw91NswxaMZHXLbKniSqjJmSmQvOqf5P?=
 =?us-ascii?Q?hcdb0nmrC3B10C0tW9Kvs3vnMZDdGSHnbi7jcNKi9cA5wmWQt6fU6L4gYrUi?=
 =?us-ascii?Q?y37z1bYAm++Z4CM+UrCxZYmELszMC766gw1Xw4DO9tn/PZ38r2SIbiFQeF/m?=
 =?us-ascii?Q?Uwwx4rIkIfvwDpt6wpEnCW31fusEkGGX9CReHzMIMxqO2s9Hg2ez5cR4Dczo?=
 =?us-ascii?Q?2Lzyz0bvkxzQ5iNdg7e4lDMtDQDF3MDSi2eeSohsof+a9Kv29lwcQX2mVCPA?=
 =?us-ascii?Q?FAjTINfkSQIax9cVCJAqYPN4sAfXKE3Cdy5wBXwEhrlI2ZVo75SnHp4WQ3LB?=
 =?us-ascii?Q?oH+fM2S/hI4GHn3pIVAS5oHBIV98R2CnuMlbPqgQjlRuJEu8ETzw6GcKVOxY?=
 =?us-ascii?Q?8TlRQmGjiihUKOOwSklS8sqvwr+kCjQP+gZi7nMMxxCmqJEeDCNysIuNNAkU?=
 =?us-ascii?Q?k2V6HbUYjs+prvqdyENbD7I/rPPWIplvWo4RpoaptcwzFTtFzIxPrjT/1eLA?=
 =?us-ascii?Q?rfQgvt6vQ0wsgldIXv0pTs+rxEnO1GylCnN3P2LFpO22QmSd23aMejoaZ5p7?=
 =?us-ascii?Q?cNAVsRG/SL6vwtXG7/+U+vL935BqXI8lqODKUZhCaTLT+RAh4xX+wHWxeJCk?=
 =?us-ascii?Q?XEeEmhKpGrg7csd10wQxQJWxLxMtDEad7MWuKoUXxSnnJQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XTZDuZDJvLI/qlRBVt33PijW/1F/LBKE6o79UDoBsYhUQBNgPmFOmgqMOZe3?=
 =?us-ascii?Q?msBCIKXEJv0PPUOkzZrEvwr1NWxCVmMjnkUftHi82gU+EbllPTmE91jZEee8?=
 =?us-ascii?Q?BOS5JV8hL1ti10l2ndAzYRJNOQ62m9+pK6B5Lye+xz5RJn2i3DeViPqwhFqg?=
 =?us-ascii?Q?RxZIlM2udmoGWmyEqRLVoUjKZTu2q1ddqgoSPN7gzs6GR367GtFIsyElHYPA?=
 =?us-ascii?Q?Bivkc//c5CWIAYhZfzQDsPBqk/ShnRQ1V/EzfKW5cdsu5kivX9lZIJP73SpD?=
 =?us-ascii?Q?SaaVcuC5e1hlOEasMy01+CEBxEUX3wraV5hZNdpwIjfVg4QaCYjw2zsHfGVH?=
 =?us-ascii?Q?7KNwq2NpRXF5B870qMuhZBBXfwYKI/mfb9yzTwNUwEr7qa03hKw+xn5wiLsZ?=
 =?us-ascii?Q?XLK9nVrYtDeiYvxnsQoomRdDkpLN1kAL6D7jXXwkfymFDH2Qp5gIOEFqbbHQ?=
 =?us-ascii?Q?9nB82KHadj48Wo+D/7I2u5EVQ5yyLjn8CwM+DkoF2gtVdVnx+K2NG+ydjzm4?=
 =?us-ascii?Q?0qndqVx14N4kgvPDMybK5hYVeDzS2k5mGv0flIxaucol5eNVWwmbBHVrCbyh?=
 =?us-ascii?Q?LRRJq0iwaFuwlycz+AIpR4KkWYI7SbkbKw1dOiV4fvjP1qEgpBhECZfILDHN?=
 =?us-ascii?Q?MyMJ18mywQM1SXY98n+l4v40ROIALvZgVrwA4VA2HTqVwqAhSHDy0ps9BDSV?=
 =?us-ascii?Q?cNf2sPiYNYiVbjCc1RCw+oBAjslekIdivAMkLfLKzuC1ruXy1QD1wscLvEng?=
 =?us-ascii?Q?/VNzVrMiktcIHculnu8757Uedy6akGd5AkyQoSD4+BtPqna2TexxYHoikd5B?=
 =?us-ascii?Q?FB4UBLEuscb++nvNmvtycmHGleRkYJSxQVpJKUnlUlWy/nkMyxA8kyfv3QsZ?=
 =?us-ascii?Q?6OIRSahDF9UD9ePk52FE4ycqWLS7htEoftRfuUb2Qj9vIkL8kcfJCtNGU1QE?=
 =?us-ascii?Q?RQma+phv1XaPQmBG3Pg0gbdv/pk8rGfYCCe8ghM7R/K5Ji4A6QpaPNbqoU5n?=
 =?us-ascii?Q?EfF7emt4ZAiwbmKjkx/bor8PbfobYC6bXTougxdLw4EGLGz0XNSlRw+aFyFy?=
 =?us-ascii?Q?l3OWRGHrsJRGhhHRIqvUuJ8uB0ZkM/pAsmMjFz27LhAc3nevT6m7OMBEHPYI?=
 =?us-ascii?Q?FVIv3zY0BQBhA7IsBE1jN8sxu3hVALH6/u8CixaqwVY+410yioGCDdj8w/Hc?=
 =?us-ascii?Q?l45eggbn6MuTwhMKKkm+aOa2779Ph+nIWeWLhGVumLWEgG7RUyvu1YjJVCsC?=
 =?us-ascii?Q?2Iq/HJ2sXb2qYqPGVonmwsWYCibuYY3oCxp//xsM2DrV846KbBCWhzhV+HM6?=
 =?us-ascii?Q?/r/6u0WvEko/3IDsM1cLiMLO8R11t6RuuCxnGIxXuWtSje+mDER/Nn1AZky/?=
 =?us-ascii?Q?01xII2+gdwksW2M4893sldEnPUPfcL96xRd28oCPDEIR8/j4EoIvbjvhWxaf?=
 =?us-ascii?Q?SItXxCh7UG8TxSYAufG0O4F7JqqCVs5TxBb+JNH3xUsnmAtH1CNApDGrXwKS?=
 =?us-ascii?Q?/G+w/2Xich7ItBn56/XgrVQDznu5j1sL7cnfX1MhjcVYzX23gDWWMdkH2S7m?=
 =?us-ascii?Q?YQkzXZYnwg3g4yb1wcdZiVADJFU9JQt0UCMkr3qMEtdfsTDL9lXV4g5547V5?=
 =?us-ascii?Q?Yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72880fa7-61d6-4c70-514e-08dcc3659926
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 11:20:30.9961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pzbUXztrR2se+IbrKadRueEnpW6Yz01rgn9ptxybBCo3ipXcYzctU3633fInvnEB6pK4yOLaBtBDFwaPgJAxw9uHxeL03N90tubY+OXr/vY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724412038; x=1755948038;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wB+1kPwWyS0Jo1voK/0Jlf2ZdUznBDb6ISHP/wuoM9E=;
 b=UFhhtHpcHKnNcFGEHfNsJ95sajMdCL/Rr+nFXIm4iP/uk7aa0XV7r/ef
 yK6pVpoUYpt2zBh0ZjqPdvQNOmIF7hXY4VTsCW6dI35GHzUS8MneJ2OPl
 jdfBAqo8koVu8nEwnc8BGswZEuIliQirSjohm/t9wFD5FsZZTGd9SE3Dp
 yhfSH55uhT34S5ohACEeaVotjjnvuFXrpaMm8fc1DtsNYIwM5t4Hf/Oho
 6QCcw3MuTQN7BFWgkCqmzgIKcCjxvvGRcd9glyefu9wZZLO0YOINNBLCd
 wnMl/DFOCo07U4lKnkaxHV8ftdorYj77fM/DqWYj/PTXk4XhxSvcQJCty
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UFhhtHpc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/6] ice: move
 netif_queue_set_napi to rtnl-protected sections
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, anirudh.venkataramanan@intel.com,
 sridhar.samudrala@intel.com, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 przemyslaw.kitszel@intel.com, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 23, 2024 at 11:59:26AM +0200, Larysa Zaremba wrote:
> Currently, netif_queue_set_napi() is called from ice_vsi_rebuild() that is
> not rtnl-locked when called from the reset. This creates the need to take
> the rtnl_lock just for a single function and complicates the
> synchronization with .ndo_bpf. At the same time, there no actual need to
> fill napi-to-queue information at this exact point.
> 
> Fill napi-to-queue information when opening the VSI and clear it when the
> VSI is being closed. Those routines are already rtnl-locked.
> 
> Also, rewrite napi-to-queue assignment in a way that prevents inclusion of
> XDP queues, as this leads to out-of-bounds writes, such as one below.
> 
> [  +0.000004] BUG: KASAN: slab-out-of-bounds in netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000012] Write of size 8 at addr ffff889881727c80 by task bash/7047
> [  +0.000006] CPU: 24 PID: 7047 Comm: bash Not tainted 6.10.0-rc2+ #2
> [  +0.000004] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0014.082620210524 08/26/2021
> [  +0.000003] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000002]  dump_stack_lvl+0x60/0x80
> [  +0.000007]  print_report+0xce/0x630
> [  +0.000007]  ? __pfx__raw_spin_lock_irqsave+0x10/0x10
> [  +0.000007]  ? __virt_addr_valid+0x1c9/0x2c0
> [  +0.000005]  ? netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000003]  kasan_report+0xe9/0x120
> [  +0.000004]  ? netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000004]  netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000005]  ice_vsi_close+0x161/0x670 [ice]
> [  +0.000114]  ice_dis_vsi+0x22f/0x270 [ice]
> [  +0.000095]  ice_pf_dis_all_vsi.constprop.0+0xae/0x1c0 [ice]
> [  +0.000086]  ice_prepare_for_reset+0x299/0x750 [ice]
> [  +0.000087]  pci_dev_save_and_disable+0x82/0xd0
> [  +0.000006]  pci_reset_function+0x12d/0x230
> [  +0.000004]  reset_store+0xa0/0x100
> [  +0.000006]  ? __pfx_reset_store+0x10/0x10
> [  +0.000002]  ? __pfx_mutex_lock+0x10/0x10
> [  +0.000004]  ? __check_object_size+0x4c1/0x640
> [  +0.000007]  kernfs_fop_write_iter+0x30b/0x4a0
> [  +0.000006]  vfs_write+0x5d6/0xdf0
> [  +0.000005]  ? fd_install+0x180/0x350
> [  +0.000005]  ? __pfx_vfs_write+0x10/0xA10
> [  +0.000004]  ? do_fcntl+0x52c/0xcd0
> [  +0.000004]  ? kasan_save_track+0x13/0x60
> [  +0.000003]  ? kasan_save_free_info+0x37/0x60
> [  +0.000006]  ksys_write+0xfa/0x1d0
> [  +0.000003]  ? __pfx_ksys_write+0x10/0x10
> [  +0.000002]  ? __x64_sys_fcntl+0x121/0x180
> [  +0.000004]  ? _raw_spin_lock+0x87/0xe0
> [  +0.000005]  do_syscall_64+0x80/0x170
> [  +0.000007]  ? _raw_spin_lock+0x87/0xe0
> [  +0.000004]  ? __pfx__raw_spin_lock+0x10/0x10
> [  +0.000003]  ? file_close_fd_locked+0x167/0x230
> [  +0.000005]  ? syscall_exit_to_user_mode+0x7d/0x220
> [  +0.000005]  ? do_syscall_64+0x8c/0x170
> [  +0.000004]  ? do_syscall_64+0x8c/0x170
> [  +0.000003]  ? do_syscall_64+0x8c/0x170
> [  +0.000003]  ? fput+0x1a/0x2c0
> [  +0.000004]  ? filp_close+0x19/0x30
> [  +0.000004]  ? do_dup2+0x25a/0x4c0
> [  +0.000004]  ? __x64_sys_dup2+0x6e/0x2e0
> [  +0.000002]  ? syscall_exit_to_user_mode+0x7d/0x220
> [  +0.000004]  ? do_syscall_64+0x8c/0x170
> [  +0.000003]  ? __count_memcg_events+0x113/0x380
> [  +0.000005]  ? handle_mm_fault+0x136/0x820
> [  +0.000005]  ? do_user_addr_fault+0x444/0xa80
> [  +0.000004]  ? clear_bhb_loop+0x25/0x80
> [  +0.000004]  ? clear_bhb_loop+0x25/0x80
> [  +0.000002]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  +0.000005] RIP: 0033:0x7f2033593154
> 
> Fixes: 080b0c8d6d26 ("ice: Fix ASSERT_RTNL() warning during certain scenarios")
> Fixes: 91fdbce7e8d6 ("ice: Add support in the driver for associating queue with napi")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Amritha Nambiar <amritha.nambiar@intel.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

We're going for a record of rev-by tags:)

> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c |  11 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 129 ++++++----------------
>  drivers/net/ethernet/intel/ice/ice_lib.h  |  10 +-
>  drivers/net/ethernet/intel/ice/ice_main.c |  17 ++-
>  4 files changed, 49 insertions(+), 118 deletions(-)
> 

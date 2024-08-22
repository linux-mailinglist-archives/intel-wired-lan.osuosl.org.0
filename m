Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE60A95BCED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 19:18:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79A4D40CF3;
	Thu, 22 Aug 2024 17:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3i3lWPOow5EO; Thu, 22 Aug 2024 17:18:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B85640CC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724347107;
	bh=gscOVEjKmES7P/eyQoU8g5udnxAsk189yOragkhXhwk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nYE+iwIq1fzku72jZKTC1DXmROJ2e3isH0JGXgcB1+ME8fee/Ar8IedxZU3FDT2K9
	 j1dO+4lr2I5NUdSWHq0LuO+Ozx4GN7gphn+s/5KaDqAV5fn8EJ1nVInKr3cR9xi0Fm
	 0K7crCDlB/7cxRHFesMbG2kE3cRRsd0AmzxdD0UD5IZm6W3ioCeSu1OjouvNJe8a6k
	 3ZwLlrG3JRCeMM6uRs4klynrMkKUBikdGuwaBVAFpWK7jbpAhY1dOpX+mEW87e7L3w
	 vf5Yj1Y+LZPUOAm2cbcQ9MnN+mD/x2VQbRnQFbBLCUFDe1Fx5zcEKgcjag4eVZvup0
	 /iLMUS/WJbTkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B85640CC3;
	Thu, 22 Aug 2024 17:18:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0071BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 17:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A05C40168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 17:18:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2shJRKkShNf9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 17:18:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ACEAE4013F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACEAE4013F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACEAE4013F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 17:18:22 +0000 (UTC)
X-CSE-ConnectionGUID: rI2hoedKQlevNNh8bvWrOQ==
X-CSE-MsgGUID: /sQu9Qn1RH2zKnmiDkPmaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="40293994"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="40293994"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 10:18:22 -0700
X-CSE-ConnectionGUID: jwyBC46USyCnPrhP1GSoNg==
X-CSE-MsgGUID: QEneoFWCR/W+EGXxVCPVfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61656470"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 10:18:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 10:18:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 10:18:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 10:18:20 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 10:18:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YSz5lTVmHFlOxqmPoRHtEH9muWji8ZHH869ww7RsLeadYOPoGc4NAZRSEF3PDgOoTfYeTvWxXuAAwSUcSHWsdeFDf5iA7jyWXS0oZkVHN5pcFRwm64xuQd5NcgtztA32OSPwqbv3YeB0KMdLamchgZR7yHbCeFzr2u4rtkCzDmx3JCNTRQDP9G66h3lWLI5lQdDrn6WPb1x+cBWcr3lWHp3jon9j5sacEcMVr703Lgqglc6mrhPN+7EVsUM7lz50rtUL9u5iHPy13V9HQ+7Th/snjqar9x3LLkuR/HCE1cibbNWLt+vgyecPkzPbR5rnddt+WR/xQ33ztmbx+21NDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gscOVEjKmES7P/eyQoU8g5udnxAsk189yOragkhXhwk=;
 b=nEV4dEpgXsCLGt/BgpJK8l51fPLy79iK3ZXKG1pJ/NAExEpSAUdegka0KMc8CpvCKwP/bOiLHs4AzoIFOQtAopJ+9T9AAVm0/iB6z+C+nW6ZTO75BXjosZqlVMvzt8kiwO9GvYr3TdfurYVyVkuN/2djGCl6ahqmK9XxahD9+pRkF9UfoyL74Vp+cFhq2Q3sdwxNVFpdpCMjykmn7qR9YnJ/vncZNpBSac35MT5dOAuH5478pXqWAKDi+zT1YWAG1V/obuMB+adBUtK2NGKJ8TxFsR3woOo3Qnxela7DR41sdmI6ZEWZnhofcHww41EJ9P1PmVu+bsEH6tLnADmJyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH7PR11MB8571.namprd11.prod.outlook.com (2603:10b6:510:2fd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.20; Thu, 22 Aug
 2024 17:18:17 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.7875.018; Thu, 22 Aug 2024
 17:18:17 +0000
Date: Thu, 22 Aug 2024 19:18:07 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Zsdyz3WqrYCz98QL@lzaremba-mobl.ger.corp.intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-5-larysa.zaremba@intel.com>
 <ZsciSbsTeIRGc1dZ@boxer>
 <Zsc1ktk/oX+LpFxl@lzaremba-mobl.ger.corp.intel.com>
 <ZsdOZM9VkSpCouJO@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZsdOZM9VkSpCouJO@boxer>
X-ClientProxiedBy: WA0P291CA0014.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::19) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH7PR11MB8571:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c20feb4-e7e2-47bd-94b7-08dcc2ce6974
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fNJSnWsDJSqe6ohmuXrnmz6DhgShsvRi5l466sYmGUXMijgAUu9c5rFW/bkl?=
 =?us-ascii?Q?556bynDUuEuiwWoWD8p/CTyIsNhUsShcazzb82D0XJdRSshZXVJVZBaCIqDN?=
 =?us-ascii?Q?UFwRw3EBQ3QZP0l74EwQqBwXQudV9BK4oUzNo1bKmdEmFJ7oh7ditbO8Avx8?=
 =?us-ascii?Q?wH043CHChN8cjGKwGM36sCTc1n8ADNN67Ljn/JyhS0kAjWoFnosrWpOrvQWN?=
 =?us-ascii?Q?6or7rSE4XA5N/38ek9mp2o5YO1ifoz+wGCwt4w84wrv7OcMu9HVHz0bnJdsA?=
 =?us-ascii?Q?j2nq6CGD9f+NZAHv3eFtt0ZealU6q19RaQoasLBOpWw3AoNlG8NdCatMG7EA?=
 =?us-ascii?Q?0+Zmo/DwXJ0y8yt5y2JWRx53HNsnofwTt+mIOcNNurcgz4BBw55LfpBCctcn?=
 =?us-ascii?Q?xo/lu1NO9RwIXnO1MTwVjI28EeeXvaD5pP9TKuLSW7jxzoo2bcRqC6KtissJ?=
 =?us-ascii?Q?8bKAFvS6a8kykvTKjmSMf8LIWPwdNGCnFkLvuQ2ONhKcnl9enHLvi7afMrUx?=
 =?us-ascii?Q?uELh6/o8TeRlUJOP2X5+DKNF3HLqru697905dq0BUEn7HGvQYFS55YK1MsSi?=
 =?us-ascii?Q?EjnyGTnzP241OCbylc7F04gxA4OfKLu8XfsAce4ZYmRApHLFpIM/4Jyk0DNr?=
 =?us-ascii?Q?eq6cKSTVgKsQD1dcngfK0dYSh4KpIrhATXrYETk7+hMcMUMN4NzXuqXKauOf?=
 =?us-ascii?Q?e6skxqVfnYvReMxZ22wLH+KG9CuX92IkOktRDSLYyguXg64tY0RmXSP90gsN?=
 =?us-ascii?Q?A77GYjvmVZz4J9T8bVztU2TcyMr5M/6jduOJdRh0FksARh/i/vHTdclM20w0?=
 =?us-ascii?Q?OUXiCjh5eQbUgy3NMcxFfJvGdbaasnUHa3DPWBWHGgJ6IteKNfAlR8BtEFSQ?=
 =?us-ascii?Q?oVFJiLCjr/7xuhbCfyvMPvFp2k77c4BtaPBVG4CFJYZ9AQ42GNxi5fiuhpNL?=
 =?us-ascii?Q?LtPNVp+YmvS7h+8i7gkeBRXVUN2u9QoxGD1Hsnqrtg3IxNRsOaImcwEEE/hr?=
 =?us-ascii?Q?qBeNFHNUA/eM/ejcsNXe8dAK+7f2izLCd3VGN7dVirfKucCHq9CC+VegBaT/?=
 =?us-ascii?Q?r4wP4OH1mqOA+CVdxDMAz2W5H/Lln/uaP5xJ09U3/PXD8/fQlbgIhlMCDyt4?=
 =?us-ascii?Q?J2fgMfDzaBx8UqzysBHgmyV1x+vJ0s7J9sX848AF2Pfa9CezvG4MaHximG2l?=
 =?us-ascii?Q?T/5arKzkAcRTNz8LSjPLyyv8S5IQ5B7jT9oBZvVqBU/1Eaei2NznawXS4T2t?=
 =?us-ascii?Q?7Oe0fd3yjQV6iiJRXLTs5qh1TPIdSwngBoBBMIL5SftFXT4nZXKU7DROVSmF?=
 =?us-ascii?Q?UHj/6gXyum2gUXyvsm5dxlSlpqCqvq+eszBPVLzYpHZImg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ee+zUthFA7gP8thI3IMl8WE48iKNr/SDRdeYuAEpGE667VP2Q9cpbAlbpDhb?=
 =?us-ascii?Q?+ZJUTFAyXpWXggTxzrrdp5N1kEWo/FpEvPH6Vxgurzrr52bZWDosPqEFZiJn?=
 =?us-ascii?Q?blujFGAdNbuJbKn16BPbNGvXgO100Zgw5YQ3wpeP8FySi02VlB6as23OcrgI?=
 =?us-ascii?Q?NWnUky19x/+Mg8WRa9scmiiWzniKSkeSnwkTdDSBRpoBKHcsCIXxB0cKe6xs?=
 =?us-ascii?Q?3mzXLuGsa7dMF1kzFuH0/o4V6cNAvs+kcjC0xWLB48JtqZinK5xF6tb1oOWZ?=
 =?us-ascii?Q?ylf8m6a5uaDaRP0w5UJ3Fmp6RpSErZDCax+UXaGaTdqVKsD2TdB2F0zXesA6?=
 =?us-ascii?Q?My+h0YlBlM9+Oc6vXfXc9tVXTBfjR0uH/evMVgFPcoSqtT+X11WLSxvv0+E/?=
 =?us-ascii?Q?E1yR9CX8Q4MLrRt7HBmeGaEOfMSK03t++IpRNfxptPj8TpfHRSPywzO4wpDo?=
 =?us-ascii?Q?Z4BrqLcRS4W/cGgLnJOeZkgnnyCHeCcXKev/osmI+zuYAAVWExlEbHh9Hv2N?=
 =?us-ascii?Q?+/BKc47pgQIgZIcHkt35jo31TuDO8gsM07cDTW9XIgxiWgRJYhTMqH5u6gTt?=
 =?us-ascii?Q?WhxLFit4rmNkbWpxzGq96AHmG64IyFyq+JLfIyLaiLSNyIbxWRmeQ+n8wVJ/?=
 =?us-ascii?Q?kC+7fjG3/nWgWRzIMokqkhurFhRwCbtfirGgASObmJJM5YKR1bpyZBOpY0Id?=
 =?us-ascii?Q?ZbkXQ5fpDQH8DfNUrccx7U8lAAPTOAb79gl6l8yS7yqUEoBGoYZZdsGZZfYy?=
 =?us-ascii?Q?QTGvo14Ssi7k2LgWZHZlCScDh4iAb9zQSfzy81SA2Z+ZV+8XGCTkWOQvIQAB?=
 =?us-ascii?Q?ZXbJEIAzBZYhWCzGua/bkbNzwRZWs6BWw7fM6s4M67sicxA/RLUiqrsNKnPy?=
 =?us-ascii?Q?FgOTjDhT0cjRMxFam3mrYzRQ/6FUmiNlMw9C0ytJ5gBneaXEx67HmcMtLSIR?=
 =?us-ascii?Q?CvEV3ozBNkXlieePEvN0FfD9YXavmABR/WkhMKFpKAbMySm8lB0+ZUTITp1F?=
 =?us-ascii?Q?4Qe3ZqXUG9b5qBvGo26IAY9OUIYzEjLnAkVlhVFzQhzHSs19TsHK/qNfeTft?=
 =?us-ascii?Q?Loj87ENXjYNcHNBm8dGB7Xo9rKVI37UjSrCHxlxngeSyp9fmv9dL4nyCEZ17?=
 =?us-ascii?Q?I2+bthHOdfhB5QegmwbwPpdxDt/9T1ZHqvzo2dk8ShjN4ipz74sDtSze8UMY?=
 =?us-ascii?Q?YGlIfBTQNUX2Wz2Nl55BjYWvaNWO7Bc/+52w96Q66kkxwK9mSkYO37OADw7k?=
 =?us-ascii?Q?QKxQFcuCHZbSS0rNzFckw/wH+s/Fdw4HHFlIv3BUMZyxoepJXfN2ps/bLtX+?=
 =?us-ascii?Q?UZ82zZ5bgnVoZ+CarXiYgMZVAIeik+3nDL9acGK6NWGQ2UGP5ecvjVumVsgN?=
 =?us-ascii?Q?n4zOLvrayXJCmgyrXkS5B667hzE38v4ZX2TAuXzgO0ILpGyTQqPk+mJkEvcu?=
 =?us-ascii?Q?EulUReFY26mRFBCUME8GujiEYUWTfAtcfRCVPwb4A+PkiFtjmV8f6LSAs4Hr?=
 =?us-ascii?Q?Z5bMRmRIAtyPI+t9PPV4ld18505fTlEVIl6Ndo+Dy33WDWhU2LyJB6PhMaom?=
 =?us-ascii?Q?HPYHlfANmJOpYJgXVUHW0bDyFUuavtDp7VWMmyiQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c20feb4-e7e2-47bd-94b7-08dcc2ce6974
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 17:18:16.9531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ndm/HW6iJSL0QlvRW9wpOZUwaQUU5O01lPXZYp14PEp8vBzkB8IpzVef0KdXKyg+2X4itmcE3MfOnAx5z49aoekiQ43JE8V0IAAPjGE8F8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724347103; x=1755883103;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tn6LRYOo6IBbel1XV3kPD6B3uf/eod3kTIR3GTS0bRc=;
 b=HtF5zvQq9C95xh0yGVBKwp7ZSC0OeKAAKqvqnXOY+oGzTPuBjyj2uycR
 ODJvS5y7v1wczEzWBMvQgWcTVwaGXWbmaVQUcgAOWsSfIcbGYISoSFtpS
 l8Auzbw04Q8qI0qLip6+Rr7+zD8XEHUhfH5a5N2rzCy3EnV7QRKLoIzIq
 x/3aDi1hYjwDrkcZp28nXLfcChKV7XR35CYTEa3z5TcY3+CB2dcds1Fvt
 eyKWibsvb2HvGoXiA8JWVE1jzrj+WMq4uxaCg8FPA5wnULlvj9nJM/yNi
 8hFPQxw2J7Bba7EB4cHEO8DM/MLn67YZNHvWOI3tE55wYdYEvADY1jWmJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HtF5zvQq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/6] ice: check
 ICE_VSI_DOWN under rtnl_lock when preparing for reset
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
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2024 at 04:42:44PM +0200, Maciej Fijalkowski wrote:
> On Thu, Aug 22, 2024 at 02:56:50PM +0200, Larysa Zaremba wrote:
> > On Thu, Aug 22, 2024 at 01:34:33PM +0200, Maciej Fijalkowski wrote:
> > > On Mon, Aug 19, 2024 at 12:05:41PM +0200, Larysa Zaremba wrote:
> > > > Consider the following scenario:
> > > > 
> > > > .ndo_bpf()		| ice_prepare_for_reset()		|
> > > > ________________________|_______________________________________|
> > > > rtnl_lock()		|					|
> > > > ice_down()		|					|
> > > > 			| test_bit(ICE_VSI_DOWN) - true		|
> > > > 			| ice_dis_vsi() returns			|
> > > > ice_up()		|					|
> > > > 			| proceeds to rebuild a running VSI	|
> > > > 
> > > > .ndo_bpf() is not the only rtnl-locked callback that toggles the interface
> > > > to apply new configuration. Another example is .set_channels().
> > > > 
> > > > To avoid the race condition above, act only after reading ICE_VSI_DOWN
> > > > under rtnl_lock.
> > > > 
> > > > Fixes: 0f9d5027a749 ("ice: Refactor VSI allocation, deletion and rebuild flow")
> > > > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > > > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > > > Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
> > > > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++------
> > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > index b72338974a60..94029e446b99 100644
> > > > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > > > @@ -2665,8 +2665,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
> > > >   */
> > > >  void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
> > > >  {
> > > > -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> > > > -		return;
> > > > +	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> > > >  
> > > >  	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
> > > >  
> > > > @@ -2674,15 +2673,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
> > > >  		if (netif_running(vsi->netdev)) {
> > > >  			if (!locked)
> > > >  				rtnl_lock();
> > > > -
> > > > -			ice_vsi_close(vsi);
> > > > +			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> > > > +			if (!already_down)
> > > > +				ice_vsi_close(vsi);
> > > 
> > > ehh sorry for being sloppy reviewer. we still are testing ICE_VSI_DOWN in
> > > ice_vsi_close(). wouldn't all of this be cleaner if we would bail out of
> > > the called function when bit was already set?
> > >
> > 
> > I am not sure I see the possibility to rewrite this as you suggest, we cannot 
> > bail out for the netif_running() case due to needing to unlock after 
> > ice_vsi_close() finishes. This leaves bailing out in case of CTRL VSI and 
> > non-running PF, which we could do, but it would require a lengthy if condition, 
> > which is not that much better than nested code, IMO.
> 
> Hmm. I meant to move bit checking onto ice_vsi_close() only, so you would
> bail out of it in case bit has already been set.
> 
> overall, ice_dis_vsi() is a very cumbersome way of calling ice_vsi_close()
> :(
> 
> I guess we can progress with what you have but i'd like to brainstorm
> later about some simplification around it.
> 
> I prototyped something but not tested that, just to maybe spark a
> discussion. Feels easier to read and swallow in the end. Not sure if
> functionality is kept:)
>

Ok, now I get it.
Yes, this is something worth considering for a -next patch. Opting out of 
closing the VSI based on a down state seems not very nice though :/
I am not even sure if such approach is correct in ice_dis_vsi or is it just 
some ancient atrifact.
Seems like it needs some VSI state changes analysis.

> From 706289d5c37c41cd3021997e0d5e64d7496e5536 Mon Sep 17 00:00:00 2001
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Date: Thu, 22 Aug 2024 16:33:37 +0200
> Subject: [PATCH] ice: simplify ice_dis_vsi()
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 46 +++++++++++++-----------
>  1 file changed, 26 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index f559e60992fa..8ccdda69a1d4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2625,14 +2625,34 @@ void ice_vsi_free_rx_rings(struct ice_vsi *vsi)
>   */
>  void ice_vsi_close(struct ice_vsi *vsi)
>  {
> -	if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state))
> -		ice_down(vsi);
> +	if (test_bit(ICE_VSI_DOWN, vsi->state))
> +		return;
> +
> +	set_bit(ICE_VSI_DOWN, vsi->state);
>  
> +	ice_down(vsi);
>  	ice_vsi_free_irq(vsi);
>  	ice_vsi_free_tx_rings(vsi);
>  	ice_vsi_free_rx_rings(vsi);
>  }
>  
> +/**
> + * __ice_vsi_close - variant of shutting down a VSI that takes care of
> + *                   rtnl_lock
> + * @vsi: the VSI being shut down
> + * @take_lock: to lock or not to lock
> + */
> +static void __ice_vsi_close(struct ice_vsi *vsi, bool take_lock)
> +{
> +	if (take_lock)
> +		rtnl_lock();
> +
> +	ice_vsi_close(vsi);
> +
> +	if (take_lock)
> +		rtnl_unlock();
> +}
> +
>  /**
>   * ice_ena_vsi - resume a VSI
>   * @vsi: the VSI being resume
> @@ -2671,26 +2691,12 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
>   */
>  void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
>  {
> -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> -		return;
> -
>  	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
>  
> -	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
> -		if (netif_running(vsi->netdev)) {
> -			if (!locked)
> -				rtnl_lock();
> -
> -			ice_vsi_close(vsi);
> -
> -			if (!locked)
> -				rtnl_unlock();
> -		} else {
> -			ice_vsi_close(vsi);
> -		}
> -	} else if (vsi->type == ICE_VSI_CTRL) {
> -		ice_vsi_close(vsi);
> -	}
> +	if (vsi->type == ICE_VSI_PF && vsi->netdev)
> +		__ice_vsi_close(vsi, !locked && netif_running(vsi->netdev));
> +	else if (vsi->type == ICE_VSI_CTRL)
> +		__ice_vsi_close(vsi, false);
>  }
>  
>  /**
> -- 
> 2.34.1
> 
> 
> 
> > 
> > > >  
> > > >  			if (!locked)
> > > >  				rtnl_unlock();
> > > > -		} else {
> > > > +		} else if (!already_down) {
> > > >  			ice_vsi_close(vsi);
> > > >  		}
> > > > -	} else if (vsi->type == ICE_VSI_CTRL) {
> > > > +	} else if (vsi->type == ICE_VSI_CTRL && !already_down) {
> > > >  		ice_vsi_close(vsi);
> > > >  	}
> > > >  }
> > > > -- 
> > > > 2.43.0
> > > > 

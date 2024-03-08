Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C65876425
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 13:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE87983440;
	Fri,  8 Mar 2024 12:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Op7Z6_G95Sa; Fri,  8 Mar 2024 12:17:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 468F683408
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709900259;
	bh=DAzwupS9J1JYkb1CAX4EcrCZD138GmeyPLW6DZLyZHM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8KXWn7ZwOSJygZkKZxdu6sADFg+KJFz4xNaHxeFWi9k+Sw4s0J08nVWaAckt6HHCE
	 neNNhPbsUMvJ/vbw92yVJn2vLOFOj5URd0yI9SlZ8jGLaW5B8s6me2kvYKdZxI7+9J
	 InasJIx8y3ETGaoAPntfs9TTv5I7dqua03GQNyfCMXJc9sSBlEBifMkxNp1lJG03QR
	 XthHNdQl3e6QIXBFFdmRDBsqA+cNfRoIutPJ1SO98wL28zyJqo+BDag3OPYmV7QTvW
	 WmfKrjg9qwRXgJGWsEgj8pSyQ2V0UC0OfCuwWC7JjG7f87JdWArlgNsZl8AKd5BQIv
	 1HG6ZYTcgvBeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 468F683408;
	Fri,  8 Mar 2024 12:17:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0CF11BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 12:17:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E906941A32
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 12:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUhsz8eSUvDF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 12:17:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BD2F41687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BD2F41687
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BD2F41687
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 12:17:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="30058796"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="30058796"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 04:17:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10328658"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 04:17:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 04:17:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 04:17:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 04:17:33 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 04:17:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c8edPWFuLri8XUq9AbaMkGApriX6KsqgcumBsngZJ92qBwQp16Jr1Lr2vfzrEI2rBPAsu5Ol0aNf55iH579YpmAQMMeV3aCojbxE4xHSBCPyQssD73NzVrUssoVA9zEAkmyn+AZt7FtZvGadyEz/1cokUaMkgo5xK8a9Vp/2j6oAEs1RO4W18Fskx/PLLxM4EG2vfNolVJS0BOkQTKJhDuB/ytjdJvv6oX8TpOLhdjWKyyIVkCa4RSpKykJDmJPMbw+x1ijZyiuAOWgp9GsuLi+XS8kBmDrY6wH39FgW9Ti0wW8p/f93uYS2HiEV0iHvRiFSUuaFOCMtI80baNYLzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DAzwupS9J1JYkb1CAX4EcrCZD138GmeyPLW6DZLyZHM=;
 b=F3LRK/nPD3pjGeZ4qSy7YLDLsslAuiIpeg5zz6I+q76aGKv3pmn18CzQSTclmQMrdAjAWO93UwysYIiuZdpLz0dcoJmSbkwKDp/QHR86smW076K3ZF2hTdN14LchWnSY8oop3DRahFidg3rN9sW6CeSfgw1DXT1TdrG6LXCHJ8D8CJtigs8XhBtAMc7y7UIzDctbB9BKhVl8+KnsylJRuZSB9Jq4Rm23b+jOp8oGJmMbtChbJh7buP5L9V9ux2nS2JBt+51DHhOtljQ3BDsox/HmZiy1EESip6hnxzLR3/j33+iH4QKEDz3y/jRZ55Hzi3uhM/sa6gu1n2ETQSoUxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB7523.namprd11.prod.outlook.com (2603:10b6:510:280::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Fri, 8 Mar
 2024 12:17:30 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 12:17:29 +0000
Message-ID: <c15b5a98-ce71-4ffb-a641-83f586b9970a@intel.com>
Date: Fri, 8 Mar 2024 13:17:23 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240307222510.53654-1-mschmidt@redhat.com>
 <20240307222510.53654-2-mschmidt@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240307222510.53654-2-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0241.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB7523:EE_
X-MS-Office365-Filtering-Correlation-Id: 15c300e5-cf56-43d9-b6fc-08dc3f69b977
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L7g9kiGBnBe+h2zYD6t9FhPcaI60+3/7xvusUT1yytsuezUzq91OxoOJMDFEz/ptjtQ9jfRNFLimQIUA/okApuy9erssECDfyvbM/6I1feCf+gqt41clmWl4UPzdnkaAQEZqrV+n/55WgpZ6qn0fjF1cqBP8BLQ75tXkMWg2DJhCwnJPzdssAjanNehOPlwVCUCWxxRgWuc2AjMQAOl3B0JVi37WuFFPuD6vneF+7kXfm8kINJJrJM+4C2AFuuViD2vCWFivyWhYZb9FXDwH2YWZepkhC2tw7tl5M1/dFJjCUsE/sh4I8u//prt8fDH3ean7hYpN/gG4fiOxDI+myAwdc1or9lnWX05k1oSawfxH5UhNY3k6o5ZGuYnrB7OttW9mMCblS+UKoYYnV3PLOxCFsT40sMbcwbrQZJn94QB1T7veojuH2qkzOGdjWuqDXRIGsddzhjlhD+9Nf5RjzYGb+ZOo660+FLpISC9Xaq8HGJ0zL+NDSsFALE3ETFgRiaxWCjJuiCyim6g5kfupNVOqkMHl4U7qCj8IJCI70ZQGGd9Z6gpqQk8ogjc0WNhV79/PABZ5OT8tGSeXGn6QgH94DrDpGwbLnh+50o+Zh7uINS34GcbUTlbwCht1nouU29IojXSV4zm74OzEJ1cPZJ1bU2Veskkzothky+1JRGM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVc4R21yV21XZGhFandESHdjblhNc21yWnJPdnVUTU1QZ3N6L0tlTmltK3Ru?=
 =?utf-8?B?WFFBM0FwVmZMeDZWYldBMVFsbTNYbjFGcXo4dGUyeGR4UWlHbVlyZjFnQmV3?=
 =?utf-8?B?NDZRUHpsNUtkdXRPd0lJckFMSkJZZEd3ejZVZFQ2a2tENkdydStzaGxGNGFU?=
 =?utf-8?B?SWxNeDZsdE5Sbk1sUlpyVXBFYnI0VWxCSkZNRXFldC9mNHVPQlg4OTFXK3Mw?=
 =?utf-8?B?OUFUZ1JFS3R3UFM0dWR1RkdXY0U2UFlxRllnejFoaFY1WkkwdUFtWWY1aTBt?=
 =?utf-8?B?cXVRVjAzajQxWWlCdTkvYmNnbmRLV2trNk1HNGpWZUhKbG1FRys5WU82VWQy?=
 =?utf-8?B?enRJcEVkcDlNdkx2RS9FL2gvSUg0MDZvMzQrbGRqSDJmS2NJWFBaVDE2VENi?=
 =?utf-8?B?aUlwOEcxNnJDSks2dTVFWUppNUJwUElqN0FrTVhXYXNkcUhlM1d2a3N2LzRx?=
 =?utf-8?B?c1lld3lnT0VxTDhKd0F1M2VjblljOFNOWlF5V0F0SFQzaG5TMXVvdEFmN2ZP?=
 =?utf-8?B?QldjK2cxQXRncHl3RUhwR3pYR0ZUNXVWTVVZQ2hxeEZTL0xubEE5eG5saSsw?=
 =?utf-8?B?bUlWbGE5ckxpOE5IcSt4Um1rdjI3NG13NnB3UkhiWmpZZExrbnBZM1VVd0M5?=
 =?utf-8?B?YTVwTGdSc1FJbUdncElvSjc3WllTL1F6dSs1Unkwa2xUZ29BWndJTGl1QlhR?=
 =?utf-8?B?N29IS2JvTG1BMHoyWTBvRUt4SGlJcjQ2NVNNRVRKdm9la1NsZDQ0dEtRY3dr?=
 =?utf-8?B?Q3pXaE04dVlFaHlpZk8vTGQrUWxzNjVhVkZWNGhQblpUM25XU2VTbTZiZXYr?=
 =?utf-8?B?NUlvd2lzNGdIK2s0NThXTGRRNnVYU1N2Y0FvOXM5Um5acnVwZDZqVGs3VndB?=
 =?utf-8?B?UjdMc1oyU2NreGZlZGh3Rm9zaCtzc0xZdklZa1lVY1ExT2o1WThIbUIyczZF?=
 =?utf-8?B?anduRFg5V2hSTUhDUFptUzNxUHdlVEs5QUQwanRnVk9KYTF4QUh2cGZ3NEQz?=
 =?utf-8?B?ZHdyeVVaYUZ6WmVGT3MyT1FFNTJmeFpqL3FCb2syaHdyZUFDQXFsT1kyRGRv?=
 =?utf-8?B?Yy9aWGRYVnZWd3haRFpDbTJSUnQwQlBHQ1ZKRmJINGZTeC8rYUJ1YnVJY2R5?=
 =?utf-8?B?cS82VkNNd0YyVnkyVlM0UmludGRhZmJ2Qi92Mk9wWHlUNCtJSkRlb09Bb0FG?=
 =?utf-8?B?ZnlwSFlGak5qVUdERG5hUlJvZ3ZUSkVUblJhR3hxMFY2TzBvbHVkUVBBMVhu?=
 =?utf-8?B?TlUrbEVuZUhjbEpyMVdCT1Flb1l4UjQxam4zL0MvaHVHQmNJNC9RTmR1WXhY?=
 =?utf-8?B?VTdVbFltR21IYVNkN2UwbXdtakJ4RlVVcy9wT1Qyd0hBLzN1ZUFXdk05cHVE?=
 =?utf-8?B?cU94K2MxdERxbHlEWG1tU1BKcEtmcXNrREVvbUhBQTRHSVJxWHN6QnB2bFJa?=
 =?utf-8?B?SlVjVDRCT0xiT25JTXBWYU1oNHRvL2ErRG5BSHZoZE1FZVhZNmZBdTRyOWZ0?=
 =?utf-8?B?RE01RVhQM2FaKzE3c213M0JvMkJJZEtGeS83OWhacjlaQjh5QzRaUGtFNTdn?=
 =?utf-8?B?RzVNMGMyVm92Mmd3WDhkWlNpV3pwUlNLUXV3Q1hwbFpvMlBjdFUxbmhhNVFK?=
 =?utf-8?B?WU42ekFpUnVUTEpiRGRUMG5KU3Q0MnhJNXlkQndPTHBRL1pPQ0Q5eFV1WTQy?=
 =?utf-8?B?T05DM3A2MUFhV2pxK1VxYmJUS3pBeFV2cmExS3FhdTJ4SUtzYjNhM1RRY1Rw?=
 =?utf-8?B?bTRBQTNUNlMrZ2hSSEhFQW4vbGlEaDVhZUhpN29MdXBJT1lLdlMra01CbVNj?=
 =?utf-8?B?MlJGdlpKUXdqMTRud0hqSnNKbk1NK25BM1hGN1NTT1kySHprTFM5R3QxOEJQ?=
 =?utf-8?B?ekdqVmF5bWNqQXRuVW9LUnowQTIydFg2WW5LNlpYSWxsZytvdzlNTTg0endu?=
 =?utf-8?B?QmtTeDdmVUM1ZWVhSTZyZ0tlem56TU00OFB1TXE2TnAzMGZTV3JmRml6SFVR?=
 =?utf-8?B?QURnUGJWb2hidjFKRjdFMkIzYUJaN0Q5cjRNZ0NwRjNGbktmditENmw4YTBa?=
 =?utf-8?B?WEM2QklzOENKenl2V1ovTFViTzd1SzhXYmtSTzFHbS9NQXN1VFp2MDVsVjFC?=
 =?utf-8?B?eUNjaW9DNHZWeldLZ1VIMytPNjVRVXdiTVY5OWZTWnhMM3FSMDUyVnRKWDVE?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15c300e5-cf56-43d9-b6fc-08dc3f69b977
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 12:17:29.6867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JH3bUZuUvb8WtwL4hgv79wcNjWmcOWe93KdJ4d/OuBB4aroqulR/d2h+hPr05lJJ6Q3hMYnwvwicgV9LWbYiO7RVAL5EXtUYG0abIsMN79Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7523
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709900255; x=1741436255;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=69hmxXWQk/m5chY0ilurRZrb83shu8OutAaCES+oiRc=;
 b=eitR6/Bs4lEyqLlsxR8Od+9EvftwYdy26sFwcqvjr/08y4+EAdhyH1hF
 x7IKhEgTSMkBuCaf4g8gGm0mVhGeHaDLo0GEkDu/L7EVKFhFzuKhTgUOH
 JBIepcsiJuqo5TXa8xWc7Gh6v9rvpROZwubKghnS29EMNErE/n8ZJEnW+
 nZI/IoCUSv0R4XMexz6usFrprYQaCNUO64SpioSwGyrKKoRz7S9ZdpjIx
 ZRjh1XKxKghyxuX3MFnCevRkidO9FI6oh/JCwXi2vmz+BFnpk0RYN5ZDX
 uK602nFL153/BVkahZBZopdrrXjzctYdU9+deSxaRZkaQ6A7lUXUVJLbb
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eitR6/Bs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: add ice_adapter
 for shared data across PFs on the same NIC
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org, Arkadiusz
 Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/7/24 23:25, Michal Schmidt wrote:
> There is a need for synchronization between ice PFs on the same physical
> adapter.
> 
> Add a "struct ice_adapter" for holding data shared between PFs of the
> same multifunction PCI device. The struct is refcounted - each ice_pf
> holds a reference to it.
> 
> Its first use will be for PTP. I expect it will be useful also to
> improve the ugliness that is ice_prot_id_tbl.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Thank you very much for this series, we have spotted the need for
something like that very recently, I have already pinged our PTP folks
to take a look. (+CC Sergey)

Why not wipe ice_ptp_lock() entirely?
(could be left for Intel folks though)

please find the usual code related feedback inline
(again, I really appreciate and I am grateful for this series)

> ---
>   drivers/net/ethernet/intel/ice/Makefile      |   3 +-
>   drivers/net/ethernet/intel/ice/ice.h         |   2 +
>   drivers/net/ethernet/intel/ice/ice_adapter.c | 107 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_adapter.h |  22 ++++
>   drivers/net/ethernet/intel/ice/ice_main.c    |   8 ++
>   5 files changed, 141 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_adapter.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index cddd82d4ca0f..4fa09c321440 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -36,7 +36,8 @@ ice-y := ice_main.o	\
>   	 ice_repr.o	\
>   	 ice_tc_lib.o	\
>   	 ice_fwlog.o	\
> -	 ice_debugfs.o
> +	 ice_debugfs.o  \
> +	 ice_adapter.o
>   ice-$(CONFIG_PCI_IOV) +=	\
>   	ice_sriov.o		\
>   	ice_virtchnl.o		\
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 365c03d1c462..1ffecbdd361a 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -77,6 +77,7 @@
>   #include "ice_gnss.h"
>   #include "ice_irq.h"
>   #include "ice_dpll.h"
> +#include "ice_adapter.h"
>   
>   #define ICE_BAR0		0
>   #define ICE_REQ_DESC_MULTIPLE	32
> @@ -544,6 +545,7 @@ struct ice_agg_node {
>   
>   struct ice_pf {
>   	struct pci_dev *pdev;
> +	struct ice_adapter *adapter;
>   
>   	struct devlink_region *nvm_region;
>   	struct devlink_region *sram_region;
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
> new file mode 100644
> index 000000000000..6b9eeba6edf7
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -0,0 +1,107 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: Copyright Red Hat
> +
> +#include <linux/cleanup.h>
> +#include <linux/mutex.h>
> +#include <linux/pci.h>
> +#include <linux/slab.h>
> +#include <linux/xarray.h>
> +#include "ice_adapter.h"
> +
> +static DEFINE_XARRAY(ice_adapters);
> +
> +static unsigned long ice_adapter_index(const struct pci_dev *pdev)
> +{
> +	unsigned int domain = pci_domain_nr(pdev->bus);
> +
> +	WARN_ON((unsigned long)domain >> (BITS_PER_LONG - 13));
> +	return ((unsigned long)domain << 13) |
> +	       ((unsigned long)pdev->bus->number << 5) |
> +	       PCI_SLOT(pdev->devfn);

xarray is free to use non-0-based indices, so this whole function could
be simplified as:

/* note the PCI_SLOT() call to clear function from devfn */
return PCI_DEVID(pci_domain_nr(pdev->bus), PCI_SLOT(pdev->devfn));


> +}
> +
> +static struct ice_adapter *ice_adapter_new(void)
> +{
> +	struct ice_adapter *adapter;
> +
> +	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
> +	if (!adapter)
> +		return NULL;
> +
> +	refcount_set(&adapter->refcount, 1);
> +
> +	return adapter;
> +}
> +
> +static void ice_adapter_free(struct ice_adapter *adapter)
> +{
> +	kfree(adapter);
> +}

I would say that this is too thin wrapper for "kernel interface" (memory
ptr) to warrant it, IOW just place kfree in place of ice_adapter_free,
that will also free us from the need to use DEFINE_FREE()

> +
> +DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
> +
> +/**
> + * ice_adapter_get - Get a shared ice_adapter structure.
> + * @pdev: Pointer to the pci_dev whose driver is getting the ice_adapter.
> + *
> + * Gets a pointer to a shared ice_adapter structure. Physical functions (PFs)
> + * of the same multi-function PCI device share one ice_adapter structure.
> + * The ice_adapter is reference-counted. The PF driver must use ice_adapter_put
> + * to release its reference.
> + *
> + * Context: Process, may sleep.
> + * Return:  Pointer to ice_adapter on success.
> + *          ERR_PTR() on error. -ENOMEM is the only possible error.

that's inconvenient, to the point that it will be better to have a dummy
static entry used for this purpose, but I see that this is something
broader that this particular use case, so - feel free to ignore

> + */
> +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
> +{
> +	struct ice_adapter *ret, __free(ice_adapter_free) *adapter = NULL;
> +	unsigned long index = ice_adapter_index(pdev);
> +
> +	adapter = ice_adapter_new();
> +	if (!adapter)
> +		return ERR_PTR(-ENOMEM);
> +
> +	xa_lock(&ice_adapters);
> +	ret = __xa_cmpxchg(&ice_adapters, index, NULL, adapter, GFP_KERNEL);
> +	if (xa_is_err(ret)) {
> +		ret = ERR_PTR(xa_err(ret));
> +		goto unlock;
> +	}
> +	if (ret) {
> +		refcount_inc(&ret->refcount);
> +		goto unlock;
> +	}
> +	ret = no_free_ptr(adapter);

nice solution, but this is an idiom that we want across the kernel
instead of opting out of auto management in such cases as this one?
(esp that you have open-coded locking anyway)

I would expect to have explicit two stores (first to ensure index is
present, second to overwrite entry if null) easier than cmpxchg
+ unneeded allocation (that could cause whole function to fail!)


> +unlock:
> +	xa_unlock(&ice_adapters);
> +	return ret;
> +}
> +
> +/**
> + * ice_adapter_put - Release a reference to the shared ice_adapter structure.
> + * @pdev: Pointer to the pci_dev whose driver is releasing the ice_adapter.
> + *
> + * Releases the reference to ice_adapter previously obtained with
> + * ice_adapter_get.
> + *
> + * Context: Any.
> + */
> +void ice_adapter_put(const struct pci_dev *pdev)
> +{
> +	unsigned long index = ice_adapter_index(pdev);
> +	struct ice_adapter *adapter;
> +
> +	xa_lock(&ice_adapters);
> +	adapter = xa_load(&ice_adapters, index);
> +	if (WARN_ON(!adapter))
> +		goto unlock;
> +
> +	if (!refcount_dec_and_test(&adapter->refcount))
> +		goto unlock;
> +
> +	WARN_ON(__xa_erase(&ice_adapters, index) != adapter);
> +	ice_adapter_free(adapter);
> +unlock:
> +	xa_unlock(&ice_adapters);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
> new file mode 100644
> index 000000000000..cb5a02eb24c1
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* SPDX-FileCopyrightText: Copyright Red Hat */
> +
> +#ifndef _ICE_ADAPTER_H_
> +#define _ICE_ADAPTER_H_
> +
> +#include <linux/refcount_types.h>
> +
> +struct pci_dev;
> +
> +/**
> + * struct ice_adapter - PCI adapter resources shared across PFs
> + * @refcount: Reference count. struct ice_pf objects hold the references.
> + */
> +struct ice_adapter {
> +	refcount_t refcount;

this is refcounted always under a lock, so could be plain "int",
but not a big deal

> +};
> +
> +struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
> +void ice_adapter_put(const struct pci_dev *pdev);
> +
> +#endif /* _ICE_ADAPTER_H */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 8f73ba77e835..a3c545e56256 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5093,6 +5093,7 @@ static int
>   ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   {
>   	struct device *dev = &pdev->dev;
> +	struct ice_adapter *adapter;
>   	struct ice_pf *pf;
>   	struct ice_hw *hw;
>   	int err;
> @@ -5145,7 +5146,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   
>   	pci_set_master(pdev);
>   
> +	adapter = ice_adapter_get(pdev);
> +	if (IS_ERR(adapter))
> +		return PTR_ERR(adapter);
> +
>   	pf->pdev = pdev;
> +	pf->adapter = adapter;
>   	pci_set_drvdata(pdev, pf);
>   	set_bit(ICE_DOWN, pf->state);
>   	/* Disable service task until DOWN bit is cleared */
> @@ -5196,6 +5202,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   err_load:
>   	ice_deinit(pf);
>   err_init:
> +	ice_adapter_put(pdev);
>   	pci_disable_device(pdev);
>   	return err;
>   }
> @@ -5302,6 +5309,7 @@ static void ice_remove(struct pci_dev *pdev)
>   	ice_setup_mc_magic_wake(pf);
>   	ice_set_wake(pf);
>   
> +	ice_adapter_put(pdev);
>   	pci_disable_device(pdev);
>   }
>   


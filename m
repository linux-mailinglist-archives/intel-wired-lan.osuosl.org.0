Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B769C6514CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 22:24:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D18F60C13;
	Mon, 19 Dec 2022 21:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D18F60C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671485086;
	bh=1pemu+bKXXkFb55ZYhTIfRqqXCqTix3DU6kroN0tFuY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AnG/pj47gq7yKslfRyxxjxlbI/5ddJeXZtRSFfoMOOo+hwr56F7LfnaocvxhIrEXY
	 OriEpfFF99w2dT1KPNS0TjxmKgQz2u13iHavFVUm3fR6yCNICom1YoTA1Jdc6GgoeL
	 8iT1NI9Ke3m89Kjv2xYnL5KLjCC6guMHT28mIEQgqL5BAtE2LrPwMA7XEeNW12eO/t
	 OE21gVlNpVHVS6ngKUTn84bmMQrz2QnRXbQQ7i67QoIYVVyXd1NbaZXc8RmeNzJ2yJ
	 /B2+ozkS7LW9RNObIami1XBOHKzR79MYuX3/6/OScRQKCAUMj0OTkLrX5C5jKoSthd
	 RFJAlevlVMuvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GmM7ZXeVUdL; Mon, 19 Dec 2022 21:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39CF76059B;
	Mon, 19 Dec 2022 21:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39CF76059B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 249C41BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 21:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 096E96059B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 21:24:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 096E96059B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUBQAFSKJVTd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 21:24:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 991A46058B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 991A46058B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 21:24:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="307134188"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="307134188"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 13:24:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="896163644"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="896163644"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 19 Dec 2022 13:24:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 13:24:36 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 13:24:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 13:24:35 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 13:24:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V46yUAuY/XqdHngg1bL2c7O6it9AxhrHft+w5AFzvgFG6DsItrl/JzQzGY5LrBF1/49ZMxUCznDq41naJPxsSa+b3o/8N0cPx9NNBHQIcG2Jju0zGnNWaziSRu8RdoBQCGxGBNyzperrso/gdVhaQv4Wp3oBFX1d2ef4XV9focJbgGmGFfRS6YHIUVurE4MpQTBXeAqdJpKwfBpANmc74Sj+x7c2qQ8ba2eY+FcL9I413X1TFweGMCe8RzN9+OWNuhdZCmzr57xTqfVLy39meWWGWcmTBhvNEnO/XUgTYQSEX0ctynh6Mxq+8iOvLKnqa3o2r0PE7HRdzBcAM2mvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ujOJmELF+XZWbWvr7gl8KFVetZvYYJ2YF6vyzaFIqfw=;
 b=Z4+rqHBeZbyVsac8DvzALWxmB1xUlQW6bNGr3cD5YPrZ9lCCOm0j5c5ij6IDvnLBlES0hWHXU5F6gFqygtlZCwAFBCfb7LcetlZATGL+rhSae9Dnr+rmdwDtYl6KfIZwzjN3poG0IYo8/GplktfDb575VZCWLbM3jzbJ3p7VH5ERrqcJO1x3tF5EWISuQCXy3DnNYT/l+iK0sWHRbNlllDv9e0h24NXhrQQ981VhQBGOcMn2y1l9Fy+e+20J6O+RLrJeMBk/dwaf/WoZH4T5ivsenrt+gfiGJ3MiwdyHCrMXwN6nZFV5ppufcZzNMniwOQs5dG/t+0An1WMop85B0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 21:24:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 21:24:33 +0000
Message-ID: <9198499b-8bfc-6405-e6a9-00af6f28e506@intel.com>
Date: Mon, 19 Dec 2022 13:24:30 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Daniil Tatianin <d-tatianin@yandex-team.ru>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
References: <20221216091326.1457454-1-d-tatianin@yandex-team.ru>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221216091326.1457454-1-d-tatianin@yandex-team.ru>
X-ClientProxiedBy: BYAPR06CA0001.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB7787:EE_
X-MS-Office365-Filtering-Correlation-Id: ed8152b9-afcb-4992-392a-08dae2076c15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IlXZEW2ETx43PLckw75HZo7aze00+mfiIvEA8bEkSQrjlkaDAT41l2Tvyx8m0XntwmrRcldZ1MvvOlH8CLO+a/J4VnLAv78OJNjbzmdUB20zsbWv6Z2o5Ce5LtYmaa1no1kB6rzlZE8lygVoqo6LiDWzhh4myl6PaXS/f+kBNm6w8DmOl87URy51EWdPrwx//yNYryfqo3TDB8ixpEhW2VwmwhJAzovi50KqJzd12ET2NvUvOgLzETOpnFCRpjghY/EXtSlRSTT2R0DMITZB/IihRKJZ2hEUIQu0DQMiCbuPgpgAlGuP2Gsj19obFbRJFReB6RHAiopsm3FFBODQwEsnDEe+jkbEnDg71itt1NYzf3EehAxVpO8GlqLf/ROhu3FCY3lb4r8d4ciXmh2nzxP7di6aH0/uXF55SqKIVbDoYHSVzR4B5HGfNEaozn9pEfZkyJQtrah0IvMvKPyP12CUVTQ6QHDkxiT6GMgiFk3/uLtNhRQb4HPZB44eiLQ+vca89J3Un/Nn9p39awVah4nL7EHntdomqQrl/UoF2OvX88buvSEH5yqUIVpK6Q64cEwUI9mvjhST/hKKfMtZsG2gFLcJ796dnhAu+4yFSK6aNllRerTEMfAxwpAZw3UvfabtAIn753chiRHAzygQNlSaqnYVUAAfKfw+wn+pEm4yWwcZee9NPctgaSqRlgMJiOWoJdAgvaoxncjufk9z5erwQII3K1i7kRnDVaHbZ/M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199015)(38100700002)(86362001)(82960400001)(31686004)(2616005)(53546011)(26005)(6512007)(2906002)(186003)(6506007)(36756003)(478600001)(6486002)(110136005)(316002)(8936002)(54906003)(6636002)(66946007)(66476007)(8676002)(66556008)(31696002)(41300700001)(83380400001)(5660300002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUpRMjNYYVBZLzAyUkdwZUpoY2EyZWdjdi9TbW1BNmhhZ294bDVoSklJa3hD?=
 =?utf-8?B?Tk1aU1NrZGlFNVhQQlhOYzZzdVhnOHNtZUJNLzdQWHZuL00zUDhxazU1eFI3?=
 =?utf-8?B?RTlKdnhhNHdiWFdlQWJoNnhqVUhDODNkSGZseW9CWWhVZklGQU9WTktnd1Jm?=
 =?utf-8?B?Wm5qUTNCL2NURzE3bGExVFNwYmJ4VHdkczkxeFVFMTJWMHQxYXUyLzVzYktJ?=
 =?utf-8?B?NHJGb01zOG1tK0I4dlV2UlQ3WDk5NzZLRW91bDh3c3ZlRXM4VDAzTzJwVjBG?=
 =?utf-8?B?QlFOM1drWTl1blUwN2liRTVKYmhzd1pyVXM0VlVGNXAxd1pZVVVSZkcvKzZq?=
 =?utf-8?B?VHJwNnd5OElIWG9nMndQV3lFd21MTXFhS2QvMU9wTFpmY0VFQ3NGQlNFTGpN?=
 =?utf-8?B?SHp1TDFJS3kyWmZ3L1JWMGdGSEN0YWNqWGt6eWdpeCt1M09OaVdURm9lSkIx?=
 =?utf-8?B?Ry9haDlFNDFMWkJmRnpGNXJKOFJGamswUFRyUE50R0NzOVhnNEl0T1Vtbk1s?=
 =?utf-8?B?R052MmlMYjBOaWxrR0p5TGxoOFc5Z3Q5VUdNdUg0MXlxQmw1YkFtRWRod3dY?=
 =?utf-8?B?NWlodnJMRWJKcVg0UE1JeHNCVWdlSHBzb1ZmRnRNNXVNY0VLYTRobjlnUEwv?=
 =?utf-8?B?d2ZqUFpHRlBzQUEzVEljQkY3dkNoUVlsekVhd3JOUVFIUmp0M2doaXNVc21x?=
 =?utf-8?B?eCsrR3AyMWZVQi8rYTdqOUo4cjNPZWphdW5pSGxQcjh1b25xU3ZEUTBRaXlE?=
 =?utf-8?B?VVo4dEZvdDhVV29Ncm9MZGx4Q0pDR1A1QnlzZVU5eEhvNEd2bnJ1L2VPQUtz?=
 =?utf-8?B?RXpOMUNDcVhCb24rVkpQb0JvcHIvVllpd3NTRlRlbk0yb1ZldG1hNitmV2V3?=
 =?utf-8?B?OTJEUTdzNkpqNE5vQ3p5SlNWRGJOSVJ6aFJUNnBRbE4wRjgva2JrbkZqRXZM?=
 =?utf-8?B?cXFxMU9EWTlubmxab3BReTV1TnFuTGpHRjNaRFJIYkZyZkcrNFZ1T1Yyd3dl?=
 =?utf-8?B?NzZRUlVOL2MxbTNHUEYyK2hkZTBaWTJyY3UrbXVxMkoxYUFtR2tUazc5SHpu?=
 =?utf-8?B?NlJYNjlMYlBPcnYyUThSbkFtS1lEMGF5dEo5ako1REo3OGxqMmhnTm1vQklG?=
 =?utf-8?B?QUhlVmVQRi9PMUl3Q3B3dnl2Q3E1VEZsaTljV3RoSGRjZnRvYjZJVDJDMFBt?=
 =?utf-8?B?eGh3a0VuZUJBd2lCME41VVl1VGZmMGJGVy82UzVabDRpL1dEQVNnZkt5L1VY?=
 =?utf-8?B?YVpNTEp1QzZLaWVxS0E1a1dmT1pTS1NTcWFMeVJSa3F3emVKZURqSmFaVWlI?=
 =?utf-8?B?akN4YVNVcG1sKzFMYTZtcC8rUVVqTHl1Vm5CZTBXUlY4dEpYNGkyWWtmS3hV?=
 =?utf-8?B?RCtJVnF5STRYY0pnZFM2Q2VIajJZWnhVUUFyWXpaZk5ZMkgwYzA2NXR2b3N3?=
 =?utf-8?B?NWZaZUJHNmw0c1VHdHdHRmR0WVpVTjRSWTEyTEQzRGVTQ3ppazRHZXFkUWxI?=
 =?utf-8?B?QTBuSytNZFlGTWtpWW9peW1wcEdtczd1VFcwcm9FNFR5cFQrQnp3OHFHYzJF?=
 =?utf-8?B?TFlpaWIyU3NZTUNiQ3VhNklqOElmT3NINE40OEthZ0k1TkNBRCtXVzlTTk5T?=
 =?utf-8?B?S1dxd0o1djFpWEZjZkhnb2ZUNTNOQjdDMWRnWUhzTmx2MWVBU2ZTYmVCMHlO?=
 =?utf-8?B?QStVTlhwY3hNbmhlOXRCYmswUzZwNFFEaEhIU3Y4UzlDdngzdTFGU2NJKzRs?=
 =?utf-8?B?V08wbkhScnlHcHpJS2w0WWJZbEc4U2NVZGFIa0E2UkVIT2M0T1dTYmh4aWR3?=
 =?utf-8?B?TmJnTVdEYmEwSHVjY2k4M1JKUExwNUJuUmc5SXZCN0J0QnpxUklseVZPKzZu?=
 =?utf-8?B?RGUzcUw4TnMwOVdjZWEyaDB6QzJXYzhSaDBFT20zM3Y1ZU5xOGNwcFkxTjda?=
 =?utf-8?B?UXJkZDF5ZzF2b3FlSUtINHRGOWQ3YXg5T0k1S2ZSbWhYTXhzVFFNbk5STkcw?=
 =?utf-8?B?L0UwNzhyMkxvZFY1QmVSUm1nRm90aWhzZldBbXJadFJ4R280cXJVWmt0b3ZR?=
 =?utf-8?B?bjFKZ1RqbU9YcGxtMlpZUXdOU2xYZXBlaDlXV1ptSjdEaDJZM2tIODJMRU0w?=
 =?utf-8?B?bkFNcExQV0xhbmtuUDRjbSsrWGVUbGZJeW5WUXMvR0tYNXg1NHU1RHJNVGEx?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed8152b9-afcb-4992-392a-08dae2076c15
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2022 21:24:33.4356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aHI05apzoF7WW/r+sy1iYM6fuxAzPno4RjgBFmCjfh+oTL6EwDIrnhVlg4d13lbelrVGUrdxqhwcSkdWPkZtp0casG4fd4JVTRby/LcGrxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671485077; x=1703021077;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DMYT3xX/RiRE05Mad6Uw3L5jMKC/w/4DQPlmRddV5cQ=;
 b=VuuGf8HPfThvKytsUXC9yCOKzsx1diwhCmMpxELLuzn8M79ovepX6y9q
 /R/Au1IgDk+9rw4syEist+kBEJ38bVIBp+dEV72hMM3tUTwDXARx20Ine
 iYDVeq93BJ30Lec8D1vLEwit16blVLOOCMo7OohkJo4FdlxGeRBr8PG79
 HHf00uz0mAAB5+waMdfJSANXFb+YIuBq744KTHr/m0ylL2K/OfCWXCrJI
 S6LFR3Lbdnm39qZdvWhUcjpXZBF1+E5wZY3+8L3JdwntPAjA8DhqOoX0x
 kii+lCptQkD/yZL1pVvxBea8kx94XTRccw2qYzMoap2lNGwt5W+oy94mC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VuuGf8HP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] iavfs/iavf_main: actually log
 ->src mask when talking about it
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/16/2022 1:13 AM, Daniil Tatianin wrote:

A couple of nits.

For the title, s/iavfs/iavf

> This fixes a copy-paste issue where dev_err would log the dst mask even
> though it is clearly talking about src.
> 
> Found by Linux Verification Center (linuxtesting.org) with the SVACE
> static analysis tool.
> 
> Fixes: 0075fa0fadd0a ("i40evf: Add support to apply cloud filters")

This should just be 12 chars:

WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1> 
("<title line>")' - ie: 'Fixes: 0075fa0fadd0 ("i40evf: Add support to 
apply cloud filters")'

> Signed-off-by: Daniil Tatianin <d-tatianin@yandex-team.ru>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c4e451ef7942..adc02adef83a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3850,7 +3850,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>   				field_flags |= IAVF_CLOUD_FIELD_IIP;
>   			} else {
>   				dev_err(&adapter->pdev->dev, "Bad ip src mask 0x%08x\n",
> -					be32_to_cpu(match.mask->dst));
> +					be32_to_cpu(match.mask->src));
>   				return -EINVAL;
>   			}
>   		}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

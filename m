Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B473964AFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 18:05:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C95880B15;
	Thu, 29 Aug 2024 16:05:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ClmJvinmjA-b; Thu, 29 Aug 2024 16:05:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68D6284082
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724947540;
	bh=OBL2bA3RuIVgSuJ2FvN7C9M5wZwVSmIku6O2TprQ4Vs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vg2bfFAm/EjMdZecDIT/Vp00sdPqk2xUGS6hQMrUphUKrV03Xqrd9xmeEIbfPKJ5m
	 FDi5VeQ1J+dzupqTjOras9Oau6LtXGkwvfhSnX1ri/GP5P9xxmpwlXRLnWB0ui1Bp5
	 zzg6n+xJ9QlsbQ4djv5qUlpnoILFv60o74ZTE3N8hqp1mqqUsddKNaqV/RBRWDW6LA
	 8uSt3oma9QppEVv0qkDrjDJlwfhh51S8w21Nxpt7ZTr2RR/vEDMEINghqi9F55d4A6
	 p35aTjbIF72I2Sz8d79NZJws2w+XIgJ7JqrHi/HGibvK5CK9arIaUhi28UcLrom+Y9
	 supeQpyfVGXdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68D6284082;
	Thu, 29 Aug 2024 16:05:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27AD21BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 16:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 12F3D404AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 16:05:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0n8qDXwZyAI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 16:05:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A54DF4012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A54DF4012B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A54DF4012B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 16:05:36 +0000 (UTC)
X-CSE-ConnectionGUID: 4aTcQLSwQi6Uzy9DbyyAVg==
X-CSE-MsgGUID: XSojM4ySS6+gP0Qq3jWdag==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27431050"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="27431050"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 09:04:37 -0700
X-CSE-ConnectionGUID: qCOdqR1+R4u1wfk6XMp+/w==
X-CSE-MsgGUID: 01fqTWOvRM6eBkiPqYWQyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="63677266"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 09:02:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 09:02:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 09:02:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 09:02:19 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 09:02:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tj0EgkGGEU0q4xduoTgNq3521iJZw1rDDBmpt1y85pXzD/yJJHuADX/0lPggS8Zsb4pg5rm+VlCyBOD+8s4x5k1sgFLV4MUE+uqDoeld2QyGWKUuNZslpZOYGPjpwp9DKj0QkUi9AQiuBqDAMdYLRYyEdwSpoBcQlpwG3y7Z9TrklSnv9x+3Q7ompu4j8W1RVZzTQTNIO0DzP34wU7GZPaXILq6AuC3LIv83OZWKftjg/OyC5e5yWne0KmG3wMRCKLgdHELQQ8dHomDr29IhdMEklqV0nLOME2heP1MOh1FB7zeB7Pv1REIyLokiVoQjKcnGq/oGS+2QXSC4K3Wb3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBL2bA3RuIVgSuJ2FvN7C9M5wZwVSmIku6O2TprQ4Vs=;
 b=emDyALWwInhoZpPV8I1wydkDIWpFTWHQUSrlMHBuzqEPez0YD8gc3pbsWSwyyP/O9dj7U3MP7PSNyhjAm5VkFN/viE58xnNoa7YNruPAA77hnrVeY3SYpVZlFvOmS7Ls3n258Wxo7zyUbs5HZgtAl6cQVtdknHVI9Uhax+t6Y0qYGHnCcm2SvQOX5fc5pQ8q5ZQP+hF10XKchODtD514yo8AVCaq9YvFrE7nov74AiwzkxjJCL6RH3gXZEw0baV9XXyPdQQAzEqZhxWTTOD0rI1Tuk/IuNAyo8ff0TfMXXhhNWCKNl2U2RF0U/FTfxVWuDVInRL5bTTCHaTyOhVygg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by CY8PR11MB7732.namprd11.prod.outlook.com (2603:10b6:930:71::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 16:02:07 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27%5]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 16:02:07 +0000
Message-ID: <c9f58746-1a19-41dc-815f-8e43e694ecef@intel.com>
Date: Thu, 29 Aug 2024 09:02:04 -0700
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240826181032.3042222-1-manojvishy@google.com>
 <20240826181032.3042222-4-manojvishy@google.com>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <20240826181032.3042222-4-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR16CA0011.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::24) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|CY8PR11MB7732:EE_
X-MS-Office365-Filtering-Correlation-Id: d6834e05-a6fe-4ba8-ea65-08dcc843eec9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amZGUkRzRG15NDlmZHB6ZTRzaHZUM29JUXNpRUVnejJ5YXR3NGJsb1UvMGFy?=
 =?utf-8?B?UWJYbWUrbWRGb0p0U29ZVFJoQzRCTVlSWmJXbXlETG1RVFpkbnlJQnBWRlZO?=
 =?utf-8?B?TFJNTTFzd1dzKzZCVkNNOXpaMTR3YXkzR1VoOEJqeXN3RjduL1RHcmxLNkR0?=
 =?utf-8?B?N01uaTV3UDhhV0pmeHVVSHhKMTc2YklVK0JTMzdKMm84dkVRb0xZMVhVVjhH?=
 =?utf-8?B?aXpGbXpRYzZCT3RsUUZSeENWRnN0V2hTMFhaZktPVkVXN1l4dTE4NDdHWWd6?=
 =?utf-8?B?MFpzOUNlQytpRmkvYlVEM3RKQUpscDZiV2xHYU42cXJCb2wrdTFpYkNlei9r?=
 =?utf-8?B?VFIyMk9RNGFkOWhkbU1ERnFtSytGalBuekM5WC9JcVp4QnE3QUp5MG03ZGVx?=
 =?utf-8?B?YWRyK2hVaUVXaTc3L1hqeFhUN1lidFRkVzFGL3FNNTl1OU9pcG5hWTNHQ01E?=
 =?utf-8?B?VGFqVjRYZWV5OTBYeU1meFNwNUg3Q2xUaHY4bkVVSXgrZEdFejdCWS9ZOVhE?=
 =?utf-8?B?SDVtVy9ibzdIblV1MXMwUDd0emtWTEdkSW1PNUl6L1VwWFpDQjlKYk01a0ZD?=
 =?utf-8?B?bnE1WjdKNGQ4aTRjN2ZQSEE4UHZmZFVGT1VzRWRic1RQZmxRV3RGNjBzWFpV?=
 =?utf-8?B?YWx3dGdnVW05cXp3cnFWNTdOL3hXNzdqalhJZ21YMU1RYlVuRSttVlBickpT?=
 =?utf-8?B?SmxGMFNuWG5pcGwxbkFqOHRpdmlXdjRUdElNLy9sQmhRNXZsRm1jWkp4R3U5?=
 =?utf-8?B?TVBCQ1hZRkNWVHlQYlFtamJ4VEp1dkFkYzZmQzVMcFhTcmdzUTZOZVR2VnVo?=
 =?utf-8?B?VWpBbEJ3Q3hSeC9OMFRkOUJkUjlqU0g3S3VIWFdaeEdJUjROL005bWJ3cDVC?=
 =?utf-8?B?QmwycDlvNmllTm5KRzV3cWkzczJuMXhvdVdSQ3h6TUpid1V5VXo3ZDBZS3Vh?=
 =?utf-8?B?aVN6aGk4YUVMQWhKcHphQ1lyNCtwcXhEZXJXaTdBZXJ4eC9EYUNzYm9LdkNj?=
 =?utf-8?B?aVEzTTh4Vk16S21TK3pFVk9GTTBPSEJoZXhrRUw5eU9WSVl2TGZqUkFBY2dM?=
 =?utf-8?B?eEgvUFBGb0VJdndvWlcxa0tNbFREalhaYldwSDNKS3IvTWNzNkJLcS9iRUJI?=
 =?utf-8?B?cUNhemE2bzMvTEFYSW03bHVnSXl0MXVJQzZTT29QYmpaSkliVEJkRi9xOW1v?=
 =?utf-8?B?VHdSRHlGSEdDcWVJODFRRS9BUkxNbEt6d2djNzFHZFhraWJpUHAxU1dBRFdJ?=
 =?utf-8?B?RUxwY09oWmJoSW9jZE9STER1NCswbVhEejZXc0V5bGRIV3lTb010NTBBUytn?=
 =?utf-8?B?MllKRGFTRnhsNVFObFdIMWxvWStoVStJTGx6V01XZ0JYTVNTNHErekRDR3Rm?=
 =?utf-8?B?RlpWVGU2WXN5NW5IaWVJVlFCQjhYM0J1K1AxdTlqMnVtbE1xUlVkNGpyTjRX?=
 =?utf-8?B?c0Z0d1hHYlFCODkxN3VYUmg3OFgzZCtPdUVzMTZ6V3RyZnhvbDZkWG9TTklG?=
 =?utf-8?B?SjhVNjFvZGpWdXJub21xRzJ1emJCZ1JWMHJpbzk4Zy9ONXZobDFLVktlc1Mw?=
 =?utf-8?B?NG9nUGFOanIrV01lQVFKUGNRM3kxeWlIeFpRN0ZSaTlydktEeDU3YjBjcEpz?=
 =?utf-8?B?Zlh1MFhCVWcrSEZKME41eUxFU3hKSnRKSkFHVmg2R1FUV0F6ZDFLR0FZYnVB?=
 =?utf-8?B?YSt5V0ZqVlh3eTJyS0hsWEtuaXVKemVoR3VQQ1VrSDBUWHJJeTYxUS9LeGpH?=
 =?utf-8?B?cDA2L1FIa1ZKWkt2MUM2UWVFRzlYOFJxMXBzZGpkMlBVNmYySHBsREpwc2FK?=
 =?utf-8?B?aGpXRUZJUnJuZ3pwUW5UQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkVBVHFqMDk3VnZHU0NTVGFmazV4STdZTzVwSDdsY1MzQTRuYk9MNGVuMytZ?=
 =?utf-8?B?eHpGNHFFeXEzZkRXczdUUCt2LzF5dzRDUzZlQ0l4ZS8renpPYUdydGdUays4?=
 =?utf-8?B?OC9JWDYvb2g3VnFJZnVJZHZtNjRKY1kxcnRnZ2lmd1lRcHZldEs0K0REaWV4?=
 =?utf-8?B?WUlGdmhpdlcvbHpXN0xucHZsL1hyNVM5VFJYSFlybGNTRUQ3cWdJTEtlSXhN?=
 =?utf-8?B?dWo2TmE1a251Wjl2dXcxcVRDd3ArZSt0d2pKWXoydGpjd0ZvK1lqcU9wOFo5?=
 =?utf-8?B?KzRQbHJjcTFsTmpZSzRRcVNNaDI3d1hqU09VSFdzbTdxTGxjZzY1YnFteG9s?=
 =?utf-8?B?ZmNGa0xUWDBTc1I2UnkwOFlTUTFIZDg4bVg5YjlqRTdVYzhZSFBaZ3p1U1Zv?=
 =?utf-8?B?QWtjVFZkZVB5UTlPRDRxZUxRenY2VGN0bGszc0dpa3k2WkNMeko4OXFLNVFR?=
 =?utf-8?B?ek1lWVc3d25yeWpzbHlPbXF4azNCOWhoZlZGZjBmUlJjb2RFcDh0bTlLRkUx?=
 =?utf-8?B?ajk3Yk54Tk5YOFFHcjJYbnBOK0VYbkUwS3hGS25WSmRlcUdkQWhhZmg5LzJ6?=
 =?utf-8?B?SkZ4eWF2S0pJRzkyMkdyU2o1a0RGSFhnN2svUndGQkQvNGN5L0V6dzRTU0FJ?=
 =?utf-8?B?a2NoaGlaYjNqSk5PT3dlQ2JjbkNLSVBlVXRzaGtCK2Q2WXQvZ3piMkF3Q0Fi?=
 =?utf-8?B?RGZsL2Z5WG1CLzVvVXU0WUVGYjRheUNiLzA5dUxOQ0RBVFczcjlSZVg4Yk4x?=
 =?utf-8?B?NnlFdnpZSzNuRC92L2NuOWRpVUkwOTNXQW83WDNrUHp4TW56NS9ISnl2WTh2?=
 =?utf-8?B?aTkva2tXSGhQTXR2SEcyWHorQjJHRTY0ZHYrSSs5NDJDRzhITlFhZW1PRkdZ?=
 =?utf-8?B?Qy93MXNHUmlSMThtMUVqclpkc0FGWUpKRFlKanpUSWN0U1R1TTdsTTlGbDVY?=
 =?utf-8?B?Qi9Ba0tmcUhwZjVGRnhMV1d0NTRITlZjV2JiaktXQUFqeEVEOUFwbDFaM0Uy?=
 =?utf-8?B?aHVyaC9rbFBuNFhXQUwyZnFYOERLNVZPdXE2TmpOdHlvWDZVNy8rNXo1eHRp?=
 =?utf-8?B?TjlNenZpQkdnNWhnVGl6cTJLbTBvUjdvdzVUU0RuaG5JQXZiczJVUy9NdjNy?=
 =?utf-8?B?MHFneXV2L0ppQk94c3JSWmF6Zk1NVzBSLzlCczZDVkdwWFZyV0ZXdTBBZGRX?=
 =?utf-8?B?dXYxR2tRd0R6ZXIwMUxyVGZYSmZhUmpKWGhTR1JCa1ZBQjIweWJ3OFRNZi95?=
 =?utf-8?B?ZlBkZlB3anRWOHJ6SDBOcFRjNTc3dUdQNjFQNlBjN2dmSlFuaytzeG9IWFUv?=
 =?utf-8?B?Z3BkYjZ5Y2JqS2tGeGtORlB2Yi9NYThkUUdaRTNCVXFPNzhQcWFBczZBSVZF?=
 =?utf-8?B?N1UraGxmVzdjUWE2Q0ZTa0xCRXZDTUJPNjN4R2JJT0dmWUpBdG5pUTIvVW05?=
 =?utf-8?B?c3ZCZHp0ZTlSalhWdUtaeTNLdFBPSlRqMXVab1kwOTBjendzczNPSDg3ajZP?=
 =?utf-8?B?azg1NXRJS0czQUg2SGc1QVg1T3RGeFV1N3N0ZllkK0FrbHlQVDY2VWJXMGVM?=
 =?utf-8?B?bi9VKzJmR2FLMWtZWnBNd2dKMkJzbVdKZVlIbzRFOGpTN0s0NHd1d1BWd25D?=
 =?utf-8?B?aHRaczgrZ1J4dlJjSzN1eGpGMlFWd1JjT2poYWlKSUtjYTFmdlk0N1JVRm9G?=
 =?utf-8?B?OVVWOFBqMFYzbUVNRmE4elBlQmVXSlVhTFZZMElKeVBtcW5mai93aHJqa0Nx?=
 =?utf-8?B?dEoxanRzS1p2cnZrdHNIRjBJZFpOS3k5TDFTU3dIbG01YWkxeVc1WCtsU1Nz?=
 =?utf-8?B?Wkxlb3RVWlp3ajJOWGNSdWRobWhOaVFoOUhDYWpHRXJNUVFNU1BmL1h1QnpW?=
 =?utf-8?B?aWxDMFpFbU8vZDZPc3RyZENzcGt2aGk4SkZMakZaTmU1cGc2d0FudkYxZFNj?=
 =?utf-8?B?ak5mbmRpNnMzeGl2QXUxVjd3Wjl4VkNadkxDTVRWT0c4bUlia2NzMGhkc0lY?=
 =?utf-8?B?REhZWS9rUmpwekVtcE4zdmtxMTkvNkFXUG5waGhUVVNFOUZ5TWs1R3hvdi9m?=
 =?utf-8?B?NlFqTVVSNnZyT1BkOWZRdjNrN2NWcnladlNCUXVPL1FrWm5IVVVBd3BqZWR3?=
 =?utf-8?B?MGt3Y1dGUVBDdk82TVBvM3p6L0x3MEQ2aFltT0ZoOWJ6bnB4eVIya3M5RnlP?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6834e05-a6fe-4ba8-ea65-08dcc843eec9
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 16:02:07.5781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oJv0syItxV7gDa27A/W7WPtvwVCDLkq8FXgVUQ2D04CFzKPyA9zAVv4knJHTP7gOH9KMMvCydZ0GBvM96d4wFSQS8NJzVpEKStExCvi6X6E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7732
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724947537; x=1756483537;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AuJpyj3WaiCRO+v0KFzaskhoYZyYdG6esPuNX/oMBew=;
 b=EonrGUfjVh+3Lab670yfsTS212HPfjLMREcZa7FiDKD4fdTpruTPhhOL
 FTnGu78JWm7/JSTueH7buIr0bAZxIMAS0Xv5zGdRuFOXpL93o17m992C1
 xH3K0vSn6vYVEQB7/0I3cLyyCgnq2pKNyRRAXuMUSkjrNNCDCwMPh9MeJ
 XiJylmPigPtKjaCe8xv1/JzOARqdm/rExCGYXQmwO7rLCtZGyuLy3DFyJ
 lsS53+ixy44GblNystZLDYgriZoEuA+zzW1ZP5sEUA1WYDlFdASpUSJKh
 nnzw2wrqhHA+7o7ZSSDGVxJIOgoTqVKVuSl6e6hBUalUNZSIoDYIc3c1o
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EonrGUfj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 3/4] idpf: convert
 workqueues to unbound
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
 google-lan-reviews@googlegroups.com, Marco Leogrande <leogrande@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/2024 11:10 AM, Manoj Vishwanathan wrote:
> From: Marco Leogrande <leogrande@google.com>
> 
> When a workqueue is created with `WQ_UNBOUND`, its work items are
> served by special worker-pools, whose host workers are not bound to
> any specific CPU. In the default configuration (i.e. when
> `queue_delayed_work` and friends do not specify which CPU to run the
> work item on), `WQ_UNBOUND` allows the work item to be executed on any
> CPU in the same node of the CPU it was enqueued on. While this
> solution potentially sacrifices locality, it avoids contention with
> other processes that might dominate the CPU time of the processor the
> work item was scheduled on.
> 
> This is not just a theoretical problem: in a praticular scenario > misconfigured process was hogging most of the time from CPU0, leaving
> less than 0.5% of its CPU time to the kworker. The IDPF workqueues
> that were using the kworker on CPU0 suffered large completion delays
> as a result, causing performance degradation, timeouts and eventual
> system crash.
> 
> Tested:
> 
> * I have also run a manual test to gauge the performance
>    improvement. The test consists of an antagonist process
>    (`./stress --cpu 2`) consuming as much of CPU 0 as possible. This
>    process is run under `taskset 01` to bind it to CPU0, and its
>    priority is changed with `chrt -pQ 9900 10000 ${pid}` and
>    `renice -n -20 ${pid}` after start.
> 
>    Then, the IDPF driver is forced to prefer CPU0 by editing all calls
>    to `queue_delayed_work`, `mod_delayed_work`, etc... to use CPU 0.
> 
>    Finally, `ktraces` for the workqueue events are collected.
> 
>    Without the current patch, the antagonist process can force
>    arbitrary delays between `workqueue_queue_work` and
>    `workqueue_execute_start`, that in my tests were as high as
>    `30ms`. With the current patch applied, the workqueue can be
>    migrated to another unloaded CPU in the same node, and, keeping
>    everything else equal, the maximum delay I could see was `6us`.
> 
> Fixes: 0fe45467a1041 (idpf: add create vport and netdev configuration)
> Signed-off-by: Marco Leogrande <leogrande@google.com>
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>

Except the nit (s/praticular/particular) what Jake mentioned, changes 
look good to me.

Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

> ---
>   drivers/net/ethernet/intel/idpf/idpf_main.c | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index db476b3314c8..dfd56fc5ff65 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -174,7 +174,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	pci_set_master(pdev);
>   	pci_set_drvdata(pdev, adapter);
>   
> -	adapter->init_wq = alloc_workqueue("%s-%s-init", 0, 0,
> +	adapter->init_wq = alloc_workqueue("%s-%s-init",
> +					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>   					   dev_driver_string(dev),
>   					   dev_name(dev));
>   	if (!adapter->init_wq) {
> @@ -183,7 +184,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_free;
>   	}
>   
> -	adapter->serv_wq = alloc_workqueue("%s-%s-service", 0, 0,
> +	adapter->serv_wq = alloc_workqueue("%s-%s-service",
> +					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>   					   dev_driver_string(dev),
>   					   dev_name(dev));
>   	if (!adapter->serv_wq) {
> @@ -192,7 +194,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_serv_wq_alloc;
>   	}
>   
> -	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
> +	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx",
> +					  WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>   					  dev_driver_string(dev),
>   					  dev_name(dev));
>   	if (!adapter->mbx_wq) {
> @@ -201,7 +204,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_mbx_wq_alloc;
>   	}
>   
> -	adapter->stats_wq = alloc_workqueue("%s-%s-stats", 0, 0,
> +	adapter->stats_wq = alloc_workqueue("%s-%s-stats",
> +					    WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>   					    dev_driver_string(dev),
>   					    dev_name(dev));
>   	if (!adapter->stats_wq) {
> @@ -210,7 +214,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_stats_wq_alloc;
>   	}
>   
> -	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event", 0, 0,
> +	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event",
> +					       WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>   					       dev_driver_string(dev),
>   					       dev_name(dev));
>   	if (!adapter->vc_event_wq) {

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5A0AC79B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:22:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEB40610BC;
	Thu, 29 May 2025 07:22:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umC-E8NMEoCF; Thu, 29 May 2025 07:21:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BBF56109B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503318;
	bh=5TqNwlxHe66OyLoEILswYmROKtl4BZLg9RlzfX6gIqo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZGU4ITddzGspFla4haaSekiFpHqgldbhwCZR2nL3OSkDGmTcP2AFzcnCLe3NyKZEe
	 1xfCE6HsXgRzPY4Z877NXY5Sdoop/EQ9ibLqBCHyk6Fa+vBu3lK+f6ccvsaKXa/eGm
	 UnTqFms9J1wxACoJgu0w5C8/uy2H5YebEsW9ZOfWvfZvWmhftPr71sJhWfke9yougq
	 aobkr6+/nvPdatiQMiuI67Spkq3mthpAfkToPpSJyanR34tQqHn05aTnKTMUaspY/Z
	 eRjEHD441eaha23/bieWEVG8Z6ffmX8d0KGX5wR/ZJbpXDwpTa7cRov2QQL8QcHR38
	 FTxz6MOBiDe9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BBF56109B;
	Thu, 29 May 2025 07:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 90A3114F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82A10403D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:21:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zIkYV2ae2D2m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:21:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF191401AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF191401AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF191401AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:21:55 +0000 (UTC)
X-CSE-ConnectionGUID: y5yassgQQqeT69rGKnvQEg==
X-CSE-MsgGUID: EUrB6tf/SWSsdDGhmDGNpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50704400"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="50704400"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:21:55 -0700
X-CSE-ConnectionGUID: 44hv7ufWQzelqPZ1qbb00Q==
X-CSE-MsgGUID: eewsJyr5THGADvXV373IXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="143814193"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:21:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:21:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:21:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.46)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sp6cax+Net5lcylbCOfXXFEbGjvqVx8X91j6XiuHiXD3G5wt+kZEqcSDtHgu14+5IiKWyzJe5lNUTyjrPIYRGfjrEeBZ+Jtj2yXfMvYXBAySln1xPg5KUmsnl/HqsO/p9JzI/7hYsNSl9gloniWqKc6GSEEAz8JBvjsv9zindusDu4EmzgdORq0jg+rQemGWwX6QRWxtSmGSMipNR+I/innT6H4+vfj9NNGFmL97fPtRxdcpy/N7SdKwCfcO7okTjViwX03WIQbBv+qLzzfWfX7au5aw+YBAU2yVVUaPfDdH0wb4DjpuW/87VlmqRYsJ+4Y4U7ygSuT1g7I77mIlFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5TqNwlxHe66OyLoEILswYmROKtl4BZLg9RlzfX6gIqo=;
 b=METZi5lCew6VwK1I2rP0WNnZviQlhkpQUQvCBGX+AMCrYhl8OQ5GFaTG+6UFTif2zQzFZ1uOuDZhjYow8LiU7ghcMwpuSZS/sj9hS0WKa4JQeRUqP5KBGr5juOhx05lywWx9Yq3BHTOKvsWs3nEwbSaH1E5vc0BGebZOUjalmEtwRF0dLcGDYoBRLLa1zZU7281uPY0CxR9LIbCc+5NCYM7sk2whYpxZwriT6PP1fJwy5JrUqs/CbElLgFuSkvo5ry72y4HWPKsQ3FfYrErBWUgrgpGEhtxBqxBqJgfB5tCI+kvnR+HwE1x7yROs/X/s0D+VLde3vpY2UresV1B+aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by LV8PR11MB8461.namprd11.prod.outlook.com (2603:10b6:408:1e6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Thu, 29 May
 2025 07:21:19 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:21:18 +0000
Message-ID: <f401d386-3ee0-4f15-b20e-d83623d2975d@intel.com>
Date: Thu, 29 May 2025 10:21:12 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-5-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-5-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0017.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::7)
 To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|LV8PR11MB8461:EE_
X-MS-Office365-Filtering-Correlation-Id: 05adc9ca-a266-4f8a-9d4f-08dd9e8167cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SktkQUd5Y3lUUzRITUI5ZDdMc2ROL1l3VVZhcXAvQnBuY2VCQTZsUElneStt?=
 =?utf-8?B?R3Znd2VhZ3FZOC9zYU9yOEsxU3NyMnBKa1JlUlpCSTYwSnFTeGNOdkF6ZENp?=
 =?utf-8?B?NU1QaGFvbnlvdDl4anRabDBDYUE2Mjk5N2dKQkRxUEdSYzQ1QWN5RzJrTEpV?=
 =?utf-8?B?SHlaclJOMUV5ai94Y3BrMTFtcnJTbmd4OHU5SFZWMTZFaW5WOFE5TGRHa2c5?=
 =?utf-8?B?ejZ1dnBTVVJzeUEvdXZkR3ViNTNRMWZPRDAvYk1HMlB4eFpHK3ErRHNINDBO?=
 =?utf-8?B?TFNnaXhLcWl3VWlTSk81NThXZTlEM2ZWUytqU0I1dnlkLzh4bGlpZ3JUS3Rs?=
 =?utf-8?B?ZGxDajUxbnJDcmJpb1gydGJ5Nis5UzF2RTlDaVlNRlNXZVFqbWt2UmhFekhh?=
 =?utf-8?B?WStXM0NoVkEwQW1DZ3dBZzVmVFRWNjV4Q0wyZEtFbXpxUnVkWU1yT083OGpm?=
 =?utf-8?B?ZDY5UFhoUEhWVHZycVhiR2Q1RUROUWNoaitSeHJqR2lUNmhzUGhhQlpDOTMz?=
 =?utf-8?B?SkpITHh1dmtraWRqbnpVZjUrWWFRNXQwWWZIVkh1TUpLWUdGb2RJTWE5WDVN?=
 =?utf-8?B?NnBYOG4xbW5mQk45TlVRRnBLUXg5M25FeXIwbTBSVG5XMm1NZmJsbjZabzdY?=
 =?utf-8?B?U3FrSEdKNGNkZkFnRVdtZHIzNVQvVXlpNHd6cWRpaEpheG9XTi9KdDR0eHR2?=
 =?utf-8?B?ZVNESzlJYmVsZVorZE5kRHpHcFltVnFQY1R3YW8ram5pNkZNSGphQmNEcDNp?=
 =?utf-8?B?M2hvMk8ydE1ZTk55V0hOMFZyNXVkb2k4VjIvKzJJczZOZFFjWkZGNW4wUjdO?=
 =?utf-8?B?WEtyZTFPeGw1eEdnTy84TG5IaVltUTcrd3c5OG42WTkxZ1ZteGk0TEh2dHBD?=
 =?utf-8?B?bDYzbVZwQ0VWZkxMMlZ1WFF2dlNmbXlWVGtqWXpzSFFWYWNoRFJqdnRXWVJU?=
 =?utf-8?B?bm1IaDBNTzJDQ3pYSmNycVZlWVVTWElyS0VZbWs4ZXhFVkRKckthQ0kwdXNn?=
 =?utf-8?B?bmVrSlFsemR0dzlxcXdTR3hxN0xISEZmbFhLaGwvZnNHeS8wUDNmUm9ObnVr?=
 =?utf-8?B?TnBWLzhJQ0tnOFZRUGNqNzBWK0c0TEVoa3BaNm1xUUNVV0N6bDU5a3g1eUpu?=
 =?utf-8?B?MmlEOXdJSjdRN3E1eDJVdngzSk8xTGFRVEF0RXFldWgwTXJwWngxdlNEaWNV?=
 =?utf-8?B?dlM4Y0hDYmlOeHJneE9SNnQ2OVNET0VRdXRIRTNURlZ4WmQvSExPdk1LeDM5?=
 =?utf-8?B?aWdwNk5aeTlkVEorU3RsODhjZkMwdEJiVkhFaFg2VW9vODYwbG5JZ1JMUG9o?=
 =?utf-8?B?cDhFSW54bGR4ZGN6Tnp6Vm5LQTJJK3lIR25QOTI2U0l5M21JL01zUElyNlVR?=
 =?utf-8?B?N1VZV2ZhSDlvS25kUEJHanFESmRHODd3ZTZibEF4cVd5N3k4d3FMY25xYUVL?=
 =?utf-8?B?RWFWRG9mNHFNZmZQTHBVUW1BRDhkeXNPL1d3QWFUdEN6Z242bW5BVU9pUm1i?=
 =?utf-8?B?STh3ekg4bUQyVHVFWWptUFdaM1A2NE1jeVVpUHk1dGwzTkh4S3VMeEZUUXdW?=
 =?utf-8?B?Q3BHdithaTFyMi8zczBjbnh4MWhhS01ZUThmb1RoUnZjWjh4cEFEbFFleGZn?=
 =?utf-8?B?YXpLUHVMZHhTckVmbE9YWDl4amQvYnBsSFM0V3VTc0FEako2UnhIQ3lQWlhX?=
 =?utf-8?B?akg5SGxGL05pY2JOa0s1Rk9TSXg1RjVCWm5vdkZ0czN6UXd1OGxpTkRLaVJw?=
 =?utf-8?B?cG1VbDc0MDFsQUtEUzNSMjhDQi9saG1VZEhzM21ONkQ1R01wcHpRTzMzSlo1?=
 =?utf-8?B?SWdra2l6WHdoWnpZYWc5bGZCa3YwYmx4R3B3VU1ubnQ3NU9XcSt1d3JocklY?=
 =?utf-8?B?NG1yR1lNL08vODMwdHNmWjVxU1owbXBNWFh2ZE9odnRlTzlBd0RFK1gxZGxy?=
 =?utf-8?B?ZHQ2NHA5YUpucTJieVcwNXE4WC9vS2M4TmZIQ0lzb09pTGVMbXYxeGtXT24w?=
 =?utf-8?B?YTN2UEpPSU5nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXNjYXh4N05FZEFzM2NSQ1J1cm1DZm1MZzIrd1FLSTBXcmtmZFBmSUFoV1BX?=
 =?utf-8?B?bDZlM1g4WnJOcVRqQ1Z6M0JycWdXMkFQT2FLMWxmcWdpWEJEMU1QT0N0Q2Fk?=
 =?utf-8?B?WEFaQXJMZkR5TGhnK2l1MkE3c09ReENKZ0JUbmowSXhRQ3h2bnRYTTZ4NlBP?=
 =?utf-8?B?ZmZqejEvbzVZd1FuZE9hYTBPS00wN3ltVUwxQ2YrbGxIZi84MTVJdytlK3ZC?=
 =?utf-8?B?SWpxWGJSQk0xVW9lcllhV0lzNnhZenAzMm1NYzBBaERXMWVOSUNZMHNhbUc3?=
 =?utf-8?B?ZHJscHZ2LytZTkNzWjRqQjZLS1pWbld1eXlSeVhwUDF2clFMTzdvVVlnOUMy?=
 =?utf-8?B?S2hCVERVSGJPUTllM0g1a0FKVE9IMmJ2aXIyTUZ5K1JiS3Y1U0hjYzFISS9q?=
 =?utf-8?B?aGFra3RsT3dFQUx5YXk5b1paZ0E5UVcxeEFxaFg4UHg1KzE5UE1jL0Y5WFZl?=
 =?utf-8?B?N0FyU0k4ejViT3Yrc3VFclM3WjZydlNsSjJFeG1YZzBJRGNEcWVIaHB6YWdJ?=
 =?utf-8?B?TVV5SS8rVVRRRi9WTnB1a1Awc3NGM29SbENqam5wT21NYVJDSE5uRFVQSUd3?=
 =?utf-8?B?bVNRSkV3WWpmcGM2a3hYR0RQU3NzdkpWK3VBbnJaNTdBVjJKQjFhNUxOd0tm?=
 =?utf-8?B?SncxU2lId3dZWENUY214c1Z2WkxKd090b3V4MHl3WGZROUNxUU1QTjhoY0RD?=
 =?utf-8?B?WnZkUlhzL0Fla1l4YnJZT01yOGRtNEV3aUtsdGlIYklhVldBZmN1ajVFUDlO?=
 =?utf-8?B?aXlqZG5JblNWUTcxalRFNTFVVkJFR0xxcDN4c0pUc2tVSTFyY29QK0YzOUZW?=
 =?utf-8?B?cG1MOTN2NkFZejBTYXdPSEYrekRTd1gxSjBkU1NUWnBQbjVhSW54MDloY016?=
 =?utf-8?B?anpIOURZMGMwTkFFTkF3MGNsK1o3MTdCRENrbTFsdXZhTTlZb0s0aDEwSTZC?=
 =?utf-8?B?ckFNUGZGWFloRXAxcldnaGdxSTg4K21MbDRBdDNnanlRNWhqRXZmejFadnov?=
 =?utf-8?B?c0RuSmZ6Q3UvWGNBZ0ZlVGE4dTlwZmhocjd1Q3N1aXg2N3NLT2xVN01HeGdn?=
 =?utf-8?B?QWQ2WEJIZEhjY1N6bnVSOC9xL1lPWTZWQzFTYUx3ZGVjMHBhNjlxSXNCWFdL?=
 =?utf-8?B?SHlCc1lDTmJjNVhraVNORnlOcnp2L1VoQVRseU1kdENQMmtGdnl3K1AzdEhI?=
 =?utf-8?B?TVdNS3FESG9CR1AwVU94RWlnalNPb2ZPaGMzTFRPQXNreHp4WWtuWXNTbDZ4?=
 =?utf-8?B?b1k2S3I0cnlIcHR3NVpiNDJHR2x1SGpwdm11bzN2ZXJxR1J0NCtaU0R2WWJx?=
 =?utf-8?B?QjJSWTF5VXJVYVFLSVZFa2NsRHlIYVg0Sk92d3VVQlNBMDBZNjlDWlRSajZO?=
 =?utf-8?B?dkE1TkMwcW9nWVFTakJMMmx2ekJEU0s1VllNYTRtMWZiSCtlaERuTmRYNjlE?=
 =?utf-8?B?MWYyelIxbEdYSUxzckhnODIwZ0I3RUJrTWI4ajhRYndrdEFDRmtIMlJHdDJE?=
 =?utf-8?B?alF4MVdVOHlaWk8vZ0FQMzgxYkhWM2lSa3NXUnY4UFNsZ1hYM082aTVMeVlq?=
 =?utf-8?B?TEVVcUlicGpxNUpOSWYyMTRORmdPSGxkVU94V081RHo0ODRnM2RkbmhxcWVl?=
 =?utf-8?B?b2VqNS8yOHM4amUrbkRtOGt2OER6ZkpnYU1CNHVRUUo5RzlDanJkcWVRZDlh?=
 =?utf-8?B?NDlTWGlWNnZhcTcrTHVINnpxQVgxTnFpbStIRUdoaUpLOHFMUlllMjU3bU1V?=
 =?utf-8?B?R0tleUpsWTZsM2o2WHBCK1A5b2VjTHJNVGgzanVxQVc2SFhLRDAxZjZ2QVpQ?=
 =?utf-8?B?NHFlNnpmbXgxS1hGWitZSWR6ZXJDYnhLT3NqMlhEWFNyaWdTNlp3Zzk5cENi?=
 =?utf-8?B?QjJjR3NjOVYrR3BSdFdWaFgrRHFDai9nZ0pHTS9ESmN4Tk52T1NaVlhnNm4x?=
 =?utf-8?B?aGdweUhYM2JpanV5d0V4aS9vMjdNbjBYVDltNHZ1dWZTMW5hWk5qMTd2Qzla?=
 =?utf-8?B?QzlqM2tyR1hYa3FRZytXQlBxSTdNSlhJb3hMMmhpTXFxZU45ajJ2WHA5QTM1?=
 =?utf-8?B?cTlEQ0tMQUIvREFENkM0T0EvR1ZRbEFacVNWeUdsei9NYXlUOE9TSk9PdHBZ?=
 =?utf-8?B?cDJOZHJxSTlLWGtyOFNhOGlSd2wyYmZyRFlEN3YzNDZDTW1GR2NKQUlyRnFX?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05adc9ca-a266-4f8a-9d4f-08dd9e8167cb
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:21:18.8690 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZZmZtqgRLXdOvbB6A+m1LiDBzfreu9H6MrLZR5wJaU9Vgb5MORy7uw6dZKqTkKvnhS5Nc6W3QYa7LI3e/w8Rk6GgdoBXA54XRRh1npZDwIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503316; x=1780039316;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5D3wpUFUcKYc7bsCwsOjuA4nmUr/r8QTXbw5+AfLxdo=;
 b=B8sY6f5q6kM6Hkd+I22vhuO00s6A6aHQBNehVT1VnjKz9BGN9kcQqjp/
 80uWoM6ZOsg3IubOUFKkvZvQ/gobpqcVnRFZ+9JWF38nnr2wQYGMJO+id
 Q7TdVqItaXQLC8Ui5KGLpBxn0qQueBO8QZFmyg0xI11/ROJ/aSOFYZJrW
 h0v/h6oq1Qieq1/Gm1cRp7k6wci9J/o2LpmJ1C5ijuTFINASvFkswdPvT
 ilvOkA1xf2ZUzLJKP9dWb951p4RPthSF757nW9pVAVfx+EztqxGRBEjM9
 KEtzWuAzft8Dy1Ptr1MpJGbjAuHyDaXYmeKztdsRRt3ia0E66K4xXAi56
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B8sY6f5q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/7] igc: assign highest
 TX queue number as highest priority in mqprio
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> Previously, TX arbitration prioritized queues based on the TC they were
> mapped to. A queue mapped to TC 3 had higher priority than one mapped to
> TC 0.
> 
> To improve code reuse for upcoming patches and align with typical NIC
> behavior, this patch updates the logic to prioritize higher queue numbers
> when mqprio is used. As a result, queue 0 becomes the lowest priority and
> queue 3 becomes the highest.
> 
> This patch also introduces igc_tsn_is_tc_to_queue_priority_ordered() to
> preserve the original TC-based priority rule and reject configurations
> where a higher TC maps to a lower queue offset.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 19 ++++++++++++
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 35 ++++++++++++++---------
>   2 files changed, 41 insertions(+), 13 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>

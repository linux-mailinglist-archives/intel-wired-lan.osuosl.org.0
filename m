Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 113129A935B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 00:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AAD5401EA;
	Mon, 21 Oct 2024 22:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NKzZf0DFTB1n; Mon, 21 Oct 2024 22:31:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A7A740211
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729549886;
	bh=ISoHoz+v5L3vyUN90USS9jR0KWt6+oAwmuiu4yNl+5g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vOqxom513rzU+IMYUJW9+8m502j5XkZlqqxDWj1UrkGu0X/7ZXbSydW43CIPe2BB+
	 p+qA84SMXBMzZs5vbb4heQlR4rQ+7ougqJGk5kBUKKp8ZwogSLp0EVF27TIiKKOKPN
	 HuR62ZBlBi2961G9UkrVDXB7ZeULc1D2kyYsalgSuofnJ4Xcw3EpWOrgh9QQaSIHA1
	 E/MbrYesRAaXUW7AA9ESnr8un2IWayfTXzFtq2ftRUasuU3EwB9pKhQZ0EBKO90X8e
	 czBH5nMFwJnGPbZMZtQBpAZjhV1WmkwEQKj1m/c8UugiUUPT9isleHW3dyPiKFRWeG
	 TaprdMYKjRqDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A7A740211;
	Mon, 21 Oct 2024 22:31:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 25CF72072
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1FECD404DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:31:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aO2mRCzzFMpW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 22:31:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0AB0401FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0AB0401FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0AB0401FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:31:21 +0000 (UTC)
X-CSE-ConnectionGUID: C92qi9UxRhKIth7kqo6Sbg==
X-CSE-MsgGUID: 6m5Gp3j3SJqq7pr99sFZPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="54462866"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="54462866"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: MB+WgDwPQFO2p/i7ukAs8g==
X-CSE-MsgGUID: oYiqGeiQTv65l2HAMuk7aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80068318"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 15:31:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 15:31:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 15:31:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 15:31:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=boXFOCj72+VjTHoIq71og2OaMBOzrmUuRnq26+m+XKawu2yOJUtREcL2aBThJ5cRLdiVz2yuslpakhP9PjO/j6MIxAhnbh/ljNlbnxeKO4gsTS9zu5aYXapo4hFfJ/xHrq5n51SOoMIsg0GfNN3VBNA1XnpzIrpQcwWOwPXORSemH2X3ZBg8tls54AmrrxoVVrQRNAkz54m3Kyh3uBudsaVEsbh4rq+IsJsgl4VZr8I7UjE8g+Vzkb/Gc01r3Z5sRiU6g/eOVdw6oo+pKdQGTxOhaqtRmqFFvSHdj63/EbAARscnblt50U/9O7jtihd1paq2yEalMjDudRx8FZ2K+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISoHoz+v5L3vyUN90USS9jR0KWt6+oAwmuiu4yNl+5g=;
 b=FOvc6Zpm+CpCDebZ5omqtPeWQZlBKqNY7UU0/EkLGq5+u1uJ1h1kZsadPYqHVLxZWKwaAXGi4G72CVVf6X+INJ/Ycxj1IXVY9p2mwIl9seLG2WPcaUVc4n00/o7+gH6EUygrLMUxSepYBbzN6tWHuVOHJgufJmbqpeKgvs8pbCRRKdBW0Gg4kHcE4c2J6nXyrwI7ONnj/OsuzgoqKEO/crn9hh65MGMkX+ngtJQ3NIvgDma7Yinuk41/LIXjHWpS7XTMW5yxlRyv9n41Vo3RI6234ZUFKRNEeuHTnHriDeS2Fu4Q5hG2EUEJv3tUyaylBOxBlg+qE6cwRMmxwaMwkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8520.namprd11.prod.outlook.com (2603:10b6:610:1af::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Mon, 21 Oct
 2024 22:31:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 22:31:18 +0000
Message-ID: <07bb7025-633a-479e-a45c-f07346b14d0d@intel.com>
Date: Mon, 21 Oct 2024 15:31:16 -0700
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <richardcochran@gmail.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0116.namprd05.prod.outlook.com
 (2603:10b6:a03:334::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8520:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d9729f3-2815-4d0b-bf9d-08dcf22014ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?REZPUkVQcVFia1VPYUFUcVZMUlFQTVhlcnhtc0dLdklqNmhjenRNVWYrSjJy?=
 =?utf-8?B?bzdPUHBScGQ0SlRFV3FCZ29RQjlVOG9lM1NjM3EybTU1VjNRK2R4ejFlbkV0?=
 =?utf-8?B?QVdkckc1a29lQW1hQy8rZ0Erb2tvMjduVTA2RnhKUFdrWUZGY1F1WnVzcmEw?=
 =?utf-8?B?dm56VE1JMnl1bXdnUFFiaFZWdW5yKy9LWUNST1p3YTJvOEFvbGwzcE1OSWZu?=
 =?utf-8?B?cGhXU1ZHcWg1QkZlM0NDTW51RlZ2WjBMaVRtSTl5SU8vam55eE5zQ2FSWmUv?=
 =?utf-8?B?SmNMZHo4UFQvRklza1ZoWVBBVEwxUnhvcXkvYXRwS1pyQ1g3a3BidmN0L1pW?=
 =?utf-8?B?TElEcS94ZHJBODJqbWJYWjl6V2JvNWJ1SHBnWmIxZTFGVEhxTWIxdmdUL0ky?=
 =?utf-8?B?NWViaGR5bEdGc2YxWGZVRDJGWFh4YWVpWGdyVWk5WjB4cDM3VGRYNkkxaE1F?=
 =?utf-8?B?RHRoRURvQkppcHVIemI2YnBKVkVya3ViWWVWVGlSMXZwMGR2ZksrK3VYOHZl?=
 =?utf-8?B?VEx0dW1CZC9naW5iNGZjOFNEdDdjZkduVER0N3p5NkNra0FqUnpkMTl2MmRY?=
 =?utf-8?B?TXBlMzZ4ZkN5SG51QXYxbFpuUWJEN0RGN3N2bXRjWThOSGE5QnBkZnByYUlN?=
 =?utf-8?B?ajd0cGtzVkp0WEJ2Mklmb0Z2NklkNjRFamNHZlFiNVQyZTV5ai82K2IzTHk3?=
 =?utf-8?B?Z0hMVXRrdHNhcmNvTjBLUUpqcnNSSllRclU1VmlFMm9Pd2N2REN6cndqV05G?=
 =?utf-8?B?NjB2aU5hNTdFK2xZTmE2Q1JzUWhIM3JocU5zY3V5RzRwNCtPOUlVd0x5MGxK?=
 =?utf-8?B?ZllBK0s4dG9yK0NmWXV3N0ZQMXZXeEM4WS9tYjI4L0l0WVdWREI4L1FTamZR?=
 =?utf-8?B?d1kxT1c5Z3BxZDBXcUtzTDBNZUJwZTNWNCt2a01UUDZZTTVITklWazV0b21C?=
 =?utf-8?B?d2xxYkQrM3ZVOGRSTlY3Z0ZhYXNSeEZSWW1pZHpPZDFZdFdwOUplMFhQb24w?=
 =?utf-8?B?RkJxcVY1bktPZGtuWWJ6YUFKaGtkOXFiRDBDd096TnlUa3NCVUx6SDZkb2VT?=
 =?utf-8?B?YTkvZjloOWs5Y0VNL1dsc3M3OUN2djFOQ09rSU9IQTlqVWh3aUd6ZmhlYUNI?=
 =?utf-8?B?YVNPK3pPTUdyblA1bUMzY2psejRmd1VxSzNPZXcrRmt0cWRNUFhqRGszWGE2?=
 =?utf-8?B?N0ZkOHBiVVBxTldjVGZyRHBXSENGcXdYZTVLb0Y2NW40ZkxhakU4SnQwL2lT?=
 =?utf-8?B?T3o4WGwyc2ZFREtrQThTTllya29OVXM2dTZpU3o1WllNZXhkVXl2Um83ZlVx?=
 =?utf-8?B?ZWJBYVFHTFJ0RUpRZXpGcHplZ096WTNQbmwyRDV5bm9iUFFhemRpVERiYldH?=
 =?utf-8?B?ZUR2b0pTR3N5MmxXOG5mZnE3cmFxSE5rRHJJbFEwRHdKcE0zUThNTlVEc2pF?=
 =?utf-8?B?TXRIZ2huNXZwNDJJOW1ORFN3SEdQbU9YMzU2MGNnWVlsYVhwSW45bmNMSzYx?=
 =?utf-8?B?NzIxRU14VS9xWEwxeHhvQkpUc0NieUNUbkVERzEwOVo4TCtLTTdEZU9CRHVw?=
 =?utf-8?B?a1EyZ2pyQ2txSHlOZXFTa3RMZnZFb3VuOXgzemJ1MHFLanRzdlVmOGsxVzZy?=
 =?utf-8?B?bWlzS2ZEUFViU1dzVVY5b05OWjhnNkw1TUd4UGJCNzNMVDRFZS9vNjU1VHdo?=
 =?utf-8?Q?Qshy8OmjxPEG1jjFxEfx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VllLS2VrODR0UXFldW04OHV4ZVgzaTZlV0lncGF2R0l3MjlyMy9lWnhseVJP?=
 =?utf-8?B?bnlJSHdkNDFyQlJZQjc4MFFtbzVyY0UyT2wvT283ZGRXMzJlRi9ENmRpMFFI?=
 =?utf-8?B?QTVmMFdUbnIzREVUZHc4MzNsbVQxa09YTE1ZbGN3Z0txSGQ4YlR6dXdDVVRM?=
 =?utf-8?B?WmZXQWN5RFlkV0FvcXRaRjczSk0yWFRmbXpHT3pDa3FhYnJOMWdldnNCQmRD?=
 =?utf-8?B?Z2VxdXFpU1Z4L05EWDJSYWViYzlDNEt0dS9qTjIrbHp3NVArL09UOW1lcHAy?=
 =?utf-8?B?ek5uQjl3akhQbEphTW5HOXBCOHFSMUFwYVNIUDVJUWk2QXAvWGFNTzNkZE53?=
 =?utf-8?B?cUtOSjdrazFPM0dCQWRldWZqT0Q5TlhDYWhuams4aDFGN2xUNjBXMkpqY0Mx?=
 =?utf-8?B?dUN2Mmxpdk92NlUxTGIrdnlnVkR6ZGxQTE1kL2VIRWN4L1BTd1ErQVNYQ3E2?=
 =?utf-8?B?bzNnVEpjTnFaMWo3ekRwTnhhcWk0d3cybjEzSmt0L3ZRcDdhL043UEx6RG1I?=
 =?utf-8?B?THVNMm9JUjM3Qzd2STRWNXhYcm5FV0pzbXF6VmVZTDJzcjdKcWYyVmZCWGQx?=
 =?utf-8?B?ck95ZWZCMTFDa2EwaERkSUd6aVhFcG8wRncwaldjaW56SkVwQjF1S1FnSm11?=
 =?utf-8?B?TDZ2RStaRm1FWjE4ckdKWFM4RnNBQkZ2NWZTTThsRWl3bk0rbnh3cXp4UStW?=
 =?utf-8?B?NTRIdHA4cGdLTXRWSUdxSGozbFRXbHNoc3ZZNXYxNjl5ajYxWkhMUXdOTWo0?=
 =?utf-8?B?OVFqUXVxaEpWMGZhRDlmSkhTc2diMnI4VVZCVzQ0bXJSNXgwckRUaHFwbDZW?=
 =?utf-8?B?R0VKdmpKNW1FcTVkVUtYWEdOVWhVRW1TbENtM05FVVVuM2xBRHc3cDFkWm0w?=
 =?utf-8?B?T1Rwa2Y1SEZHcXRETlJmT1NjKzFHeFhpUXluSEs5WDFGZHFHeC80Yzg3MlNr?=
 =?utf-8?B?KzBWWEtFbHVKbVlqblRFQk1pNXNJUW15Y01kYi96aDVITXVrQXNnTzB0SzFY?=
 =?utf-8?B?TWtWODFTVm9HamQ4WXlHbHJTTDBZeVdBR3VwNExMd2VrQi91NGZRQ0JVWVF5?=
 =?utf-8?B?ODI0OGlIUHJJNDBKVzN0d3R5c2FROGQzTnk3aFBWWDR3aGt0L0tESFNZaVdS?=
 =?utf-8?B?Zlhib2kyS3RvNWxUcVpaSUhYaWpWcHdjYUxsWTlzWnI0NURxTXkwRFBvWFl1?=
 =?utf-8?B?bTNKbXJ0ZzFlZFNXS3JsOUd3WXNNejJjZnZIQ05YSjZjaDhnOVZjcnBUV3NP?=
 =?utf-8?B?UDVObDBWTmtZRWNTUHdPdzlPNHhCZDRHSTA0WStTUmtSNTlvUG0xem94bUJ6?=
 =?utf-8?B?RUdueWxLS0J6dVRBdDVyVVVIanlBeUdqYXdKY0p2TkVIQU5UZXlmdml0bDNv?=
 =?utf-8?B?cUlBTXY0bENvK1cxZHd1VFhaV3RzNmJpZ3ZQWDJMSlR0RXViNUY3OGkrT3U4?=
 =?utf-8?B?WWNzK005eDNPejVMOFVvclE1RVVSZ0VNenc3Z3I1R3ZlSFUrNHl3N0tYSWFH?=
 =?utf-8?B?ZU0veVcwS1MzTzZjcFdsM2lyT3hQbzJFVzB6dnVLNnk0UUJKUWxLY2pUVjU1?=
 =?utf-8?B?cFUxYmRiNmlXRUpCQVUwR2FhdHB5V0V3VkQ1T1FhMGJ1MWhGdmpkRm1vTS8v?=
 =?utf-8?B?NzJmWCtQOHpuYmViell3U213bFlvaWNINy9oRnVQSmt5OHFka0R3SmhFZlFx?=
 =?utf-8?B?NU45WGFRZFVrY0h3RVBLRXppRkZFMS9LdS9zeU9XbmNKUjdKb2l5MmVaYjVs?=
 =?utf-8?B?Z0lRYi9MS0NENnl5L3NiczlVWDlnMW5nSEZQa2xZT0dYckZmOU94NGxyaFVU?=
 =?utf-8?B?Rkt5cW9tZEZ0R1FiUS9hOERZQys5UHZGeEJrNFQvN0V2dTVwaUtyNDVxU1hD?=
 =?utf-8?B?QUU2b1FCd2tyT1YySlFXQU9SbjlNcExyMWlvbGNDYlVlcjdsc3BiTjhGMUpY?=
 =?utf-8?B?c2pWTEJCNTlMcVMzRWcvSXQ1OTliSFUzVmNCVTdiMmpycEVUSjd4UG5BY1ZY?=
 =?utf-8?B?NnZsZXRZUm5DNUpVNHlmMWpQNmJUMnVFQ2dUZVVWUWNiWEJBb2FqelgxcjBo?=
 =?utf-8?B?WlVROWRuQ1JGOU0yK0gveXZ1TE0wUnZxR2ZMU3d3MXRWa2p1S0ZoRWZrdHM1?=
 =?utf-8?B?NnlyY0JJWjhRZnAzV3JOcmFTKzhZVllWMGw2T1UyZWxLblFJVkI4aGEweU91?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d9729f3-2815-4d0b-bf9d-08dcf22014ad
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2024 22:31:18.3403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lYisRuzdGVT6ZOPuzlJxZQtspgJ2zN9NH1VHzj47KQZSBaMQJdycDt9DshWxWSn7m8bKWKBYag2XGei/ITdBHSpS7NM6svhZxEGxZ1QzoVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8520
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549882; x=1761085882;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZzyhWeltwjtQj3KCyu8sWiu5vndSyFdTp251W0zsu6Y=;
 b=YiDAMtGY5oyz7IcRzLbEYNpYk7q40upeTPB1rynS/9SyeRWiEvXz0xLY
 3CGe9zmYDSUWTh8GbEaw72iC0fKJTXtlGt9mYz9QB6OP4zBV6bPdhe4ip
 pOf3wRHNLjzhh2wuffHYyby+LHmpw5Wcq46qX7Dmlp1YkuZBCv+hWgjvq
 B8zTORVJSQki+9EcH8l5kfiTahTwDx5nnEzyNyHAaye56+JJPR7lOk1hi
 nXf+R5WNoZGlk2fsd36jC3WfYaqPPfDTX4OVzyalloYi5FbWsOyKo/lip
 7azNSDUlPHGNipm88BGZUvRqZussWD1mvfCFaJkqFQ3ENOPHmAq269cXT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YiDAMtGY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
 timestamp latch point
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



On 10/21/2024 7:19 AM, Arkadiusz Kubalewski wrote:
> Currently HW support of PTP/timesync solutions in network PHY chips can be
> implemented with two different approaches, the timestamp maybe latched
> either at the beginning or after the Start of Frame Delimiter (SFD) [1].
> 
> Allow ptp device drivers to provide user with control over the HW
> timestamp latch point with ptp sysfs ABI.
> 
> [1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  Documentation/ABI/testing/sysfs-ptp | 12 ++++++++
>  drivers/ptp/ptp_sysfs.c             | 44 +++++++++++++++++++++++++++++
>  include/linux/ptp_clock_kernel.h    | 29 +++++++++++++++++++
>  3 files changed, 85 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-ptp b/Documentation/ABI/testing/sysfs-ptp
> index 9c317ac7c47a..a0d89e0fd72e 100644
> --- a/Documentation/ABI/testing/sysfs-ptp
> +++ b/Documentation/ABI/testing/sysfs-ptp
> @@ -140,3 +140,15 @@ Description:
>  		PPS events to the Linux PPS subsystem. To enable PPS
>  		events, write a "1" into the file. To disable events,
>  		write a "0" into the file.
> +
> +What:		/sys/class/ptp/ptp<N>/ts_point
> +Date:		October 2024
> +Contact:	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> +Description:
> +		This file provides control over the point in time in
> +		which the HW timestamp is latched. As specified in IEEE
> +		802.3cx, the latch point can be either at the beginning
> +		or after the end of Start of Frame Delimiter (SFD).
> +		Value "0" means the timestamp is latched at the
> +		beginning of the SFD. Value "1" means that timestamp is
> +		latched after the end of SFD.
> diff --git a/drivers/ptp/ptp_sysfs.c b/drivers/ptp/ptp_sysfs.c
> index 6b1b8f57cd95..7e9f6ef368b6 100644
> --- a/drivers/ptp/ptp_sysfs.c
> +++ b/drivers/ptp/ptp_sysfs.c
> @@ -28,6 +28,46 @@ static ssize_t max_phase_adjustment_show(struct device *dev,
>  }
>  static DEVICE_ATTR_RO(max_phase_adjustment);
>  
> +static ssize_t ts_point_show(struct device *dev, struct device_attribute *attr,
> +			     char *page)
> +{
> +	struct ptp_clock *ptp = dev_get_drvdata(dev);
> +	enum ptp_ts_point point;
> +	int err;
> +
> +	if (!ptp->info->get_ts_point)
> +		return -EOPNOTSUPP;
> +	err = ptp->info->get_ts_point(ptp->info, &point);
> +	if (err)
> +		return err;
> +
> +	return sysfs_emit(page, "%d\n", point);
> +}
> +

Ok, so if the driver doesn't support this API, we just return EOPNOTSUPP
and don't support the API then.

Presumably hardware which doesn't timestamp according to this standard
would then simply not support the API?


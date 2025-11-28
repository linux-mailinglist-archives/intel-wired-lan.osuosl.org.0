Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E144C91FC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Nov 2025 13:28:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DEF28472F;
	Fri, 28 Nov 2025 12:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYBJmvFGAoM5; Fri, 28 Nov 2025 12:28:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A020984734
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764332934;
	bh=rghzOzzIQdmfzpi/KVjttKfv1G1y3IYkoxF3khW/c/8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V2OSrvQ7AjOyHoQYUfP0KBTN3lE97z+VkVA0kQkQNF0RVVIVedQx5IWLA53nh/c/C
	 pj8B6kdNczCNiZ0QTfCcNEGRERFeV7Eo/U15GdhXWOaN+F0wCKDYItlw9mn8+AkCko
	 jTfJKY+GVzNbRPshyVTF2U2xmHVmasQ4nWICaN8oLuYdb7U94nyD13aGpSieiVrRWK
	 gf1v1GlcrjG0KYteP7MQs8Xs0owh0um9wzfpAtqQvWckzYS+A1RWdXjFU+Wc1gjaY6
	 4qttBRm6lYcrOfaXeeeCBmC8BZMSp+altiFUtEeXZ7w4F6u2n5pdnMGcCAWY2SbKiv
	 VzkV2QfXqlzIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A020984734;
	Fri, 28 Nov 2025 12:28:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 185381A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 12:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F19E861AE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 12:28:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DtxjJYSeEXnn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Nov 2025 12:28:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0302860A5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0302860A5C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0302860A5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 12:28:50 +0000 (UTC)
X-CSE-ConnectionGUID: VOB57rohRK+Cz1mfm8FSpA==
X-CSE-MsgGUID: faVgOCo8RbO69qk1duKmDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="89012151"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="89012151"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 04:28:50 -0800
X-CSE-ConnectionGUID: yb8ydcL6Q4SBiFacAWgF7w==
X-CSE-MsgGUID: licigcUUTPKtXkBA/dxQPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="216800258"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 04:28:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 04:28:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 04:28:48 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.13) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 04:28:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H5GU+RqmDaV/EIOFJQvFk6+pOX5qzpUspOlgIs8L6QfRiWDUHzbtHRyg9GO5ZodkC4om+v8Pu+m0pWEqY8PuxEL2ORFvgq4IZJ6QHJaS1rya2WN8cgVBJnuPkio/SBQP0DQP+Y9Y2G5MrulmHUuVYanULQvjJUmKWA71/uwKGFinG2CYqL8ztbyxsmydO673ez59E9fqftrtRGDq2jOMq7ocLfSnLUrMSGlfwJzAG/wqd+IaJdAYbUIw003Qz8/iY9Sd88L7wYx6VsWewaI1lgrPDyIDYXrCloEYkXFMWf/CeoPMt4cjXKhIWoyyp913kV+8+kCv1dZj/shk1SYYww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rghzOzzIQdmfzpi/KVjttKfv1G1y3IYkoxF3khW/c/8=;
 b=rUVOJEvdke+2OpkllfyTsoEJCangiUAnIh/raKnSTE170CK1y1kAoVYxl1Yz8sfE4PVhq/6SG48BEmylxAzARM1AN2AduyRs0ZtJIPVmQfzGKtEVVv61JL1bzJ7nwtWudLzWR13dnvkwy7c3p+DbVA4BpYt5jo/ri1PUkvyLHwjWQSxorp5vF9I43qyK7sAckZDq3pm/jCZxYhGPsFxEHpHVbeS/Wi9MO6Ix6Lu1NhiJ6/PXlO++cRNI8UlccLpSk7YGCsZx3TEDYn9EWE3CZgK2gpxjJEhXWsuPkS9w0Kr9BhUG7EPDo4FdEfm5x9rZg/TwtYd+TdDty1ji+QOfiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Fri, 28 Nov
 2025 12:28:46 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 12:28:46 +0000
Message-ID: <12bcee25-7ec4-418e-b8c7-60642d8073c0@intel.com>
Date: Fri, 28 Nov 2025 13:28:39 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-6-jakub.slepecki@intel.com>
 <IA3PR11MB89867D7081F88828EAC0E107E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <30c166ee-c113-434d-acca-15bc7c46722f@intel.com>
 <IA3PR11MB898691972766E6929CFDF934E5DCA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <IA3PR11MB898691972766E6929CFDF934E5DCA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR0202CA0025.eurprd02.prod.outlook.com
 (2603:10a6:803:14::38) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|PH8PR11MB8108:EE_
X-MS-Office365-Filtering-Correlation-Id: edc14682-9237-4f19-88e9-08de2e79acf4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXpBbVZIZGpkUEZUWE5ydDA0Ly95QUVwMllkczZoODRTa0ZwNVozTk1BVm5E?=
 =?utf-8?B?QXQremlVS3d1bkpvdTJoVWJsQ3FDV25pK2xPbnRlOTNVbzdnRlhLdDhPdGJV?=
 =?utf-8?B?TlpuamlrODV3YXZBcnNiV0JqMUExcHZ4bHAvZ25mU0xKUkFjOVlINTk4ZmZL?=
 =?utf-8?B?Sk9ma0FPZ0MzNkhEem1xU0crWXR2VUVKdnpOdjZUT0o0a0E1eWMrcWtwdUdG?=
 =?utf-8?B?ZVZ4Tlp1cDJtRVovT3JQdGtGTVh6NForczdSQThCRXpzbjFEVmFCR0orU1dl?=
 =?utf-8?B?cFlTNmtVb09tUS85S1B2SlZleEN4TEJ2Y1U5MzhBRHJpdzJWU2l6TGYva0FC?=
 =?utf-8?B?alFVK2lzYWJFTGYrRHJrMnNPUHRYamxPRWZOZkhzWElRUFpJQ2FkcXN3am12?=
 =?utf-8?B?ZW91b3RrT0lUVFRmcFgrSnFyUWQ2bFZPL1IxTGx0Ung4dlJYSWtFaStlVW1s?=
 =?utf-8?B?OEtBaXpyYnBrQzZMaEZQYXJES2JRSE5RcWJMS3oxa1NUd3ZST295Ukl2d2FB?=
 =?utf-8?B?b25janRJVzNvc2JMMnBpRWdIY2xQanVBSlI0QVZUaU9lOGFNdHBpZ2wvVHBO?=
 =?utf-8?B?Wk10bmJ6bVYzTWh5S0RMSnVsN21aYXJWd3NBMVhWUW1pck5qa2UrOFRxVDhN?=
 =?utf-8?B?bThwemgvU1lBcFRzVitLLzVCcWp2eXdJdUlVaHVMbEtGRzF6TUhzdjVSdEsv?=
 =?utf-8?B?T0xqakVvOHRCeU1wUElOOXN2TVMwSjFNdWJOcXlMcEtaZW5WWHRTbm5sWkQr?=
 =?utf-8?B?bzZFa1NJREFTeFR6bE5IQk9KV01WYWlZVjBYVFpGVTEzMW1Ec0kwVHhQdW1F?=
 =?utf-8?B?aTR2VGkzZlRkMUdESkxYTERBUWluMjJpeVVxTzVQVG5QK3NSTEhUR0VvMTh5?=
 =?utf-8?B?Rk9DZ3FwUzhYU2h0MlFTbDA4UkR4QldoOHY3VkppYzJWbnhQaWZQMWhFc2Fa?=
 =?utf-8?B?YUhORmYwWVB4NDlBc1JVamZrVUd3azAzaFd4WHdhNXdGQTBFdVlXZGxZTVlx?=
 =?utf-8?B?c2JRbGRDNUZsWFZ0dkZ3cHEwc2dSenJnUnYzOS9YUnNVZWtHRGpRUnZhb3VV?=
 =?utf-8?B?TEs0WDZDNTc5S3Nlam5RdXF1UlU1SCtRek5wR0s0bzM2R2tzZmJsdnYzdkxV?=
 =?utf-8?B?R01saWFnT0JaVUQ1b2VzLzBCVElSQ3owK3JPdjRDbGhneE9mV3hRYUVVU2V2?=
 =?utf-8?B?Qi94d1VJRGJMcDVFZ043UDY4SEU3OVZnUDR3NlVCY1kvYWNoN2tYYXFId1ZT?=
 =?utf-8?B?TTBMZTBMbzh3ZkU5dUk3dXJrSGtsMmMvUURjZFhuU0MwMTN2WVdqcytyaGRJ?=
 =?utf-8?B?MzhvTGpQdmxTcVJJVUxJZzRNTzBRN204VTZOZE8zZmNPbDNxb0xHM240Tk1P?=
 =?utf-8?B?SlhwOGlsVmpta1ArWmJQdjBhU2krU014QXMzYjF0WENMcDJiT0o0Y3BhMGla?=
 =?utf-8?B?WldDU0U3UHhEOGpVS3VBSFc0Q0FoTTcyNjU3aVVVRzJFVkc3d29YaTdjalRx?=
 =?utf-8?B?Qnd4R2lDWTRhbm5nOW5pUThBbC9KNDYyYUUra3g3cUJLdGdYUk01OUE1N1p5?=
 =?utf-8?B?KzhMM2g5THk3QVkyTnJCQWx5aGNkNndCajNtdXAvKzR3YmROOUhmYk02aE5N?=
 =?utf-8?B?MmJMZVJuVDUyRU1Sb01GUTdrbnduU3U5WTNSMWJsclRSRWEzaXBXTk1rUzJ3?=
 =?utf-8?B?c3haWW5ISmdrU0pCWFlWOVZhcjg3UW9DeGwvemxVR2dURWE5R0hybEp1Tm9v?=
 =?utf-8?B?dmt3YklOa2ZsUmRpbDZ3UnRwTEdDYUhOYk5nVnZwSjFQNHNFSzhoY2txbWYz?=
 =?utf-8?B?Si8yUGRJcW5ha3VPc0NvQ3FMekF1NTltbytDL1RJNllkUTVVZGtJQVU1VzRk?=
 =?utf-8?B?bHJaRTdWbFpGUTFLdkdWVmc1Tjl4bnFKMTZmWEZXVjBJSS9hVXhWTi9aa0dS?=
 =?utf-8?Q?zruLvc/r5x+JrnCgqAOYyACJfH91GGGu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2pobFp3MTE4VVBmT1hxUVYxcmE5aEhjSjJ1SE9mQkM1ZVZZSUJ5QldCMEZh?=
 =?utf-8?B?dTcyelF3Y1ZUNDV2N2gybTdoZm93NDJQYmhIWFkycTB5UC9mWE5EenFYRXpw?=
 =?utf-8?B?UWwyN1hsdnFNaTF3UUpmelVETXJ0U1pYVVlHOWRLLzFkK0pTdVEvcXBQVDVr?=
 =?utf-8?B?ZUJvRTkxSmE3WjdPZHp6QTVuZHRSLzVEVTZuYVc5V29qRzNqY3hUVXdoeDRL?=
 =?utf-8?B?VGpZUnF4ZWJGMlVtdWVjWnZNWC83UnBGcURNUU52aGlMc09zci9LYjAvVzdG?=
 =?utf-8?B?eDFtSWhDemQwUjE1RmtwSEcwYXRpTWpZWmFkRU5kYzh6NXRVekx4dVlrQzNE?=
 =?utf-8?B?b2lBSFhqR3BxcjVrVldlVHRvNVRJSFpYN25pSnAxd2RPdm5iQWhiaklLMUdE?=
 =?utf-8?B?T2EvT1NRYXJsNTQ5OGZwT2s4TVhPLy9haGRpSmREMVl0MVBqeFhBdmJpN1No?=
 =?utf-8?B?K1pxeDRDZmJudGtjcE5IUkRZSTB3MGoxUTlZNGNnT1JZbEhTNnZqSlJEQWR1?=
 =?utf-8?B?djYzSjNkWE1yTXYwQlo2Y01nemE1M3FFZHVqV1JWOEd4ZEx6U2JtUWx1TmlP?=
 =?utf-8?B?a2hvWVNOdXFmSmZJR1VLUy93eDllYVNha2RMdTdvWHhvQXJoU3JWa3Bncnlp?=
 =?utf-8?B?RWxLMlFmS1ZwZUZsUCtadkE1R01ndEU0WWlCanQyNm81RVJrOXVYUGFKME5t?=
 =?utf-8?B?b1I4UVlXZzhlNHQ1ZW03U1RtWldvSHhDNTFlWTI1c0xiVWxnUkMvSXJUSUc4?=
 =?utf-8?B?bHFKUmVjVE9tMVpoU0dYd2w2cSswclRRbHZHQ2RHWi9hN0tIK2lDeXg4V0FG?=
 =?utf-8?B?ZnBNZmppV3pGVklhUVdCSU5jUE1oNEtGNy9qdlBtdVNoRmxucWJ5SWhJcHVK?=
 =?utf-8?B?enA5VkpWdm00U0QwVUZzTTB2cHN0L0p6c0dsVjk0TStIbGl0ZjhXMFVHa1dm?=
 =?utf-8?B?VXpJM3loeWZrWFdBcFlZS2lvUUs1SzF2blFRQ2xFc2VhVWdjYnUwWklDSi9q?=
 =?utf-8?B?RDdZMDd4UzVuVm00SzlkL1o0Um51Zll5RnJtcDRZZ1hiQ0Q3UDdrczdGS3BO?=
 =?utf-8?B?VlhNVHk3Q3VkWHl2ZERFMjUxV09ZRFJzWjRsc0ZqU2lBd0pPZW1oaXJBakc1?=
 =?utf-8?B?ZmgxdUpUN09Ga0w4Y09DeGdnbmczVGcwMjh2a0V2Y0VSUHh5WWpwQ2ZwSmNv?=
 =?utf-8?B?SGxXNm5rd0VMUUlkTFplejRjUFVBcjBvdnhzZTJkWUtUNDhwQXJDQzNUUEhY?=
 =?utf-8?B?Z3JsZnNLSUtiZUdFMVJHM0J0c3UyV0tyNFBNSlJVcE5jaEp0NkhGdVlSZW1Z?=
 =?utf-8?B?MDVvckk4SitrZEtLWmpKRnZpRHJyS1B2WTZBU0JGWCtrTDJ2czFnTHJlQlZ0?=
 =?utf-8?B?VWlmVS9qZUd0TFpDSlJydEtCcjYvRHBza2N2RytEcXk3VE10SDUrMFNPV0V1?=
 =?utf-8?B?Smw3U3lnQmFXT1AwWDFwMUludy9hV3lyZTh6b0RGdTRiNzFseUdmU3lRVGFu?=
 =?utf-8?B?b09jbDBMMzlrSHVQTGZwUmIzM0dZWjFHRzkyakh4TGsrUXl1S3I5WEc4Y2Ur?=
 =?utf-8?B?cFNuWERnbDY4ZWxnNFc0cTk1N0t3YURWODhaS1JSeVJPaUhlWjNsNFM0RVI1?=
 =?utf-8?B?TkNidmxzSEVrOXpQQ3AwQ1M2THEwczhnd25HOW1XRVFPVkJKTnFSUTB2aTNw?=
 =?utf-8?B?K3RDL3pWVDZ1SnR2dDcxbXZLNnhoREdnM1h0NTlyZ1BlV0NxVzlLc3Jkb251?=
 =?utf-8?B?aUNtVjZwV05LR0RjaCt4QWxLNUxBZENMWDFlQmZFY29nb3lPREdkTHNxbnl5?=
 =?utf-8?B?RmM4YkJScXRCWWhkTnpONEp4YVNBMWVwenlIZHNoZlNqZ3lNTGtWQTVnZHl5?=
 =?utf-8?B?U0hRODV6RXg3R21QT01EZnQxaGMzdmdHb09DeHNUSTBoOTdZR2o3SE44Rk16?=
 =?utf-8?B?VWNZa0lLdXpCdTZzTE5HVVhpcHVqZm10aklOeXZEdkdqUVdKaU9aY2RVV3Ez?=
 =?utf-8?B?VVd2L1RMR2hVSzdScmdBbk9Rb2hFZTNmUHFiNE9ZM3I1Z3pMUzM4ZUUrM2RF?=
 =?utf-8?B?M0xGOWNMVVdkOGI4UGt0eUlSTnlrZkUrVHpLREVoWjBZNFN1NVdXNE5yaXlh?=
 =?utf-8?B?blZFSUFMSWFLS2sramd2RS9ONndZWUFzeUkxVzQxZXpxYWdTZHEwM3ByQ1lI?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edc14682-9237-4f19-88e9-08de2e79acf4
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 12:28:46.3680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dh10pOobUR/gzBYn4b7rCafM53WuaBqBhW9S76/B//nMpJzWUASlZcWCZdlsyekDVk9317fv1bVk53Ta9ywWhdjaT1tElFmwDSIE8/IbVi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764332931; x=1795868931;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7AYsi71OHG3FjGf0ISpSKXHcRhLDjzjvcTdKKWw2m+o=;
 b=XZpyDIrM8EwkIte7EEEPTlMYoW5N31DfOvQ9FQIObyyQCBZM9rSpi5kk
 leC9BdN0LAARHQTRXZ5g/haxcTQ6MdrUpleEcqrAxLTQcy/dXKS8YT3kq
 JYGj8O92n/9n4ZxTHJbt9rE8kuqpXH/3H77HHwhBZh1NUfLoiH3cOevZR
 21Lq8dYaIZL+eoYZg/SSzcggbByJVvOvXiS8aZyoXIyZ5EhRZ+jn+MEb/
 lcZOAlGEW35wrQMcmTpJcnuGF1sygZej8n2CNr/NwLsHCUFa26ks1zsnv
 /IW7vixr9xgHhnIPwwpiAMVldCVvr8WwJdVHnEcQr495za6Vmoa3aSuZf
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XZpyDIrM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ice: update mac,
 vlan rules when toggling between VEB and VEPA
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

On 2025-11-28 9:36, Loktionov, Aleksandr wrote:
> One small suggestion: please include prerequisites in the 0/8 cover letter (e.g., `iproute2` version and that commands need root privileges), so testers don’t miss that.

Roger that; I plan to use following:

---
To reproduce the issue have a E810 ($pfa) connected to another adapter
($pfb), then:

     # echo 2 >/sys/class/net/$pfa/device/sriov_numvfs
     # ip l set $pfa vf 0 vlan 4
     # ip l set $pfa vf 1 vlan 7
     # ip l set $pfa_vf0 netns $pfa_vf0_netns up
     # ip l set $pfa_vf1 netns $pfa_vf1_netns up
     # ip netns exec $pfa_vf0_netns ip a add 10.0.0.1/24 dev $pfa_vf0
     # ip netns exec $pfa_vf1_netns ip a add 10.0.0.2/24 dev $pfa_vf1

And for the $pfb:

     # echo 2 >/sys/class/net/$pfb/device/sriov_numvfs
     # ip l set $pfb vf 0 trust on spoof off vlan 4
     # ip l set $pfb vf 1 trust on spoof off vlan 7
     # ip l add $br type bridge
     # ip l set $pfb_vf0 master $br up
     # ip l set $pfb_vf1 master $br up
     # ip l set $br up

We expect $pfa_vf0 to be able to reach $pfa_vf1 through the $br on
the link partner.  Instead, ARP is unable to resolve 10.0.0.2/24.
ARP request is fine because it's broadcasted and bounces off $br, but
ARP reply is stuck in the internal switch because the destination MAC
matches $pfa_vf0 and filter restricts it to loopback.

In testing I used: ip utility, iproute2-6.1.0, libbpf 1.3.0
---

> Otherwise, the instructions are fine from my side. Please keep my:
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Thanks!

Thanks!


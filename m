Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 519D89F29C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 06:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33A6B840F0;
	Mon, 16 Dec 2024 05:58:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oU5xmukKC6bi; Mon, 16 Dec 2024 05:58:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6562840F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734328737;
	bh=+7KRzpEUk1erECW+R+hjwk1WGPh7qyQXHU6bXZIYvE8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dy9GPYz75VsmheDS2+7UDMD+7sJCbZMtsNOj4/xCAcFEqBjdRab2lry6B7kn0muCS
	 7Uig/lAOoAlGZYwRp6SnADrsHm1iniw0a63D3gJo5FSKRongXN3Sv2MYb8FScY42n7
	 AotjUGx2hC6ZTrIefDaqOqiWHLrxwA3i5dpICfCTkVNwkAgsB2na+hy09E2586qIw/
	 uKoK6qV0WrmdiAn9YrjEpnvKgYy2IiodnNjpTWAkG6INKbPT7TVZcY2GeI7mY+UL0f
	 In/7Kr2J/JD3ik5DIocfpuIFxogQsM/a3ndqWkApXsx9s7LW+HnbSdtYf9B9/25ZPE
	 +uKspKntD6z4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6562840F3;
	Mon, 16 Dec 2024 05:58:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D5315C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A47AE40B35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IYh5M6IBmKIY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 05:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59F8C409F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59F8C409F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59F8C409F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:58:54 +0000 (UTC)
X-CSE-ConnectionGUID: K1YH3g/AS/WJpT/FATV6hg==
X-CSE-MsgGUID: IKOGEbUQR/WUWeaCYG3q5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="52223341"
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="52223341"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 21:58:52 -0800
X-CSE-ConnectionGUID: MSWFmr1hTeWIHutCs6Ms5A==
X-CSE-MsgGUID: mqBvZknJQa66rM97CRCXNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,237,1728975600"; d="scan'208";a="101959658"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2024 21:58:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 15 Dec 2024 21:58:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 15 Dec 2024 21:58:50 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 15 Dec 2024 21:58:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qxYLpHr57UjSAhosl7l+XEVpzNpCw9TPj/NsqlObuHhj+cYvrdOyis6/qbGbIeOi+MTaOVT+y3wJ8VMRHyNP73xQdyOEq4RXX8t2qqt8TOWX4dRfLvNDHVOWCLhVbDIyN6TZ+3Gnm4iyZIoYYRpgsD+aOA3blNga6XhdaWzsiaGCSEylsSUrTKcTQ/Yb354QDtAEZVr0OV9zSQBKbPwMHNoBp2dcd0XSMKnaeD42OYjPPp05T6nIhusW74gBT6eIbd4HiaVk3wqvfz6GiPDAwjFVUaGLFe6nWJ1Ttek4dyI1nDGxrWwvekjtwM1Q0JyrB+ADTPTol7ihNz7zXxAwlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+7KRzpEUk1erECW+R+hjwk1WGPh7qyQXHU6bXZIYvE8=;
 b=j/hM015oiazKWO/vvM0ABJWRLKS5aNHNN2+o2rEXhkN2svibIK26YA/XzGzwvrOgCT7ruQRzrqlArVWZ1yUOKVYWQHlV8/NeTTK9bsLHw2AujVaeSg8WthpCElRC7fc5CQZeucD2mh4cFNxJ9alf8FcJUQJPst8UyNp844BQ0ZnCeGQEjbXYUR1sTSP987lmIbtnKCvNkE2xLHlBzshfHu3G0zVRz+MishyHTyF4ILMNqqEewY77D378ijVkUVCUqw7M7artcSsANthNDOMwliae6aS2tJNRvP42n8j2UqrBAngiTYAHzbe5YrS2DNw8mqTEBTmJT/os/WjcVury+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Mon, 16 Dec
 2024 05:58:41 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 05:58:40 +0000
Message-ID: <7367ea55-1607-4fd2-a392-13a9fe84167f@intel.com>
Date: Mon, 16 Dec 2024 06:58:35 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Dan Carpenter
 <dan.carpenter@linaro.org>, Ahmed Zaki <ahmed.zaki@intel.com>, Larysa Zaremba
 <larysa.zaremba@intel.com>
References: <20241211132745.112536-2-przemyslaw.kitszel@intel.com>
 <20241212163047.GA73795@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241212163047.GA73795@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0092.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::33) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYYPR11MB8431:EE_
X-MS-Office365-Filtering-Correlation-Id: e053ffca-edd7-40b2-6fa3-08dd1d96b0d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2FqMGx5ZS9lQUNabnhSM2pxTHV0QzBKQjA4ZitCcmpWMnJsM1VaSmRROC90?=
 =?utf-8?B?MURvcnFOZngyWXkzeEZGcnZOcy9DQ1pwMEhaMUg0L2ZaOUdzUkNlSjV3OEhl?=
 =?utf-8?B?YTcvdHpaK1ZzVUtyUlNuamRMd01IODJxZnFWTUtPZjVZNDFoRkVPcExDaVFG?=
 =?utf-8?B?S1gzMUJHdENGVFZUMm5EMkhhWTZOdUZldmpESHpRNmdiVS9pL2pBSW00dVNi?=
 =?utf-8?B?NHZ4K05Mc1dGWDMzRHF2N0RNU1JFdU5YNkIvVVk5T3hzc1hoUGdmNkl6aVhB?=
 =?utf-8?B?M2VyWXRkS0x0UUpuSVdUTkRlVWdlY0crRitwalpGbFFvUVZMbGY2NXNFNTMw?=
 =?utf-8?B?eEdPaTJPa00wblhaV1VTclVqbVpic3ZSam01THlJZ0dFUC9oaGNZSXdJMmdw?=
 =?utf-8?B?WkxCV3BCd0JXKzJPZ0hoWldFU2ZIanlmQjdhdGVUc3MwaDRlaHBGYmdjZFNS?=
 =?utf-8?B?aCtmWGZpVFlJc1pqd1VTOXNVNjByUXF1VmFJWHp3MitneERxM3V2b0ZzdmJL?=
 =?utf-8?B?Um5aTjU3R2p5SC9OU3ExbmNMTDRBdUJpdFlJRnhDZS9Cb3RWaDlPeDBHMldF?=
 =?utf-8?B?N2JlKzB0V2lxc2lWSktNeXRXTDQyRXc0eHJkVHhzREpHYUdzUEljVnFvc3o1?=
 =?utf-8?B?cnB1bmlrQWpxYW5uS2pPL2dNbmU2WitNYnNxYjdYdXV2em1vUTVKbXVLZXpY?=
 =?utf-8?B?NFBOb3ltOE9sWENSbi9UWEMvQXAwWlkzbXpJbUlBNE1CY1R1enRPT1lWS3ZV?=
 =?utf-8?B?UWZSY1B0SllRZzltSjgwREdlWnlWLzV3ZDNpakQ4YzZnSk9keTc3ekd6c1dS?=
 =?utf-8?B?K3NkZ2ZRTzVsbDVXRjZ5TzVETnhlQkhOeXJnNkcwRzNIV3Erb2MzZW53dVdD?=
 =?utf-8?B?ZEZTbUlBd2V3RlBldkpScGx3WW1WTTVmL1AzUnNaaDJjR0tUYTl6TDdoTnZw?=
 =?utf-8?B?S25tREV2WXFndm9aQ2krdTFvS3hzcHIwdGhMMjFUOWs2TjBkbTVIbnlRb1FH?=
 =?utf-8?B?QWF5Y25sV2Y4OUVhVXpHaUNyRFk2SVdydjk5VHZ2dXNNcEI2Z011RWtLeGkr?=
 =?utf-8?B?TldmZjhIRW01UDBPdndvOXhDejBqREdDcnQrL2hJMURkd3pPMHRmSGFRT3pN?=
 =?utf-8?B?Ymd1Q1FWOGdpT3ozMkZHNzBRcllKdzhoeTNkNXhKU2JWbEwyRHAzTE50blAv?=
 =?utf-8?B?K0VkWTV4djR0WXZqWExhQzBQRml5OW1LQ1Z2dHhlcElJSzRMTkZMcEF6aWZk?=
 =?utf-8?B?dGYwUy9rWFNoWXNCS0hiYXFkMm5MVkVsZWJrYkNhaitONTF6V2lVV2pRb1NY?=
 =?utf-8?B?aWhwbW52QlcwSVVYR1AvdTVBSi9BemNnQURLS1NwL3JNWkh5VDVGSW5talBW?=
 =?utf-8?B?VVNpRVVudEpMVDRjNGp0MEVuRjlGZFQvWGh2SGdpY0I1eWZkZ0U3NnVoQklu?=
 =?utf-8?B?R05tS0VOa05oOGYvWkVtS1VoNmU0b2hiNVVkZm55NFNUS0lqdGtWSmpudC8v?=
 =?utf-8?B?OVAvTDM4UmJOdDFuU2dYNEI3ZmNCdnpTRGxkWm1pdlJmMS8ycnIzQVNBNGY1?=
 =?utf-8?B?UFJVOUxsNFZTVWxYZW14dGU2Y2lqNWg2K2EwMjZoaUZ4TVRFSkRoUUdZdHFP?=
 =?utf-8?B?VFRiMDl1SGJpUHVLM1ZMbEozM3pQQlU1bVNRQk4rcGwxZnI1S1pjTEZ1WEhE?=
 =?utf-8?B?aE9GdUpKRTZYdTFEOTQyL3V0Z2ZmREI3aTNhSzNlTVJaeFY5QitBR1ZrZ2pU?=
 =?utf-8?B?MWFBdmJTa2ZLelhkbytNaUtxck1VekpZemFHdjVlbitaWkR1bVVnMXpncXBH?=
 =?utf-8?B?dWdGdGlKSFMzcnVRY1F2QitEN2dmS1lOVS95dG5lejZCSWhGNFJidURIcmQx?=
 =?utf-8?B?L0hWb2ZkaTJpRlVjWVoxQjJ5RzRZcXBsMWhsNkppMVVOdUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjBTSnZhR3c1VzFNUlQ2Z2E2UGZuSUowZVRxY29CWXZpM200M3RvaTJiZ3d4?=
 =?utf-8?B?VFJZRUpWNlR0NGNoeVM5d210VnNIUnlKUnRETGlSUEpYWG85TktkSzlYOXhL?=
 =?utf-8?B?MW1SWjRUblVNZitKRFcxWDlrYlpaUkxlcDJTaVJSZnZ5bjhRbS9uMXU4ZWho?=
 =?utf-8?B?WlIwVE1iWVQ1dC90OU1veXR1Z1dnK0xvN0gwTEFCbU1qbXdUVFM1WTUyNitV?=
 =?utf-8?B?UGZTTytycTdpMjc5TERSbVJqcG0rMG40R1JsNlpOazJWNERNNm5Hcm1JQk1q?=
 =?utf-8?B?RzRwR1UwV3JWQmN5aThxM1E0Zk1VTHFUNUtiUWluemJ0aTN0L3ZLWHJid2dT?=
 =?utf-8?B?Z1hmTEVMaXVpTHRsaFpIYjRsNjBvdzZ2MktQSXVuU2NYY3BFKzFERXVIVkVC?=
 =?utf-8?B?MHZ6N0EzYlAxaDZGME9zR0VaNWNJc2JpTVpZZE1wMTZXd0paNXdFMHBvZXBG?=
 =?utf-8?B?L3VydFAvYzNVZ2x3VHlDM0pQTmxDbUZxRW1wbWhrelJMZVYycVA0ZkNxRHBH?=
 =?utf-8?B?QkZBNDc2NGhaWk5MZ0hMQ05jY2ZjS2ZHUCtXNU5GYmZuRkE5M0g1ZU1ub21C?=
 =?utf-8?B?YXAyblF3bzBDT1FMb2ZrdUF5WHBJTExsejZIVEVFU29CZ2F2bi9YdEpROWFn?=
 =?utf-8?B?bTl2UThHYlNveTZ3UWtRS1czRTJaRUdiU0IwTzBYYnlEeEVTdVBiWUJwRjE1?=
 =?utf-8?B?M1A5ZDBjeVYzdkV1Q0ZPZXdiY1pvS2ZVdVhmRUFWMVJNSkZxa0Z4dzJmaXlr?=
 =?utf-8?B?V0ZsNUlEamtrdWY2U0lKcFBpckxZN2liU1ViVzc0aGI3aTh1REgrOTNUNWxQ?=
 =?utf-8?B?WlVnMEpoeVB2MWhYNkNWNy82VkQvbDRDQWk4UnNhaFlrdnI5dnkzOGxSRy9q?=
 =?utf-8?B?U3ovcDE0TlZQNFlXSldzbTltWGhuQldYL0dyb2lmQXAzNk1GR2MyOS9sY0Rl?=
 =?utf-8?B?Vkk2YTFBN1NRdkgwL2ZpckRPL1c1ZjlsWnEreU5heHVwQ2o2WlU5WXZEUURz?=
 =?utf-8?B?bTJ5VndYMDhmYjdsQjc5QjZzOWxWY092dGFKWGczc3NjaTFYTStKMzVwS1h3?=
 =?utf-8?B?Y0grRXoreVMrM0hHTG5JQ2ZvQktnT3RqczVHaER1eEVBUkxKZktUcE4rR3NR?=
 =?utf-8?B?N0hLMDIrTXhEd2tyK1NLUVJjV1pPQlR2SStHYnBpYlA1N2pHTTE0aDFLd3Yz?=
 =?utf-8?B?Q3VYbEVxV215bXdhZDFXK0ZjNHp2UE9ocXEvZDl3UkhMRE1lSjN1anZqY0Iy?=
 =?utf-8?B?bFR3UFBjbVIvd0JXMVplTzByczA5SmtHNkd5OFg5YVhwYm1pQkYwaXpaYjVY?=
 =?utf-8?B?TVAwS0RMUjZ3RUxLY3BKV2pxa0kxeHhrb0ZpeVVhZW5HaGJkd3dIcjVrWkVI?=
 =?utf-8?B?SFM3MS9PQm4xRmFUZDQ0cDdrV2ZlRjMyQk52VGFKb09RUmQ1ZU0zQjVLcE9E?=
 =?utf-8?B?WndqZkRTc0sxY0puaGJOTnc2dS9SSnZTU2cwb2xzUmltWlBkR3llMDY1b2V2?=
 =?utf-8?B?TXByMHpqbFp2TWtIQlYxZzNRNFpQczNnYTE5QlAwekV3L3NoYnJZdVN4NnpR?=
 =?utf-8?B?QlBQY0tNOVFvZWlPRHlISTlqaWs2TXNUd2Jlbm9aZ2tzTWVaY2NMT3VHSlFY?=
 =?utf-8?B?b1hSQmhtakJCOXgrQU9zL3UvZTFjNTZpRHg4R1kyQ3hCbnVZdXFXZVB3NjZE?=
 =?utf-8?B?WGphbCtySlF3QmJhVFNyWU1QVW1oNWZyOWh5M3JsQ0x2d25CdENhdlo1UWRH?=
 =?utf-8?B?bmVkTFFLMkpBM3FhWXV6b1JKeU0xVnp6M2pWTWswN1lhdVdWcmdFV0doWjg2?=
 =?utf-8?B?bU10TlYxVndqcWt3MmFmVCtjR2IvbmFuY3NIbS9kWjN2cjVKR3JUUldzZ1h4?=
 =?utf-8?B?aFRwYVJMU2Y1RHZrL2ZkOU1YNWZlemk0Skp2YTMzT1NaZFBaWnBnT2hDOWcv?=
 =?utf-8?B?LytYUWdtaHNsQUV4ank2Y3ZFU1YzK0dEVm1KU1VWaEpGOEQ5Zk03Rlk5OUF0?=
 =?utf-8?B?TnRwRGM2N0hBdHZycVhVelh2UnZiQjN3bFhlUGxWcWhLYlJNT3Y3MzdPV2Jh?=
 =?utf-8?B?bjFMZkZxaTBCdmNIZHdqdThoVElmd2hQcFhKSDZyTHhJcXRvbXdRT2c0Umk4?=
 =?utf-8?B?bEErNXJBKzZ4RXRNeWtGaGkweDBtaVJWbXRqY3l0VEdobkt6MXFGVEtJNFdR?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e053ffca-edd7-40b2-6fa3-08dd1d96b0d6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 05:58:40.7895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OUbUGe2kCUBbewyjVV2wJppzdPTRVqa2IQytqiXHLXuaJx5EjdBZwawhXxmMo+t8wp2R1yKswmbtspW9mPfmKCavohHIT2pWX/vE/dCMcx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8431
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734328734; x=1765864734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Alu7Mk0C36jKtkb6AgDKTh9CBjHR9e5IaAPF1F7vdMQ=;
 b=AACRnkzUj5gNIOmPaIP7WNOrsf7tTtqiksRHBHw3Lurv8dNEJYt1u1qi
 1uIhqoA3DqFpxix5Olll2Ydl6IMZkt4hB5+1LlDCCL5CBK4jIhh98p8V7
 HyMMFgTJV69IUxywgkByklQUc2RD57vGsC0UZV0cGTbHuznxx8wlEgxvF
 vP+FzYDQEQ8/yphd505mRrzADEof0Kemi+/qp8eHctbkZnBTeoJbZDNHB
 O47dEk5yu1KTEn4R1ehuC6nBD2YfbCrn0KrELjUD4VKTvNk5smbPY8Gk+
 9iCNyq7Uzwb1rcuGdm//yNGw/nNiWpl8JigaBg3Y9RMOBceN46Qe4sO+R
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AACRnkzU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix
 ice_parser_rt::bst_key array size
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

On 12/12/24 17:30, Simon Horman wrote:
> On Wed, Dec 11, 2024 at 02:26:36PM +0100, Przemek Kitszel wrote:
>> Fix &ice_parser_rt::bst_key size. It was wrongly set to 10 instead of 20
>> in the initial impl commit (see Fixes tag). All usage code assumed it was
>> of size 20. That was also the initial size present up to v2 of the intro
>> series [2], but halved by v3 [3] refactor described as "Replace magic
>> hardcoded values with macros." The introducing series was so big that
>> some ugliness was unnoticed, same for bugs :/
>>
>> ICE_BST_KEY_TCAM_SIZE and ICE_BST_TCAM_KEY_SIZE were differing by one.
>> There was tmp variable @j in the scope of edited function, but was not
>> used in all places. This ugliness is now gone.
>> I'm moving ice_parser_rt::pg_prio a few positions up, to fill up one of
>> the holes in order to compensate for the added 10 bytes to the ::bst_key,
>> resulting in the same size of the whole as prior to the fix, and miminal
>> changes in the offsets of the fields.
>>
>> This fix obsoletes Ahmed's attempt at [1].
>>
>> [1] https://lore.kernel.org/intel-wired-lan/20240823230847.172295-1-ahmed.zaki@intel.com
>> [2] https://lore.kernel.org/intel-wired-lan/20230605054641.2865142-13-junfeng.guo@intel.com
>> [3] https://lore.kernel.org/intel-wired-lan/20230817093442.2576997-13-junfeng.guo@intel.com
>>
>> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>> Closes: https://lore.kernel.org/intel-wired-lan/b1fb6ff9-b69e-4026-9988-3c783d86c2e0@stanley.mountain
>> Fixes: 9a4c07aaa0f5 ("ice: add parser execution main loop")
>> CC: Ahmed Zaki <ahmed.zaki@intel.com>
>> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Hi Przemek,
> 
> I agree that these changes are good.  But I wonder if it would be best to
> only treat the update size of bst_key as a fix.

I was also wondering, to the point that my first version was with
all 20 key bytes debug-printed in the exact way as it was prior to the
patch. Would be fine to just drop the printing part?

> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
>> index dedf5e854e4b..d9c38ce27e4f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
>> @@ -125,22 +125,20 @@ static void ice_bst_key_init(struct ice_parser_rt *rt,
>>   	else
>>   		key[idd] = imem->b_kb.prio;
>>   
>> -	idd = ICE_BST_KEY_TCAM_SIZE - 1;
>> +	idd = ICE_BST_TCAM_KEY_SIZE - 2;
>>   	for (i = idd; i >= 0; i--) {
>>   		int j;
>>   
>>   		j = ho + idd - i;
>>   		if (j < ICE_PARSER_MAX_PKT_LEN)
>> -			key[i] = rt->pkt_buf[ho + idd - i];
>> +			key[i] = rt->pkt_buf[j];
>>   		else
>>   			key[i] = 0;
>>   	}
>>   
>> -	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
>> -	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
>> -		  key[0], key[1], key[2], key[3], key[4],
>> -		  key[5], key[6], key[7], key[8], key[9]);
>> -	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
>> +	ice_debug_array_w_prefix(rt->psr->hw, ICE_DBG_PARSER,
>> +				 KBUILD_MODNAME "Generated Boost TCAM Key",
> 
> Should there be a delimeter between KBUILD_MODNAME and "Generated ..." ?
> e.g.:

thank you :)

> 
> 				 KBUILD_MODNAME ": Generated Boost TCAM Key",
> 
>> +				 key, ICE_BST_TCAM_KEY_SIZE);
>>   }
>>   
>>   static u16 ice_bit_rev_u16(u16 v, int len)
>>
>> base-commit: 51a00be6a0994da2ba6b4ace3b7a0d9373b4b25e
>> -- 
>> 2.46.0
>>
>>


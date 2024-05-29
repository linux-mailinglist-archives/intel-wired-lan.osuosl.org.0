Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7B18D2943
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9901407C1;
	Wed, 29 May 2024 00:06:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E4Qh25KGyzTu; Wed, 29 May 2024 00:06:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9996D406CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716941167;
	bh=lE4M1XyAQEQQ5L2basxBmdaHKBiCIU0uRei4jjsi90Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=orrmuY4H169Uu/o54re5bxq7cTtnNa9T3cb/1o3On6RX5r4Vtsan/gM0d89qt5xad
	 3h48twYPupQJvYe5U7od0t0lhsM2hKVshktp/qE1HZ1JegYAppjs1rYcWjtTV7GBog
	 ph+190oMBM8LpZQolVp0styK7hbIva0Hv1+cxsYjX2YD+6xZa+HajVEdKJumVdBZl2
	 Tte+oASKshynpJT5UqyZ79x17GTsLZ761v8qCCMisLhrypIo6+Zh1DW47s81k+6NSs
	 LyVNKOracI6gHpv825dqlYpzoRS5R2rBe8Hang7Sx68D4EamnQLAhPMnO7tqn6fnNs
	 pukIH7p4sXqyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9996D406CF;
	Wed, 29 May 2024 00:06:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2161BF335
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:06:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19B5082045
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jQCPG6CJpDM7 for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:06:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 137C48201F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 137C48201F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 137C48201F
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:06:03 +0000 (UTC)
X-CSE-ConnectionGUID: KNkudeLvQJ+9brEsaLF5eg==
X-CSE-MsgGUID: lAyAd36CRXiigyKnb7D8kQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30820290"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="30820290"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:06:04 -0700
X-CSE-ConnectionGUID: vTTvwZNkQF2bOiyu7oAc1A==
X-CSE-MsgGUID: DfDCnbSRRImQ7WTmKHnXUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35311507"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:06:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:06:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:06:02 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:06:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaQR+RJccwzWTyr/6FTFVh5H8viG0EIHqGzFvEenIQ3H2fci5ymhVg3Us9d+qDMzwCtFFIkpvL9Q+75RbHka1ykrdBb019AKkVpaNMifiPCpwt1aNteWRE+ZehlGYdaRTPFwN2IzwAHv2kNtE7qE/7sN/E7q9qOVZJbJ7XLhYBoBj9ISIdriu9i/nRfyuwbHX21dq5oxsbNaioFpieFGEOFGBQLU78Bi/5QbQIjBsJLmSLFYl/+kF/5M17MoTShA8hv4N3ZwulEiZ+/5SxXHuuQmIDkcT8uaWOdhEnEbJ+0EdqJFV6rGbRXhJdX7AJrX/le2C3QznsSMA/MJLXvwDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lE4M1XyAQEQQ5L2basxBmdaHKBiCIU0uRei4jjsi90Y=;
 b=D5XTXNuMw2+EFmfwwgadM1FgtRUNdUjeq7zetwu7FL6HSR/w9JwEAtcpJzo4MlHg2BXc4wrunvPl2ziwHiy1yKOC8rX2gt/+xBOkUtxIHN1IRDhzdaVdQ2CNN1eToBuVTSOl11wznXUYbGta7waDp+NdGS3P1pPmMy6hdxXVGFTO/fWjuq/WyrlUHeyN41ZNvcysBC6VhnWTgctNEM+4S+X+5i835yNiUtg2aSJiU0yTzwafo52gAx3HyQz0+DdqfGAb+WtEH+J6hCZiF5Iz1jT8FDeUFBhbVtARXdy0fi6nNjUWK7TIGxyLK2IAgY/GR0+O3QPftk2xeCMUwMu76g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6080.namprd11.prod.outlook.com (2603:10b6:8:84::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.27; Wed, 29 May 2024 00:05:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:05:55 +0000
Message-ID: <9d57d0eb-8254-49a2-bf28-242981fa4481@intel.com>
Date: Tue, 28 May 2024 17:05:54 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528103329.784584-1-vitaly.lifshits@intel.com>
 <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0260.namprd03.prod.outlook.com
 (2603:10b6:303:b4::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6080:EE_
X-MS-Office365-Filtering-Correlation-Id: 35091398-3a07-4013-ede8-08dc7f731c77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmdPdG80OGwvYkorUGs5MjE5WmtpQW1pd2dXTEFPVldPam5uQW0wa2tkc01s?=
 =?utf-8?B?Ym4vRzdCZ2RMeU05T2dYaDNubktGQlhSR0FNN0FoSGsxaXEvYVVjS1BpWHp4?=
 =?utf-8?B?eXd2bXdvTWtrVnJsbTdGamZ6aG5ickVDL2l6dU5vWlZKOWQwUXJJYUhvbE5v?=
 =?utf-8?B?ZGdicDVzYlpXa1BsM3c1dytVamFqQkI0M0xaWXVIMTZpTk8rQmNmOEhPT0hS?=
 =?utf-8?B?b2hyZFh1RjJvcFQ1WXcrL0MvVXhML3F5YmZ1bnBTMUVsMDlWcC82aWpTRzhx?=
 =?utf-8?B?TUxCaDVsbGRuNC9LSEZxQkpxYzVlcnBmZDlqY2FkTHI3NFRURlozeURxVEdr?=
 =?utf-8?B?Q2JZbXo2d3V6a2lJazVFTXVseDVVd1ZQaE81UHlYZmxadjMySHpIOHUvUWNP?=
 =?utf-8?B?ZzhkSEs2NGR5OGZsTFZMNlo0RlNhN1ZYMitqUENvbFhhU3RoeVRYamNnQ2c4?=
 =?utf-8?B?YkdEQlIvZHloZHFIbldxODAzcmV4bnFDaC9iN1pZaVQ3MlloeXo1QzNJQlox?=
 =?utf-8?B?anZmNXp3VVdlUVJxYk50VnUycFhtTGprYUhOMUhDWjlya2ttZHF3ZlBhOWZ1?=
 =?utf-8?B?dUFJcHFyWG1yMlFrY3JvaFRjaC9nZHJ0QU9FV0t6TUhvSGNNVUlmYXp0cnJy?=
 =?utf-8?B?WVJRdDliM3VpQ3dGblFRQVdtZ21vR0lDeW1ERjg4cGFRT2ZhWTZEcUI4N3Va?=
 =?utf-8?B?aThEQUttcXJ4dDVSSUxqV0N1ZFpCaTRJU2ZCZVNOUTM0dlowYlpWbGcySDBi?=
 =?utf-8?B?Q21Bay9QaUpab05DRHdBRnYwQnljcXViMHZPeHk4UCtQRmJ1S0RJVS95Tjd0?=
 =?utf-8?B?R0FPYjJyMFVWZGdqZW9wZ0JVNkVjenUyQVJ5UGhMVUNnWE92eklJR1NsaGR0?=
 =?utf-8?B?d0Ewanc4Wm44ZnpNV213eDdYdXlPeG1rTlQrZlZpWnlUMGNIbk9hL1Q0cGd0?=
 =?utf-8?B?UStvandLRVB4bi9qTEhOS1ByR25BN083N1crd2JTWDRIb2dWQkZkbVR4NjJm?=
 =?utf-8?B?OW9Ud0hGZUNkY3BReTR5cjM5d0l3Mm1nR2h3R2c4cldEUHRnTFJnSTd2bVNj?=
 =?utf-8?B?UjVTVnRwc0JSQ0taL1dJajV1TUduTHV2Y3dEOFBtYi9ZTXpBanVTQ1hneXZs?=
 =?utf-8?B?RUltWTA1ZHZTVy92WUx6eUtQOVJ3eGQ5amFPNEdYSnplOVpFb29yemhnelZI?=
 =?utf-8?B?VmJGT3djYVNYb2VFbGZRS1I2OFBZaFJscUg5Z3J2ZjBLSENZM2xMd0k4YUI5?=
 =?utf-8?B?Mm92em03NjlEaDcyS0dKdXpOMk93LzVBYjJobXorQURQQ2s4UU55bzUxTks2?=
 =?utf-8?B?T2lyVVR5eW1lZzRTbzlsazc0TWJxK2tHWk5mSjc5QnE1OHN2b25qNitlMnd6?=
 =?utf-8?B?REorWWtYbjRzWTd2OVFlWEVHeFNYL2hiT1l2UkNPelZyRjRSYm1Sa1RTbThq?=
 =?utf-8?B?bnBnL0tCQUhBTHZHQ3ZoaUhSZVp3a1VqNkhaVGNPcnR2dk52c2VuaXlhZnkv?=
 =?utf-8?B?RVdKV2Vzck1JQ0xxRFEzd3poV0FXdzN2R0ZtMks1bjh5ejRaZXVaNDRSOXhB?=
 =?utf-8?B?Z2ozOVZ2RG92OW1zV1JvcG80VnhJNXNjQklVT3Jid3E4RmwwLzJKNXdVcy92?=
 =?utf-8?B?clM1UngzUktieHM2bnZuN291UXY2NXliZUZXamM0TFFDWXYyRC83Mkh6bEN6?=
 =?utf-8?B?aFRvelVPS3Rjd21RSjFxMWMvOVJKSFFicGM4OFhGVThya2o2L0RiRlRRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEU2aUxQcE1kZHArY1FKZk1MQmt2Sk9oZ2NkR3loSmhZNEZjYng0aVdkTCto?=
 =?utf-8?B?dnkzVGJnK3YzR1RFaWFjRklRKzdyUWZ2NnNPR2ZvcHNGdnZtNXg3cTY1c2pK?=
 =?utf-8?B?NWtkaWhUT2xYaVZTci8yckE3Q1BSOEttWnFBejQvN3JseVBwdTgyLzI3cjFY?=
 =?utf-8?B?bmZscmxtS2ptbDJMcS83empJTXI3NmROeThnS1dweHR0SzdFbGNGN0lWdlJ1?=
 =?utf-8?B?eGowd1ZaMjlvbkUyRGRIcVZiN0ZZK2J5QjhTTjBkUFRSTzZKWEtOQURJVWhu?=
 =?utf-8?B?eXFHZ29mTFBRK2NldWV3QWJreGN2Zm1NR2hZSVY3WVNIeStZU3NSMmsxYm1j?=
 =?utf-8?B?NWpjNW9ia3FkVnZvVkJJV09pak5TWWVubXVNR3UxbnJkYmkvb29vRjYrVDcr?=
 =?utf-8?B?Y3JWZmM3dm1QbHFkNzBhVkZWdUVDYlFkMlJMcUVmeTl0V0lnQ3h5b3hheVJh?=
 =?utf-8?B?bkpwNWc4eXA4OUQyL0xaYTlhUTlLYzA0N3craW5yV1NnSFJSTDJwcW1hN0lJ?=
 =?utf-8?B?andQS2VOVmZJRjNTaFY2NjBKZGlRN2ZjZG83SlN2YmR3RjlIMlFubXd3dEFi?=
 =?utf-8?B?bDFpTEJwTnhkME41c0FTMzlxM1pkbGswaFhNcHU1OG9DcFZmV1BSa3EzVVlI?=
 =?utf-8?B?M1ZLaE94Z0ZqVis2Tk56bWFqNDhFQjgzTnlUOGZlU1Bhcjg1bUQwdUdQeE1v?=
 =?utf-8?B?cHRmTUFzaTQwRjU1UnpUVCs5clJCWEZBY1VQMnh5WlNEWFl3SlBwY1ZuN0dJ?=
 =?utf-8?B?dHRYZ1RTejR4TkVidUI2aEV5STJXL0xzbUhHS0F3eGVCdVRWaURjZW81QTlY?=
 =?utf-8?B?cXNUQzBMdEhzbC8vbk9ZV3IrRmlqV1puYXgycnRTVnFaWXpwV1FVT0orWXA0?=
 =?utf-8?B?ZU5YYm5NYUVqMlhTM2pZM1pUZDdmNnFRWS93RHJmeHgxa1dvYm5PQk1tM2hU?=
 =?utf-8?B?NitwWmhVa3B1bjhhSUFSdTFHaThLWit1RHdseDJZcjdHTTdkbDBwNXA4N0hY?=
 =?utf-8?B?WDFVSFdLMm1xZHhuVTV4Mm14RmpMeHBxSmRxcFc3a3JwRndwWTVrZlM1ZXRL?=
 =?utf-8?B?LzlGQ28weGxrRkx2QnZ5Z0xqU1dEZnR1cVkyR0QyZCtXZ2lQSktpSUhMajJi?=
 =?utf-8?B?VTBHOFZzd2ZHN1lDQTlYMzU4UUFZSGFPQ1U4R21kQU5yVEdzbi94NktKc011?=
 =?utf-8?B?SzhtRUo0S1pBYnlQRTMxZ3RLaHdMWlJhdzJmOXd1N3lud2lpVUgxZ25ORXFw?=
 =?utf-8?B?TlhQbUtkcTF0RVNsM0hscENQdi9xQWJCVjloejJHUCs0eXZRQWF1cWkvUWVN?=
 =?utf-8?B?U21lQzRYTXIzdS9oNFBpa1VQL29BZmxuOWV2dGk1YWMzYU13VzRRSVd6Rmdr?=
 =?utf-8?B?eWF6ZzBzbjBJbG4zSHJDSUpoTHN3L2RIV1lHMnl6Z0hKT0hmdGYrOVFCMS83?=
 =?utf-8?B?aDNmd1pLNUc2SThZNE95YUV3VWludHZNV0p1OENlTi9JZFdYMVpsOVNhRWZR?=
 =?utf-8?B?d2xLSDRTNVRSMVVrQ1JONTExQ0pXMEEvZkx0S3VMb3R3TWpnYjJqdWdsbWEz?=
 =?utf-8?B?OWtvQVptc2VFTjFjeVBib3FtOVdGSUlwejRucEd0bEhPNHlrVUlGY0tIME5K?=
 =?utf-8?B?cnQ5UTc1NlgyTGFkQklLQk55WHhKR1ZreVc1RHN3MEgrWUxuRGUrTkRFTlB6?=
 =?utf-8?B?YkdSakJlNTRVSXREYUhnQmtrdlEyQUJ6TUZVSStTZWwrbGFoL2VtcWpFSFBr?=
 =?utf-8?B?b3JlQ2lVWHhwbWQ1Rm8zcWtnSmREc1EyRllldjBoQW9VSnhUVlFHUFVVSXh0?=
 =?utf-8?B?UU1Ba0I1OUtvTzZ2eG9yMWs3QkxsWU9jZEVrb2hsQ0FQbUpJcHJRcm8vTUEv?=
 =?utf-8?B?SzdBbXNZRy96bWVRS3dDN3RYUWFYRVFwUGlZOXNJR1VWWWVCek5mdUFoZTNM?=
 =?utf-8?B?K01UYnpORy81Ty9GMUdOb2hhcVdaQjJpeGd6U1V4QnZFNzhJQllqZldyUVYv?=
 =?utf-8?B?ZHdwTVBYdVgyZGJ0TGswS2JuYzFjVTRDRi9WZ0c0VEU1aVRLSUV6THRPNmEw?=
 =?utf-8?B?aVVRSGJvUk9ocHlKc0hCQ0tsV0RvczAwWmpFdmlBclRJTW5wUWJZSVMvWUJ3?=
 =?utf-8?B?WlFFNG5IMy9sRmFlcDZJdE5lUkl5S0VWeGVqOW94WWZEQm9zSEFRQmVxK3dK?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35091398-3a07-4013-ede8-08dc7f731c77
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:05:55.6073 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rj2imLRblXn4Dtro46mxekrUOoMp/u9ZiO/Dfq9X/BXdDS6irlnqa3yBpLjcCNAkTi0ZcVO8H+Yv+tcsGi2fgop0plarxfhQHpVgy0J7XWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716941164; x=1748477164;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qbMrssmZVHNbblj5CorXafrximKN3bytQES0tE0iuwc=;
 b=Zgybolr5Fr5krVT8awfMki2HnjEBFnrsAuqWq5c0+n1d7RSzPyXFxqKL
 b2W4REuSz+X/uC0Gwo1cDgUrFuLDWMQArFDSkXMwXDVRnbNmVkIZOCAsn
 615U0GXNasfE68F2FYjn6RIHHxMNILmtY03X/cvhbGJ4HcQAWJgpnY1UU
 su4wJU0e+0tnT5Bum+PUuOUx0DH1nB09q/ZFbxJIfvUs9D/AL9Xx+XKgm
 7LkZRWB0N4D7mQGHaB7mWCNTTIWHn5BuioQkOkmxZUl5Rxs5JFCMnmMYA
 bugbITF80xQvPibNobpzrhF8ef2fCE5CsgNmrm3c/eHf/kA/HC63mrNQ8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zgybolr5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Fix S0ix
 residency on Meteor Lake corporate systems
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 3:43 AM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for the patch.
> 
> Am 28.05.24 um 12:33 schrieb Vitaly Lifshits:
>> From: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>
>> On vPro systems,the  configuration of the I219-LM to achieve power
> 
> s/,the  /, the /
> 
>> gating and S0ix residency is split between the driver and the CSME FW.
>> It was discovered that in some scenarios, where the network cable is
>> connected and then disconnected, S0ix residency is not always reached.
> 
> Disconnected at any point, or just during suspend?
> 
> Any URL to the reports?
> 
>> This was root-caused to a subset of I219-LM register writes that are not
>> performed by the CSME FW. Therefore, the driver should perform these
>> register writes on corporate setups, regardless of the CSME FW state.
> 
> Is that documented somewhere?
> 
> Please add more information about the affected systems, and the test 
> environment (firmware versions, …).
> 
>> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
>> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>> Signed-off-by: Vitaly.Lifshits <vitaly.lifshits@intel.com>
> 
> The line above with the dot can be removed.
> 
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---

I would also appreciate clarifications so we can understand the fix.

>>   drivers/net/ethernet/intel/e1000e/netdev.c | 132 ++++++++++-----------
>>   1 file changed, 66 insertions(+), 66 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index da5c59daf8ba..3cd161c6672b 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6363,49 +6363,49 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>>   		mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
>>   		ew32(EXTCNF_CTRL, mac_data);
>>   
>> -		/* Enable the Dynamic Power Gating in the MAC */
>> -		mac_data = er32(FEXTNVM7);
>> -		mac_data |= BIT(22);
>> -		ew32(FEXTNVM7, mac_data);
>> -
>>   		/* Disable disconnected cable conditioning for Power Gating */
>>   		mac_data = er32(DPGFR);
>>   		mac_data |= BIT(2);
>>   		ew32(DPGFR, mac_data);
>>   
>> -		/* Don't wake from dynamic Power Gating with clock request */
>> -		mac_data = er32(FEXTNVM12);
>> -		mac_data |= BIT(12);
>> -		ew32(FEXTNVM12, mac_data);
>> -
>> -		/* Ungate PGCB clock */
>> -		mac_data = er32(FEXTNVM9);
>> -		mac_data &= ~BIT(28);
>> -		ew32(FEXTNVM9, mac_data);
>> -
>> -		/* Enable K1 off to enable mPHY Power Gating */
>> -		mac_data = er32(FEXTNVM6);
>> -		mac_data |= BIT(31);
>> -		ew32(FEXTNVM6, mac_data);
>> -
>> -		/* Enable mPHY power gating for any link and speed */
>> -		mac_data = er32(FEXTNVM8);
>> -		mac_data |= BIT(9);
>> -		ew32(FEXTNVM8, mac_data);
>> -
>>   		/* Enable the Dynamic Clock Gating in the DMA and MAC */
>>   		mac_data = er32(CTRL_EXT);
>>   		mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
>>   		ew32(CTRL_EXT, mac_data);
>> -
>> -		/* No MAC DPG gating SLP_S0 in modern standby
>> -		 * Switch the logic of the lanphypc to use PMC counter
>> -		 */
>> -		mac_data = er32(FEXTNVM5);
>> -		mac_data |= BIT(7);
>> -		ew32(FEXTNVM5, mac_data);
>>   	}
>>   
>> +	/* Enable the Dynamic Power Gating in the MAC */
>> +	mac_data = er32(FEXTNVM7);
>> +	mac_data |= BIT(22);
>> +	ew32(FEXTNVM7, mac_data);
>> +
>> +	/* Don't wake from dynamic Power Gating with clock request */
>> +	mac_data = er32(FEXTNVM12);
>> +	mac_data |= BIT(12);
>> +	ew32(FEXTNVM12, mac_data);
>> +
>> +	/* Ungate PGCB clock */
>> +	mac_data = er32(FEXTNVM9);
>> +	mac_data &= ~BIT(28);
>> +	ew32(FEXTNVM9, mac_data);
>> +
>> +	/* Enable K1 off to enable mPHY Power Gating */
>> +	mac_data = er32(FEXTNVM6);
>> +	mac_data |= BIT(31);
>> +	ew32(FEXTNVM6, mac_data);
>> +
>> +	/* Enable mPHY power gating for any link and speed */
>> +	mac_data = er32(FEXTNVM8);
>> +	mac_data |= BIT(9);
>> +	ew32(FEXTNVM8, mac_data);
>> +
>> +	/* No MAC DPG gating SLP_S0 in modern standby
>> +	 * Switch the logic of the lanphypc to use PMC counter
>> +	 */
>> +	mac_data = er32(FEXTNVM5);
>> +	mac_data |= BIT(7);
>> +	ew32(FEXTNVM5, mac_data);
>> +
>>   	/* Disable the time synchronization clock */
>>   	mac_data = er32(FEXTNVM7);
>>   	mac_data |= BIT(31);
>> @@ -6498,33 +6498,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>>   	} else {
>>   		/* Request driver unconfigure the device from S0ix */
>>   
>> -		/* Disable the Dynamic Power Gating in the MAC */
>> -		mac_data = er32(FEXTNVM7);
>> -		mac_data &= 0xFFBFFFFF;
>> -		ew32(FEXTNVM7, mac_data);
>> -
>> -		/* Disable mPHY power gating for any link and speed */
>> -		mac_data = er32(FEXTNVM8);
>> -		mac_data &= ~BIT(9);
>> -		ew32(FEXTNVM8, mac_data);
>> -
>> -		/* Disable K1 off */
>> -		mac_data = er32(FEXTNVM6);
>> -		mac_data &= ~BIT(31);
>> -		ew32(FEXTNVM6, mac_data);
>> -
>> -		/* Disable Ungate PGCB clock */
>> -		mac_data = er32(FEXTNVM9);
>> -		mac_data |= BIT(28);
>> -		ew32(FEXTNVM9, mac_data);
>> -
>> -		/* Cancel not waking from dynamic
>> -		 * Power Gating with clock request
>> -		 */
>> -		mac_data = er32(FEXTNVM12);
>> -		mac_data &= ~BIT(12);
>> -		ew32(FEXTNVM12, mac_data);
>> -
>>   		/* Cancel disable disconnected cable conditioning
>>   		 * for Power Gating
>>   		 */
>> @@ -6537,13 +6510,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>>   		mac_data &= 0xFFF7FFFF;
>>   		ew32(CTRL_EXT, mac_data);
>>   
>> -		/* Revert the lanphypc logic to use the internal Gbe counter
>> -		 * and not the PMC counter
>> -		 */
>> -		mac_data = er32(FEXTNVM5);
>> -		mac_data &= 0xFFFFFF7F;
>> -		ew32(FEXTNVM5, mac_data);
>> -
>>   		/* Enable the periodic inband message,
>>   		 * Request PCIe clock in K1 page770_17[10:9] =01b
>>   		 */
>> @@ -6581,6 +6547,40 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
>>   	mac_data &= ~BIT(31);
>>   	mac_data |= BIT(0);
>>   	ew32(FEXTNVM7, mac_data);
>> +
>> +	/* Disable the Dynamic Power Gating in the MAC */
>> +	mac_data = er32(FEXTNVM7);
>> +	mac_data &= 0xFFBFFFFF;
>> +	ew32(FEXTNVM7, mac_data);
>> +
>> +	/* Disable mPHY power gating for any link and speed */
>> +	mac_data = er32(FEXTNVM8);
>> +	mac_data &= ~BIT(9);
>> +	ew32(FEXTNVM8, mac_data);
>> +
>> +	/* Disable K1 off */
>> +	mac_data = er32(FEXTNVM6);
>> +	mac_data &= ~BIT(31);
>> +	ew32(FEXTNVM6, mac_data);
>> +
>> +	/* Disable Ungate PGCB clock */
>> +	mac_data = er32(FEXTNVM9);
>> +	mac_data |= BIT(28);
>> +	ew32(FEXTNVM9, mac_data);
>> +
>> +	/* Cancel not waking from dynamic
>> +	 * Power Gating with clock request
>> +	 */
>> +	mac_data = er32(FEXTNVM12);
>> +	mac_data &= ~BIT(12);
>> +	ew32(FEXTNVM12, mac_data);
>> +
>> +	/* Revert the lanphypc logic to use the internal Gbe counter
>> +	 * and not the PMC counter
>> +	 */
>> +	mac_data = er32(FEXTNVM5);
>> +	mac_data &= 0xFFFFFF7F;
>> +	ew32(FEXTNVM5, mac_data);
>>   }
>>   
>>   static int e1000e_pm_freeze(struct device *dev)
> 
> Doesn’t moving this out of the branch and running it unconditionally 
> affect a lot more systems than Meteor Lake?
> 
> 

I would like an explanation of this as well.

Thanks,
Jake

> Kind regards,
> 
> Paul

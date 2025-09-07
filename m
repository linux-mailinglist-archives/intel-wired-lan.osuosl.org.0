Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C24FB47BB4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 15:59:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91F5F41FDC;
	Sun,  7 Sep 2025 13:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zvSwIfhfogOW; Sun,  7 Sep 2025 13:59:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB00A41FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757253566;
	bh=/47z12yC2w7eUH+sNSuJlKLvFInf1avg1QFhaxC92Zo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M6rTkvaBCOCm1rEmV+rJJ7chVIbXxkQLd5T5KZeoyrB/JWTY6IL++Xj7+MOWj/K4n
	 ZwxsnsAIHMIN4BKtZb5FBB40VyYM9sSSE60CJRTuxqfkefePz1M9ArUOWJ0LMsAf/x
	 As5anr+R3zU5yCHPDVzsbtp2Uiq/QVGE6OykUV3IynWJyg8Mws1SjIBDluJVrlTng9
	 MaZdBxb54iBUblwRHV57NjLwmLBRLiecirJVcE8rDBq653xRxGz/skzk/CCfUAfx83
	 BAoH24lxVu1N0QpwOaEXtyUgEw2FcqV3kwoOySzgjvAiSkYDz+6lfmksj6QjRqHkI0
	 Jy3MfkuGyCohA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB00A41FCB;
	Sun,  7 Sep 2025 13:59:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06AA09E4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 13:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDDA041F74
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 13:59:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TkOa1hC__t82 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 13:59:24 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 07 Sep 2025 13:59:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 20D6A41F72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20D6A41F72
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20D6A41F72
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 13:59:23 +0000 (UTC)
X-CSE-ConnectionGUID: dv3J+78fQXC4qRbZQLMmqQ==
X-CSE-MsgGUID: Z504BZiHSBuUD4IjipX5Xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63355752"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63355752"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 06:52:14 -0700
X-CSE-ConnectionGUID: +UU8CA4oQXK0VZCC5e5ibg==
X-CSE-MsgGUID: qQxpiIHZR6uwF/D2Ko874g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="172683997"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 06:52:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 06:52:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 7 Sep 2025 06:52:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 06:52:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AdD7+QaluW4WfXtad/uEuLG9WTddPLnW547jgv/ANwibyBThaBe0islJ5gtXlFnD/45p/+o+hqtpcn4GdLbVBRXiCpruG5VO9TNOOOPecl2BdnZSV8ZIIBWZQXHkA56buFNSAQkSkn9AtM4VjyLN4Q+yzzZp/IOuqb/AUVZgHV74IDXkoL4u5dVK+AxqXha33ANwyNuwEp3tz9pRaUH/BoZVwwOvL+g+Xbo4ap0elj2MOQUyh0XZMN0pV7WkrV+vD6RozMUH6AgE18c1pzudoEKJz3Y2AERKoNHjiB1n1ZHfAv3U++y1wVKmjUtb8CePImDNrLpTkMDWAMQW3FF+eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/47z12yC2w7eUH+sNSuJlKLvFInf1avg1QFhaxC92Zo=;
 b=Ay5QyNfyDvg95fAZ6vRl7WqJop30nsn67Wr5HOvHVN9OlwuyJDuGem47AAM6VE7cyQQI0cZ/TVMHNAFUY14I+E+Zb5ogxIy96qwTGPGBOWNS/U4kDTMdEZKqLtnOITzeuVWKzDoOdmjtIV9MCyezF2bX1kEbIwJDaItxZzHj6nTwtO76ceKifWctIWvkU94d4e9l2PE0stN6a9idT+NKiEGZsapd734HOFCzsJ2SikJOSC7q+QxDP7B6XA6NeZjZUf3k6wO7KDIz//Y7T4RBndRDCpwOsOn+u+t3mgkwY0/JDwOaUldOFq9KmDqVgoNluL5GDW/Yft/c/9aWqnFgDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF77ABF615C.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::836) by IA1PR11MB6076.namprd11.prod.outlook.com
 (2603:10b6:208:3d4::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Sun, 7 Sep
 2025 13:52:00 +0000
Received: from SJ5PPF77ABF615C.namprd11.prod.outlook.com
 ([fe80::2085:a633:94d8:6156]) by SJ5PPF77ABF615C.namprd11.prod.outlook.com
 ([fe80::2085:a633:94d8:6156%8]) with mapi id 15.20.9094.016; Sun, 7 Sep 2025
 13:52:00 +0000
Message-ID: <5d795b34-1ad7-4250-b7fd-0b8558e30b5e@intel.com>
Date: Sun, 7 Sep 2025 16:51:53 +0300
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
References: <5a80cd22-49d9-4200-80d5-5416a1d78a5f@intel.com>
 <20250906034954.82685-1-enjuk@amazon.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250906034954.82685-1-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To SJ5PPF77ABF615C.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::836)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF77ABF615C:EE_|IA1PR11MB6076:EE_
X-MS-Office365-Filtering-Correlation-Id: 50478f31-f6f5-41b5-2dc3-08ddee15b7a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SmMwK0lFTG15MDZDWndhb0NXR0F4dXFkYUJKZ0R1ZlNPWFozaHF5cVl2T2pj?=
 =?utf-8?B?SytLa3BoL1UvUTZ6em4vOGUvNU5vYkJpWjlMTXROUkwrWWpOK3dVR0cxalJU?=
 =?utf-8?B?ZWVxWUEwL052V0FnMVZHYllGZUt4VHdDNVJFTTNsRTF4RFFaN3lJN2FGV1Jk?=
 =?utf-8?B?ZmlLbFJLZGRaZW5GdFE1cGwyZ3pQOTNmNU54Smc2Yk9wT1FvcmtTc3liTld3?=
 =?utf-8?B?RE5jT0Jqd3Z3SHBUcjgwUlplcTFpSkJacXk3NTk2aEpXNHpPSDVyM2dCVDBO?=
 =?utf-8?B?RHdXQlhna1NtczhSeE5ScEpudXN4aThFRkREaVF6aXpyZkVyeGIwZ2xkWGdG?=
 =?utf-8?B?QjI5K0JYcXhoVDY4YXUyZmkyZjA3WGNqdDVpY0pBVUdZc3RKMFdnTGwrVzQ3?=
 =?utf-8?B?Ti82ZXFMam5iYVVQM2Q1QjBHalJlM051d21USWF4MUhYdEk5ZjZHNnBmQlBH?=
 =?utf-8?B?ak1IY0Y2MzNzRWt3ZnRmOVRaenZTb21VeHRHWmVrNk15NGVGNit4VFp5N1kw?=
 =?utf-8?B?UGV3bExHN2hHK2g2S0pQNUdSeUtxL3I3eDNqOTR5S1AxL2VpanJSeFpoTWtC?=
 =?utf-8?B?UzlyYTN5ZmFFNTZZd3NzeEN2OXVUbnYwa2lncys2eVZETVAxUVNPYlFZOGVG?=
 =?utf-8?B?LzVvRnh3Z3BiOFBNK2lzV1FaMjNzVVFLNytoc0VVKzVyK1RYZ2xpUzd6cS9P?=
 =?utf-8?B?Yll6cU0rMXRRc0ZlQ0tUd2hGS0tGejVQUnByazJRRW1ZZUpIYytGVnpCT1Nv?=
 =?utf-8?B?Q2RUcGZJWG5IdFBSWlp4OTdVWk0vb0dhVmhJcEliTWR0bVU2MVlYOHpLb3Ir?=
 =?utf-8?B?eFdOUHBSUzdPM1A1eWRhV1ZUSGJkYnJ1Qm1UdWVUWUE1bU1GYXVIZ2pUSGs4?=
 =?utf-8?B?TStMNU5mY2xsbC9mTFRseWtQaEI3OW5kSDVBR0U4SS9BWGU1N2ZjSjJzQmZl?=
 =?utf-8?B?MzhCNDd3TDJxMy9lSTJOb0dKbE1naFNDeTQrNkM1eXJ5TkQxaXIvU2NtK3F2?=
 =?utf-8?B?c2h4My9uOGFnbFBSN24vWjE5OWFCeGM0MXdQWkpzangxU2tlWTRQTDBubUdu?=
 =?utf-8?B?cjlxZEV2THo5TmpWWDYyRGNYeHh0RUFVdHlZWnlvT1J6aDAzQnJma3k2Ulho?=
 =?utf-8?B?TnFjYWxLN0tlbFZNNDdwTy9GUFhtWmtBZzlDZXpTK2Ribkk4WlNVb2RiN1I5?=
 =?utf-8?B?SmxkU2phRmFtM2VZMmhsUmVKbFRSZC84SWhuekdPbUloc0I3R1MyTForYnl5?=
 =?utf-8?B?dU9STG0yN0J0dFZweUVlM200bGY5ejZuaUxVa0ZLQkhObHUwN0x5cU9DS3FD?=
 =?utf-8?B?dFlzelRlcjNvUzlXTmg1N1hWQjcyRXZiemhzMlBMT1h6bXpaU2tCeFFENDE3?=
 =?utf-8?B?Yy9IYmIrdmpDc3RvR2pOOFJoUGtMbnczZTFRaDlIa00yVDN0TW9qUlg4NXg5?=
 =?utf-8?B?OE4rQkkrTGNzbUpiOGJRb0wzb3FXZ210bFZzUXdqRjRDd0JNM0RucVVMVFNT?=
 =?utf-8?B?UUdVSFBqUFhvRklZK0RNWlFGZURXc21nNVZIVWRRQnlkTWhrWG5CNmp5OENZ?=
 =?utf-8?B?L2RUSnJGdUhTc2V5enlTZTVQNVFqajhxdG8rZkRwR2JwMGtlWVZlblVIQzhL?=
 =?utf-8?B?ZEluUUZMdGZBMnJnMGxCUzZIRDF4SHRhNkp2R2llcmJGMDFyeEtBc1BPamFk?=
 =?utf-8?B?ak4zRlNBL093eXZyUWt1SWhzbkxuUkZsZFVWV1VUMkJxWHcvd25YVWNGMTRr?=
 =?utf-8?B?cGxWd0pSZm1iYjRZZkRNcmdjbnB5cVpNL1NGbCs5VkpKbStWdDZ5cjRJa1FK?=
 =?utf-8?B?SkxrT1FpbzVGSEF4WXpNRUwrVytwZjVBbUdlMG12RWQwQ2hUVXNzU1BoQ2Yw?=
 =?utf-8?B?OS9mV2VCOCtYRE1Hczd1VnEyZFk1NHFWN1pMRHp5Vm1DYVNIeERXa1ZJWEJU?=
 =?utf-8?Q?EUkScMH2nN8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF77ABF615C.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUF3eFlZOVRrd0V1R2xVeVlNWFIyQjlvL0FnYTVDdXhVQ3RqQkQ5K0lmWkRG?=
 =?utf-8?B?eDBaN1JlVy9vRG0raTc0Z3dZb1Y4MDVFSU5Pd2M2VVFTVnY4aW9ZRXduY1la?=
 =?utf-8?B?UW1IV1RnbzRpTytyRHFHYVllWlR5cGdDbUY4STIweGtUcE1RUHNON29Rd2dS?=
 =?utf-8?B?QVhNYjg4QjdvS0R6dXlsN0xOSTM1VW1QYUFxWnRFTit0T0dDbVh4ZTZETnd2?=
 =?utf-8?B?TmNvcWlETVNaZStmVnFxU2E2VlRwWkJXcDNpdXRBQ1ZlTW1aZGw4NXRjUjR3?=
 =?utf-8?B?Z3BpYUx5QWRYejNlMDFDNktDaDJVZkxBVGJsb0I2cEpwY1BFMnlkaVFzREY1?=
 =?utf-8?B?NXNHSjQ1bjlFa2FSRmJiTTQvWjk0anRpVm9hanZGTi93bHlaMkxVNXVHMHQ1?=
 =?utf-8?B?WEovSUZwUmVKdEtUaE40bDdGSUxyaHVaOVU5d2xmMytuR0RTRkkvdmtobDlY?=
 =?utf-8?B?R1I3RnFyVTc1SHFXNlBwblMvdnRrQXo5NzMrdk5RRXdnVU1GV2tYd3Fmd3Bn?=
 =?utf-8?B?WFpqS0p6YkprQXRSQ1hyRkVBbzJsdjBtYjFBSy9SNVExLzVHK2pPcWJid2RQ?=
 =?utf-8?B?YW4ramk3TldKcys1N2tpeTJyOVFSQkxWTVFvMUZEa1BIMjJXcGE5eVF3d2xr?=
 =?utf-8?B?TWdBZWVnS01sN0ZSU29WcTY4V0U1UjJDM21zU1M3V2ZBdHRQalY2ZmhoN0JN?=
 =?utf-8?B?VWJMQzBjTkhiYi9GSFdselMzOU9XR1VSQlpVVm5oR1ZkZFBSNHFvL3pLR2g2?=
 =?utf-8?B?SGI3VGVnUU9BeThtanRodDYydklGMnJrNVNVWWw0dXY2Rm9oajRxajhzV0o0?=
 =?utf-8?B?SXpqL1lBTFk1ZndwaTZwcHFhWFIrZUVzOW9ZWCtoS251YXhIaCtWZWpaS1hj?=
 =?utf-8?B?cW9RbnZ0Q3FNd0dWNUxSUFk0N1IyWHdaYkFobXlHRitPZGVtMUk1aUhETUR6?=
 =?utf-8?B?TzY3bWdOUDNCcjRuMFJEZDdDdkNrbmw2MTNRUXNOMDkxbHU4OUxnYXQwQ0tE?=
 =?utf-8?B?ckVZb2loRldWNDZjUmdUVEFIQ0NETUMzNWZlZVdZUUk5ZGczOTVRS29Pbm5J?=
 =?utf-8?B?SVgxMnJkNUk5QnV5QU9Rc0tROVltZFRLNDc2bjlxWktsUGNYRHFBVVh0K0d3?=
 =?utf-8?B?L1VFKy9tdGF1NlIxMXg4UXRUMGh1eTVEcHIzT3RrU3FMdkJGVnM5RllRT2FP?=
 =?utf-8?B?clB0Y0ZLZktrbCtFT2RhM2dFL0x5cHRUNG9aQURYMlNMQWcrRDBqeDlKRkdo?=
 =?utf-8?B?bUJsVTZ2RkwzU1NHa2E2NlZZSUJHS1I4aGhXc0F3aHRpclhHazlNQUJUMS9C?=
 =?utf-8?B?OXN2Ymw1dENYU3loTS8vVzk5SnRTcnR5RVF0RWRkZDd2Rng0WWNYM3pDVndD?=
 =?utf-8?B?a1RmTUlaTDNISGVsbkFmNWR2WDdVWUZjbndEaXV3Wkp0bm9BSkkrLytQYUlS?=
 =?utf-8?B?RmNVMlpGbGdWUlVWWERWTHN1UGM2WUlYVzhjU0dpNlRqejFDMU1KVUthZDVK?=
 =?utf-8?B?akFGL1VERE5OZHJLN3dodkxTODZnOG0xVE5IKzg4bTFhdzJoY1NKTWIyTk9a?=
 =?utf-8?B?c2poQXNPVndSdEwvcExsYmxIdzJ5S2tVdkg4b05aUEFaVis5b3k2SU94b2Q1?=
 =?utf-8?B?UEdFbVdWZFcyRENxNUVpMlVTU2xnMmZ1dHBoajd0NGppSlFmUnZreFBTOExy?=
 =?utf-8?B?WEhSRW45eUNnaisxdGpLN1dkSXM3TktQTU5sK2p3b3A0eEhjcW1iNjUvZHFv?=
 =?utf-8?B?Tm9IWE5jQ2FkSTBFLzBpUlpyN20vUkkyZkZDOUlCMVM0SEFOdTVydUpRUDcx?=
 =?utf-8?B?Vm9DNHUxdnY1a29HL21lODArVXFJTVkvSllmcUJrOVFSYzZmbVF5dEtJNVZB?=
 =?utf-8?B?c2NjVWZmeE1yVU1tSVJMNnQzWW1BR0NKRmp3aXhLUGJaMDFZVDVHWUdMdGZF?=
 =?utf-8?B?eG8wYWRyaC94OWdnTHUrcXVtdGtUMDQwZU5VWEFUNjJISy9CeUMzS2hkeTE1?=
 =?utf-8?B?eU95US9iZHdYL0U5bG5jOEw2LzBvSWRDcmxiK3lYSzZaTTZqdXhMQTJ0NWFV?=
 =?utf-8?B?U2tSOGZ2RjNLTmhMMDRKVXBLUDRGUks3WDJaUk1TRmc1RHF3SEtkVkM2eG5l?=
 =?utf-8?B?aTNwZWJSdEJyak8zOUpGUEU5RFZuVkFIZnRUNjZ3U0hpMTQybmZ3dTF5VUcy?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50478f31-f6f5-41b5-2dc3-08ddee15b7a7
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF77ABF615C.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2025 13:52:00.2441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RAsOfMVB5YE6thNvBZtHBVD0jnFrFIMXckrldVWMBlm+yehL4SsOaDD4+SiIfzwS1eFsXzErTVsy0hLFt+AI0/D247TaocrNp3Oini/MB5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757253564; x=1788789564;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g7YDk3HGZaC9UcxY+o/pf2n9eMQTv3YRXsAsizzBRbc=;
 b=jl11QgW0uVwaoO76zerKn01zNKCONRntaMA4LJB1+XeTHp4+884zaEJr
 LTlZ8zlORb2EjTIXqeBy5/SOVLjfXLJrQHRKIcLBbESer86b9njDIqbE0
 +mePTX1ThUv/Qwg6us+8Q6VJlOZ1YGiEm+zcxiOuv5eqp4zZ/rAt79Trh
 6yjxiKpkiyutIoWvi09Du8hOLThl07Ve9xEBsVO8eJ+WM6ejiRWWPZi6D
 Vbx9t5zVcnGIasUB9NtcjT8zGiLHMScNL56FpTz9PjpxyjYZsNQYjw6Z1
 w5GOTTO/KKPZ4otFkjR5aP9ntREFmIfKmuHZ6FCyzxy1sH1hEXL1BVJgB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jl11QgW0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
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

On 9/6/2025 6:49 AM, Kohei Enju wrote:
> On Mon, 1 Sep 2025 07:36:21 +0300, Lifshits, Vitaly wrote:
> 
>>
>>> ---
>>>    drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>>>    1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>>> index f3e7218ba6f3..ca93629b1d3a 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>>> @@ -2094,6 +2094,9 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
>>>    		netdev_info(adapter->netdev, "Offline testing starting");
>>>    		set_bit(__IGC_TESTING, &adapter->state);
>>>    
>>> +		/* power up PHY for link test */
>>> +		igc_power_up_phy_copper(&adapter->hw);
>>
>> I suggest moving this to igc_link_test functionn igc_diags.c as it
>> relates only to the link test.
> 
> Thank you for taking a look, Lifshits.
> 
> Now I'm considering changing only offline test path, not including
> online test path.
> This is because I think online test path should not trigger any
> interruption and power down/up PHY may cause disruption.
> 
> So, I forgo the online path and my intention for this patch is to power
> up PHY state only in offline test path.
> I think introducing igc_power_up_phy_copper() in igc_link_test()
> needs careful consideration in online test path.

Yes, I see that now.
Then it's ok to leave it as is.

Regarding the question whether to wrap igc_power_up_phy_copper with an 
if (hw->phy.media_type == igc_media_type_copper), I think that it's not 
necessary. First of all, igc devices are only copper devices. Secondly, 
in the other place where we call this function (in igc_main), we don't 
check the media type, therefore I suggest being consistent with the 
already existing code and leaving it as it is now.

> 
>>
>>> +
>>>    		/* Link test performed before hardware reset so autoneg doesn't
>>>    		 * interfere with test result
>>>    		 */
>>
>>
>> Thank you for this patch.


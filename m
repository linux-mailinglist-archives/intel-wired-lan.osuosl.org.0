Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 104C695BC52
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 18:47:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79AA3401A3;
	Thu, 22 Aug 2024 16:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ivwitkqHHuo9; Thu, 22 Aug 2024 16:47:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78C07401BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724345221;
	bh=peQSA1xBpS3p+MUTK+0eWA94gQoQSYItRXsu+NFrqY4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UF+q+fzrv3B71lywn5gktkkjphvTv5Ptt36ZVS1sxKN8eKlvd0as/ZTqnv/0EiK/q
	 COkzanb4GlYqiMQxgbipPwWdcwCQmJN7ZzqYVoVQzxfSbxVDlryZ6cslpx4i0WSq2G
	 k3FvN+GCuP0NwgiHnQxshLheipen0WPq41hrJEO82z01LuiS9Q1qQhAoPfuwBfyeHh
	 yXgvdDcxhNC/eVkS5twd/Bj1ZDmN+5ROpK1E382AJ2yQNPjfH42t18MxeOTefZuESA
	 w6MrHpmmUaeq5U8qEkW8Ioh8HW+UQaw2TDWexNQz18hxfR7ONfxG5os2XGmT/CuFHr
	 752nj4S3OGK9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78C07401BA;
	Thu, 22 Aug 2024 16:47:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2608D1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11E5B40168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:46:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R7dwr6a_dOYM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 16:46:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A493B4013F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A493B4013F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A493B4013F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 16:46:57 +0000 (UTC)
X-CSE-ConnectionGUID: Fr+VkiE7R4q9S/ygtRTjDg==
X-CSE-MsgGUID: 2vkWRHRXTxWlnXA9GrCpfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34157790"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="34157790"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:46:56 -0700
X-CSE-ConnectionGUID: P77KTWjlQAibiYaXD1L2Sg==
X-CSE-MsgGUID: c1b2PcgrR/Wxq8J4YIvl1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="66346706"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 09:46:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:46:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 09:46:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 09:46:55 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 09:46:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SHSC05V/eTalZKHTiGtA/1TXqzi8UhyRFT4z7iJ7tfGGPpztx6ysXmJ5JynRnZa1slAFcxQa5Uc0Kb/7+Q0ihHtrH6O3DxLIv9Z18r5/ok4JIfdGxYFtgFONDzNXrR9gQU9ZF8kMij1g7mYNS8lMh5tyiAFEkW6GzUL0m5jtVx0J3auQaFiRW/MDtFO7jHdsj/rQYYhysUYmtq8Dr1otbtHSGMjCkdtkqGjOlsxJEj2GmGlYAgG2Ycg90Gl0KwOymnFoiSkuO/2bszQ73Tp1l9fIiBYcBVmypwhBFOFiVUqamZQvPt61Cmv1i06ckYLRC7NFA/5JLCk5md/LpFhWsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=peQSA1xBpS3p+MUTK+0eWA94gQoQSYItRXsu+NFrqY4=;
 b=YKIjYtuVOP8Gf25l3w0lFl3gPQORTZWBcw6pzHmv0B7Q27wSbidc+1KmO2Wr6K5YclNaNsT9qq39mT3nYDTafwe6Es0GuX7Muv5mkl0AP/rXCunbuSdOfgjJS4oJ1NQ6rf0msAAGmUrd8q2nwU4PP7BKCGLqzIf2wrsmLGtqcKoKf4u36lVgTbHfPeDK4Oh3pveeYBguOMpAFbhUH+7w9Nflmigrd+BbQ0xfrhe4JKBrHrVrKzZyVyRurwcX03UpH5yqIn4Exf8Wf6fWQzduj0XoDyu/IOFTyCDgQ5stiFs0C2D5F6FEzkvF5Qj60wvWzWa5bK4TkxyAAYBRPgZEKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA1PR11MB6966.namprd11.prod.outlook.com (2603:10b6:806:2bc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 16:46:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 16:46:52 +0000
Message-ID: <e122969f-8954-4cdf-9495-c0a166494cda@intel.com>
Date: Thu, 22 Aug 2024 18:46:46 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-13-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-13-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0001.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA1PR11MB6966:EE_
X-MS-Office365-Filtering-Correlation-Id: d84d9ae3-655d-4fd6-6970-08dcc2ca0671
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SjIyUkU3TmpOdjdFZ2xDSXRsR2E0aTMzUmROMGF3M2pya1FiT3A2VXZEaWNi?=
 =?utf-8?B?YXZ5ZGk0SFhLSE1pU1FCdTcwWHQwQjdPbUUyNGkrdURNOHJtMDZabG5sdXIx?=
 =?utf-8?B?N3c0TXpCai85Q2RkTS9lR0hVUldXQnpuRU5oTFZDOTg3RlJMWmZaYzl2aHZB?=
 =?utf-8?B?clVSeUQ0TUZ4VDFRU1dvNlNndVljQ3BnVE1HY1FRbk1PbUJmbTN5ZFBLaTla?=
 =?utf-8?B?RktxRkRueExYNUl3YXlxYTFuSGoyWkM4L1dsNFVDK0M4TXFVQW9UWGNDd0Nz?=
 =?utf-8?B?SVVZMXJkOFlXTk9FWmFjbDVhUWc0NmxnWVlFOXJqc0ZtcFhKcFNEUkZJVFpi?=
 =?utf-8?B?QkZndFdxMG1LYUhQSU5qeUFBUWtUSlNaTnZmYURicjdHQU9BRnJqMFMrQmxl?=
 =?utf-8?B?OFZYNVNRV3BhRU9qRTJ4a3J5Y2g2VzJmOGNaelVRSGJlTXZuZ3V5TTZqRCty?=
 =?utf-8?B?ZWY2cUxXSENCQ0pQMER2dy80Nmp1aExubTdvSE82UmJLakJadk1OQ085WkVK?=
 =?utf-8?B?UXdaSUg2U3NrSUJVMEJpT0RYN1h2V3BuU2Nxc0U1eFV1WWJlMzRPQS8wNTJi?=
 =?utf-8?B?MWNsTTJSY2hsem9NZ1Eyd2pYYzA2UVh6bHJJWWVyMzUwdjV6VnlZakpnSUUy?=
 =?utf-8?B?RFlURFgwd2NGaHFNUmMrYkpmcVRkbFdpSXhsMDZ5Tks3cXN1MVhMdG9QTWRp?=
 =?utf-8?B?eEdzdGlGdEZIcFE1N3d3WW5NVjVjTzcwRUpWbk82NEhDL3RaOGU2YzE4RUhM?=
 =?utf-8?B?RzA2YS9ueHNHYk1ibysvblNlZGl5eTQ0RkdKNEM5SGg1TmVLVThPU2hyL3Fi?=
 =?utf-8?B?eVpPZjFzS1VpbFd3anhsVFpDT0lOZkV4OTFaTlJ0TzRGci9ocGExWHAwU1dk?=
 =?utf-8?B?clZiSENJcmtRdURRSW51S0lLVHE1WnRoS3E0bWtCNHF4cDhXNkJGNWxVcXVW?=
 =?utf-8?B?TEJNd1pRQktYU2FLQng5M1FQS3E4OTRDdnlWaU1NQ0hEOWZQWmlGbUF4RTR6?=
 =?utf-8?B?M1orOGFZTG93Y29wbVVPQm4rWDdaNGV0NVlYSmtLVVlDaDVkOUFkKzkvKzl3?=
 =?utf-8?B?aXlXMnptNk8zd2tDNis4ODdQL3NrUy9YQ2QvMllMdFVIc2luak9mdHJwTmg2?=
 =?utf-8?B?blM5Q3JLS3F4RmZWWFdYM21GYzI3Rm9SWXJpWVBUbTNyeXBGUmhKU0ExRzNX?=
 =?utf-8?B?eFNWcXVpVzJkRFhaSWFkdDFTejRyYnpnWEloZ3U4UEVUTnZiY2tDSjlCQUY5?=
 =?utf-8?B?TFEzbDl4c1liNDQ1QlpBaTZVSFJwNjBFK3BhN0pFR2RKc3JJRk5IMjVzK3N6?=
 =?utf-8?B?ZnlNY0poT3VUTllRUldYZC94em5VbDZkcHF3bjlTRE5uYTFoTlBrMXpHcm5K?=
 =?utf-8?B?VW9sOURHWWJyRHppR2tUd1grWlNXMUY5RUtLUFVna29oK00vclRXa21EMHZL?=
 =?utf-8?B?WUY5ODdqUnUvRnd5VU9PY2dQMUdIZFgyTUVhR0VjeEZJQ01YL0NRaXdyZ2RC?=
 =?utf-8?B?Tms0WjAxa1hPdGRPenhwM0FvRk1paUJDNWx4aUJ5aHE0UzNzKzl3dmZTU0Ix?=
 =?utf-8?B?Sm11TU4zWlFOL1JRUnBnVkhEak5Jc09EVlR2NUV6SFBKYmdRZ3FvQ2R3ZlZN?=
 =?utf-8?B?bTFlOVpjc0Q5aVBqczV4R2ZYK0IvSVR3L2twL1lneG82VjZYZE81NCtGd3Yx?=
 =?utf-8?B?THNub05jK29UcHhJSUZ0ODBoNW4ydDJlZTFWN0ZOT1hKUHU2eGYrMXlKMk9X?=
 =?utf-8?B?dTlScklkZWd4YUQrdmRrdVJ5aTFpOXVqTlNZaytob3Y3ZithYk5VZXFNaERx?=
 =?utf-8?B?dlg1RkxtNC9VcGozNll3QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWRQaEZVaXRHdElvcFJEcU8rRG5sT2pYSnVucllCSkhwRnFqY3UweURMUEEr?=
 =?utf-8?B?WHJOak5sa1kvYWtzeTdiV1hPZWdjb3ZiRzNEVVZ4QjRZNk05V0w5Q2VJcEpj?=
 =?utf-8?B?d0t6VHZtbFdUY0R1L2tNZUtzY3lnVVlwY0owKzlUN2cxaGdTZUluNU40UVRU?=
 =?utf-8?B?WDV0eHhYajA4czJPU3ZEbjl5cCtjM1Z2UGE0Z1ZQZU1qa0Nqb2d3YTBFQ3N2?=
 =?utf-8?B?dzNxYmhwMVBWakROSzBYdW9VbHNRMXFGdTFqcjIrUHEwNnZHWHorMjRLSDJj?=
 =?utf-8?B?K01ITzdubkRqeVo3WUdhMHhETHRXeGhQaS9BemNQOVoydDJaUlJjUVJPYVlB?=
 =?utf-8?B?YytKaVd0Um04OHF4VStsSzZrNnJtbE9qTmpxcDlCRHd0c0hIT1RqcmFkWWhE?=
 =?utf-8?B?ZVM2cVEwSVJoQnU0TlQ1UTRVaHMwSkNIb25mOUtGWHVyeG1ZenRUY1ZxQ0lq?=
 =?utf-8?B?QjRiWjdtMXRaTjM1UEdybEQwQytXbFNmTFhRZ3I3V0pCamJxWWxJRlRaVGxV?=
 =?utf-8?B?L2o4Q0JIajZvZGVCUndPTmxodU5WaWQ2dDlDU0dJRUZXaEpqRTZMZU5IWVpp?=
 =?utf-8?B?ZFNCYjRhQXprTk5mMGFyYlhyVVhKa0RTVy9DUEpBLyt6QTVkaGcxMDRnQlZ5?=
 =?utf-8?B?eDQvM28wTVVzbHlSMkF3WW9GRnRQNmhlYjAxcEQzNGhOZE5ZY2x6a1Q5cFdV?=
 =?utf-8?B?UnV1ZkxzT0U5NkFwQVNaQVNQckVBR1pBbVlwVFJ2ank5UFJtWFh3emZxYmg2?=
 =?utf-8?B?aWRsWUF4eEFOSjFJdmxCWkg3R2xNNy9MaU5TR0NKZjkwczMwLzB0ck9OU3pJ?=
 =?utf-8?B?NzBSRkhxMjh5dCtFcGp0Y0RPUW9lVU1EeTFoRVNBcGxxcVo4OU1iRzJnNU1u?=
 =?utf-8?B?aXA1K1YvQUZqT1E2N0l2bUZwZ0VKMGFTdmt1YzVJTkxONjFxalBNUG42TTA1?=
 =?utf-8?B?L1Mva2x2WVVlUlNJSlNCVzV2NHltUmlvYXF4NVRnUStrT2NkK01ZVXJWSVNX?=
 =?utf-8?B?Zko4VDNWSmhZSWc3SlRSQ3dESjBhWlRhODJhZGRHNjQzQ3RENWtsNDZFZjRj?=
 =?utf-8?B?NHhhWmtlWkVqa1JsOWpyZENRT2hXNFNaOC9VM1B0ZjNKSnp2Mi95bE95YS9n?=
 =?utf-8?B?Z1haNjZZdGUxTVRCbDRSNVZRb3d2RmpQcGNsaUsvMUNkYmxDeWlBQTMxYVE0?=
 =?utf-8?B?U0NjUXZMY2tBaUttN3RmM3p1VzNCWEYwczNlQlZubituTHdqNU9oQVJsQUUx?=
 =?utf-8?B?ekJPQUYrQ1k0dzJyU0cyVFFJYnFzVXhvMTJ1ZjZoZUduZVJzVkI2RG9vTnNP?=
 =?utf-8?B?SFFzczhrOVk1eTJsT0pNdTRRSzJ4QlB1RjNtVkdKeTI2NlpmUmhBWTV3eElq?=
 =?utf-8?B?LzRFdTF5VFZrckJ3cWt6VmxtZzA0ZEhTRmNFTkJyMkZYS3d0L3dpd2VTai9a?=
 =?utf-8?B?dDhiK0pOYk56alI2NnYvT1k5dXM1TjJ3TDF0bVhZUEYxODZwNnpCdVU4QTlT?=
 =?utf-8?B?YU5COUs4NjViZ1k2Q0JqVDdNNUJOWk5WU3RybWZ0aEY3eU0yN3Z3N0FTdGlp?=
 =?utf-8?B?NVp3VS9BWlF2cmV5cnFEMkc2SW4vSnFxemdrc0lJRFZSd0pWL0ZOVE1mUmpS?=
 =?utf-8?B?d0VEaTZmRUErRGhZWGh1R0NSNHR1ckMzSGlRTzZsa2JYZXA5YmJ6M1YzR1FO?=
 =?utf-8?B?Rndialh2NlJZZVVubXFDVTRNb05CbUQyVlA1a00relR0QytnSWpSTDRPOUJt?=
 =?utf-8?B?Z2s4d3RaeWk5dzVIOWJZdjk0VHdnMkh3RWd4NTA2WCtyWkpSYUxYWEh1alN2?=
 =?utf-8?B?aWFQVndvcDZ4N04zcEJtQzhnTmF3V1h0cXZBZjlZbHR6c0dlcS9BbDFYRThW?=
 =?utf-8?B?b3NJWXRzUGNQRmh0VHloYTBieXhNRmNTTU1GU1BONlZOalEwR0JoK0dISjJ0?=
 =?utf-8?B?MStYakpQYkY2WTlXYnJyY055bjFpNEFrdjZtRlBMUVlSTmY0dnFlWUFyKzU1?=
 =?utf-8?B?TlEyaTFxa09qTTI0YWhYK0lHWWRUeXo4RWp3WUFuMDZXVGFCWmpLTjhkRWk4?=
 =?utf-8?B?RTlNNjN3NXBEd2J6ZkpCZ3dBSXp5WHpFY21hTHVvcFI5S2dweEJRVFFRclBS?=
 =?utf-8?B?YmpwanRqTk9xUlJUaUMxRmRvWEh4SVI2WW8zUEEwdlY4V0dTbGhFcGFDMlBF?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d84d9ae3-655d-4fd6-6970-08dcc2ca0671
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 16:46:52.8145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BDNHPnjtV0im/7aoh+WbmE3bRn5jPjtGKq8w7JclBlJocsk2feOOeLARhjpEWWDXDQotxXjDcpLj2y0qtq89V2Bj9ijPrJsEl9aCRY2QmkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724345217; x=1755881217;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+Xx6kxO+UFGMrDY7rfDGnvLWS2kwVSPGPXYznWh9XTg=;
 b=cb57cGJmbcNuoHKau9nrEMbWcSTjrzK7LwabtI/Yx94osLRKvE/ATYen
 YRgdID3ypiV1/uGTMDSC+jGiT6NW9N50b538OqhQEFZHq8R3BBBtEoVYq
 UT7My7JxxIPJcPUB51t6OLk3+8LWPf1JgoVs0fxFh+xM0EUXNY0uAb+7Y
 /UJoqxwIFWLXQ99mabWU/KxUJJD6PVDXC3ygnVKE0Ni1HVigQrS5X8BUv
 HlEBZjyF969yZWDJsfKb8W2b2Clf1npM+l6LMTxPmEHKWa7TEQ1+oZkP2
 pA6z2pCx23OX+Y815k3xZN4R+jW6xl1LY4vmuvhcPD5Y5BkpWMR+fqjMR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cb57cGJm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 12/14] iavf: Implement
 checking DD desc field
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:37 +0200

> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> Rx timestamping introduced in PF driver caused the need of refactoring
> the VF driver mechanism to check packet fields.

[...]

> +static bool iavf_is_descriptor_done(struct iavf_ring *rx_ring,

const

> +				    struct iavf_rx_desc *rx_desc)

Just pass qw1 here directly instead of @rx_desc.

> +{
> +	__le64 qw1 = rx_desc->qw1;
> +
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)

I would also pass `bool flex` here instead of @rx_ring.
At the beginning of iavf_clean_rx_irq(), do

	bool flex = rx_ring->rxdid == RXDID_FLEX

and then pass this @flex everywhere instead of checking for rx_ring->rxdid.

iavf_is_descriptor_done(u64 qw1, bool flex)
{
	if (flex)
		return le64_get_bits(qw1, FLEX_DD);
	else
		return le64_get_bits(qw1, LEGACY_DD);
}

That's it.

> +		return !!le64_get_bits(qw1, IAVF_RXD_LEGACY_DD_M);
> +
> +	return !!le64_get_bits(qw1, IAVF_RXD_FLEX_DD_M);
> +}
> +
>  static __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
>  			 u32 td_tag)
>  {
> @@ -1223,24 +1245,31 @@ iavf_extract_legacy_rx_fields(const struct iavf_ring *rx_ring,
>  			      const struct iavf_rx_desc *rx_desc, u32 *ptype)
>  {
>  	struct libeth_rqe_info fields = {};
> -	u64 qw0 = le64_to_cpu(rx_desc->qw0);
>  	u64 qw1 = le64_to_cpu(rx_desc->qw1);
> -	u64 qw2 = le64_to_cpu(rx_desc->qw2);
> -	bool l2tag1p;
> -	bool l2tag2p;
>  
> -	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
>  	fields.len = FIELD_GET(IAVF_RXD_LEGACY_LENGTH_M, qw1);
> -	fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
> -	*ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
> -
> -	l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
> -	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> -		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M, qw0);
> +	fields.eop = FIELD_GET(IAVF_RXD_LEGACY_EOP_M, qw1);
>  
> -	l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
> -	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> -		fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M, qw2);
> +	if (fields.eop) {
> +		bool l2tag1p, l2tag2p;
> +		u64 qw0 = le64_to_cpu(rx_desc->qw0);
> +		u64 qw2 = le64_to_cpu(rx_desc->qw2);
> +
> +		fields.rxe = FIELD_GET(IAVF_RXD_LEGACY_RXE_M, qw1);
> +		*ptype = FIELD_GET(IAVF_RXD_LEGACY_PTYPE_M, qw1);
> +
> +		l2tag1p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1P_M, qw1);
> +		if (l2tag1p &&
> +		    (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> +			fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG1_M,
> +						    qw0);
> +
> +		l2tag2p = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2P_M, qw2);
> +		if (l2tag2p &&
> +		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> +			fields.vlan_tag = FIELD_GET(IAVF_RXD_LEGACY_L2TAG2_M,
> +						    qw2);
> +	}

Just do that right where you introduce this function, this change is not
related to this patch.

Also, `if (!fields.eop) return fields` instead of this big if.

>  
>  	return fields;
>  }
> @@ -1266,21 +1295,29 @@ iavf_extract_flex_rx_fields(const struct iavf_ring *rx_ring,
>  	struct libeth_rqe_info fields = {};
>  	u64 qw0 = le64_to_cpu(rx_desc->qw0);
>  	u64 qw1 = le64_to_cpu(rx_desc->qw1);
> -	u64 qw2 = le64_to_cpu(rx_desc->qw2);
> -	bool l2tag1p, l2tag2p;
>  
>  	fields.len = FIELD_GET(IAVF_RXD_FLEX_PKT_LEN_M, qw0);
> -	fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
>  	fields.eop = FIELD_GET(IAVF_RXD_FLEX_EOP_M, qw1);
> -	*ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
>  
> -	l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
> -	if (l2tag1p && (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> -		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M, qw1);
> +	if (fields.len) {
> +		bool l2tag1p, l2tag2p;
> +		u64 qw2 = le64_to_cpu(rx_desc->qw2);
> +
> +		fields.rxe = FIELD_GET(IAVF_RXD_FLEX_RXE_M, qw1);
> +		*ptype = FIELD_GET(IAVF_RXD_FLEX_PTYPE_M, qw0);
>  
> -	l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
> -	if (l2tag2p && (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> -		fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M, qw2);
> +		l2tag1p = FIELD_GET(IAVF_RXD_FLEX_L2TAG1P_M, qw1);
> +		if (l2tag1p &&
> +		    (rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1))
> +			fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG1_M,
> +						    qw1);
> +
> +		l2tag2p = FIELD_GET(IAVF_RXD_FLEX_L2TAG2P_M, qw2);
> +		if (l2tag2p &&
> +		    (rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2))
> +			fields.vlan_tag = FIELD_GET(IAVF_RXD_FLEX_L2TAG2_2_M,
> +						    qw2);
> +	}

Same.

>  
>  	return fields;
>  }
> @@ -1335,7 +1372,10 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		 */
>  		dma_rmb();
>  
> -		if (!iavf_test_staterr(rx_desc, IAVF_RXD_FLEX_DD_M))
> +		/* If DD field (descriptor done) is unset then other fields are
> +		 * not valid
> +		 */
> +		if (!iavf_is_descriptor_done(rx_ring, rx_desc))
>  			break;
>  
>  		fields = iavf_extract_rx_fields(rx_ring, rx_desc, &ptype);

Thanks,
Olek


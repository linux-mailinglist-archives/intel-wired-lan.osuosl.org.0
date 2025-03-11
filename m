Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4525CA5B80C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 05:43:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B6C340B92;
	Tue, 11 Mar 2025 04:43:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIcGYzyEOCM1; Tue, 11 Mar 2025 04:43:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5758E408D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741668186;
	bh=Oy6IZunU68fORXYW3XIM8LEc/gIHf3FZp2gYslDKxYs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xfdw8W86CI9J8tH0Hak3DLUY0F2kBwWQ+9LgZc0Jeo5s2s/7OB2szetGtkXsfZIk2
	 +UKmnGOz1/y0lYXk3qNDyWWlmn1qqa4Cf9UgyBsY3zIgKeGF5yuuE2i4QvzX59fFDi
	 PkNVudBqr0UDBeY36yoPsE6tZeiRYCTYdKUc6Mkx0YrXvA7GLs7Qo9soWsNZF+cYKt
	 dfxGFhP8zQWj2w6P4JifU3f1AwC3EDBb42YzdqVRc2n+cRLdHOceX2JFvuQOEEJ8k+
	 Fw2CxLUbQm4SgGyzs5xCceksZ/5Xo8X4NOQpu+H5QzkKD0GbU9vxsGYDWDqCODhJ7g
	 14TRb0tA8iMOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5758E408D4;
	Tue, 11 Mar 2025 04:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A51BDAF7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 04:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8144D40B4C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 04:43:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6cKDIZI4ZwS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 04:43:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 70D20408D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70D20408D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70D20408D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 04:43:01 +0000 (UTC)
X-CSE-ConnectionGUID: C06w0iBiTwGsLubpspuLvQ==
X-CSE-MsgGUID: zZfKjze1T9ay58/sz5Fzdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42563075"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42563075"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 21:43:01 -0700
X-CSE-ConnectionGUID: LS2YzeWMQ8SllsPDJ7CIyw==
X-CSE-MsgGUID: Pvpx/JWMSeqamnFEO5Quzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="157398700"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 21:43:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 10 Mar 2025 21:43:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 21:43:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 21:43:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OArI9piAdFm0mGxD7S/mwGHWH+mFBnkEVNJukjOrrANND0ik1Omb8e4SxHaRLQOL6jfkvtjrRvefLxN9AU0PQsEQeGQBSS5AzDHr29YWoa4rYGK6ms1RWYEC0oqlkuyWATflCJ9GcNAy5ab3nb3Wht8jlyGk719WZqHsC6lDeTdL96uhQJBFUJzkFWjUer9meAvz/TL+WgosybY5R96IHgDzKAMozfOxWN9Rci4YD71ox/mZGMRSY+20itxvPRqlHxH2dhOEeHflgZm2DOwh7HZZuv8RKPnA73saPI78Jqalx+B21TU/NaLYRpsPlBOXsyyCQZ4eB3Azg0kyoHKwSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oy6IZunU68fORXYW3XIM8LEc/gIHf3FZp2gYslDKxYs=;
 b=oARKS3DmQzWpRruboxvqL0aUvb7xuiGs/nSazVgcEILMrfRU0ueii59mbYOrEn7kcVTmJVLTCNx2ZALcQD8dNtlsb3suGqi5sTMXTRaMvwnPp9HUwdUna1C9zcutnozz+elDdIT/slm/WfOa7xMEXxVd57yVpp5XOmd6APcxL7fgdXGxJUd7TALwXgibJsDy2zKHfTV22jyYYnC3IOFFctApfRZfzUGgGXLPLCjgGpgH9xcsJ1hNpUsxHdKTG91/TgxMIOoyin8LUY4eE1bdQYKQL7SrH5ZMLH54INozYhRBPmaCqeADJ9OuPkBreX6f+ybqiqQTKA4vUZhJbMbAXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by CH3PR11MB8706.namprd11.prod.outlook.com (2603:10b6:610:1d1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 04:42:31 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 04:42:31 +0000
Message-ID: <9d84cc79-2990-49dd-a528-3d6d182ea2e9@intel.com>
Date: Mon, 10 Mar 2025 21:42:28 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <willemb@google.com>, <pabeni@redhat.com>, <netdev@vger.kernel.org>,
 <yuma@redhat.com>, <Aleksandr.Loktionov@intel.com>, <edumazet@google.com>,
 <madhu.chittim@intel.com>, <anthony.l.nguyen@intel.com>, <kuba@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <decot@google.com>,
 <davem@davemloft.net>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20250307003956.22018-1-emil.s.tantilov@intel.com>
 <20250310062229.GD4159220@kernel.org>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20250310062229.GD4159220@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0171.namprd04.prod.outlook.com
 (2603:10b6:303:85::26) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|CH3PR11MB8706:EE_
X-MS-Office365-Filtering-Correlation-Id: 0596aabb-97b2-46c2-5b87-08dd60572234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UjZ3ZjJrNVJkU1hsZHFsOUpIVTlVQ1dLTWw4T3BFRVZHdnV3RTBmRmw4ZEpC?=
 =?utf-8?B?cEYzWXh3NUJFUytCWnNJeEcyeHROditkNnM5c2Q4d09qTEZUdGJqODIybEhw?=
 =?utf-8?B?YUtaWTRkK3ZrYlJMMUtQbC80VTk5ZDd4eGZOSE96S2FtK1JNWjBaU0xoY2tU?=
 =?utf-8?B?N3dDOTY1MGZYcFdoSFBxbENvdDUyV0Rsc0psZ2taa3psZVVNeWt3Rk9tYUxP?=
 =?utf-8?B?S21VZnZtOGF6T0VJc0FScGVsV0x5L0hiZE9EbXk1T1d6SmgyRVErMnBzdTl3?=
 =?utf-8?B?MVdMdTgwd3NpVGhmME9ZVm9RZU43ZmFRM1owSVpUTVBra1ZiaXlFV0diejlQ?=
 =?utf-8?B?NWh5OHo2QXBRSkd1U3o5RHRHMmxxM0Y5NlBEdUhLdFlveDlhdUVacElQVEIw?=
 =?utf-8?B?akNpaDJKdGhSdHM5b2RXS2IzK1RoUzU0TEdENFUvTVdLTm56Y0lOSWpLNERx?=
 =?utf-8?B?QVVpbXRlb3h5V0FqN1NZNVE0aDdZUVNMUiswSG02TXJvSFJZQVV6SUNhNTht?=
 =?utf-8?B?TWlLNjFUSFU4T2xiMGcrK0pqemUwVnNhajMvYmswaFlndGdDSDEzdkZ0ZW9O?=
 =?utf-8?B?d1ZQd1pnMmpqYkUwOTZLOUUyTWYwRXdUcmFXZ3BmODNObCs5WVUydC9MT2Za?=
 =?utf-8?B?V21JamErb3hpVHI2bnlBRi9nWWU3V0pjT3pLZGF1Z1NMTmxvd2o4MzEya2xm?=
 =?utf-8?B?L0NVdmFFampoZFgrSGtMdlVPeUpwdDREYm1NTkRtVzJ5Tm1qR09FTUhKd2JH?=
 =?utf-8?B?S2xmTE4xSW5qRExvTzRPdjMxcXNlRjlpdThmaWJCUVRFUXdGM1pKdmJXNGJx?=
 =?utf-8?B?VnFTZ3J1OWdwRUgzTDZTTmo3L1dYVGtPdjBUaHNPaWJvUi9ZbVlZZmVPeEtv?=
 =?utf-8?B?VklldnJQNnYxa0VGOE50WjdUZkI0ZjVQTEdDTzJyZGhwcFhWMm1haHcxUC80?=
 =?utf-8?B?RFpDei9PbEs0ajdEOUZPWk5pelAzRzJudEkxNUhsOXpsQWJuSFVFSEc1Y1lM?=
 =?utf-8?B?TU9UVFRqaE9kMHUzNzErbEd3b3RiU2Q5OXp1Zkswb0hwUFZKMU9XS0FmN0xH?=
 =?utf-8?B?cGNSQWNFOWJRemxQWVZyaWZ2WmNEUDRNcFYrczkrSUs0M0krbGdZcTdFZ1RJ?=
 =?utf-8?B?NjVIOXpVaXNudjZ3MjNjYXg4REJhU3hRS0pUbVpPQWNWUHhKalBZRFF2bXZJ?=
 =?utf-8?B?aVpCYS95QnlqTEUwSnFvU2RtU0RlL2txTjZpZWhyS1Y1SEFsc0tTM2Z6VzB5?=
 =?utf-8?B?WE0zMWR5VGdUNUZDWTZua3JRWFB3WFNKb2lOU0dZb0VqL0ovNjdCWmxKdE9z?=
 =?utf-8?B?Q0xSRlBXQ2o0T1dqbFVjdC9oWHEzN0JnTTU0SitQYUY4RVFQRDVFYzdMWWw0?=
 =?utf-8?B?YThZQmpEKzl2aVlYTlprcTczUzhpSXUxcHhGYVJ0WjFJcWdET1ZmWVVUeS94?=
 =?utf-8?B?azAxeCtzc3J2R3FvbGw4aHhVZ3FxNXp2dmcwMkF6NFEzRFE5a1NkTTFVTzFG?=
 =?utf-8?B?VStneDBQVW55cHcvQWVyQ3BJaE51YjluQnQ5S3l4Q0xxbmc1VkxwMTVZMk9L?=
 =?utf-8?B?Yk9FRG5mNlFUYjJFaFk0VDFNZXlDWnJDTHNaNmR6WmxrTDBSbVpYMTFlR0hp?=
 =?utf-8?B?RUE5MkVPd0tWRkRlYmVIMUt6K1RtTEt0UW9wT1o0WTl1Wk1NeWtDL2t1MFFJ?=
 =?utf-8?B?aGk2UDBuTUtmS2s5QlBXQzRSSjRKUDZhb3ZuRlJzL0pCcDU4a3dwc3JOeWp2?=
 =?utf-8?B?cVB5SWNXYVZwMHFJVHhGRzJsd1huQ0NBeUhKNVVscU5McTZpMjFQME1vN0pu?=
 =?utf-8?B?Vi9abFpQcEpLOVUyNFdvTWpkMmpxd3hMOHlJdlYwZEI5dGtKN2tWYktHanVR?=
 =?utf-8?Q?0dD1vHRsRU4YD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmJsZ3BjYm9NS3J3TDF6eGloS0ZabXlGQlVFWGdqbFl4YnN2ZkZzdXQ4REMy?=
 =?utf-8?B?KzNVZHE4UktGcnV1RlRLVDBCelNNRFA3MzBwekt3UEFqdU10YmV5NGpWcElK?=
 =?utf-8?B?TmNsajQ3cVd3aVh2dE5LcGs1aFRTdGwvdmMvQWEydXZRVWVjL1k2ZmZxamhz?=
 =?utf-8?B?RTY2R1dhS3ZqOWJkUXJ1L2hKRjQ2a1JQRzQ5SlpQaXlRUjJGRnlVak9pS00v?=
 =?utf-8?B?Q2hweWhkaWRpcVNVM080SGE2TC9VQ0lPT21RbS9UdFU0NEFHdkR6emQwNjcx?=
 =?utf-8?B?YkJqeFlEU3kvNEtmbkE3ZkZycUNkbTVKUWZzbXdSclJ2Zm1zM0lGWEdIZGhj?=
 =?utf-8?B?Mk1EUTM3c1dGUlRra1UzU0F0dTFwN3BPa1Bva2J2THUrRnozWGcyckNaSVoz?=
 =?utf-8?B?WWxuZlNrVCtKRURFL3dyaWFhV0lsN2V4c1hJZGl5dU9QeTF2TENQRU96dGtF?=
 =?utf-8?B?dXNhaFhoRDREQTJQMUJHZlI3M1VZRXY1NlQrbnd5M3BtbmtuWFZjYUN3aU5S?=
 =?utf-8?B?cTVaZXBMVllxeW03Sk0rSFZNejNTdmNUSHhrQmJSR0ZJa1VTTWpZYnRVRHJS?=
 =?utf-8?B?bGp6K0lFako1SVBZUDV6eWE2WnhtbzB6dnpDNE9GVnVRL0w1VnZpWnNQWWp2?=
 =?utf-8?B?ZytyTEFRbW8zUVZpdzMxZnNKd3JwbURXT0ZqaFBFeElvcTVOc3R3Z010OVRC?=
 =?utf-8?B?ZkdBWTNobUVwS05SVVh0bTMxNUozK0F4TUhKM25XVDJ0bXZEK1Q0Si9MdDlR?=
 =?utf-8?B?dGNYOG43bWxkSW9mclZyNkJ4ZjM4ck9KMWpleURuMUN1RWRiSjBhMHdXTzkz?=
 =?utf-8?B?RE9XWDRWZzJ2WWYyTldWc0tGTlIrSW5RTWF0TkxWT2g0RWN2U3JMZUsxNjg2?=
 =?utf-8?B?dWxoVi9lY3FpaFdzM3cxWFExazE4S1dDVjJVdjU5ZXJiK3pRenFWb0JEM1pV?=
 =?utf-8?B?NHNoUXZZQ3NqMWJwbFZoQy80akpNOUlYM2lmYktkL04wbnRIZU9zRDJ3QS9J?=
 =?utf-8?B?ZlVrOG41Q0hJVldhYVVybTMvcmlDcmNXMXpHVGlTRy9XQmFBL1U4Y1NsNmNo?=
 =?utf-8?B?eEg4L21tTHB3eE55WDNWZHJwTWpoRUlHejBLUDZiaTlLYjFiMTRGOUhyVVFw?=
 =?utf-8?B?QWhmNTFaR1d2M3dtWmFYL1FlY2pSRlNGRDdtNnpTZUI1WDc3Y0lyS0xDR3Fv?=
 =?utf-8?B?R2JpdUVJM085MFhRS2c3dHAwMldMUFFzL1ZoS2RHSFg5czYycDlxVFA5allU?=
 =?utf-8?B?a0RsV21rZkR3RTFJR1A3M1RrbFErTnc2ZTRHRUJCSHVPMWVoYStSK3BnYWNw?=
 =?utf-8?B?MU5WOGFueWhsdDhobms5d3ZncVQxRVM2NE0vakplTEVtNmFvN3VsUzRTbUIy?=
 =?utf-8?B?MThXU0xxTEh5TXRzR2NwdXVBaVJQQ0VuUzBRK2ZBQU13N0FNcXVPMnltRDM4?=
 =?utf-8?B?WWJ2THdQbWpXVmNseWhVVzFINGMvZTJHc1NPUm9PWkxNZFJHTkJZOTlBd0h3?=
 =?utf-8?B?YTFXdmdFQkhScjRsemd1Ylk3aTNHZG5xelJNSHVPSE5UdHEyNWdVcCtPRDFZ?=
 =?utf-8?B?cktDd2VjYVk1bk5JN28zM2J3aHlCcXdXcmM3YVBzS2s1dUp2L04rM0pxQW1R?=
 =?utf-8?B?TlRyMVhwcFNUYVEyTTVlbDVQZDBFOEFWOW0rWlFKTGN0STROVmpBby9ESXBn?=
 =?utf-8?B?MlMrNWN5MllkZko3aTNUWkwzb0Z0WkhKRGxuczR6OFRlM204VGZLSnU3Q3dE?=
 =?utf-8?B?cllORjdEdlc0cmFxUXhpRUVTRmNjNTBTUWlyQmZXeGN0aEVmQnhTUmFFYlNZ?=
 =?utf-8?B?K2lQemxRTWZpRHplenk4MCtBSGNueTcySkxTUVFkOElxanFxLzZBVW9qSHl4?=
 =?utf-8?B?QVdNbi9uNG9zbkdvNml2ZndJdDQrYnBWb0ptK0x5VHo1NE9rRTI3bHhrSkR4?=
 =?utf-8?B?eXhHaDlsVDZrazFMSFhoZXd3Rk8rRlUvc21JRytZY050OWFVbVpPczc4MmNa?=
 =?utf-8?B?VXU2ME0xRkYrZE9Bb1ExWjlaZXdkd1ZZRWIzc2t6U0VGSm1BSlZzQitrY1d6?=
 =?utf-8?B?OU4yZXRaYzRaQnRBcTdpcDRUaDJlS0RnblFxUG5DckI1Q2hUcUd4OWZBQ0Zr?=
 =?utf-8?B?S1FnODZxVllIQTlnUXVxNFdDbVlGUWs2T2dPNWJ0U25KZGZMby8xNXYyc1dW?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0596aabb-97b2-46c2-5b87-08dd60572234
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 04:42:31.0513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNXe/BwbTAzuJRlJU+LlMg7F+dTLIrtjY0qmZLq1mx9IdOwU7lIXavyBpsedjLJn+hfgOVywN0inTxjWHc4mPw+Vr3o+ZIR44yEZGTs/Nak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8706
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741668184; x=1773204184;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TVTl0miQoj/+jD9i+xRMJLj0MnAViKizL9t14BKgbPw=;
 b=YOY9yQozVoQ3r1iZLuIS2lFNKZBRROuDxzMmkcaqOH9oiCDykm/Okd8M
 7PKzV2TUOyHv/qAxxZMIwbT43bLocqr+0NaWWQPZuhqLLI4fAQiIu8MCF
 OgSdy65nMRQ+a+QudlvDtOekIJ52kIeZmhQD69LrZuVZkFw2+xnzdskAA
 dvWFFCfkO6erDrRvtfY6jQq/kaNR3VP45FGTnLuGkEM8CHbZBoqR5Yias
 hhlQAYYRtYL2W3CC/1dLFs5FxQR9C8pi1TSGNM+9AsMhPuX2rfP3Px311
 hmoIsfA8LVxzHnQDuSyw7fRGWAAaeKyq4olyfQmpY9Ld5lZUBgvBX8ZBP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YOY9yQoz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix adapter NULL
 pointer dereference on reboot
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

On 3/9/2025 11:22 PM, Simon Horman wrote:
> On Thu, Mar 06, 2025 at 04:39:56PM -0800, Emil Tantilov wrote:
>> Driver calls idpf_remove() from idpf_shutdown(), which can end up
>> calling idpf_remove() again when disabling SRIOV.
>>
>> echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
>> reboot
>>
>> BUG: kernel NULL pointer dereference, address: 0000000000000020
>> ...
>> RIP: 0010:idpf_remove+0x22/0x1f0 [idpf]
>> ...
>> ? idpf_remove+0x22/0x1f0 [idpf]
>> ? idpf_remove+0x1e4/0x1f0 [idpf]
>> pci_device_remove+0x3f/0xb0
>> device_release_driver_internal+0x19f/0x200
>> pci_stop_bus_device+0x6d/0x90
>> pci_stop_and_remove_bus_device+0x12/0x20
>> pci_iov_remove_virtfn+0xbe/0x120
>> sriov_disable+0x34/0xe0
>> idpf_sriov_configure+0x58/0x140 [idpf]
>> idpf_remove+0x1b9/0x1f0 [idpf]
>> idpf_shutdown+0x12/0x30 [idpf]
>> pci_device_shutdown+0x35/0x60
>> device_shutdown+0x156/0x200
>> ...
>>
>> Replace the direct idpf_remove() call in idpf_shutdown() with
>> idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform
>> the bulk of the cleanup, such as stopping the init task, freeing IRQs,
>> destroying the vports and freeing the mailbox.
> 
> Hi Emil,
> 
> I think it would be worth adding some commentary on the rest of
> the clean-up performed by idpf_remove() and why it is correct
The main reason behind the change is to avoid calling sriov_disable(), 
which ends up calling idpf_remove() again via pci_device_remove(). The 
idpf_remove() will crash in that situation as it attempts to access 
adapter pointer, which was already freed.

> to no longer do so directly from a call to idpf_remove() from
> idpf_shutdown() (IOW, it isn't clear to me :).
I assume you are asking what portion of the idpf_remove() will not be 
present in idpf_shutdown() as result? Aside from not calling 
sriov_disable(), there is a small cleanup of stale netdevs and the 
destruction of WQs, which did not seem like would be needed on shutdown. 
Then again, I was not able to find documentation on what steps are 
required for shutdown and mostly checked on how other drivers handle it 
(where there is no 1:1 overlap between shutdown and remove), and applied 
similar steps to idpf. Ideally I do not wish to do more than is needed 
for that flow.

> 
> ...


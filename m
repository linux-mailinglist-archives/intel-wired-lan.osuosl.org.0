Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MxXtKrsu+Wm06QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 01:41:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E1A4C4EBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 01:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CACE606F0;
	Mon,  4 May 2026 23:41:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KR5aS-53UdTM; Mon,  4 May 2026 23:41:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88A6E606ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777938104;
	bh=jC9aFb5KxLxPKWUean7lzkSNbK5JVDc68IbkGk+3Alg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gL1h1UffTwlkl6ljBjWUEk+As3Qd58gBfzxCXBFD8KwrQR/UihJNTPqrZDPrnLm9O
	 5akmdP8rJJhxQPkSC1OKDf/g2IFVEAjsLXWvI34YQEOwnGXb0u7NXggu4vuQNjd7A9
	 soAMfcUZZh/gyUsgWFFRNkoYQT5KCxl7sbU8nKOoE8qFVkxWNpSAfhrv322KDi5CcW
	 t0FmxSi99Z07op0V0Z0BtzTS4rPReLyBmlPUEmbGqnpGCftIZkVpMt6cHmpcqqGwLz
	 zzE4QWrrpkaNI2zgSZzBWedNAKfZcPwmD0rcGenYSLYxxqpx1H+ngB1agXmu6KC1D/
	 FVdAtRqkftymw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88A6E606ED;
	Mon,  4 May 2026 23:41:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CF100280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B21FF606EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:41:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6evIQJLZ1ZLP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 23:41:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7F198606E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F198606E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F198606E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:41:42 +0000 (UTC)
X-CSE-ConnectionGUID: A5lWlzcnQ2iNE6vf4QuFqg==
X-CSE-MsgGUID: fXXy4A0AQ3OcSm6CNZitWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78903685"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="78903685"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 16:41:37 -0700
X-CSE-ConnectionGUID: iigNFcouTcSY6NRLXxRXxg==
X-CSE-MsgGUID: rY7RTQktREybR2YHOzGdig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="235523868"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 16:41:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 16:41:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 16:41:36 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.13) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 16:41:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c2Ww8nfdz80sgcJsTgadmHmaIxtSgpkCHl1QLXo/JwPOiJbOj1YSsozuSnadvkq623rvw/hEidEDw42O/DFeRUAsIFFhqv0n6B1Kq4dL9qhdO431BV/S91Og7xiNF2eyR3CmD1SqvcQPtpP/oY9DSm7kNfio/qRMQOAOQamiKz6pyh06SahRV1+/y6Y/bpfw2wiXKrTXQmGAWHFKRAk01M83Yds6MWvM4Fj5w56Ai9AkUFUXGhIShMDsMe1ssBiGSVTKgMm+a+b2tEO9JUy0fKeXDYzfbe92aouqOovMeUzt13R+btVZaeyxCQhEQwM9BajbBwEOxVNqQelndwf+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jC9aFb5KxLxPKWUean7lzkSNbK5JVDc68IbkGk+3Alg=;
 b=TKs/i5ma2VgKMGST2NuwgPOHTjRP7YdcD/o0x7i7vAZwCP8WGWUOXivbNm+Vr7F41XZgx4Th8fuXymkxF9eBcTpOJ+3V7IMa8SuYhrwUuViv2uIjIZmSl5q2axakrt8W1Gjg4Ke0ypJXxLUWEKQvmeYhtiXbDqAYnGum66xC/4LU88nYaX140Y1uAiPjJ7BYdlJg+fLFEnOwih3+iWq72ewsnLT0VxwLaoIpkVABrOB35Mv+Y3CQ1YlQpE1lvgHEEo+fSKFuMuaauowLQH11f/YrCyZYNtkb53r+RrVoHyDFW3hHLhOOj9gk7NDRUCzEbfzAVJ9BSKccPF6P2eQ1dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by MW4PR11MB8267.namprd11.prod.outlook.com (2603:10b6:303:1e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 23:41:34 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 23:41:33 +0000
Message-ID: <85ec6953-3a52-4ea6-9c74-d798bf5ecce3@intel.com>
Date: Mon, 4 May 2026 16:41:30 -0700
User-Agent: Mozilla Thunderbird
To: Przemyslaw Korba <przemyslaw.korba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>
References: <20260415112706.1562382-2-przemyslaw.korba@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260415112706.1562382-2-przemyslaw.korba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0116.namprd03.prod.outlook.com
 (2603:10b6:303:b7::31) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|MW4PR11MB8267:EE_
X-MS-Office365-Filtering-Correlation-Id: 6651e552-f3ef-4ea9-584c-08deaa36aca2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: bDr61J5soBA6fJGZHCsK1NbtZXSy7e0QVHzEuL3QAc6dnnxxyoBOtMgrc1ZzL3xYLWSbq48kt0yX7uXVNKQcgxLKXAdCbVK6UqyDk5O7O5F2cNzJIznhjPdmk42jQgpvvTdI04fu0xPno4T7q2Cg0UtXj79BIcUKpxskVGt0cQB6Pegz89T/URGEIEWz+cBqQhKn3FSDvFr3FmpkiY84+4qnISpSUfQ3GG5h8PZ9woyb0ibqhUool5U+CAcLsZk4r9x8mIuYP92i+ENp5s3J6KYo5V1juVhZW8M/2wnNWAoB/3f9cU6r1ttbQqTxUuLy6uAVKAKRqybmhdd+SfKqhmGJT1PzelKW0Ke0BVpQ+3H0rZcRhycQmaoVJni7f+DdCHNWFvUiZf4cf9pTz37fD/l9ueOOdQ2kW6ePlGAWO+cMz2xrwpV/r9KRB6L2/vclxv/ODKFx8CV/NkGId3rRIZcJ8/jp7Y3nMwnFbZXjxkdEaVSYq2x5TvTAddjPVZqzngHItARTI7G3IbRtBY9VFs8oCU1ICfZRlW9nI9Ob6pgJ+BFfjNIrHRu+UAOv2mwj3ZuN+puZTp6Dj9FWAt9ql02auoKXN2BHfrSzuvArxV49XkfcBEHLaWNDYRRntDI9B+75XD/etAXwqRLKgCdWakOeS5rCHklrQ1H7kg+VKXZRkIQW8VUtw5JLt9rtYU3v
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3huWklWKzdjd01xSis5Y0VNR2I3TGhjWWlhNFRMcGhxcm5wYnVHWmt4TGhp?=
 =?utf-8?B?K0ZkZS9ZdlZWSWtTOEIydWNBVXcreTVSdlRLZmVuV0lmbDg1Z0dsRFBXWTJU?=
 =?utf-8?B?R0V6TzVFMitlNUpNclBEZC9vQ3VuTVZ5YmdJVWpLdzV3VCtJTEIrbk5iUFdn?=
 =?utf-8?B?ZUpiK3lsU0V1V29lV0FoaytWV25rWCt6YnpqKzQvSWhjN3ZuN0xpMkVCQ0l2?=
 =?utf-8?B?bFF1Z242MitzUUhjMDJPSmNtS3dVOEc2SjN3eW5ET1YwK0RBSWF3RDBucEFT?=
 =?utf-8?B?ZEJFMnB4TnFERVNRVVhnbi9yNkh1OTJsWVppWmx2YmkxMTNGM3IwUEx1NmRi?=
 =?utf-8?B?My9ITmNrc1VBdzVKY3BGd2xVWG9Md0tjQVErbzBxZUoraUZUYXF1Z1d4UHl0?=
 =?utf-8?B?UTBhYVlqZ21Tc05uVjlBSmdQbUYzMHNPYzk4aHlGZDB5NGljTDVldDRVUU1a?=
 =?utf-8?B?UDNpZmsybFRxN2NscnEyTTlLbFcyU2ZrM285T2Fpb2xpaElieTlTWFZhcWh1?=
 =?utf-8?B?dFprTjZBZFJDRDhKOURETnM2aVRFRk54aEFibDZlZEZiZkRRakJzQzJDL0ZG?=
 =?utf-8?B?d3RGcDE3RE1UOERjQTRMQkpzZmY2aUVISWRhODE0N01TcjhHTWUyQ2g3TlpQ?=
 =?utf-8?B?VTQxRzVSVVdOcGNIM0ZhMXdpMi8xZHBRZ1dhV24vMmdYR3oyY0ZSOTlFeElW?=
 =?utf-8?B?dEdoaS9xeDR6akxUeWZ3NmpNOVJoWXBONGhuN29Ra0Jhc25vNWVTNEk4WEZx?=
 =?utf-8?B?ajgrQWZReVg2ZEZ4YTQ4dzIwZm01WkRvL0FNVUZ4Ui81SFNaU011Mld4ZHRT?=
 =?utf-8?B?TFMzSGRodm83cmRJWE9KUFdMRWx4ZThwcDV0V3l5K3lFVUNTeVM1ZHNleWM5?=
 =?utf-8?B?cjdTSWQ4OTh3OGxkMlVxSTB2WFpkVjRDWnVQalZDYUtkanpYa2xSTS9pcW9u?=
 =?utf-8?B?WUtzSWxyZ0RXTlpRNk4raVpmL3VERXpJVEdRbkk0eHRIZFpicFZNbzRweVFh?=
 =?utf-8?B?NW42N3IycUJ4ek1jekw4UzZJaUEvcE1OQXovL3crbzRQN3UyTVRVK3FDMmd1?=
 =?utf-8?B?TlhrSWwxOFc3cnByT2hDcm1tU1VUa2dzblJFWFdnTURtMjJkdk1NRW9WTFBi?=
 =?utf-8?B?L1JZM3l0d3Q0cWFablFkUE12Qmw5NzQ3bXBnNkk2R3FIdXZRTXBIRS9sUC96?=
 =?utf-8?B?Zm9IbithaTdFS3pZZFlibEZyN1d0YjlQUTZOV3JTSTJjL043eUxIdGNjMjBQ?=
 =?utf-8?B?aUovV3o1U3VLU3hPYjkyczBreHc2cE5NdUZ2YlJHU0F3Tmd2SWppb3pub1hS?=
 =?utf-8?B?cjVQaUF2ak9jQUNOcW16Y2NXdnZpZ1V4bEVtSE8ySkVteWl2enV0QVRBNmEw?=
 =?utf-8?B?V2xOZzF1VGhrbzZHRUdTQURuNE1HaVQybHZRcmw2VTBrckZqYXhYcjQxdUtn?=
 =?utf-8?B?aUZQdmpQYzcwWVFBQ0ZPZTBlUXpYR3JCQ1QxTXNZbXo4ZllFQ0c4VVdHWTUv?=
 =?utf-8?B?TE9TM2hVbGlxVG9idUJsTVZvZ2g5Mzg0Skh5aWtYWDg4ODE1aDlwWTVkM2VD?=
 =?utf-8?B?ckN6cGpaVlgrS29tb0RBMVdxem5rQ25WUVdqS1F5anNSRUhRS0twRjVkb3l3?=
 =?utf-8?B?K1doWFRxM2RrZzFiWHd3ckZaQ05xcVhOMjdDbWNROEZ1K2wrc3BQM0FiUncw?=
 =?utf-8?B?SmNDbUpkNFJ1eHUwdURoTTRJQnovT0lIUDhwYStKZGxWRkovU01vTlNJU1E2?=
 =?utf-8?B?WFBBZDhtb3pCMHMxOHRjNE4xWW1YdmFremJLRkJxcEhtcGJBVEtONmh1UlMz?=
 =?utf-8?B?a3BoeEVkWjlzaEp3ckdDOURJZi9QQlg4b3paZ3ZzY2hTY3JndU1USU55UzY0?=
 =?utf-8?B?QzFxZmF2TGQwcE1NUVk3NlBIZmdaVkdjalFISWtDOFV1WE04Z2w1SWlBaFlM?=
 =?utf-8?B?ZjZyVHJPdXFoRG1NbmRUOFM5TkFlbmV2NW4wQWUxMGZFb1h1dTdlWXRSM0Q2?=
 =?utf-8?B?cHVFQ2ZZaGFTaER6eUJrdVJTeEFQSVpZT3RNVkQvUzRDNnU5NVhLc3d0V0l2?=
 =?utf-8?B?cXY3VWxvbjd5OWYyUmsySXlpWUNqbHlXd2ZDY0NCbGVHWlJka0FqRHlMOVlE?=
 =?utf-8?B?YStzT1NTSUd0UDU1M2FmcURHaDZBcE9ValM4N0dRUjFMNmdud3hBSHRmYUxs?=
 =?utf-8?B?T3JLdW54S2xkMDgwMXh0RWE1TWdaaFZrdVNVMEU3M1E0NEg5RmVoQmliR2t1?=
 =?utf-8?B?cU9JZHlqNVBydDJNM0lXTFRJU1hYcm5nOTNPak1iTUpPbnRPNW5pbXJXWjlt?=
 =?utf-8?B?aGNwWTRzbkgvMExWbjNqWVpSQjFhMFUrdkVCZTdnWTByL1AvK0dJZz09?=
X-Exchange-RoutingPolicyChecked: Eq6zaUnDIwLCfQ56dyPPEkby66lsxkhBD7J0h3TOsGlB2l6gM3iNehHr+piZJr4TqSZZiYb//Pv9TC3twOARDNzGwXyh+GmoUPqlWBwTqF6WPkrr9TSguvj0EFymRz/h7QVpadwJamnSOIT4qaxzjTdUa21HsQBDWtwxCy1wrBHxI4mQaSwAbqwcMmkQXS2n7osEf1UvTh24AOjd7Gu+V5WrDDc4eXE/eg6TjJCN6LDn+Wju1ssHRU3PNkbaM9++6pUstL0iVFsNcqIMyCpq50/1HvrnEMKAl9dqTo+nV9h9rQF93BNqtoNFiqEwSKFFA14hB0a5fUNBCAD5V6Blkg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6651e552-f3ef-4ea9-584c-08deaa36aca2
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 23:41:33.6898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GbpBVo7pMkyRqmAGzRUHohuzSE2tLTAolub0Db6yznGiJqMnBCqMcRIh7ecJydUR3ZIk2i4proM/YU1jchYM1lv4GKrRPG/S6XomHHiWTfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8267
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777938102; x=1809474102;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pF1pog98pgFYdynWaI0bcuLySctTpv5GSZRFlYLCoRE=;
 b=fangWAu85kbizaJMsUI1JZoiTYSdyC6WwME5luWZqriw1GdZjqO7M4g9
 Zj/in3xTqELGQUGrIsT6rWWLHk9WQHdU5QPMyB/CidGVhtnLwuxYBUQ8V
 MRo1Q+ZiGalQTPDkGuFEKpctveMOTChhiTa18mZSakXjUJi16rJh+uPTD
 A/SeSFrFr4HBsAj8NtIRqCPVf/C/AZFZStYMQu6Tu9F1UywJFPSU2Rhuk
 DDFC0hrQnr2/VZEbH+lB7XMpf5yZOwXvfpb+5/xL4VGlReDbuXWHaRDbU
 Z32bfQSRLZxn8TqC0oqqG3j3Al8ZkYdNvG1Psd+LEuTUKgOA5j/ygaret
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fangWAu8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add SBQ posted writes
 with non-posted support for CGU
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
X-Rspamd-Queue-Id: 94E1A4C4EBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,msg.data:url,osuosl.org:dkim]

On 4/15/2026 4:27 AM, Przemyslaw Korba wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Sideband queue (SBQ) is a HW queue with very short completion time. All
> SBQ writes were posted by default, which means that the driver did not
> have to wait for completion from the neighbor device, because there was
> none. This introduced unnecessary delays, where only those delays were
> "ensuring" that the command is "completed" and this was a potential race
> condition.
> 
> Add the possibility to perform non-posted writes where it's necessary to
> wait for completion, instead of relying on fake completion from the FW,
> where only the delays are guarding the writes.
> 
> Flush the SBQ by reading address 0 from the PHY 0 before issuing SYNC
> command to ensure that writes to all PHYs were completed and skip SBQ
> message completion if it's posted.
> 
> To analyze if delays are gone, look for and compare time spent in
> ice_sq_send_cmd — posted writes should return immediately after the wr32.
> That can be done for example by adjusting phc time with phc_ctl on E830
> device, for less than 2 seconds to use this new mechanism. Without it,
> command below will fail.
> 
> Reproduction steps:
> phc_ctl eth13 adj 1
> phc_ctl[4478170.994]: adjusted clock by 1.000000 seconds
> 
> Check trace for timing for comparisions:
> echo ice_sbq_send_cmd > /sys/kernel/debug/tracing/set_ftrace_filter
> echo function_graph > /sys/kernel/debug/tracing/current_tracer
> cat /sys/kernel/debug/tracing/trace
> 
> Tested on:
>   - Intel E830 NIC (FW version 1.00)
>   - Kernel 6.19.0+
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---

This doesn't appear to apply clean to the tip of Intel Wired LAN
dev-queue, nor to net-next/main...

>  drivers/net/ethernet/intel/ice/ice_common.c  | 18 ++++--
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 64 ++++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |  5 +-
>  3 files changed, 53 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index f84990996530..2cd3d6d450a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1777,23 +1777,29 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
>  	msg.msg_addr_low = cpu_to_le16(in->msg_addr_low);
>  	msg.msg_addr_high = cpu_to_le32(in->msg_addr_high);
>  
> -	if (in->opcode)
> +	switch (in->opcode) {
> +	case ice_sbq_msg_wr_p:
> +	case ice_sbq_msg_wr_np:
>  		msg.data = cpu_to_le32(in->data);
> -	else
> +		break;
> +	case ice_sbq_msg_rd:
>  		/* data read comes back in completion, so shorten the struct by
>  		 * sizeof(msg.data)
>  		 */
>  		msg_len -= sizeof(msg.data);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
>  
> -	if (in->opcode == ice_sbq_msg_wr)
> -		cd.posted = 1;

It looks like this code in the upstream version doesn't have the cd
structure on this function.

> +	cd.posted = in->opcode == ice_sbq_msg_wr_p;
> 

It looks like this is based on top of "ice: fix posted write support for
sideband queue operations"? That was dropped from the queue because of
our discussion that you would re-submit a fixed version.

Since that didn't get applied, this won't apply clean either. Do you
still want the part that fixes E830 to go to net? Or do you just want to
implement posted writes all together in one patch?

Either way, could you please re-submit the work either as 2 patches or
as a single combined patch?

Thanks,
Jake

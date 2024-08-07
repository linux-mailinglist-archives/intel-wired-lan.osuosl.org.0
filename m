Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D56A94A955
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 16:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEC61405B6;
	Wed,  7 Aug 2024 14:04:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KeRu0hVSuOyw; Wed,  7 Aug 2024 14:04:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EDF6405C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723039481;
	bh=/maeXMjAZjaXwkdgZNHi/xJb/ZSAalrab4RuVi2ciCY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hTSOmN+U43f/TA15vQBWy/jfYup9OJAIcR4TeubV9eoT6uIVd8GIJ7/eNCRfSyAlb
	 7eiQIEThkHfDygWmimc4T+3Ykgf1jsGkp1YjR7Nq1Wls8zGv0pBKFQoO8RkmQps2tB
	 QhOHym7PBHqJsmTjbvl0PT9f19WA5OxqP1C3eV0PFqF4xPJ4QouIoVr9mJgm0fbKF1
	 a8U/IjF3c9P6Y6jqIxPRBk96XbIWJHaVYGGbUAlewCsob5XKpM2UW3c0nFi2syACvE
	 2hxdtuiR3j+ZtJNpQf5oEFjOueAsDnL3m6VvN6hSiIXukkN3s5/JpG1kMHoD6LHWfe
	 X/HeNoN4xFcKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EDF6405C8;
	Wed,  7 Aug 2024 14:04:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A25A1BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 14:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 060EE40273
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 14:04:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aftvJcQRNJEe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 14:04:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 740D940184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 740D940184
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 740D940184
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 14:04:37 +0000 (UTC)
X-CSE-ConnectionGUID: kBr1AmE7QrCWWxqbfBgQ/w==
X-CSE-MsgGUID: ZfKNRFofQyiF5yghIh5VAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21252919"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="21252919"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:04:37 -0700
X-CSE-ConnectionGUID: yEQylhSuQsqpf1R0D/VJIQ==
X-CSE-MsgGUID: gp/Kc92MSSCWD2GJCRU51Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="56721680"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 07:04:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 07:04:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 07:04:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 07:04:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKwfiIm5M11gkndgQxh2EWiWoyxmMNUNXJEZQ7/91TzCYrpf1RtDmzCNv3pU3/I+L6kAc6ZkkInbmxeXsiHs/zXmIyMqSlLe3ShjqZFg54nDDHSgDOcYaJaCvtBM7DPYojktgykTh5t4hVrVx9CYAk7bI9DE38vZ1KWvU6jd6lvH2iz6FWLL7H52ERkl2HPD3ecxPi6Y3EsScsNAtPjZF17qJJONCRkzb41UfUqAtQHC9GdwVS5gnYHtHCN2Q08JX6SbGHxFvjchPfX4G2pBmOHj2PNiJbhzCR2dsXulsFP9f7W4kbLahJml245J0zLU3oq3M7G9GpSXCSI8CN4Q4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/maeXMjAZjaXwkdgZNHi/xJb/ZSAalrab4RuVi2ciCY=;
 b=Z4hDU5fu7LO/NyYcYbhTeheQHtwGvQBKoPBgm/n6XzbZVPDRAfVOpTZjXDVta0dZU5yrFkMIGkdqz2u0kH7lxcr6k2+4IdEeRQW6KkwIHyN5tbpJdyxKKwdyB/PM4fHR+ojP+0NzQAvWMAVOZ4hfa0TBg0qgJBd5xwFl3LGcw90orcTqaa+hlV8xLEq/XwsHaEHql0O9T2euqj6QXPOmU1rP8VnWgLy5l5QkXlLXt8/AGddHE5FN8J/xNtCr9PpKno1hkJd6CdR5VE9IS3FieUlQ4qXa6upfHp27GfmudLSdPYyZ1W6M2fUzmvf/FNbOAtubV5x+H095xKZagnOIaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS0PR11MB7768.namprd11.prod.outlook.com (2603:10b6:8:138::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Wed, 7 Aug
 2024 14:04:30 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 14:04:30 +0000
Message-ID: <4bea2987-e399-4579-90b3-58260297feb5@intel.com>
Date: Wed, 7 Aug 2024 16:04:24 +0200
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>
References: <20240803182548.2932270-1-manojvishy@google.com>
 <20240805182159.3547482-1-manojvishy@google.com>
 <04affbd5-828a-4327-8b84-8767c1c139f1@intel.com>
 <CA+M8utN7FbwMF5QN8O0a0Qnd3ykQwq7O4QkHMVEaBj2jE9BEYw@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <CA+M8utN7FbwMF5QN8O0a0Qnd3ykQwq7O4QkHMVEaBj2jE9BEYw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0132.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS0PR11MB7768:EE_
X-MS-Office365-Filtering-Correlation-Id: 7832b82e-bb84-489a-74f1-08dcb6e9db43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c1NRSXBXdjhwYkJ3Q25mV2Fkald6dHdUaTNUU1FUY2VGZXM3OFBULzk3Z1Fx?=
 =?utf-8?B?MTNQT0h4TEFJNWpEcUpPZnhMZWpiUmlpUzV1dXovUGJXeFQyaXFsTnVwOERF?=
 =?utf-8?B?UCtKd1hpUXhMQ1Ztd1Z4czl4MkYzMzVzYmJyeTJPWHExUFl1T2V4Mk5wQjVw?=
 =?utf-8?B?MnFTOVBockZmbXRpcWJEaVhua0xNdjFqNUM0SnNCQTdoby8rZmQ5QkF5cDcy?=
 =?utf-8?B?YXpVREV6NDRUV2s2L0lieXlBNVhDSXRhaXB2VFFuYm42WHlaOVZ0dkp0N3lK?=
 =?utf-8?B?bFlTa0ttcnJrT1pma3d6S1NVc29wRERBRThWbnNZOEJXWTQ0YzFQRjNMc1dr?=
 =?utf-8?B?dXhTUDlwTEQvaVFPNHIyNjRid3ROa3ZVZGdmWjV6ZWU5bjU0alBuRy9LRXhl?=
 =?utf-8?B?clMyR1IxZVI4UkNKNzNSRDJtb0ZWa25TajFTQ1ZyUitpQXJNOWRsQll4bEVy?=
 =?utf-8?B?RWYySWxhTHRPQUYzdGh2SXF6MUMrdSs3eGJFWEwxV1BJWi9ZVStvb0RyYXFW?=
 =?utf-8?B?akNBU0xKcCtEd3BVT1F5UFNxZVNaVHdNVHNhNTcxYnZ6U3FZOHlYd1JLMDFl?=
 =?utf-8?B?ZHBkKzFEdjZFOXhlUWJpVTRDYzJDdWV1L3QwUmlUSDZySk0zZ0ltcjVUaTJa?=
 =?utf-8?B?MC9odndmNGlCTHl0d0dBK3RLM1hNYjNiNHVOaUIzUjJYZlBoRGNrcXZFZDRm?=
 =?utf-8?B?dW9mOElYOVM2K09wSGE4NEl6ZVNnS2Mva0pYVk5UVmhzTUJRVG8rak5adU9G?=
 =?utf-8?B?NFFtZTd5UHNzYUtCclVMaHB6TE5QckRkbW5WcnF1V2NLeGRBZ21wcVRXVHNV?=
 =?utf-8?B?MEdqYTZhV3crZVZJYXdKai8zLy9qbHd4MzVMQlQ2SmxKelo5TVJDRW1Ddm9S?=
 =?utf-8?B?dmpydDZYWmlIaEk2c0psbnpES2JmczM0b2IxT0ZjNEhYZmhIN2hSdFY3MUlv?=
 =?utf-8?B?Vlh5d0RVczlvbURBYlF3L1grVkhmci8yTzlkT1hoeGNSaXNnZGxwTEdxb1FO?=
 =?utf-8?B?a1lSbGZRODR6RlhjWkQyY1RHMStxTVd5WTZFeE5RMmo5SEhSVkhGdjhpZDFW?=
 =?utf-8?B?enFZYmVnb2hoWFcwWEJtd3RmcDN2MWh0anQ1eWlTM2FXSjNTZHg5WUorOU5X?=
 =?utf-8?B?VE1yTXBUY2pMU25TL2lOUXljYW1KanI5dVBBWVRTTHVjb3g1bk11MkIvR3Fw?=
 =?utf-8?B?aWFBY3ZVVy9RVDZ5WklseXBJZ1lneU9UUnozaERTR3hzSjQrZVhpZEFKd21y?=
 =?utf-8?B?OHV4TGZTbmttYy9nZmFOZ0tUOTYzN09sTkNJMlc4MWxKalgvNG1qSnFRSWl2?=
 =?utf-8?B?WFgyaklSSUlINjV1MDJkeThGRjJreHVpN0pDNENaRTFWYnhHSGdrU054TjBV?=
 =?utf-8?B?L2NieGR5Y1ZPUXFXWDkyOXF4eXVrbFpLZUZHSUlwRFdDbEsrc1plUTRJd1hK?=
 =?utf-8?B?MFhhbTZoS0wvcjVVVVEvaVZXUjFZY0QvT21TZ0w3SFdNOFA1WUhyeWtmVnox?=
 =?utf-8?B?c2p2bW9iVUM3MTI2dHhHM2loL0hDdTNxbWZ3V2ZPTFBsY1dicURyaisxbmp2?=
 =?utf-8?B?YXNucmRVNWx5RWNObWpzcjJ4U3lNSlJ2a1FmOWdURUZNM2NlQ2MrS0RRb2hD?=
 =?utf-8?B?OUFLdlRDVDYwdHgrWGdnU2E5Wm00OXJJVUkrZVFDVGJkNFMrL1kvN3ZvVFhT?=
 =?utf-8?B?cFIvQmdKdU81WWFaZk5FdWFnTU1DNzNkSEFGdUZEVVYrVEc5RlE4N2ZjYTlB?=
 =?utf-8?Q?18m51r4geV4bEh1sRA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjNCR0pWd2VTZGUrTWF3Mk1mNGliYVRqZURhVWpFWk5TdHhPL09JQkN1QmQr?=
 =?utf-8?B?Q1M2aVQ0QnRGaWZ0eEJ4WHVLSEZ5UWVVTVd2MHhnQ1hPZ2piNGIvR3dNNUk0?=
 =?utf-8?B?UXdqb25vZzJ2aGdQaXpKY09Rdnd1amRjWDUydUhDdURyQm9Xbzk1Y2FUUFF1?=
 =?utf-8?B?T3lLK0VFR2hBZWN6ZXQ4OVJXeFZ2am51RFhJUTNsZDhqc0FLNlpaSVpzVTND?=
 =?utf-8?B?ayt2Y0pkU0h0dElEQThuNDRUbjR2ajdLMmpieU0yN0o1b1hudFB3QUFsRUlt?=
 =?utf-8?B?SExZUnNZa2Nvenh5ZHhwSkxlS1gyMC9RZkJ1OXZDSStLWkZzemNUQUVrNWpz?=
 =?utf-8?B?ckR3c21iY0FFMnVST01aZysyMFk3QUVEMnZ6NlNUNkZ1ZzZhdk1CK2o0dHJn?=
 =?utf-8?B?dE9IS3BMMmc4NFRoV2dNK0hzYmI3dW9RVUJvbG0zZnRGbHpYTmNVVWhCNlh1?=
 =?utf-8?B?bkhkN0JYaXV1ekJjdGVJRlA0WEdYS0tHWHJCYm1UVTRmekR1VE8zNTdEMHJm?=
 =?utf-8?B?K01xazk4cXdnZC94cG9yYWJzM3FobVltc2s2cVJZUEtGNjhaR3RHdG5lS2FE?=
 =?utf-8?B?YnNYbm5tQUxyVHlNSkpHaWROZ1JlWmY4NjR3dXF0cDgzcVd3RlZWVi9Ea1gr?=
 =?utf-8?B?MS82WGYwdEx0bTFTUUg1Q1dzTzkyUTdyMFNNZU9NUkZVQXFSeTZTTzZFWDNV?=
 =?utf-8?B?V3lMbVNGT0hheXg4OWJrWW1yS0YwSEQ4bVFTcTdvUWg3OCtOR0dNbTAybnF0?=
 =?utf-8?B?ZHRqMUV6Q2UrSWI1elRuOHVYa3p1OGlYcVVscTJVWEtsS2czRVBTM1QvTEha?=
 =?utf-8?B?UHlXd3JTZ0RZbnMzTlNLWXhncWRjN09xSTZWcXcwaXNOY0x4MEJYTkJpdTNE?=
 =?utf-8?B?UlpHaE9CNW04cUsveXhjNk95TjJCVTl5U2V3ZGY2SzFCVXlweFo3OTMzOUQ0?=
 =?utf-8?B?Q3dnQVZWNVN5K2UyZXNBTFN4U0p3eDVZc1FvMEZLMU8rMlNHODMzc0RVbUJH?=
 =?utf-8?B?WUVHVURZL2pDUExkYmQzSXVaUWRIbG9pWkwxQ2dDNXgyOXRXTHVjNldzN1hj?=
 =?utf-8?B?NGhucjdJQkdCZmliUy9hcUlnTkJJd1NNRWZpWjZJZHVNZkxnSHBMYWFCTnpS?=
 =?utf-8?B?YjBSb2F0M0FSVnJ1Vi90K2RhTzNtVWxnM0FGQ2FnWGM1NW1NUko5dlljaWxO?=
 =?utf-8?B?ZHRaaTdsdHRVSjhSOVcxazExajZQdHppQTRLTmJReDNNZFp1RkRkNzBTR1E0?=
 =?utf-8?B?NTRsRkhCY0pyT1hISlZ0dWJhVEtpRGhHYVU5bnV5MHk4NEJCZ2wzbzBLc2tm?=
 =?utf-8?B?dVl4MU9ZM0YrWGtHYlRxa2M4SmNXUURqYkg4azF2THVlWXJUZWhwY3lnRXd1?=
 =?utf-8?B?bzY1dnRRVmVLU1dZR0hNYkpxV1huT001OWlhd295MnowQjRKeDlFR3FUdG54?=
 =?utf-8?B?VnZ6V0xSZWRUT0dFRFNCazFPRXpzSFc4TzExenJtY2plcWxEMFhRQWgrME1Z?=
 =?utf-8?B?RHhvc2pqQ09rOGxXc0hrYnlXYWZ2c1BIYTNSbUtMNjg4anN4RXhZdnh1czJC?=
 =?utf-8?B?MFh0QzFjZXlta2ZsSFk2THVLeGdvTTJpNnhuZnRyOWkybWxmalpDUFJ2amxm?=
 =?utf-8?B?akdWQjAyaGt2eTMrbXNuWG5EaktGTTBjTlp6aW52bTZaUWFQRmRJVm9uc1pS?=
 =?utf-8?B?dW1id0lENU9OcENwbi9LMDlDai9FWllCVVZvdFdDeDhzZ3dzbElkZk9qMEVY?=
 =?utf-8?B?Rnp1aDRzSlUxL3d3aENzOU12a0JMbHBwc0hmZDVxUjh2WEZWRDB6dGY0YXMx?=
 =?utf-8?B?N2k2Z1lEem1pVlFBQU5laVYxeXpzamxDNUNta0tMVFNESnBqN01kVE9VcDdv?=
 =?utf-8?B?Ryt5MEExUFpJT2l6OEpNeE5ocnlzOGFnU1JSUmd5Q2xINk5RL2N1c3lMcWtD?=
 =?utf-8?B?ZCtIU0E1eFJlSWVZdDhmbFUwajRZSmNtWHhvdTV1cXJIRkpEbFBXUWthR1hw?=
 =?utf-8?B?cW5IOGVMRnZLaXhJWTdpTUFyWmF5NmRzRFZkd2FHVGc2VmgycTA0eGVMSkhP?=
 =?utf-8?B?aDFrUGllWjNaMUxCRXNLeFI3eS9YMFc4VjBTd0htZE1GdDVqZDhtWVRIZDB2?=
 =?utf-8?B?YUdVK2Y4TlJWVkl1VUpCVGozMldIZUtBbEVrTGdPMll5aEtLLzRwdDVQMElH?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7832b82e-bb84-489a-74f1-08dcb6e9db43
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 14:04:30.3603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sauO/vhdC1+qpsz08Z1ZTNPblXWBUj+5TDdJnNzn8ng3zBVXNJCmVfl9gBsA6aj0AJOMFpzj9QL7a4jsv9N0UDFHv5GiAgDgVlIUunNvWnI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723039478; x=1754575478;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ovRfWX7u1JV8xw/t1dxyErEOk+ScEafQ8E+vadXHXcU=;
 b=DVg7HKcxHh7t2viaXT8vLcLSnUVHG08fQ9hxaV8QgWirpmzfqbJKMpJt
 sSPt/0EE53zGll8Jyu9vTat9jDNR+55V+IpamEykcCjiGUkxkwd9s9TTA
 KqfclDiE914zklDuBQVrwy9o24fw6E4UKOX9IqbqXTZAerxVN+Ny9efe3
 dQHEMPoiJQwbv8wpE6XyULtmilCikJJoDXK3EkUZiIXS77eFuxNHTHDf/
 yW3/PwOYqtvE4ayMg0knq8nYHNIlm4OrXrPYFkUdCnDeEtnaEr7ixyPnH
 YtRSLbxlSylPNS9fvEpeFVnfGBXOm7DbutSejNqJaohcCsnzmqpmkOwPl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DVg7HKcx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-net] idpf: Acquire the
 lock before accessing the xn->salt
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
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Manoj Vishwanathan <manojvishy@google.com>
Date: Wed, 7 Aug 2024 06:58:59 -0700

> Thanks Przemek & Olek for your quick feedback and responses.
> Hi Olek,
> I can add more details about the issue we faced in the commit message.
> The bug we had here was a virtchnl delay leading to the xn->salt
> mismatch. This could be due to several factors including default CPU
> bounded kworker workqueue for virtchnl message processing being

That's why I always tell people to stop creating more and more private
workqueues and just use the system ones, there's a whole collection for
every need...

> starved by aggressive userspace load causing the virtchnl to be
> delayed. While debugging this issue, this locking order  appeared like
> a potential issue, hence the change was made.
> But, this change is more a clean up we felt based on concurrent access
> to the virtchnl transaction struct and does not fix the issue. This is
> more of the patch to do the right thing before we access the "xn".
> I wanted to start with a first patch to the community for acceptance
> followed by a series of other patches that are general clean up or
> improvements to IDPF in general. Will follow with with [PATCH v3]

Maybe you'd prepare a full series then right away?

I hope it won't conflict much with my tree (but you always can
double-check[0]) (Chapter II is already posted here on IWL and netdev@)

> 
> Thanks,
> Manoj
> 
> On Wed, Aug 7, 2024 at 4:05 AM Alexander Lobakin
> <aleksander.lobakin@intel.com> wrote:
>>
>> From: Manoj Vishwanathan <manojvishy@google.com>
>> Date: Mon,  5 Aug 2024 18:21:59 +0000
>>
>>> The transaction salt was being accessed before acquiring the
>>> idpf_vc_xn_lock when idpf has to forward the virtchnl reply.
>>
>> You need to explain in details here what issue you have faced due to
>> that, how to reproduce it and how this fix does help.
>> Otherwise, it's impossible to suggest what is happening and how to test
>> whether the fix is correct.
>>
>>>
>>> Fixes: 34c21fa894a1a (“idpf: implement virtchnl transaction manager”)
>>> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
>>> ---
>>>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> index 70986e12da28..30eec674d594 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> @@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>>>               return -EINVAL;
>>>       }
>>>       xn = &adapter->vcxn_mngr->ring[xn_idx];
>>> +     idpf_vc_xn_lock(xn);
>>>       salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>>
>> The lock can be taken here after the FIELD_GET(), not before, to reduce
>> the critical/locked section execution time.
>>
>>>       if (xn->salt != salt) {
>>>               dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
>>>                                   xn->salt, salt);
>>> +             idpf_vc_xn_unlock(xn);
>>>               return -EINVAL;
>>>       }
>>>
>>> -     idpf_vc_xn_lock(xn);
>>>       switch (xn->state) {
>>>       case IDPF_VC_XN_WAITING:
>>>               /* success */
>>
>> Thanks,
>> Olek

[0] https://github.com/alobakin/linux/commits/idpf-libie-new

Thanks,
Olek

 


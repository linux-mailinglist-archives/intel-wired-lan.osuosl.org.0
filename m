Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DaWFcs1zGmXRQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 22:59:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90C3714FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 22:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E033E80C06;
	Tue, 31 Mar 2026 20:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQAxz4FEoB_J; Tue, 31 Mar 2026 20:59:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EB7B80B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774990792;
	bh=EJkytKdj3xO2CoFB9s7uX007H//WA36iG8SaZUw68OM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BZZooYhk6wTSWkA0IwlT78pouM4v+nPqBSO59WYjnTW0L1/+iZghXmmBlAybHjJIo
	 f4Pxzms97lylkcyWmwXwj3YLHCIFgMInuGDYaYzlVOH6yWMbrL6el+DNFU0aDKo9KH
	 vtVQyQt/rBu4B0pNrFerAlkxQuP8sodC87nbObrZ/S5/m13MGu9TB7HUzBq2jsue5G
	 dfQM7qPZnpUfOIQ75DB8M063LOBwViyvTnVJZ52uhOaQCQUYf/XxJq/uSJ0vIANRtK
	 T2vE1axAdhDx3Y76VKku1b5ASGLh+tPEaM6kiydN5xsj7yDgloY8bmTVuqbG+RRkRO
	 mBgGZNSYTYDlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EB7B80B25;
	Tue, 31 Mar 2026 20:59:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 81F1625F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 20:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 683B740F56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 20:59:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mk6BT1DndAAa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 20:59:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75A9C40F6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75A9C40F6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75A9C40F6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 20:59:49 +0000 (UTC)
X-CSE-ConnectionGUID: LgJnTVfdQl6mWiPSAFKtag==
X-CSE-MsgGUID: obRReuqbRrOfyGQMEnO2sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86320525"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86320525"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 13:59:48 -0700
X-CSE-ConnectionGUID: 4ycotK+ESXapKBoDARsMmA==
X-CSE-MsgGUID: wr8iNMG3Q7exJLSNV1M/8w==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 13:59:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 13:59:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 13:59:48 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 13:59:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O2TXd1x+t+F5FWI72jEDswPvi+/r3ObIXH6Dd7iMPu+chZVaQn/Sf5o8usQrimLSlA0tqjoera9kXjV7UzydAc8lnA9J441fGUuW3XWh93LuEEGjlEplQL70dyTzIiuWnLzRjeHRLSVnGBAh+pFjuPLk6heZsHWwE0oaEBK6AqwYUYfhwShrEFepx+jPrttGWxkTDvIy1Z1nQdMrE4qSf7s168OgfARXgcauXCt4+8bivvXilNgKFb4X/+pDc7owcWCaYJBFSWrhpPiok5trvrJer6CgS+DobaffaeuqWlyPqoU0/U/RmKWXHGJF7E8bTKS/r3HfWk2sc+cdssNu+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EJkytKdj3xO2CoFB9s7uX007H//WA36iG8SaZUw68OM=;
 b=L4ZOe1cfm0/H7u2Nj9vUNo4NTrj+cKwSQ5gIhsk5m0+2FxOAfxUWudx3HN4HI+SQ3kKz3KgvyIV3fUZcg9UyHxQm8Hone3zLocU05HTm90t1smpaXAQV6IRYkGVPN7XFyRX5oJWy4L7WXZmjaMAEp9GnhhMYWaTa8ZvgNKKKTEbPF4hNbz/eVrzUvOw0uj/k4Owp3+bRbUc34AOsBpqlMOxLwN5ORRhazWkOT4BQxOp/9Yz1QtVUF4vsm21Ak511zSDw5HfYbkpSaqknjS96pFs9UZtams6dKfZh/sfCELeTf9OK2sglKjgRMAL1sJ7Pwe2hbuCwRKidj8RMLT6AIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by CH2PR11MB8779.namprd11.prod.outlook.com (2603:10b6:610:285::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 20:59:39 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 20:59:39 +0000
Message-ID: <be397b6a-eb45-4709-b1ae-2eb831441945@intel.com>
Date: Tue, 31 Mar 2026 13:59:37 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Paul Greenwalt <paul.greenwalt@intel.com>,
 "Simon Horman" <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
References: <20260324153542.674859-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260324153542.674859-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0367.namprd04.prod.outlook.com
 (2603:10b6:303:81::12) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|CH2PR11MB8779:EE_
X-MS-Office365-Filtering-Correlation-Id: af7578e3-cde7-4f88-2475-08de8f686c73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: TNI+YOhiyJ32lApvQL8r30E5jf36FhFp1RwGJ/b7fGgF34E1mw4CQcmpil+pulRe629EiClcPWPgtmQ1i3vs196bUpqC8VkzsXHqB2jKKW2JjwKNKiDcNtfKhLnTACzp1XEuJ4YcPdc2Nd/1GrBW6EGEfaWhyPY9HIrd5NZnJbFfUf06xisSjfCJfr+Db5D4USmLWU9kAq71KEo+95CPuRnR5EltSInPieeA7nR+UP6ya+hR9oi5CqzmWFtuJzztHrnTVGAJPMlh6PCXT41cZu6PM1YAfvpNJ1wHljSwlEOajdLoNeo4Y/cm0O07Ya8NOCIM2b12jCQCvxMhH9wz3CwyqqIIEbxpu9Mc+VfUYfwF/4pyyaXz95zAGooT5whgjdQGadRuVW+5e2IGIBztIJLv+947ayAMXISokYd/DDhff3wT1VREt6vT7B7BsVUBY/Y7Ex4RQEURlrgM2TrRHtS4uG5nSLKPDP9EmCRjNCDNmlTq8lNH8Crkd24TnpXygcPSSbkKK0zZ3Gj9YoVG/MLI7Vwf7mblmHNCbZ+pY6TPPIg3dpFSQ5EoCnCJ7Gf6LunpQ7hEVsGn1Mujdx3JUwsSmF7mr7MKP2M1CyXFK9Ot63+EIvmKZmAYwF3LcHpDOOy2Vskhi2SlRP+MX5kaX+c0P5o+2iwBNWkKoLepESWW1OdJoH8dxsh9ocdZ2hucMMyTvnK1B9kEcq/XqS28pi0dIKqn1w0CuNmxrMPwZi4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1FnRFAvVzludyszRGQxenAwMzFUVzkwWUtvVzNIaC9Wak5EY0krUUxqUGhy?=
 =?utf-8?B?c2Vrb0hhejkvZXJwcXYyWUJDSS9yRHlkZDUwQ2pya0lRTWFibldTTHpUQWZn?=
 =?utf-8?B?eC8yY0hPd2VGK0t0WGd4dmxnWG84Z2NhRVg1NDFmOXNsV3ZMaGxpcEpoUU9r?=
 =?utf-8?B?aWpoZUVXdmREc1lBUFFLVG1NSkRBQmlsZHhHbXk2clVFWWt6MEVJaTdCdXhs?=
 =?utf-8?B?SFJ1cHQ3eXRTWXBqakE5YU9FWlhuOGc3bTl4cmpzQVZadG1SbUR1cUx1ZEVO?=
 =?utf-8?B?dHhXeEpZSUQzOWQvL3dSMk1LMmxEUHlKbGdabHk3a054U1VOcGU4ZmxiV0s5?=
 =?utf-8?B?VWtHVllQSGhqalM2YVFSbDdTNXl6enRvc3RtSFhMZE5sRkJ0dHBGbDVNRjVk?=
 =?utf-8?B?c09WNjFvaDBmQSs4NU1qRm9IUXdCRlE5RWYzSHZ5MGVwYlBkVzNjM0JERjF4?=
 =?utf-8?B?ZWhHbW1lTExRSW5aZlFTclRhMDI0MmFubXR4dExucWVmNFhXb2NHdFBaN05G?=
 =?utf-8?B?dFV0bXkvUXUyRlNGTE1LTVhDbnRMYjF1bFBwMDVXYlFFb0dFWDBHOFB0Y0Vn?=
 =?utf-8?B?djZadm1xU3pMMVhPZHp6ZHp6VDJtbXg1ZzJRdWdESHZocDVmVXFTZy8xRjRI?=
 =?utf-8?B?b0tNc3pZN3paRXM5OUc3aklxd0NCY0VITXhMa2pkQ1NsNjRsUzAzY3o3R3hy?=
 =?utf-8?B?aXBwbTFaNWZVRlNZVVJpYjNRTHAwWXYyK1duc3o5OUNCcXhDSkI2Q1lROFZz?=
 =?utf-8?B?ekZkOE14U0FsY0VOT3VSRjlCUGRHYk9kZElGei9kK0daY1hEVjd2M3NPOThD?=
 =?utf-8?B?cjgvQ1F0R0RCK2xIYWE2RlM1OHhnTkUrT0xvR3NHZktxVVZ0eVZFcEpLOFpl?=
 =?utf-8?B?NkFCMWhTVE1GdlpRaUZMK005OFc2OFl3OFZ6dXFXM2RWTTh4SWhMem4rTnRJ?=
 =?utf-8?B?U3lyNVh4THR6UmNoM0g0Yk9MazlwdXd4dXNwV2JtVmxqcEE4QlJRY1haeXoz?=
 =?utf-8?B?L0pzVXVLU2VSeUtIdHArOWY3bG0rdmZPaUpTNUQ1bHFBWWczTjNWb3NXaEQv?=
 =?utf-8?B?TFo4WklIbUJFWldRY2VRQXhtQUJCK3NhTU04SzFwQ0pxN2x0Q05LT1hqdDlS?=
 =?utf-8?B?Zks4akI2L3JuZXk3bVg1Tis2dWlUMWVaemxXK2xqSHBTUXlRLzZQK0dDc2tU?=
 =?utf-8?B?Z1NOUUJrZTZrc3VaTkh6K3Robm95bHEzK1BsdHBUZkVwYVcvTkt1cytQcHFj?=
 =?utf-8?B?ZHUxbktWaEpyUHN5M3BWcStLbEU0TXhqeWd0dkVYS29uRUN1ajdBR3ZBdFh0?=
 =?utf-8?B?cGU2S1I0RXJySmxLN2FObE9lcWhKZWlhb0dlamVNelQ4VG95Y2xHNXNCNU82?=
 =?utf-8?B?dnJiYkpWSnhJM0dVaTJBV3hXeEx0cTA4M0RzbElMcnFFc3pvankxcm1XVzBT?=
 =?utf-8?B?b0hXY01XMmRVdnI2WCtpdG5GRUFtRW1XdXlRUFQrVnhENHZIbVA5ZWxSS211?=
 =?utf-8?B?d2FlSjlENTVqWTFsWlpEOWdBdkFhV3EzYm9VVWZDcitnV2d6c2ZpRlN6UFBj?=
 =?utf-8?B?WlIzdDc3bStkRWw2YkpIL00wMTVMR1VUWnlUWTVLdjBlTGFPUG1OOTZqYmIv?=
 =?utf-8?B?ODFIT1kxWVRmS2QxSTMwSTMwYnpYeEowWThSNUtSS2JzWjdQYk1MUFRTL3p1?=
 =?utf-8?B?d2lFOWw5WXJrOGVtbVRnN3pqbkkzcGtmV1p1VVdIK1h1WVhIWVdRQUdGZjlZ?=
 =?utf-8?B?eE9LcXRDb0xrYW9LRnh1UEZLL3Z3K21NTkRrYksrSExFbUJXU2toS0tNa3FF?=
 =?utf-8?B?MUlvWDNTSUFhc29ZWVFVdWkrMFhpQ1lURWl2M1BnbVJrQTZLenBYRFFpanZJ?=
 =?utf-8?B?SCsrL0xvNkxyQVYyMHlHRzJTMUJXbEptMkdTY0xtMVdCbnFCN09ta0xQbTZm?=
 =?utf-8?B?ZC80ZUVNaVJHZGlqR3lLU3lVVWZaempzZ3EyVHlkWDFSdmRyMHJ1MFRiNjA3?=
 =?utf-8?B?bUNmU0tZUWVmV0hmaXF5UHJPYW1KWng5MEVLL3piQmlLSjRDQmZuZW1TTFZx?=
 =?utf-8?B?SldmbVVUZ1VETVdsVXpiTktMUTZ6T3lGWEQxRllwM2FCZ3JFOFQ3UHhCTTNk?=
 =?utf-8?B?b3g4Si9rLzl6b2J1d0NacXhYWGFEQjFGYTduRDN5UVdBcnE3YUhvMmNTMi92?=
 =?utf-8?B?cmNGU0tBcEZIV0Q4c1pUNEY5TUF6QzU1RWpIRXJTNFF2S09sUTZHbWZMOG43?=
 =?utf-8?B?ak11elQ3RHhIeDZMRjVKYnJPcVZidTNteGd0V3ZFR2VmVW9wOWhseXJrT1N6?=
 =?utf-8?B?dUd1NElmRUJnNVRlWmJBT2NjaE4rMkdZWi8zK0gyQnNHOFlCUU5pVHJhNDlw?=
 =?utf-8?Q?QfGBswyEwQbEv61k=3D?=
X-Exchange-RoutingPolicyChecked: rrEyLBknGtsVOLjCnMcXS1jAIaWk7RROWUvOEjZRCTMjMlFM0Tgllz7mgkYP5nuu+WYDlIOiq74Umf7ctQeO/QksWwv8fEk/DeGm9UgZMLRh79EeCt3LzYqu2R5uAyvHx1kaH3f5cBGFiWM5Y/9GfW8wxfHJYyffaFwat8/ji71Ar08ZIsYfELNuBjiL/DliuJiJs8UYEJ8zM1N+xp2JG0GFr+lOa+SnIc7qwg0lKvT/D4nLXiGTrtWyVuF4ioMp+Aro09cclYp4+AehBRNPT+V2L7an/mGq0ol6ygBWVZOSrP5/Lnb9NtmjDd1ILOItlj2vt2O5gzeNXe7CpjxoNg==
X-MS-Exchange-CrossTenant-Network-Message-Id: af7578e3-cde7-4f88-2475-08de8f686c73
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 20:59:39.3976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gCZJ55JWv3j5Pd2OZCelLUu4VkywGQo24BAWMr3TQ1qN7DrRYY6IZTPGQCDVsUDoBxi3noZwQtI0RvA5EQw0HUbgREDQqvcE5Mw7yFwbzU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8779
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774990789; x=1806526789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iRO0+qAMoKN49lK37sJE0ncgG67+Oy+5TpwT0RWCPaA=;
 b=gSFqTEVs5AqzQv4aH+5JTCiT1COHWlMMuJvb8X6xg1+r2XaMTPCXmctW
 cNhWsYbM8tDvP5zrEHPo2om1N/+9hq9x1zlIrxXcsuIc8L58fBbu7GvxJ
 sJr5KC+l13si3T/LzonuwiCEEeq/is83o2X3ZZpUre99WX/gYS6q4jbUH
 dGpgsnM2fzNZhUmSm7syI9y4T1Rn0BL21RF8xESs7q6I3VnFVTUifNCvy
 spct+9E5tP71+QJVIa+pjIes1235tEWtgueUraN5T3gR+NY/uNJX42hOa
 fZxGA8mFaYTRdEe3wOKnt1c7EcF7DvZ6GYpe/aJCBBfLXGh4mr/0G22Wm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gSFqTEVs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 200G_AUI8 PHY
 type definitions and wire them up
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:horms@kernel.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,mpg.de:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 9E90C3714FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/24/2026 8:35 AM, Aleksandr Loktionov wrote:
> ice_link_mode_str_high[] lacks entries for phy_type_high bits 5-14
> (all 200G PHY types on E825C); ice_dump_phy_type() prints nothing for
> them when ICE_DBG_LINK is set (e.g. 'ethtool -s ethX msglvl 0x10').
> The loop also iterates all 64 bits against a 5-entry array - undefined
> behaviour for any matched bit beyond the end.  Add strings for bits
> 5-14 and guard the loop with ARRAY_SIZE(), falling back to "unknown"
> for unrecognised bits.
> 
> ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC (bit 13) and 200G_AUI8 (bit 14)
> were absent from ice_adminq_cmd.h; ICE_PHY_TYPE_HIGH_MAX_INDEX capped
> at 12 caused ice_update_phy_type() to skip them entirely, leaving both
> invisible to 200G speed requests.  Add the definitions and bump
> MAX_INDEX to 14.

I don't believe support for these two types got implemented so I don't 
think there is need to add them.

> 
> Wire the two new types throughout the driver:
> - ice_get_media_type(): handle all ten 200G phy_type_high values so
>    E825C ports no longer return ICE_MEDIA_UNKNOWN.  AOC_ACC interfaces
>    map to FIBER; bare AUI4/AUI8 to DA with cage, else BACKPLANE
>    (matching existing AUI2/CAUI2 logic); CR4_PAM4 to DA; SR4/FR4/LR4/
>    DR4 to FIBER; KR4_PAM4 to BACKPLANE.
> - ice_get_link_speed_based_on_phy_type(): return ICE_AQ_LINK_SPEED_200GB
>    for both new types so ice_update_phy_type() enables them correctly.
> - phy_type_high_lkup[13,14]: AUI8 is 8-lane 25G-per-lane; no
>    200000baseSR8/CR8 ethtool modes exist yet, so approximate with
>    SR4_Full/CR4_Full - matching AUI4 at indices 11-12.  FIXME once
>    those link modes land upstream.
> - ICE_PHY_TYPE_HIGH_MASK_200G: add bits 13-14 for the minimum-speed
>    floor in ice_mask_min_supported_speeds().
> 
> Suggested-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: Simon Horman <horms@kernel.org>
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> v3 -> v4: add ARRAY_SIZE() OOB guard in ice_dump_phy_type(); cover all
>            ten 200G phy_type_high values in ice_get_media_type(); add FIXME
>            to lkup[13..14] for missing SR8/CR8 modes; rename subject
>            fix subject; fix debug enable example (ethtool, not modprobe);
>            add AUI8 speed mapping, lkup[13-14], MASK_200G bits 13-14,
>            and AUI8->SR4/CR4 approximation comment
> v1 -> v2: add ICE_PHY_TYPE_HIGH_MAX_INDEX update
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  4 ++-
>   drivers/net/ethernet/intel/ice/ice_common.c   | 31 ++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 ++-
>   drivers/net/ethernet/intel/ice/ice_ethtool.h  |  8 +++++
>   4 files changed, 44 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c6..efe985c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1044,7 +1044,9 @@ struct ice_aqc_get_phy_caps {
>   #define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
>   #define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
>   #define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
> -#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC	BIT_ULL(13)
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8		BIT_ULL(14)
> +#define ICE_PHY_TYPE_HIGH_MAX_INDEX		14
>   
>   struct ice_aqc_get_phy_caps_data {
>   	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea..2f3a268 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -84,6 +84,16 @@ static const char * const ice_link_mode_str_high[] = {
>   	[2] = "100G_CAUI2",
>   	[3] = "100G_AUI2_AOC_ACC",
>   	[4] = "100G_AUI2",
> +	[5] = "200G_CR4_PAM4",
> +	[6] = "200G_SR4",
> +	[7] = "200G_FR4",
> +	[8] = "200G_LR4",
> +	[9] = "200G_DR4",
> +	[10] = "200G_KR4_PAM4",
> +	[11] = "200G_AUI4_AOC_ACC",
> +	[12] = "200G_AUI4",
> +	[13] = "200G_AUI8_AOC_ACC",
> +	[14] = "200G_AUI8",
>   };
>   
>   /**
> @@ -107,9 +117,14 @@ ice_dump_phy_type(struct ice_hw *hw, u64 low, u64 high, const char *prefix)
>   	ice_debug(hw, ICE_DBG_PHY, "%s: phy_type_high: 0x%016llx\n", prefix, high);
>   
>   	for (u32 i = 0; i < BITS_PER_TYPE(typeof(high)); i++) {
> -		if (high & BIT_ULL(i))
> +		if (!(high & BIT_ULL(i)))
> +			continue;
> +		if (i < ARRAY_SIZE(ice_link_mode_str_high))
>   			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): %s\n",
>   				  prefix, i, ice_link_mode_str_high[i]);
> +		else
> +			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): unknown\n",
> +				  prefix, i);
>   	}
>   }
>   
> @@ -605,13 +620,25 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
>   		switch (hw_link_info->phy_type_high) {
>   		case ICE_PHY_TYPE_HIGH_100G_AUI2:
>   		case ICE_PHY_TYPE_HIGH_100G_CAUI2:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI4:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI8:
>   			if (ice_is_media_cage_present(pi))
>   				return ICE_MEDIA_DA;
>   			fallthrough;
>   		case ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4:
> +		case ICE_PHY_TYPE_HIGH_200G_KR4_PAM4:
>   			return ICE_MEDIA_BACKPLANE;
>   		case ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC:
>   		case ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC:
> +			return ICE_MEDIA_FIBER;
> +		case ICE_PHY_TYPE_HIGH_200G_CR4_PAM4:
> +			return ICE_MEDIA_DA;

Any reason we don't put this with the other DAs above...

> +		case ICE_PHY_TYPE_HIGH_200G_SR4:
> +		case ICE_PHY_TYPE_HIGH_200G_FR4:
> +		case ICE_PHY_TYPE_HIGH_200G_LR4:
> +		case ICE_PHY_TYPE_HIGH_200G_DR4:
>   			return ICE_MEDIA_FIBER;

and these with the other FIBERs?

Thanks,
Tony

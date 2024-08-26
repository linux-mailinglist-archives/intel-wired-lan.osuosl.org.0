Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53DA95ED0A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 11:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34A4E40249;
	Mon, 26 Aug 2024 09:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id izDEMcKJNu0w; Mon, 26 Aug 2024 09:25:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 333D440297
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724664314;
	bh=MMDR3FQD9UcW7cCofSQGBCHfg8YYMouiqSfOYDwfWAo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MN+xeuboP2gG1VJroaJqNvqyhpvEzXRHYO+FY5ZfKXEBU0CyB7kTBaalkl1lU5XMD
	 hLtd3WD/gxE2hhL4+NLVGo+eTaVzAt0QOfxc+GtB5eIyHe52uAzz1bpzaKSjw1KYdt
	 JgAAJERcWBqa6qNUObu916u330N43dAWIsLyl50ca9seCdpZoV05QRzCYYHt8PV843
	 ygyObp47HUvb/j5jHWwsLUaH5xVXBF6aPwRQ25HMLzId7mSFzLeyzDTgVzBcjqsIoz
	 yjIS6QKX9WgsBsHTiJWmLQe1oxIKIChHweCo2wqfJ0txF4hgtMXvCrrpAT2ZFwF3rl
	 +hIyCK/PDyaOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 333D440297;
	Mon, 26 Aug 2024 09:25:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C5391BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3759C80C4C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:25:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VXFm30nOCmyT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 09:25:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7034E80BF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7034E80BF0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7034E80BF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:25:11 +0000 (UTC)
X-CSE-ConnectionGUID: tmZUPzk8QI6rnUruiYkKFg==
X-CSE-MsgGUID: FzReFXLSQIqumptqas7Rpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="34485088"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="34485088"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 02:25:10 -0700
X-CSE-ConnectionGUID: t8T2Chd+QnOx/7yEhy6jUA==
X-CSE-MsgGUID: oGi7CC7iQPmkXuBct/b51g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="63169801"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 02:25:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 02:25:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 02:25:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 02:25:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 02:25:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X55YSR0cdWIaFrC2i9zGqFhi4VNB7sL34FuN5+82ju7hGgDDt0v1YXsEuiejmnJeSZJCTlL57KWAo52xqG296g5gctPzvql9i4sQfKJRs9ZPlzVzXAqGoq4EM6cJUIj33zPp7i3OfgLcgvqXZsL/doKymzf7B6q9PZV2qIx6ga+GqsJypxe3+2IaTd3I6QhCcxFaTnLO1PwxrSbcVC8IIWOW4Ly20AMzWvgtnZ6NVNtkqqR0NxEijRQAFen24UjKMVcEA3rCx8kJtDwHLpjhdy27TErH5pf8Uu/Abb2qat7ad1n9/o8Src5fuhM8qjTRAiDv84OSXeVvJDrDbVIkGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MMDR3FQD9UcW7cCofSQGBCHfg8YYMouiqSfOYDwfWAo=;
 b=cTQEU8WHAH7xbN1jo9YAisFcd3WBFYFGl+tJrvMlutxJUuLYEt7NXFE4c/qV5gMwDP7heYr6pgb9wA1WTUU6Hhnwj9gB3KDo8uA7sLTak0MHKiRfZO0NtptEjKA3bvjh/UX5vd83AnUQ7/PczAr8yvEPxx2lFTos7HS8mTItAnKOP2zNzqwkXs8SNXcSk30rAFW5qibeNZTcTTmAYHn7S4+MieJ0kkh6Mvpvc64/fPVtRYxKVyzJsW0DlLRXBv+BGgwlXzSOWSg9C4Sr5FEa3Fa04mxEoWedHN3WMwgieqqdaSZ2UnJ1q2DCQleJMohTRWDTEWw3/tEDP7bVkmA7vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4205.namprd11.prod.outlook.com (2603:10b6:208:192::23)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Mon, 26 Aug
 2024 09:25:07 +0000
Received: from MN2PR11MB4205.namprd11.prod.outlook.com
 ([fe80::f762:887a:404a:85b]) by MN2PR11MB4205.namprd11.prod.outlook.com
 ([fe80::f762:887a:404a:85b%7]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 09:25:07 +0000
Message-ID: <6bcb9b3b-cbca-1616-b166-a0aa5932ab17@intel.com>
Date: Mon, 26 Aug 2024 12:25:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240818083250.3153977-1-sasha.neftin@intel.com>
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20240818083250.3153977-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0024.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::8)
 To MN2PR11MB4205.namprd11.prod.outlook.com
 (2603:10b6:208:192::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4205:EE_|CY5PR11MB6186:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d4780ad-5e6c-451e-7e55-08dcc5b0f998
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzlDMytMT2tzTzR6M3NaRE9JcS9TM053RXoxaHlDQWlXTW9kOFpUc0lOM0tR?=
 =?utf-8?B?R0xHZDNNRUxRR2g2a21lZ3A0bi9FQklrVTRlMFFOOTIvb1o5TWpFVy9JNWdD?=
 =?utf-8?B?WUpuTk5RYXlocG9DdjlIOUtUVWlvNGZpT0llMlNMYk9nM1liTFo2Tmg3cFV5?=
 =?utf-8?B?clNEMDQvME5wYTNScGE5TmF2cEpkeC9mUDhpSUFpNE1lT1hsWGU4OWxpRy8v?=
 =?utf-8?B?UDRDZTc4Q0I3MlhEcUNOWXR6ODVWNlQ5V2J4b0hyYmJ1WGF4bDFyMnIvUFF2?=
 =?utf-8?B?NnE2NHdzUGVxSWluZHc2eU14REdBWktCdjNZL00vTFpCZnJWRTMrRkZhUDRq?=
 =?utf-8?B?dUpSTWo0dHNuYnpVWEJSQmY1SFRadEl6UVkrQVFXM3JzRjRPck5YVHhkUUVj?=
 =?utf-8?B?MzFMcnJ4ME5jQ1ZBcGM4M1VKV1AyNk1pNlBKd25zNUhLeTZTRS9CMWdnNUhP?=
 =?utf-8?B?T3djOFk2QjlKUzVkY0EwNFFaMUhkL0VZWWZhalc2REdlV3NpU2ZiaERwL2dj?=
 =?utf-8?B?V2NqRXRvTjc4dStPYjg4K2JZRUNkK3VSWjZlK2ErR3pTS20rRWc0enh0VkpT?=
 =?utf-8?B?S0o0MzJEbXBMS1htVzJsRTIvSTlHSFU2VTN0Um81UTZXcUg3aHBZeGRVT21v?=
 =?utf-8?B?M2lCWHVGQ2RaWGZjTHJVL3dVNVlxbHJPMEQveXc4SXFJLzdINGVvSnVHRThZ?=
 =?utf-8?B?Z1hHRWltT2Ewak1SOGFmMk82cEJRenZsYXJsK21PcEM0V1p0SnE3RG1uWjBa?=
 =?utf-8?B?VEhuSUQxcXVUWjcrSlc4V2h1ZlQramNhMStJTyt4Y2s1Zk5tMGVjRXZ5OUQz?=
 =?utf-8?B?ekZvQXBET0IwcURhS0N5WS9HdlF2c3RjMjJiREludDc1dlk4bzVROThhM0xm?=
 =?utf-8?B?VDdrU0JUbXRwcUxHN1JNUWNVN214UGlIbUwwWDFENGlEK1pNZHJpOU0yblNy?=
 =?utf-8?B?dXU2RUVSRmRUNkRERFF4aXFrZndTUXBJcmpaZ2gzTXhtaEdnMXJ0My9EZkxE?=
 =?utf-8?B?Qyt4cXAzVFVFbGVxZVl6bjdPa3FrOUFock5RMnhoZGpwcGNZZUxRV2srY21C?=
 =?utf-8?B?UHM4cU9taThQbDJoWVhlek80RVdaQXIzZHRmbHVkRUdvaWZYUnJTQjhmaUhP?=
 =?utf-8?B?TWNpS21DZ1NrU052UnhQeDJmY29qMW1iQkI2S05TUW5RVWNHclJLNlBhUitP?=
 =?utf-8?B?RmRVeU1XMnpCZmpyaWgzSTRSc1FQNGtXSUNHNFNsM0dnYWR4c0NrZ0V0NnFW?=
 =?utf-8?B?L21xTkgzTlJLZzJ3dE5zc1FvN1RKZlBlYmhCTEJlR0xSZlNkVkFDQmJyb3E0?=
 =?utf-8?B?b0FsT204WlI4S1E5L2tEeGhDQ2tKcTlrdlFLUWMvS1g3aHBlQyt4UWdDZFFl?=
 =?utf-8?B?VEtLMmZTWHcyNmZndWd0QXRxWFNHY0NuL1VRQlRXL29tV050NXhCVmNSeE0y?=
 =?utf-8?B?bWJwR3RMRDdTNEdOanYzaUkzQlVCSEtyMEVKYWRJNnByUlhDemFxaDY0dUd4?=
 =?utf-8?B?N0NVdFNXSGxhS0NLQkdGUURsa3JONVZmUUp2cnduS2JJTXl2N0E5dy9naDR5?=
 =?utf-8?B?M3pPYmVqNmVVT1JiKzFTekRyajhwa1ozbXlzUnZMWmZkazJ3YUxUNEVodGhB?=
 =?utf-8?B?WlJoU05BeGFrYVh1WEhUUXA3T1ArQ3NkR0YvRkdqcEg1YkNISHEzTUp0Smdh?=
 =?utf-8?B?RXZybnZpRTdlZWp3cXd0MmhYNC9jWDBlN0kyMlJ3dXlGUTVsRXJGWE5PczhU?=
 =?utf-8?B?TEkrdTR3MzVDVXcxemxuVHRERmFuYm43bDJzTlB6SWs5andhTjEwQmIvR2RM?=
 =?utf-8?B?QVdnWkxvbm1tWVNDeGtpdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4205.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGZySWk1bTFWbHFkeWJvOFNlWTEyNlJQRnlxRnhPSGsyeHpFelF0MGYwaytK?=
 =?utf-8?B?NDdCbGdYQnlhaUhJemkyRWU4RmpwVGNPU0lqRWUxYm1ZbWxsUWVzZko5UUVW?=
 =?utf-8?B?OWxRY051dSs1anVVRS81RWtHSlRlaTJwRXkzdldwNDZYOENKQmxVckZxMUk5?=
 =?utf-8?B?QTMzZlRLOGpLZ1RTZXBuWHRpbExLQmVoMlVNSkF6Ky9oWjN6VWlMQWpsd3BG?=
 =?utf-8?B?Q1FqNkh0UkV5VmYxeGh2UDlEb3Jqb3V6dXppNjkvcHh4cFJhdFVoQ0M0dVpv?=
 =?utf-8?B?ekZUd0NvZ2RkSS84S3ptWDdMYXUzWGh2ZnBsa3BOOVhKcTRBOEZ4SGpOU1B1?=
 =?utf-8?B?QUtQOHRNVDQrSU9xekN3alZXenk3Kyt2K1pzMmRLYmx4WS9aNENnMXZTZEJQ?=
 =?utf-8?B?bWdxRHYyelFGRFN5cFZFeG8rb0dLWTNQRVV0aXVtYUVKTUZnTjlYSkt5ZE10?=
 =?utf-8?B?c0lBcGZRaXp2RTdacFhGK1pDWkpwOVZLTlR4TnBjbmg1TFQxOUYrSUdqVExu?=
 =?utf-8?B?VHdiV2pIWllPVEprU0NNNXh3cG1zUDBCVjRqRHBiSGJLM0VoRlg2c0FIR2pY?=
 =?utf-8?B?NlIwZE1jMDVQOGMyUnFOcVNEci9sSlR2VE02TVBkdU0wZVlQdEc5TmJRU0lC?=
 =?utf-8?B?RGZNZHYxU0xSVklIak1GZTJCeHFzZnhNaENyd3p1b2Y5QUVYbmVIUm5JR2sz?=
 =?utf-8?B?RU1ra0VjSWdxWTZ4clBFYWZYNExBOUIxWVRvVi9ERWM0L3J6M25CVU04ZG5r?=
 =?utf-8?B?KzhCd0hTblExTHl5L2F6UUJsZWhkWExLZFhDZTJRandpVWJ0cWJQR1BmSmZ3?=
 =?utf-8?B?TjVjN3JpeFVFM3ZkZHlYa2syWk5vWTk0Q2UwTDl0d0pzQUVhem5Fc3RuSWhO?=
 =?utf-8?B?SVNsb081VjE4K01oZkR3cEIrQWVhWE4zVUdwMmxlYVQvTDJlOGpWOFl4TW5p?=
 =?utf-8?B?VTIzL0R6dXVodnlFc0ltaE4rZHhVV3FTY2FTdDhYVCsyS2REdVJaMlgwaVZq?=
 =?utf-8?B?RjJPZEhnK0paU2hFOW14Vk8xdW9mUUEzTGRCTHBtUFVoTkhMRmZhWUlhalN2?=
 =?utf-8?B?aHVIRHZ4cDF3YSthZStJWk1MQUhOUm9rK0dFRzhnVEorWkpXaVpGLzY1d1FD?=
 =?utf-8?B?MFZveDBQWHlNeUZOSW43QU95ZlYyZHB2WkUwZUUwamFlZGhZK0EwQnUyTnVW?=
 =?utf-8?B?MHJpR3JTU2ErbzFEeElzbzBRQ2ZBRzhTTjNTZlJLeit4U3AxL0FoTk1YM0ty?=
 =?utf-8?B?Y2dvOGx0OXZ0SjQ2RW5ac28wQXBJcTUwRXUwVnJSWGVsL3JCRnM3TURNZXB3?=
 =?utf-8?B?azNhVENMQ096ejcyRFZzUm5CQTlFcDhtZmJrMVplY1RrdStNNjhOT242NHZo?=
 =?utf-8?B?RFYwajVxa0ZicEtoZk1WMXpsUEJKMGw4UHpQQVJVd1N6WU0wRWVBUmZzeDYx?=
 =?utf-8?B?d21iYkRmSVpEQWE1elYyL0JoRUswYVQ5VmxpcCsybm13MmluS3M0bnFhb3lY?=
 =?utf-8?B?MURWWkorM3FnWG1vbHNCRDFDazJDS0tGZERqYU1XUGI5azM3Y3J4RGw1dlJ1?=
 =?utf-8?B?TzN3bzdoTnFjL3doL0F5cjdEQ3hGQllhdUdLUXRSL2Nad3p1YmNxdjBxRVZ1?=
 =?utf-8?B?UzVtTVpFYytrRm45R1hORTB4L05sQnVXK1l4QTI3MjBqaHZJRThtSWFUS0Z2?=
 =?utf-8?B?OWQwV25QcEk0WjEwVkthQ01PZ211Vy9xVEhqblFkbDF3TWw1U0pMa1ZzUHhv?=
 =?utf-8?B?S2crbW13cHFGaVdUVXoyM2t4ekhIdkY0MHJuZjlGKytCSklzWHI4NkwvVXJN?=
 =?utf-8?B?QnZZd2pBUG1wQXBLaDlFUTlrM2NOZEptWnhaQ2RuWlRCM1EveWNJVTI0dzJX?=
 =?utf-8?B?VFFhc0NObjV5OG5SRElBTVpWZ05VaWVrSHRqTVZvRVZPcUtrcy96WEVxY28z?=
 =?utf-8?B?TW92S1d5MlRVL1ZhdjVDMW1sdGhheWxOckRJVCtXYWRqbFRsd1Y2S2ZRT3hU?=
 =?utf-8?B?WkV5MDBJbE9FRTV4bEMveWdkNWJnT1hLT3gvU2ZDVGx2elM0cklEekpxdXJr?=
 =?utf-8?B?N0NDRFhpTGdBWlMzS3RYL3FLQ01BdEZFTXRveVRDMFdqMXNDbnh6S1BHejU3?=
 =?utf-8?B?YUNDT0hVV3lSOEZpSW1FWTdaWXlSNlNxTWhxUHV0dTlyZjFibFdacjVNYXhD?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d4780ad-5e6c-451e-7e55-08dcc5b0f998
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4205.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 09:25:07.5512 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cMfmAvV/JP4dTN7fnEja3wPAZUm7CyiI9vI8t6TeRGtLPDWq4il+JypqVQIbHKJD9DCrsK4bjlj9WawNICYjscUt1vXm0NALv0J2kFp1Pfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724664311; x=1756200311;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HulWURe2ufRnWqPsOUtCWZL2zuZGevPuGBdD01gW01I=;
 b=bcTQwHOZaFjX3xLsYEYxWwG6pi+i4z+9Wr1x4Xu2mnAqTn7epb7SftBO
 fW5Waix3OhtEmthjB12zjuS0HAVBkvQkGRGQh17CO8V6FwXGnOlpDAFCe
 EP++4M5NByB0B2tERi37/LzGpBFBf+2jsyYLnfUhqktxanUTUo7rTpYZn
 MU5RxD/ezsn4k1RP43x6xetTu6VkWDYIpCCYjwRmLgf90aHVuaGDf0IS2
 +IsC7MsnwAy0T1Jd0xfL1H1Aynuno5b0FwTtoMBHXD0MjWXlMNx2bJUYp
 htMJ4MhxXB5wG80A3bAbhBdR8bNIwqSGBkGXlWOPJoNyflq8U8yPoygQx
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bcTQwHOZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/1] igc: Move the MULTI GBT AN
 Control Register to _regs file
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

On 8/18/2024 11:32 AM, Sasha Neftin wrote:
> MULTI GBT AN Control Register is IEEE Standard Register 7.32 (not a mask).
> The right place should be in igc_reg.h file. In accordance with the
> registers naming convention added IGC_' prefix.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
>   drivers/net/ethernet/intel/igc/igc_phy.c     | 4 ++--
>   drivers/net/ethernet/intel/igc/igc_regs.h    | 3 +++
>   3 files changed, 5 insertions(+), 3 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>

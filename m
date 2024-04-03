Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298DF897C10
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 01:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 743C24192E;
	Wed,  3 Apr 2024 23:34:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r3E7Sdc_jEMB; Wed,  3 Apr 2024 23:34:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C9EC41930
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712187241;
	bh=BXV/gRFjKzgJzTcgejgdjwfJYVd4kqDcF5RjIm3F3W8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zYM0hq1XkIlvVkld4P/Sjk6I/R/+6qQfuUfGU9X3v7lF6ub1J5jOiQW12/NecgBpe
	 2ApsCHVPgINRmwQRB/l8mAVssIMj7Eljv7gWRQ9MKzhDELtRkI1zQgihOcogFCTVHR
	 QGuMF1RT5TkEzfwuJEIbynke72TnKnqiRHusMczqqKPXSI0u/lzTYTRyKJTtRNJW4A
	 PYR9qXj5XF8X6pCf+ZERkbF6L7gtN/3B/tj4DzkJA/h1K2MUEJaPSEINxCoeApRWJ3
	 ryFlYnNlOFXDE37fh0LUhQ9a167/ixYiD5fa7LVqhJuo29JYruYCsrSWx2HZtXVbS4
	 hj9zEFw7hnZIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C9EC41930;
	Wed,  3 Apr 2024 23:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E75801BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D16F741922
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:33:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IfhKnwMvQE9Q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 23:33:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 064A941921
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 064A941921
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 064A941921
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:33:56 +0000 (UTC)
X-CSE-ConnectionGUID: /jiyIIXgT+CINi++UD9EnA==
X-CSE-MsgGUID: Gl12KDCCQ+6t4oYDQ0y3sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18066706"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18066706"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 16:33:55 -0700
X-CSE-ConnectionGUID: qwae+GGnTiSzYpRGsY9wZw==
X-CSE-MsgGUID: eUSiUXUaS2WhfrVgx7HOvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="49545856"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 16:33:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:33:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:33:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 16:33:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 16:33:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CfChZcDjcah4ZUylrxbU6ks65pYQidlzfDnAH1jztT+I5qrkJmS5ggwqed1XGHZjxpuVGJbd67PFv+Zjjxzw2X5hjUAfLsrAfL4hpQfhtolyw6dA+XnK3v32LlmLcISYWHBA184ATor8RyTze/Xz+23GdCAe/o9+R8KaoEnHuW+AzSylvY1sZCqyo4aAZgWGGmLz1Q6IyEM0xHI9gj6pyw0gQ9EWfsLE7yUx8cwMuLbkfniimMbItlwCo47TasYAbll5WnBRpi+2uYMDzycuwr1/F3GsMKbkOvcK8wP/u9PcMSeUQ582lc62EFoB4UNAZw8cvcWDzu7+92CcsLzaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BXV/gRFjKzgJzTcgejgdjwfJYVd4kqDcF5RjIm3F3W8=;
 b=RHpmtVSHFEZOZlHn88DhbEOUr+gqyHaiTBUELqxOCU7pFT1xhgzIv5OKpt5EyW+t8/ccgzhJqbKLHDWpKFCoRONIH4D1ll4IMGAfAE692FYHjl754/u4d3ZgxePRWxu+pOrwQPlDknJQjfsY9pZelFMzqB8Zi3OjXcevmcayYILZHzFpsLNgZHfohqStUKOrmIBycbKddy+LX6pMwuQatLXlcSSIDuJ7ir5yDnIrW161dKhpGn7RuxSZZ8nwvfYrHsYORmZIjobJcgjBgP/CaShYEM6uo67CyDjNJeB3ROASYBw7JdHynVc0Bq9QwVUXiheEtObpZwA4g3jgDKxF2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ2PR11MB8421.namprd11.prod.outlook.com (2603:10b6:a03:549::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 23:33:49 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 23:33:49 +0000
Message-ID: <b12ea5e0-5ef2-b6ef-76cc-89b3887e370e@intel.com>
Date: Wed, 3 Apr 2024 16:33:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
 <20240329161730.47777-21-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240329161730.47777-21-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0191.namprd04.prod.outlook.com
 (2603:10b6:303:86::16) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ2PR11MB8421:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PIbGCIAyukz5C2QaG/N1aglpoKn0cf9ftDmYSq8IQ/ofvAYm7ioNnSg++8wOG7u00rcER35d/Q5lwtAWo+cm+Bj9bdz8/i804CJpLuuukqDax7YmKtmcwNVqCAcOAfvWws8XiJBY6cMOcjiHbOLF6NCnQSmBTtcYuoBTwJYCuHPJhbtVFLColPX36uZANF3N1HJAnOzEEX+v/3xUp5Skk4esBmCx6/4B9uXwF+BbqbG+69g4xYlAKQH8SzApOTRFlHOnlw1VqjBHPz5XMDXhHPUw7kDiundKtG+1NwljGshlrxBuuwODH5nDATJmobrMNpaZ1LvK5sJRBMizL2yFyMzOK2G/3olU4ud9y8B72pfVwFBRG3yXNDp4xYT0mJbpDI+9eYwLMcnXJtHjc+dcM8YtgZ87zj7KzpStiBhYxv6BT+RHbC/t37ocS/DllA8OP0BYzVBO4NWlkAoFwpBullI6rJIUDDhYrhLaZgGSiPZsvBxDZrdTN+irEOiFAnU3u5iLambL6hIzNEV7CIzENgL/jas1nHjo95D7VlIXo7i0myzAC6nY2p6GYP++b+LCSDPzJdG+8zoG0IOQ4qfoNm1+kokD4B1qpfE0zvHspVj+VedsuakzLgr4lJRBY2dKd5yO1U6+zUswXk0D7PKmD4f+y2R5xyBlJcKYJ/JFcQU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDJWMWdxUkpORUtiV3pjVTh3L0I3b1NXbUVnTERXbzhweHF0UmVHN2xnQU45?=
 =?utf-8?B?ZlBNaVZORTZ0QUNyemJuMy9Kc3BxT2ttTDVkWm14M3NBaG5NTW13dzlLM1ZH?=
 =?utf-8?B?UmZzRkw0V2UvcGhBMmJXV2NMU1FadERTelBXZkMyZzZQMDVPc3FWcEd0MXIr?=
 =?utf-8?B?TmtwQmpSRVFyWXFBNlFnUGFBZHZkbUR6N2tzcVl1Vm9FWkJxWTJwc2w3V0xj?=
 =?utf-8?B?eGNPTWowejJ6SHJNVUtlWVNPNXdyVndsZ005bUtteEQza3VXQnk5K0U3NnN5?=
 =?utf-8?B?OG5PVHRUL3grZWNVNk5jYWxGSWtDT1NVbE5xeitMb3p3a0kyeWswNTFaSFEy?=
 =?utf-8?B?WTcwaHJ5elhGeU9XaHFNalB3SG5YU0RMYVF0SWpMeWRIcC85S1UvQStQaVNa?=
 =?utf-8?B?UlNnWWpZaXhDN3VCbGNJei9taFBZM1J3bDRDcENPQ3VRTFkrTW1jVmlFWkVl?=
 =?utf-8?B?WFR3SWxBTHc5dGFpVnNpd1hqVE9RbUZ0Q2ltM29xbzhOVE1sZzJ4aTFJYjRm?=
 =?utf-8?B?MVZLRitzRnp4cDBXVXZuZGZtNUQ3andTamFlWW80ZVZ5bGtGSGhSNnRiaXhL?=
 =?utf-8?B?elF0SERNZ3lPMTBKTWFvUGRzSjdvNWdpQWFQVDR4M3MyMHlBQmV0TnVhd3Vq?=
 =?utf-8?B?YTVVdVVmZnY2QUgxazRWNkZYVU9DL1VwN3FjZjlwY1RYcVZVTEVwekI5YTJS?=
 =?utf-8?B?Q3RkMmhqQlpaWUdCMnZXNkZNdHRLVmdDdkovTU1SS2krTW1ybWxUQTByTXR2?=
 =?utf-8?B?SGJRQmx4K1BtMXlFd2RlSGUzTzBkNG9VNFBRUGdTdDZ0TVB6ZklmRSsvVDZN?=
 =?utf-8?B?ZVgrREJyM3pZRy9QaVI2YUNZQ0JQWkEweGhycW1NM3dQUEdqSTVtb3dyeDR1?=
 =?utf-8?B?RzNqWGpVWTVUa21CeWZxazM0aEpjbWpMelFNUHR5WWwxdW16RTA0Q2lSYU54?=
 =?utf-8?B?Wjg0WFZXbU90eHVaQ0pEQ2lKaWovS01JNDVDeXlpVlE4ai9jUkdwelpxNm92?=
 =?utf-8?B?V3VReHJSTUptTDRxaURFQ1QvWEZtNlVPWjVJUWpwcDhpSGZmd0RYNXIyTzVi?=
 =?utf-8?B?cFBLWWxOckZMeCtZWkRFczFLZm9UdEpjbmpObEZvNERNbGJDQWl4VE4ySkFw?=
 =?utf-8?B?c3lNejBiU2pCZnNSbWhqb3JwSjRGVmZHdktjRmNmaUwxSHJwYW9aSER4Mmx0?=
 =?utf-8?B?L3o2c3lwR2NDaGNvYnRNanIraEFQdnR3UUNyK0hXd2RNSTgwdllIMzBUYi9W?=
 =?utf-8?B?SG42ODQySS9CbndtdEFvc0g4WVEySmZZc1gveHlqNnJXNEdveGtWSk9GaldF?=
 =?utf-8?B?VzJxRjJIRTYwYWM4Um5DVnVzeEtEZWVUYTIvUzVYWG5PZHRkRWFCSzNOek1l?=
 =?utf-8?B?Qlg0VHBJbEppdjY2MTVGazZiL3BGaXZOTE9wMkRrY2cxSlBsY3FpV1c0Vlg1?=
 =?utf-8?B?Tmk5Z3VaQTZwaDV6cjJocUJRMENRWHBBMDNyblVRY0J6bTYySUNpNkIzM3or?=
 =?utf-8?B?QU1YdCtSbmdYOUtQNitWeTRjR2VST0VMR0Q1NGVJVXdTMHlQSWkvdE5xOXlY?=
 =?utf-8?B?M1AySXB1dGlFOEJ4cjJlTU5IZ3FidnZEUlRPVTMzR3Nhd3cyZ3orcm91V2Z6?=
 =?utf-8?B?Sml1REN3V3F5T1RneGVSOVhOeFE3Rk56Qi9EYnA5dTdMaCtWYmg4RXdqTmdR?=
 =?utf-8?B?MEQ3eU13YS8rUVFITndlV1VNeDdhNXdWeFZvY3hjY25vRm9nTVZ4dlUyZHJF?=
 =?utf-8?B?TUVWbS9DUDdiT1FNU3BUcW5OMG9IcmN6cUg4dUhxaEsrQldINmg5N205SG9y?=
 =?utf-8?B?ckRpZHhiYjBneE5sY0dRWldLWjhkL2xFZVdkNmtIUjJsM2FqdE5VNmJOb2Fj?=
 =?utf-8?B?S0dKeTRGTWFWRTM5M0x3NlZybnVxTm9xTnRtRnI2TndoTDNZQVZsczRFREg4?=
 =?utf-8?B?R09RSldnSXUyRXlFbitDZVJKV1lwQ29OYmE4NnJ3cGpTS1QybGZoMUVqK3FC?=
 =?utf-8?B?TS9mdVpzL25wak5DcEZ5bitHcTgrUnZ2VklSYm1Yajk5N2hYdndOOGs0M08x?=
 =?utf-8?B?VW96Zk55N3RObll5UWQ4R3ZGRktoVDhodzZocm9STW9McjJaUnhwdm5sZFdP?=
 =?utf-8?B?V3ZBRlJjanhQQ2xwYmU5SUNHYnpDQ29TOGJmOStCbzltNlJkc0tkWTdiNjc4?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a52fd73b-b804-420f-6be5-08dc5436834e
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 23:33:48.9297 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p+ahciegJ9YGcGZSdqJttphQw/qGlEyDFOStOY+gOEyYRqffKkBSGexYt2wyJX9OC1iOjHmQVwEX812FE+tOb6mnuccT6LEedaDiKRetV6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8421
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712187237; x=1743723237;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uANfkKPwvlTiId7GxMRcbSdoCOPAn/WCss20QgQynO4=;
 b=k6lcneLgV6ukOyXmoTsct1tqjYOO2v66q78nVSzti/rPnkfGcd8d0SSe
 SFfzSmSF2ikkVDt3/QAsnwvEwV87ja8EmMsJs1tJSr6gEPgc19n+I2o35
 iIRJMdGzlashKHaRQdozqwMpy6TUuH/Q7JIt/b7ZVD3sOrx6K5f/d4j7+
 jPTTYACumfkz5UphaTe9TMOdCRJGdnZyQcLLhxRtoZ74/TGsDoPYFp4pH
 fn//1vWTfK2RbavqoO4+vZ7XIq2uLKUxO/kgaT6DgL/NMgECkx2KxN/6/
 j3LqQrJQaVBlJyEhLQIMHV+YkYUDEUxG8npeKDQTpI9l+d5tDr/qWEzMp
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k6lcneLg
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 07/12] ice: Introduce
 ETH56G PHY model for E825C products
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
Cc: Michal Michalik <michal.michalik@intel.com>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/29/2024 9:09 AM, Karol Kolacinski wrote:
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> E825C products feature a new PHY model - ETH56G.
> 
> Introduces all necessary PHY definitions, functions etc. for ETH56G PHY,
> analogous to E82X and E810 ones with addition of a few HW-specific
> functionalities for ETH56G like one-step timestamping.
> 
> It ensures correct PTP initialization and operation for E825C products.
> 
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---

...

> +/**
> + * mul_u32_u32_fx_q9 - Multiply two u32 fixed point Q9 values
> + * @a: multiplier value
> + * @b: multiplicand value
> + */
> +static inline u32 mul_u32_u32_fx_q9(u32 a, u32 b)
> +{
> +	return (u32)(((u64)a * b) >> ICE_ETH56G_MAC_CFG_FRAC_W);
> +}

Please don't use 'inline' in c files.

> +
> +/**
> + * add_u32_u32_fx - Add two u32 fixed point values and discard overflow
> + * @a: first value
> + * @b: second value
> + */
> +static inline u32 add_u32_u32_fx(u32 a, u32 b)
> +{
> +	return lower_32_bits(((u64)a + b));
> +}

Here too.

...

> +
> +/**
> + * ice_phy_set_offsets_eth56g - Set Tx/Rx offset values
> + * @hw: pointer to the HW struct
> + * @port: port to configure
> + * @spd: link speed
> + * @cfg: structure to store output values
> + * @fc: FC-FEC enabled
> + * @rs: RS-FEC enabled
> + */
> +static int ice_phy_set_offsets_eth56g(struct ice_hw *hw, u8 port,
> +				      enum ice_eth56g_link_spd spd,
> +				      const struct ice_eth56g_mac_reg_cfg *cfg,
> +				      bool fc, bool rs)
> +{
> +	u32 rx_offset, tx_offset, bs_ds;
> +	bool onestep, sfd;
> +
> +#ifdef SWITCH_MODE
> +	onestep = ice_is_bit_set(hw->ptp.phy.eth56g.onestep_ena, port);
> +	sfd = ice_is_bit_set(hw->ptp.phy.eth56g.sfd_ena, port);
> +#else /* SWITCH_MODE */
> +	onestep = hw->ptp.phy.eth56g.onestep_ena;
> +	sfd = hw->ptp.phy.eth56g.sfd_ena;
> +#endif /* SWITCH_MODE */

I don't believe this is supposed to be here?

> +	bs_ds = cfg->rx_offset.bs_ds;
> +
> +	if (fc)
> +		rx_offset = cfg->rx_offset.fc;
> +	else if (rs)
> +		rx_offset = cfg->rx_offset.rs;
> +	else
> +		rx_offset = cfg->rx_offset.no_fec;
> +

...

> +/**
> + * ice_phy_cfg_intr_eth56g - Configure TX timestamp interrupt
> + * @hw: pointer to the HW struct
> + * @port: the timestamp port
> + * @ena: enable or disable interrupt
> + * @threshold: interrupt threshold
> + *
> + * Configure TX timestamp interrupt for the specified port
> + */
> +int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold)
> +{
> +	int err;
> +	u32 val;
> +
> +	err = ice_read_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, &val);
> +	if (err)
> +		return err;
> +
> +	if (ena) {
> +		val |= PHY_TS_INT_CONFIG_ENA_M;
> +		val &= ~PHY_TS_INT_CONFIG_THRESHOLD_M;
> +		val |= FIELD_PREP(PHY_TS_INT_CONFIG_THRESHOLD_M, threshold);
> +	} else {
> +		val &= ~PHY_TS_INT_CONFIG_ENA_M;
> +	}
> +
> +	err = ice_write_ptp_reg_eth56g(hw, port, PHY_REG_TS_INT_CONFIG, val);
> +	return err;

return ice_write_ptp_reg_eth56g()

> +}
> +

...

> +/**
> + * ice_ptp_init_phc_eth56g - Perform E82X specific PHC initialization
> + * @hw: pointer to HW struct
> + *
> + * Perform PHC initialization steps specific to E82X devices.
> + */
> +static int ice_ptp_init_phc_eth56g(struct ice_hw *hw)
> +{
> +	int err;
> +
> +	ice_sb_access_ena_eth56g(hw, true);
> +	/* Initialize the Clock Generation Unit */
> +	err = ice_init_cgu_e82x(hw);
> +
> +	return err;

return ice_init_cgu_e82c();

Also no need for local var after that.

Please check the the patches to ensure that they aren't assigning a 
local var to be returned immediately after (I saw more instances).

> +}

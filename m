Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2084790AE79
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 15:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFA378143E;
	Mon, 17 Jun 2024 13:00:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F3FmrmTSKxJj; Mon, 17 Jun 2024 13:00:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA9E1813F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718629210;
	bh=0+ZlTcx8Efb29mL4dyIaBX8z/KCMJcbDL5SrhpM68tg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jEGKgrV7PmInk8lTs8EpEJiVF9gyo6vWtSvF4Fji1AtR8Cb5z4ntHundAGnqTUn5d
	 PVfdIOINmQ1E4YSTu9ZKFiGuS9iZ/RDb9mSlosWjkJUs0BvKkjMMuHPvdk8iXVf9rL
	 ++wKYQLaJKBGKfBou4rJ+QRCaRlqutt2HL9hd8yGIzLBJygFQIXKiczYR3MHBVzp2m
	 N5aSGE5VHf4vBDrvmHS8ae/dQ/eafR/7wwlpgEvjiLS9C2V1wAfuDxVRUARHdcbjjx
	 nA0/h8UWJShoShPPKgoKHZ4gdOq/RddT770tNKcAgc+0XVWAOVUO+Rg6ZhxPN8EX+L
	 Wm4NttKJc0s/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA9E1813F6;
	Mon, 17 Jun 2024 13:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7278F1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E41D4055A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PJtyR6D6qSVH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 13:00:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E6EB40566
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E6EB40566
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E6EB40566
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:00:07 +0000 (UTC)
X-CSE-ConnectionGUID: JOa2cf5FSdykXA4lkrAFNw==
X-CSE-MsgGUID: K5UiiSicSL2dU1jtoapChA==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="32922111"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="32922111"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 06:00:06 -0700
X-CSE-ConnectionGUID: 4QdnMJceT9e+8JbaUi+uIA==
X-CSE-MsgGUID: 7HEd4HWJQL6Ieg7LZBQazw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41122881"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 06:00:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 06:00:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 06:00:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 06:00:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 06:00:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYbPdMF9/Vk9hgeSfqlwuthqPKzGIFDOPRjI7w9SB10kjS7x23xHYVHCgDWQBd+3cL4hd9/DYJfC0/m+OPstV2zXC+4SjT3QpyMnMDJjg4hManhqR+ExY8a0tBRexh0DwRLWw3URI43Mrz7XFkp0tKh0LQoWa2OVxisxj/BEUJtaTWlnMIwPPlO5am0NcwHKanjka34ul9sL/WJIj7fkpNdrqO8PqJl8Vpyd6+9cAPgo4XR264X2vzQ9JxYwLQKxF6R3WcSlocHElL33OQLH/O1WvLnYflIFQZtmVsd9jIXj0Iedl2TRd8mich+oXQYGuSw4SnPbY6c9fj1uqJkoxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0+ZlTcx8Efb29mL4dyIaBX8z/KCMJcbDL5SrhpM68tg=;
 b=G29lIQLpl/scjWIaS4/q+OY5iGlJhPZxxj7qTvwvsrE9E0ZBt3cJLfOeJcUJfZfGfLbbuuKqU5ykMNssIWkzNBExkKQpVIL8rEFXAZAWcKaS/pXUSJk5O0QeYN075Itk/ezhnPJ5BbSUEG1Pt/E36kcVhgrB0+jOQDvnAFqZoOcTtATbOaop3eAcL0/KFYkKY2FBRZby6+tDwXFWY7W1v7MGonBacPWwPs7xMzB/wrSXyeHdhWNNLLnkWa4/LvYQUqBwXn1XyJuPyspkAKRiNaBQNmfBAYz4B166xoY6Pyzgag99t/Ciu4WlVRVjnjvhJfZgAkyV6i3vmaI0oUzXPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 13:00:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 13:00:02 +0000
Message-ID: <da984106-43eb-42cc-a8c0-be859c6e84e9@intel.com>
Date: Mon, 17 Jun 2024 14:58:59 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Petr Oros <poros@redhat.com>
References: <20240614094338.467052-1-poros@redhat.com>
 <20240615151641.GG8447@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240615151641.GG8447@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P194CA0012.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6396:EE_
X-MS-Office365-Filtering-Correlation-Id: cdc66f99-e85a-475a-2e5f-08dc8ecd6681
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|7416011|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NERvYWRIZmx3bWlzS0JCYjZ4TGNuNkdtdW9Qd1REUWZnUm9QTlpOYjBiUU9Q?=
 =?utf-8?B?MzZ4S2JjUGFIUWpsMmlJcmxuTmJGZy9mVnBUYlAzNlNWR0xBa2hnaEpEV1lO?=
 =?utf-8?B?OGlCWC92R0M4VjA5T0o0b1JzSWtJUzVZNU0wSkRjU3UxeFQ2Vm92cjB2NXIw?=
 =?utf-8?B?SlBpK1pEdVdDWHdLdXkwcDZwUGU2U0s1MUNCZ3lRTlBTeTVXblBTK0NKQ1FS?=
 =?utf-8?B?RzQza0Y3TG9kTVFLMHVsN0ptY012cUhUczZkdzVjN0hGN2JWZDlmK3FUK2lP?=
 =?utf-8?B?ejBabmRtUzRQQmNkMG8yZmdzcTE1RHR6K1p5V3hkSC9RaVZseFFVbytvbitQ?=
 =?utf-8?B?ZldqaVJDMjRrL1pKQWlLN0lCL0NhYitNUWtWaVBhRS84NGppWjlNTlpETDA1?=
 =?utf-8?B?cXJ3YXJwWkZ6SVdOUlp2SkN5Tk11d3ZhQnFPZklEaHo2bXpkRmI2RkFoNVJv?=
 =?utf-8?B?bGtKR29mS1I5WjRTdHZBTmJQTlhGV1grdFZITTF6NmQyQ0tBNU9va1VZTEd3?=
 =?utf-8?B?QkNETm14cXZoNnFHR0I5UUpGMG5yYXhyRHMvYXdLTVR3VnFETGpDRTZDbFA0?=
 =?utf-8?B?ZkNXelMwRDY0NzhYUzZxdW10bFBHUkEzVFRpRW9JV2tGK2dLRmZNVE1FYmpE?=
 =?utf-8?B?U2ZGeWZTY0ZZb0xJeHJlQ2t6L016dElFaHdBMXh2d0Yrb0tjNXM2aWZITlBi?=
 =?utf-8?B?QVQ3ZFhSd1BmWTl0Q0pmeFF6eEpGNjRieGluN0MrV0FOdC9QVXBUdm9zN05i?=
 =?utf-8?B?ak1XMUNDR1M5N1c2c3h6TFZJaHh5QzU2Rkc3RzNQQVRWZEdCM0oraXcxaWg1?=
 =?utf-8?B?RnpwTGZFU3prZjZCcEp3SUhtcFU1U1VTeHo1WVFWWnQ4MGZoaHphTDlFVSsv?=
 =?utf-8?B?TW40M3c3bFJqT3YvRGdPUllkMVova1dTcDBEOFVQU3Rwcmw5cFptNXo0d0lj?=
 =?utf-8?B?RkFId3IxVk05c0kyTEhNenFMeDFsRVR0Nkx4cUw5ZFVXaFdGVHY2MFNwNG9M?=
 =?utf-8?B?UEZKVVVhOXJSc2R6VkdpckdJVUNGNXQ4YUlaeVFBUHltd2RNL2lFRTNFcjBm?=
 =?utf-8?B?TG5OWStnZkxqbThaMndtcnN4TXB2VjNScEFGcEx3YUM1L0RWUmh6RGNObEdW?=
 =?utf-8?B?eUpJRWlYa1VlQU9SVGxhS2dUT2JHUHpxK3Rmb1JWTkE4eXA1TE1zYk8ycFZ6?=
 =?utf-8?B?VFpMV255V3ByU0pVU1pTMUVaR3hQVVpVVDBHNFNVVEdLQnRlZmhkNWZ0MW4z?=
 =?utf-8?B?SG5neGVHeVpma1pHWjlJanJadm5WZkxvK2ZkLzZvZUNJT0kydCtJdGp5T1Ur?=
 =?utf-8?B?YnVkMWtnV0hjbk5LcmNaVGhPQnQ4UHQ0NWVlamwwZ1VwbS9JaU1wSVJvbUg0?=
 =?utf-8?B?UXltSThkQm55RFRWSnREMUwxVmxDbzd4V1lTR1RTZGZKMXgyS2FROTFLMExD?=
 =?utf-8?B?SFkzUXFoTWVTTTkxckhSa2syQkViZXBNSzlqYjFLOEF4OUFwUE5GeTQwcTZL?=
 =?utf-8?B?Z0tuQ3BSZmNGUWcvVUVVblUwOGJ3a0ttN2t4TGtvSGlOZ2MwUWR3VzAyejRj?=
 =?utf-8?B?a3FWTlNWcnY5czg3OE1SZ2g1TVoyNCtoWUFNekh1Q2dwQWJ4Q29sVmhnMnpR?=
 =?utf-8?B?QXY0dndzbXEycDA1VklBVEFScjIwY1NIQ0ZDT29CR2daM0pHeEk4ZEpJMndm?=
 =?utf-8?B?clNkMVlKQWJhZmJmcFNyeVlUc1VOSG0vKytnTitOcjhQbDJ5ZnFTVFhPT2tF?=
 =?utf-8?Q?JKh11iLwgx+L2Zr+S9llGrU1Di8haMzVvMw6FYB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(7416011)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjJtMlpsem9pcEVaZitha0MzeVd4MExYMGpJZHZXcklQV2tSOG5UeXg4R3BO?=
 =?utf-8?B?OUpKdVgrc3k4aE0yOUFnZzUwZ2RyWG1ucSs1Ulpqdk92dmNxZ1JpK05GTkVv?=
 =?utf-8?B?Q0k2a3o2QU56YlduM0tNS2p0NXFRTHNKakFwY0hoT2l2YlBNOHZ6Sk5RZUlQ?=
 =?utf-8?B?UFVCam9NZkdyK2R2dGx5NUpCd2NOTis4Zm9xY3dHSlNoY2xnZE5SdkkzR3c1?=
 =?utf-8?B?VHRHZ3psa0FDazN6WVV0QkMvdHNLeDk4blJ1WlZISGxXT2lDcXg1Y2UrWTBD?=
 =?utf-8?B?YXN0K2Y3VTFIMXFvZkRZQmtvdTlBWVlUS2hNY2tHMi84OWdxYVB4Qjluc2Ez?=
 =?utf-8?B?UElFYlNKYzVaWm9tYkw4RDlyUnUxSXlRR3AvbFV3K1lMRkRnSVo4UUl3Mkxx?=
 =?utf-8?B?QnRnTmpvWFdUWllJOEw5c2EwMnNpTEltbWdvZ2ZVdTZwRWEwZzNsYm9sYllV?=
 =?utf-8?B?VHFlZGdJamJIUWdoWnNkelVJUzlGMHVvVWNINUFBZWpuMDJNMDRyOXc3a1BQ?=
 =?utf-8?B?aGhEM2FVdm9JVFl4dDk2bDBuYktjdUFqVm5xNlZST1Fla1NBZUZ6QWduSzZS?=
 =?utf-8?B?RHE3M1ZPY04yZHVvMCtwMm11RWU5QzFhZUJmSHoxUVlQK2dtenE4SUFLZkoz?=
 =?utf-8?B?UTJIN0lGWG5kcHBCcHFLaXJKWDZiNnpwTXBpdE5pR1RIOGVLakgrL3FuWGxL?=
 =?utf-8?B?WkxaL01BREsxUm9FVU5IVnVmS2FvRzQxdWpPMmlSMTJIK3I5bEtMMnlUc3hl?=
 =?utf-8?B?UlBFSkcvVy9qb3p5dkJVYkt1UXZpV0JmdzBjOEU5MVdraDFHWXRHd1BZTEth?=
 =?utf-8?B?NTdYeThlOHdOd0JvME5tMEl1NUFYRkl2RVZ3ZFd0ZTlwYk9GeEdpVG51cldn?=
 =?utf-8?B?RnBDVnVVb3QvZkRDem9RTW9qckMwSkl4RFBnRCtlMmxpQStRVXQxOTlKM2V1?=
 =?utf-8?B?ZmFHRDFMcGp2TlNIc3VEQTJFVjNOeS9YKzI3eUUybmwyVDczQlpwVnU1bkRa?=
 =?utf-8?B?OWxiR0ZHRUd3VmZqUHRuM09qZnRCSDIxY282N0hDVUJLMUFLekN3R0I5blps?=
 =?utf-8?B?THYrR1ljU3VMek5MTjgzN2gzeWhHR0hjdmZyY29HMjJqSGxLbGdkSitxRzFW?=
 =?utf-8?B?K1RXN1hjenJWVEk0QVFCM3hraVN5OHIxcmhtazdTMExUYTluTGVsdk1DQUJw?=
 =?utf-8?B?Z0NwSU84eGt1czhpY2RtWG9DQmpWUU1Td2xDTEk1OHJDL1ZJV3p2dVVHazBh?=
 =?utf-8?B?T3ppUjJ3eUI0VGhKUWxMYnZXdmVaODExalVIRDR4aCtCZkVuQkdLR1Z6Z1Vn?=
 =?utf-8?B?R2lEN3JsK3hIWWJQYk41MmxQbjdSTmRsTHc3K2VXN25lMVhGczhrcGd2NThI?=
 =?utf-8?B?L1REWGhGTzhIRVZCQ0MzZDRvb3RWWEk4VlFERytXZ091TUovU3JTV2hSOWQ3?=
 =?utf-8?B?b1hsVUxzQTE1K3RpU2ZwKzd3QzZFMis2VnU4T3pXbGhwVWovRG84Nk9SeVdS?=
 =?utf-8?B?OTU1a3o0R1ZUZ1Rhc3VqNWM4bjltbmhlaGZGYnd5RzlzSGN1VFd3VEdIS093?=
 =?utf-8?B?cHhBeDlUaUI4WEZkbDY4RzJ3RVlqM3ozWldtM1BmR1RJZUpkeFVteXZTNzFN?=
 =?utf-8?B?NFFGdzRiazFiUU9tc1Y3ZnV4blRuaUtYSEcxcDkrMk9VRTVnRCs2aU5PRGVz?=
 =?utf-8?B?VDFibWVKUHVUdkp6ZTJGZTVqSTA2aCtLOXg1aDBXek5iMEVPZGtiazYxQjk5?=
 =?utf-8?B?T0lveXhZSzlrMVY2cjBiU3FleDNWaDI2VkVIUG9SMVZMa0VBRkt5bXZDQkU3?=
 =?utf-8?B?T3o5WXpuY1dnOTNEbVhpaEJqS28rRWtWUzdhN3UyZm1yaXk1aXhTYWRobkFN?=
 =?utf-8?B?cCs2Zm9Pd2hhem1FdldFNkRhWkpkZjNISlE3Q3daOWtqMnlxY29vUFduYmk5?=
 =?utf-8?B?MW1ha29IcTJ4aDZneDl0QzBDWjIrRTk3VTJKcFJteDRrb25ubmxiUlRsaWlq?=
 =?utf-8?B?Z21SUXdNUVdOTmRwV2hOSmZHYXJXdStYU3Bxb2NNNmJYSUlPWElDQWg1Smln?=
 =?utf-8?B?c29aYXhuZlU5akZGNER1K3d5TEROS1hoU2doNE52M3lDZ01URzhXL1FnSWgw?=
 =?utf-8?B?L3VpMFlac0lISmRWa1NYZXZLeTNkeVRWYXdDTlJ3S1FFblFmQjhoL2RHTnpT?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdc66f99-e85a-475a-2e5f-08dc8ecd6681
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 13:00:02.1386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BAlJuFsTBFVW4oo8l1GnbK+/1q8RUxHVnDFYOHNtgqR35pcu51w2etnsFprigb7NhcHZsmEeEH1NDq+NwLEzQbkTs/TteS6TpBJCs7L5iTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718629207; x=1750165207;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PdCxM7Z08J2LWwZFrjonwQ0iI8dcNroU8H0F0DFa7JE=;
 b=VV6O8OIBfIHQaJcr7gRdx7BCLCX7v90zF56bSwm6A//Lg75Ztfx7JA2w
 8yS486rZPD+CpjNFJJMTnuoXz3sGYYIEK6qoO8i+AVBeuj6+BxyYRuNb3
 XZhgjEnjtdM041Wup/j4+Ir8t8IuVoRphP/jhuGl1OAQgoIKNmDshC8qU
 Bukiq5FXMLssAjxMa9wb3B+wP57vUK6bThQoatzWBN0AlrvlW3kgj7UWC
 c0hW5FGJLmTbmgwP8Xmzlr3mF87xiN0o1+8unwiSKj4bjfCMD5CesoavV
 x3k+tBbzXEBRBl+hoCx0kwy37u1DoPlrqeoTWmuhxiztz4VDK+OzloVKU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VV6O8OIB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: use proper macro for
 testing bit
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 Marcin Domagala <marcinx.domagala@intel.com>,
 Konrad Knitter <konrad.knitter@intel.com>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simon Horman <horms@kernel.org>
Date: Sat, 15 Jun 2024 16:16:41 +0100

> On Fri, Jun 14, 2024 at 11:43:38AM +0200, Petr Oros wrote:
>> Do not use _test_bit() macro for testing bit. The proper macro for this
>> is one without underline.
> 
> Hi Petr,
> 
> it might be nice to include a brief explanation as to
> why test_bit() is correct.

Let me explain this as the author of all those bitops wrappers :D
Petr is free to include either this or his own brief into v2.

_test_bit() is what test_bit() was prior to my const-optimization. It
directly calls arch_test_bit(), i.e. the arch-specific implementation
(or the generic one). It's strictly _internal_ and shouldn't be used
anywhere outside the actual test_bit() macro.

test_bit() is a wrapper which checks whether the bitmap and the bit
number are compile-time constants and if so, it calls the optimized
function which evaluates this call to a compile-time constant as well.
If either of them is not a compile-time constant, it just calls _test_bit().
test_bit() is the actual function to use anywhere in the kernel.

IOW, calling _test_bit() avoids potential compile-time optimizations.

From what I see in the code, &sensors is not a compile-time constant,
thus most probably there are no object code changes before and after
the patch. But anyway, we shouldn't call internal wrappers instead of
the actual API, so this fix is correct.

> 
>>
>> Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> Acked-by: Ivan Vecera <ivecera@redhat.com>

To be added to v2:

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks,
Olek

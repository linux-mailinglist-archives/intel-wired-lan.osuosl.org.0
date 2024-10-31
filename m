Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E299B779F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 10:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8176060A62;
	Thu, 31 Oct 2024 09:35:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ARLTkw8GfUl6; Thu, 31 Oct 2024 09:35:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF2F4608C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730367335;
	bh=1P6nQP8iEnZ8I/xyzQYAD9QtWd2ZxuI4ZmMHQ6V61xg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n+V8y+SELmUewBrWJA3PifToVPETR0Kj700HmHi7643LbqWxVAHm4WWapASaZPRS2
	 EGbLlNCeslCzClS0ucAKm29WGTFfBAR1VRSf7X1XwpogRySXQse/vDyYR3slbsWia+
	 eqyi8fPxIA7IoX0uLEg1b9KSDyj5W0imGOR8uLEpfL7/8d5WYmf7B0BknL+Lhj14fg
	 AEppywJUbd2+Kk3b4odLiElpLhUTFEntW/Ro6lfROOQeFwqXXqLvYhOmwaaO9deUvj
	 6auQdxnmuh6wDb9Fb06PTFLEsaYusQBJh3q1QheccmFhRBJN5qWQFq7sNYqjdyGEQH
	 ASndp+zgg2CTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF2F4608C3;
	Thu, 31 Oct 2024 09:35:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B5425E4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 09:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CCB381121
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 09:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3fb4E3vmDEIm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 09:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 58C738126E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58C738126E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58C738126E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 09:35:32 +0000 (UTC)
X-CSE-ConnectionGUID: 0QfiLg68S563foCEDbPGuA==
X-CSE-MsgGUID: oMQ5UYcVTA6GHQtr8Qs6HQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="34026540"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="34026540"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 02:35:32 -0700
X-CSE-ConnectionGUID: bmyXqQ7vRiSruie+/u+elw==
X-CSE-MsgGUID: VIzW0q8vQUe6TS+e7OC9qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82231963"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 02:35:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 02:35:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 02:35:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 02:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GKcmgzmNU74N0LXhOxTpt2P+jCeCwfS08tZU2tPvn0ZPAyhwafNrUlggvqANkbpGKd1rPopW/5uH5KoVtoI3LaaEcpQ3zdY1H7jp2aE74V/mfrzh6Uu5YwgVPk8mm3bkh44UaNS1jAS/R2WKz/kTN/rnHW5VO8DfrFBQfAGdurXFXq+jhbbeRv9/tHjdUfMqLWcama+6SmvBv7kRH64aYVF1xN/m8BxNUwwZrpIBug5MJS3SlpUhgMwRcFs0fraekeVS7xNHpu+n0HO5IXfMwMKq02kdfzgVICPzTZSGkKW9ySYEEPU+rApawXPBY5G9KvszUfXgqx+BEUTHmRR2jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1P6nQP8iEnZ8I/xyzQYAD9QtWd2ZxuI4ZmMHQ6V61xg=;
 b=CcKbuh5gDpVdjav6n2jT0mV3rbXiH/GASJT9BSM6uudAGVn5YDXuPqwAsqG6TvGy4qmU6gpPmFuTddKTaFLxonejXNVPph3AYZ1LWvJWXgZx/ZVjaex+LsnZb539wJm2DzN/MgLUf/K271p3arfHTyo89dqE0OqPTwsX6HqxeuvHEVQrmF05gADhgBjzPsM3bE5mJiCVuNpexb1IGTLEe2Sy8Cv3uCs9zdJ7TUxYsLmeWR+YmLSd9vZIMjBi050VWdtJ6DoOTZNMN9epdI7H1lHSVVPgfJ/06E3ncCDv4M5vkQbojy/cCq/jK/wZosgF59AjoV6405POJQWLvbtp8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Thu, 31 Oct
 2024 09:35:27 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8114.020; Thu, 31 Oct 2024
 09:35:27 +0000
Message-ID: <50fb01db-efb2-4c02-85b6-6f8d0a3089cb@intel.com>
Date: Thu, 31 Oct 2024 11:35:22 +0200
User-Agent: Mozilla Thunderbird
To: Chris H <christopher.s.hall@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <netdev@vger.kernel.org>, <rodrigo.cadore@l-acoustics.com>,
 <vinschen@redhat.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
 <20241023023040.111429-4-christopher.s.hall@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20241023023040.111429-4-christopher.s.hall@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|CY8PR11MB7945:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d3b5fa4-3006-4480-ceed-08dcf98f5a4b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0NsdVdxbUMvejJ6cEV3c2grQ2txcVhBU3doOGZodElmVnFjRElXVzdCai8z?=
 =?utf-8?B?VU1SbU4rWW5yNHdVZSthMkJmVEJuRUx2STBMU2pONVB4S2QwNlRINld5Nko0?=
 =?utf-8?B?YWs5UDMrdUVZSE0xeE1iWHF4ZU9pWC9TNG5EcWJNTEpad0pjb1Q4L24wcDBm?=
 =?utf-8?B?Y28ybEF5MGVJTDc5MHBkMis0T3Jhb0RuK1lOQ1VYM3NzOHVGZzFtVVFBc3pR?=
 =?utf-8?B?NUZsMVI5YjRVZWN6NDNtWW43Y0RsL3VpYWI3VHY2ZDMxMk54WWlVZkc2SFJK?=
 =?utf-8?B?a1dLK0ZJZzRTWkRGMm1GT0lqcG9BVDNPNG9wQUdUblVJWm9VY3dROVBVYTA1?=
 =?utf-8?B?anR5cVdMS1lncmh1WE01N3JZUlV1ZmJHU1BNUTJ1MGp6bUFSSytqSjFmMHRn?=
 =?utf-8?B?aGUrWGx1ZHR1UktpaFcrbjk4aGRmQk9RY0JrMkUxblJWZ1NrbzJPdy9Nd2Jq?=
 =?utf-8?B?TmxKb1BsSXZ5WlJKWE1QblYzMmJqdWs4bU9kMHpaYnVFT0lUTVkvUi9KMVQ1?=
 =?utf-8?B?S0FSL052akJJQisxOC94ai9rSFFxbzJydmd0K2lHa3EwQ1pRN1dRRjBVRHd3?=
 =?utf-8?B?WlEyWWoxYjZ5WHRHYkJYcFpzY0hYajh1bVJiOTVndy9id3FraU9RMWNCYitB?=
 =?utf-8?B?VitqN1lWakphbjd0b2lEbnpxbStXRVJZclBLT3Vyenl5NUJnMFNJeFBWVFc5?=
 =?utf-8?B?Y0d3K1hFYVYycVRFTkRadTRyYnB2b1k4VElGcEs0dDBpS212bG8vY2xHWkwx?=
 =?utf-8?B?MjBXMXFQV2o3Qm9iNG5JbTRXbEZiNnVKbXdvWVZjRmhzL2lWbFpFMHBLODNQ?=
 =?utf-8?B?MFo5cEpiSEV4eGVzVnJXWm90YjRvM0VHQSs1dTBMcytrWG1KS0JabnNDRmp6?=
 =?utf-8?B?aDk0a2UyTUhPQUg1dkJWUDZHTFdheUp4c2RvaWJtL3pYaCs4Q0ppc21sMlV6?=
 =?utf-8?B?elBMd3VTZWNCaFl0NEtMR3ROZUl4cGRONmZkYTloQmhNdjNBOXp5UnRwa3JK?=
 =?utf-8?B?cGg1RWM0eHZ4N0V2aDRSRFRZR3pEZXJnWXVNbW12SWV3R3BjYzRDM3d1UTlG?=
 =?utf-8?B?aGszeUJZWHZ3eENaTDdoZVR1REtudy9nVkpRK2NlRTZFY09UUllpUzJGaTlW?=
 =?utf-8?B?RmMxalBaa2IvQ3V1Nkc2YzhCVGVqUHlZSE54ZC9LTmkwQ0xjOS9sT2J4T1Q2?=
 =?utf-8?B?czlrTDVQRmdDeExDNU1zNjBsZysxRWpDZkFOTkpoVkw4Nzl2azNtOUxXaHFs?=
 =?utf-8?B?aEx2MG9YZEJsNjVSTFpDYStSeDhxTUhkRDV2SVpsUmo3aDVRSTRNM3ZraVRm?=
 =?utf-8?B?NGFCZHd2S0ZYWXhKeW9JZ0ZRNFF2VlBCNkhFMnJiVjBaa0xDTUVGamJxTEE3?=
 =?utf-8?B?Q2ZReDREa0t4bU0vQWZzRCtEdU1MZWZYSHVJWjhMQWE3a0l6aHNCYllRMlhN?=
 =?utf-8?B?eGhXNUsxVkkzTTM2QnVsaGsybUtIbnJuby9lNThCaFg5Y3U3N0RZUTRSVHJo?=
 =?utf-8?B?bTBSQWZIUTJPN0toaHI2V2R6MnZTVXhiVllKZG43YUNZcXpUZUVDM2E0RTNT?=
 =?utf-8?B?Um9WLzNKbnoyTEMwZU5PZVNNQU4zTHI3bGVOVG0rVkh3c3pNZDFZblFGVVJL?=
 =?utf-8?B?U0ZDeXRHRDB0SDVzdWZ6L0ROWHcwVHNJdzEzMnlxM0dQK3pwNzdhdkVrU1Q5?=
 =?utf-8?B?ZmpFMHJzUEVMODhFQVFwb2FncmFEbVJzcnRtYXhlWkVxeEdqR0hsZkoxb0V2?=
 =?utf-8?Q?UnU4FgWGTli+BZnWbbtlfYZKSRN81Z5rwwpmRK5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVlsYkNXWlQ0cUFOdzdhVHh5SkgwblpIVkFoZ0UwYm81cVFDYTI4Q1llc0NS?=
 =?utf-8?B?RVJRRGRaNlBsMG5XeEN0TkF0SXBSVkF4Vy9nZVRsSHI2S3RFQWtwYWhLc0Fq?=
 =?utf-8?B?aUpMSmhZNEtTMGZvUG5Fd1IrcWY1VUp4UlMyL2wwYjJTbVR1dFcxdGo4S2I0?=
 =?utf-8?B?Szd0SDNoMTZGY25ub1ErQ1QzTEdDcndoeTZmUHM3bWZQSHUrazZ6UjlPVkpX?=
 =?utf-8?B?a0xOOUFXUzhNcG5DOWdMb0lMYll0NkpBVHh0bWloUlB6RVlHcWlOUXpxNVFW?=
 =?utf-8?B?M2tMcXlxVWNsN3kySGs5TVQvTnprVkFzeEo5MmJTSXFxSkFRV1VrRnRmbC9U?=
 =?utf-8?B?WWNPQkJrZm9KbHZLZWZwTUdJcEV2WlVFUEZsSUNpeWdRb2xOT0YraCtISlhk?=
 =?utf-8?B?NG5vZmpCdDJPV3lMMW1PR2RTMmJQNWtDNnZ6dWxhVWQ4dkttMkcxN3BiY2lB?=
 =?utf-8?B?TUM5UEZHaEw0bk5EM2Q3TlBoRGkzMCtzNktpVVF5bUNwVnBiVFdnQ0N1bm1N?=
 =?utf-8?B?cFQzUFFSR1lOcEFFMW9Kc2dkM1BwM0U3cTBpTmVjZnRtZGRiWTcyUnZ1NjA3?=
 =?utf-8?B?L1k0MlpKN3RHcFk0dEhiV0tHUnhYRWdkNDNGdlRCODM2aDJKUHZueG50N01v?=
 =?utf-8?B?ejdEN1NMRTRrSmZzeHNycmhIL0h4d0o2SW5HYXlLL1V0SXdTU0RLQ1pCMURa?=
 =?utf-8?B?YlJ2YkpwMVlPQkFXTy9ZdzVGeUdKQTV0cjRjeFpJckdLSXJLRlIrT0thbG80?=
 =?utf-8?B?TFU3OVh5Si9hTXE3NzZ3bEpSZTkvb29GY1Fsd1lxNHNLRHg2WjBORFdURk5Y?=
 =?utf-8?B?RU5DTCtxRFhROFRXcWZ5MnlQMTRuaGpNcVNFd3Z2VXJwY2hhMWkzOWhraEpP?=
 =?utf-8?B?YVZRMHB0Z0oveVhsd3JaeVN5ZWovNEtjR1pBNlI4akNyOGdyaGkzRGJTTmhP?=
 =?utf-8?B?YXh5MXJzM29RRk9GVkI1UVd6V2NzZkhvbjRnODE4a2l2SUZQVkhJWFl0M0FP?=
 =?utf-8?B?S2RiUVB2cGlNVHU2UTVvSzhUcVZrWks2N1BOUVRIYlJHU3BZeTRRUVJPMWVY?=
 =?utf-8?B?NDZVMVhqb1pZYjRPK0p4d0pTQTYvUVROQnd2OWFzTlQ5QStnWEpSYjFmQ3ZF?=
 =?utf-8?B?WE5TeXFCMmJWL2pHellDbFAwU09qWjVxNjRkTlN0VEUyQ0t0a1lLOUtkTzJq?=
 =?utf-8?B?a3pYd2RSNzJGTm5nY05haHVGYzF1b3MwcFVkcDc2UkRHaTVTb25wdVVhVTJ4?=
 =?utf-8?B?T2I5MnIyTnQxbVp4ZzRhNWE0RzlVRG9QK1k0MGVNQUQwZTVEblMwd2R4OWFx?=
 =?utf-8?B?eTBmYU5iZzZjL2JWdmRhck5xd2xoTjJPaHdLZmUzaWJqeCtIR1R0WEhicUxo?=
 =?utf-8?B?dGRDUk90NzRXcW9xZTNlRTBsd0ZLcmZqZmVtRzN5S0VtbDY3SXowSmdWRE1m?=
 =?utf-8?B?YTdNeEE0cDU5eG9kVjJpODJwdXZFMm9SaHNTUmg1dVdMOFlLdi80b2s2Tmcv?=
 =?utf-8?B?a3h3MFk0Y1V4UkRxNnVnbk4vRWJXcGhDdGlCTk1aKzJOL050SHdIdmIrMzU3?=
 =?utf-8?B?STAvSWovMDdjT0hEQjgzZ2JuT2Q0RVBJUHd2ZWZFZXFKbW9oU3I2M3Q3Mmk4?=
 =?utf-8?B?WExnZ0lUU3lDVHR6eDV2NEY0QjIvNGVPSy9DTm9hTVo3VXhmdm92eHFOa3E2?=
 =?utf-8?B?ZFphZk1DdS85OEJsYzA0akU4c3hFR2tOd256cGVQZTV5eXcwbE9aTWRwNTgy?=
 =?utf-8?B?QkRhOWptM3o4NG5saVZzTFRsZmpOdWF6ZStqQm5jWGxsYUI0T2t3b1NjYUJ2?=
 =?utf-8?B?WEt2T25BVGlhb2xmdys5MkpPK1d4NUpCV0xJSzY3ZjJhTmJyNFIxSUhUMEZm?=
 =?utf-8?B?WFo3cDFUSUtIZGxwK2doLzdjODMwQjl5UUFwcXhBYU5UejZzZURFdWZOMmJv?=
 =?utf-8?B?RHJ0WFh2Y21QZTBsbklCUEIxeXlhOTk4OVBqcVdhcDJGclB3TVduMnZTZmds?=
 =?utf-8?B?VGR2NmNqYnpUVy9yc3NqQkJRaDBwVUcrb1AzK0RDTnFSWE1wNFZVT2ZwWW9w?=
 =?utf-8?B?VFF2b1dSMDFMUHhBeXB6K1ZwV2hFcDNsa3MvN0lmQjl4UUxzN2ZXUlhER0w3?=
 =?utf-8?B?MVpYVXhjMzRwLzVxSnA0T01vNjNoL2VGNENCbVN6NVdvc2JYd3ZOUkdjVVBL?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d3b5fa4-3006-4480-ceed-08dcf98f5a4b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 09:35:27.3736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0l751dRIqv5bJ0gbC2JKivQnYu6U2x/LLQx7Zh9kg80GZs1J+rjS32cDZ1bU8MrvzUZEy6Nn3QeQs9UZjiunyLLWVe3zlSrUI0loT38RhII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730367332; x=1761903332;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HA/kpDv4D9v4JD0+KLZav/ZNnZWjYzSRDxrQpHu89U8=;
 b=J91Pns0Jldzbu0j9Jg5Hv2T59fX87zGBcA0I0P/IQEClzT38JG0MwHD0
 M4jOayYyzbm8QQAKMVLCo9VENXqPlxnWOp9kFfzUFXOBHz+qQJBuAd1NC
 4FD6W8M6KX+ChNAipIBx0fhvwTM0jmhdUQ8XhB/Ho6hAbxGjvf1/SJeSq
 VsZZWCMXaJx37vgaUST/dTVtn5fKq0jBcNzmEMsLVq1Cw3+XnF6sLktXY
 0R+J8WJyGQ2ySy7SKdlbZYepZGT9ax3S1gnTKHueLE0qhlyRooH9niftL
 j7iIkmHMBAyA5jroapBXf3+QfYnSNg/zX9UYOaMBRE/0MZh7935qCNFbl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J91Pns0J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/4] igc: Move ktime
 snapshot into PTM retry loop
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

On 23/10/2024 5:30, Chris H wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Move ktime_get_snapshot() into the loop. If a retry does occur, a more
> recent snapshot will result in a more accurate cross-timestamp.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++---------
>   1 file changed, 9 insertions(+), 9 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>

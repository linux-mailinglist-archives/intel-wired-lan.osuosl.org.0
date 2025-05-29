Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46347AC79B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6348C610B8;
	Thu, 29 May 2025 07:24:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TuKpiAuMrkfs; Thu, 29 May 2025 07:24:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7945F610B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503444;
	bh=cw8UWEO9E25j0TpaJYELPNm0+s8VZaASsGyXqf79FgU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aTizj6eRPHP4ipdhPAAvKOQhmLoZGgOthHWdlZgkBVPcAMPy19Cwyz56wteG7l64K
	 nhrXauV3cz/O/wQy7DWWWADT9QPp6Ll0oYLyc5KuVibwLtjIJFnHNG42c73KfiRhSz
	 64Kudh8d+1SeB/wcmik1sPq4Y/kM3/6FK/7nBLnnbnbzP0FhKUOTzC77I85z7QBdXO
	 kPGEL3zAr25/lF03VuR9wV0vxTI8GtCKg5G1nHjh4MHPczTUO1Ygg61Gpalz9hBTmI
	 5+OnQ4CBAog3h5Tg0xL9nNAMY4Wlictf7M+DuTPeLGXUBL1SHP3eh7YezaCEe2Iluu
	 GhfnFjyzGxRtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7945F610B9;
	Thu, 29 May 2025 07:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AB89414F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D7B2610B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ony-1PEX0wVn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:24:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D062060FB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D062060FB0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D062060FB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:24:01 +0000 (UTC)
X-CSE-ConnectionGUID: MSWMH9ImSfeDokNkgNIDwA==
X-CSE-MsgGUID: 9P2MqPGUTLGDk3nJAzHy/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50704741"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="50704741"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:24:02 -0700
X-CSE-ConnectionGUID: 0YzK84fwQySVAOxyfXnJsQ==
X-CSE-MsgGUID: kzhLWCtIQWi3LmE4rHTKWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="143814641"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:24:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:24:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:24:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.66)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hBAYFZyOXmIS1c3Z/jHg9pVvAg787HJZorOLkPmicZkPufZsKfzXAZslhBadQCeUwLsbqlHpyl4iiAD24uoo7dPAsGz2cQZkv0+njQPdisx4SP+Pprm8K3gVIpHWLlIMrpTh+67n29FKKrmgJUGnpSKVowoBLuo90GxXRtFbiLSj6xl0TWVFPMr9W4gvHi+BOWQ48+NaSTZ6AfYA0Uw+8gGelvc6FR8t9J0G7DGfTByMa69Teqh7unUfnsU1l2lxHcBnQ8l7hix4TqpJ0oEZBg+n/DARKHbrSek0pFS4xSP4EicE+Z6xYf93j5rrs8zU3RNf94luKhnexxBKxXx14w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cw8UWEO9E25j0TpaJYELPNm0+s8VZaASsGyXqf79FgU=;
 b=q1jfxnhKQIAlOx/7QMU96a0CMK+6KRyuQGWtfh9Lhff36NB7ZF7Jw2wAl1Mqa5sGroTkoJFtrZQrcYtYao3DZ5ob1ilfCPDUF3fKHxd1owv7tiVvaF9lqtIwikZ5knNP2894VNg/935nHUdM3THa379omcL+NgNRsXKgyMcGhoxOOGKncOIcBWjO/8zFDwvTq7GV6B3COsfJGHPvaF0Aw0/XmeolDAt4B4HF63lEhocEmrui2JP91da696RL4n/DTO1DNjqxm6v6e/7d0/lTBqggbixiV9aUzm7/g12kbSpa8PgU5PzrCgnzSpev5N0DLtaYPSpbIOZ9LRPPysiHog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by LV8PR11MB8461.namprd11.prod.outlook.com (2603:10b6:408:1e6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Thu, 29 May
 2025 07:23:30 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:23:29 +0000
Message-ID: <12318cdb-afa9-4fdb-b6d7-6568b31c1817@intel.com>
Date: Thu, 29 May 2025 10:23:23 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-6-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-6-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0023.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::12) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|LV8PR11MB8461:EE_
X-MS-Office365-Filtering-Correlation-Id: cdce2f5a-6245-4c73-3b1b-08dd9e81b5e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3dGaXd1NENOTW1wRURxZ1J6b2puUW1oNkVndUFyZjhQZjFQOFJDT2M3YnVm?=
 =?utf-8?B?Y1F2OUJFak9NZWFqNTRzNjdSQkhjU05CVmJmRlZaTWg4aUdQRnQxd1ZOcjBy?=
 =?utf-8?B?dzVpWE55ZzdWcnQzTnk1SkVYbDhWM3VJMGtDTnhKeHBQeXF2V3pMc3dVU2ky?=
 =?utf-8?B?SmtxMWJsN055cVMxSUh1dTkxVnhLVTNlYTFxMGtkRE5KZXNSelRqREFkaHBi?=
 =?utf-8?B?dTEvcFdJTkFaMEpRV3Q0blBQbUo3c2xRTi9JSXlyN21Idm1wV1dSczU2TXBn?=
 =?utf-8?B?UzBVWlh1RlkwRVl0b2RJVFJIMGtJY0E1SEpGcTRhcmZZSUJPYjZMWVVhRzly?=
 =?utf-8?B?VHFuV1BHeG9FdFhNNCtCd3B4RjFQbWsxR2tBdER1VVdocXNzRytGaFdzcnoz?=
 =?utf-8?B?N09scitYbGd2RmY0bWFYWWtBdktFYU9DMjE2aUxDaTVjbDZJVUluZU1XUmZz?=
 =?utf-8?B?azFJMWVwK2hjUUdHa3N6d1d6OUlJVkw2RVRHNXUwSDRFbmNwZitNUDU2YmNq?=
 =?utf-8?B?UTZQaFVYZnN3WGliRnB3QUcvdGRqdmRSQUZxbUxnT2hTVmp4bWQxS21iQTlS?=
 =?utf-8?B?dGZIZE1VOWl4c1NUb3dqbVV6Zzd1V0Rra043Y1FBajJZQjQvaFlHMHJXSFhN?=
 =?utf-8?B?U3ZIZUE0VG12RjhoWVY5dFpLM0sxczZVdExmaFhYS0pNMUUxYlRZbGJxTDA3?=
 =?utf-8?B?WlhraEV4SUJDZytGTlFyN3NGb0VkM3hZWVg2VllEc0MwZStGTElSNU1hR2ls?=
 =?utf-8?B?ZWpucDNnYmJnTGdyOHhPNzVQYVhEVjl5cU8wUDZvV2lJS2JSV2dDMFA4SE1G?=
 =?utf-8?B?RlRzT2lmcUVYZUJDZThnZDE1b1hyMEFqNFBpbVhOYWFra3huNmRCRE5VMU1w?=
 =?utf-8?B?c0ZROS9ZUU8zaU5yb0dkcTNLaXhBUzFhUkx1dDhnSmVCSWhtWVMvK3VyM3Z6?=
 =?utf-8?B?TkEwc2dMTEJ6a3lPV2NneHRJTHJPY2NwNmp3MXFiWFlxTVM0SkcxZTUzVW1Y?=
 =?utf-8?B?bFVNb3dGQ2I3TGZvUm5qWGJPWW1EaTFJZGZLak9rbTNJNTJjdmlxdG9KNVN5?=
 =?utf-8?B?RERxRlYyb1RWc0dzbnltQnJxRUVaM2kzb0tIa3IvVUFPSUJzZEZYcWR6NktY?=
 =?utf-8?B?enNtZ1dvV0VwbVlFbTNEVFVPS2RLT3pWOURkZlV3K3VtK0xTZlE1c29NM2ZJ?=
 =?utf-8?B?YTNIOWY1aUpnZU1ZaWJPd3RpQUh0azBBN3ZpcHlFSUhUcVNxUTVPUklNNTFn?=
 =?utf-8?B?bU5LS25hY2tuenorS2tzQzd0R3dJejQzU2szejFBYTdubTRhZ2VicDk1Tk0r?=
 =?utf-8?B?cHN5UTdPTDYwNVI0VGd4U2hhU3U1bk9FUlZTRG0rem95S1RCRlBUc2x5OG1u?=
 =?utf-8?B?NGxuOEx0Z3d4WXpUb3BRN0s4TVY2ZzltUlBudkZqRGs3UjkrSmRpMUpHWGhK?=
 =?utf-8?B?V0h1SHA1T1B0eGF0WmIwbTBqV0lNdFRNR2ZhT0N0VSs0QXpVRnVhN3dsK2ph?=
 =?utf-8?B?eVR3T09JOUYzTEpGNHowdlVvbThjM29hR1lGQlRaOUpsWnFvR3hSZ3QwM0Fq?=
 =?utf-8?B?T3UvQ2pXSDhYbzUxenVyMVByeUgxUUJwTVQ5dDJ5OEliU2J3TXE4eGpjUVd2?=
 =?utf-8?B?UllMbXU0RVUzNXVUZHRMc3BMdGY4dnpBd0VRMFUwTGUxOGJxR21FRmxXbHdk?=
 =?utf-8?B?Y1k5NmtDc3ZGbFNSdVBnU2VPV3JSQTY5QWlMV1pOaHFPZ0lPbVh1L1ZtNm1D?=
 =?utf-8?B?QXdCc2VOUmdFT1ZsUEQ5eU9COHd4bHhGSVZrK28vdW1WS3Q1blovS09JYVk5?=
 =?utf-8?B?Z1czanJtZERCM2FVdEY5VHYrNXYrWWZiTm56Zk54WWhONDBDQ2JzT0xlVHZV?=
 =?utf-8?B?ZE1SZktYazN1a1duZlR5di9qcUN6MnFLSWZuNXFrL1VoK2tpc3lyZlc5enlZ?=
 =?utf-8?B?WjlCRG1aUmNMM1JwOGJWVDhRdmJaakdhSnc3S3g5MzRiVmlpT3dyOTdhKzFy?=
 =?utf-8?B?Ukw5TWJYNGNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWlCaXpFZWI2ajJSU1Jpdk1RSTRWamxXRmFUeHY1cGE4MitLajJsemtxUDE2?=
 =?utf-8?B?RGVhLzdQMEFwMjB0NXg2WEFKZHBNOVZRd2hjQjNvMGErbDBpcnBLbm1vd3lO?=
 =?utf-8?B?YTUzcTJueHdlRnptbitqTXdZTmd3c1NXdWZTK0h1OE1tbm1kRVdTbDBQVGlG?=
 =?utf-8?B?TlZRTTl5RHc5cGQ1Rzc3YUd1aU81cHVXTEs2NTd1Qm1GQ1BaTStRakQ2Qm5Z?=
 =?utf-8?B?VnRGeE5rZUYyeDVhNENrSUlpai8ydC9LWDlBcE12TWpEdEJSYlFqQ0EwLzhv?=
 =?utf-8?B?UWRVNHZPSlNrNHh6V1VtakRJdWw1NGM4Y0lwaWwwQWZ4ZEx4V0s3L21XVFFE?=
 =?utf-8?B?NzcvcG84N2twbWR2TU5YUEgyY012VTlzaWVKVU4rM2wrUWVHczRmaHBCM0cr?=
 =?utf-8?B?VWlQdWdkcUVtMDdDWjJDRUJ0YU9NN2dVYTEyMWhldjV1N21WMUF0MWxFMjNl?=
 =?utf-8?B?ZklwZDljY3ZNeE55VVBmYUpwbDZMM0JuVGU1UnJMdVJ5N3NBakVFeUNLSkIv?=
 =?utf-8?B?VU55VjJYU0NGc0tOUVBhaDVkZmlTRzh6bXpFbjdSemJKUEFyaC8wNmVuanUw?=
 =?utf-8?B?MzEyUEhDSWNJWS9ySE1kL1JEZk55bElwZTZVMFZjMk45SWRlQ3N6b05yQ1Rn?=
 =?utf-8?B?SHo0RXhOMmpZS0F1Q1l2VXBpcjBLbjNwdDRoUkg5ZkhZeVRZL0FyMGRPSzNY?=
 =?utf-8?B?NUZDVHA1M284WWUrSGx0ZDdsZXBmeWlNVDlZSzlIOWpVUHQzL2FzZVk5L2tr?=
 =?utf-8?B?MzhaZWhTRDRIZVhraVRsaEJUTWpKZGp2OHkybmJVY1FhN2Rtb21qNExnRU1R?=
 =?utf-8?B?ZWxIcEplOTRuYlRZUXRmT0NHSGRnbEhnSkExTkgzMGhzSmdQKzZ6bUQyYitL?=
 =?utf-8?B?SkVkTk1hNDcxdy92a1ROR1gxOU16SHMzR216K1h1dVJ0THZIV0ltN0lHbXl2?=
 =?utf-8?B?OXl3eUtPOGFiaFFmd25OVDFIRGFSN09BRUt6aENIblMxNmNnMFdKNnZEdHRS?=
 =?utf-8?B?d3VnMU5EVlFmNVBxM2ljRC8wZkN6bjBwMElZTENRU29Zb1d0eW1zbkFFb21Y?=
 =?utf-8?B?R0FOYk40dEtDY3NxT1Y3Q1dsNllSaHlDNG81YkdXOUR4TkFReU5mTlBVeUY5?=
 =?utf-8?B?cEs3eEF4VmtjOVdKQmlxWHZxRWdTODg1a1Exa0VwMWU3ek9VaSs0OFZldkVi?=
 =?utf-8?B?LzNuTGZiTDdzdG5wQjBzTHplUGRNWnBJRHN6d2tTQ0RlM0FlR2Z6NFZNQzVk?=
 =?utf-8?B?aTFBUTBCN1VoVDZSS1FNV0ZtbFFFcGFsdVBTU0lNd3I2Q01rUVdiWGUyZkN3?=
 =?utf-8?B?dzN1RTFteitMbTJTVG5kUHBzdzUrdHptYlhwZlVOMDNqakIyQnhmSEs1YlVV?=
 =?utf-8?B?cmNGOUNVREJUWEduaENKRlZsRnE1UjVjVW5IZzdoNVdJZ09hUjZpRTVHbytt?=
 =?utf-8?B?bTAvNmM5S3h2d2lQbTJ2clRTVTNNQlVZVjZ2QmlsbW1FaTNTRkkrSkxCeFJ1?=
 =?utf-8?B?bzRzRmYvcVpxYW96R2ZsSVBodnVXNmhEUVNZemlEcjk0aTJDWFdsU3J2M29W?=
 =?utf-8?B?REJTV0dqVWRiQW5Dam84amVUUW9wRlJRaWdCdUZJdEcwMEplUDFPZTl1UmNI?=
 =?utf-8?B?VkcwcUxuQ3h3Tmlld3A0ZVg3SWJ1ZEVQQWEwVG0vZUYxT0U4dDhQNGVHa2tp?=
 =?utf-8?B?ZkEzYnBsOWpJNTlzemYzeTgwdTRCUW11aTk4dHA5ZHZ1Qm1meHcyMmhUM3Z0?=
 =?utf-8?B?MmdCYitYWGRwL2Y0Q3VqRTdDSW9ENnRQbUtDcG9Xc1Z0em5ST1BSTWNWU2hh?=
 =?utf-8?B?dDBwbExMOEJwR2gwMkpEbW9NTFRMakhhckFYQndoQjg5QUppUG4zcXh5VEFs?=
 =?utf-8?B?T3B6WW5ic2hkQWtOV1FCYnlvVzRBRGJsbFF5QXlBS2tZRlBmRjZXOENneEd2?=
 =?utf-8?B?elZTSld2TnNiVCtVeXJRVVppMDhkSlNlTGNzdjlaclAvZnJOckZHYmcyU3E0?=
 =?utf-8?B?eHhyaUQvL1JLcFdoWTZ3eEZsNmFLUkFWSzhoenNUeFZ2S1BKOHNJckFQUGR0?=
 =?utf-8?B?OGdwUkZ5MkNYbCthWEtBelV5aVlTUTVpUXF3aDkvakdvTmFucnh1Kzg4RWFw?=
 =?utf-8?B?Vjh4ektTOWMvbVIxS0ZlTFoxRUZ3dXZnVCtUNXZ2Nk1Ea2hORlFyNFdLWm52?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdce2f5a-6245-4c73-3b1b-08dd9e81b5e7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:23:29.8801 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RQpJ17r5buRiWP5XJQyCrrWgdC+xK6LME7e2rqeBujqV1LL8/2TQyjrAeEKhpEC77gc4IDT/b7ThmBteB3Nqk3k2A+7mQ50pYPa5aBCtCfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503442; x=1780039442;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=frANL9aNe2/Y03q+L3eRqpQM29iQFL6ksWDwNQQD+Bo=;
 b=YSy05S3JkteS79ij28Z6iestqmtO3WXta3ahqK18DaO2x4Oeb8knwiDj
 iCXCOlndIN/hElj3EyBFfAimD3VLDYbp2yX46+3MI+0GVt9OrH+qZogby
 izRgjEqUaGdaW54mzo/WymnI/K8j1xtu7T7Xu/+C/n9aE4Lyul+xpkjXY
 taSCuSk4PTLJK97yBumQ+cjEpHpmCBoni5hSFUZWT0L2vsAi0sO5hrVVj
 9hfuhkKCQ9474n96Q+2HopCZLM22cTKmppdLRJ2vq6tKaWWbHfbwlIt4G
 hfd3eSXWs8GOlmhjFct920ar9H07y6l8Z7kMGccWNFnL1PCYOhQ/uaofZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YSy05S3J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/7] igc: add private flag
 to reverse TX queue priority in TSN mode
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> By default, igc assigns TX hw queue 0 the highest priority and queue 3
> the lowest. This is opposite of most NICs, where TX hw queue 3 has the
> highest priority and queue 0 the lowest.
> 
> mqprio in igc already uses TX arbitration unconditionally to reverse TX
> queue priority when mqprio is enabled. The TX arbitration logic does not
> require a private flag, because mqprio was added recently and no known
> users depend on the default queue ordering, which differs from the typical
> convention.
> 
> taprio does not use TX arbitration, so it inherits the default igc TX
> queue priority order. This causes tc command inconsistencies when
> configuring frame preemption with taprio compared to mqprio in igc.
> Other tc command inconsistencies and configuration issues already exist
> when using taprio on igc compared to other network controllers. These
> issues are described in a later section.
> 
> To harmonize TX queue priority behavior between taprio and mqprio, and
> to fix these issues without breaking long-standing taprio use cases,
> this patch adds a new private flag, called reverse-tsn-txq-prio, to
> reverse the TX queue priority. It makes queue 3 the highest and queue 0
> the lowest, reusing the TX arbitration logic already used by mqprio.
> 
> Users must set the private flag when enabling frame preemption with
> taprio to follow the standard convention. Doing so promotes adoption of
> the correct priority model for new features while preserving
> compatibility with legacy configurations.
> 
> This new private flag addresses:
> 
> 1.  Non-standard socket → tc → TX hw queue mapping for taprio in igc
> 
> Without the private flag:
> - taprio maps (socket → tc → TX hardware queue) differently on igc
>    compared to other network controllers
> - On igc, mqprio maps tc differently from taprio, since mqprio already
>    uses TX arbitration
> 
> The following examples compare taprio configuration on igc and other
> network controllers:
> a)  On other NICs (TX hw queue 3 is highest priority):
>      taprio num_tc 4 map 0 1 2 3 .... \
>      queues 1@0 1@1 1@2 1@3
> 
>      Mapping translates to:
>      socket 0 → tc 0 → queue 0
>      socket 3 → tc 3 → queue 3
> 
>      This is the normal mapping that respects the standard convention:
>      higher socket number → higher tc -> higher priority TX hw queue
> 
> b)  On igc (TX hw queue 0 is highest priority by default):
>      taprio num_tc 4 map 3 2 1 0 .... \
>      queues 1@0 1@1 1@2 1@3
> 
>      Mapping translates to:
>      socket 0 → tc 3 → queue 3
>      socket 3 → tc 0 → queue 0
> 
>      This igc tc mapping example is based on Intel's TSN validation test
>      case, where a higher socket priority maps to a higher priority queue.
>      It respects the mapping:
>        higher socket number -> higher priority TX hw queue
>      but breaks the expected ordering:
>        higher tc -> higher priority TX hw queue
>      as defined in [Ref1]. This custom mapping complicates common taprio
>      setup across NICs.
> 
> 2.  Non-standard frame preemption mapping for taprio in igc
> 
> Without the private flag:
> - Compared to other network controllers, taprio on igc must flip the
>    expected fp sequence, since express traffic is expected to map to the
>    highest priority queue and preemptible traffic to lower ones
> - On igc, frame preemption configuration for mqprio differs from taprio,
>    since mqprio already uses TX arbitration
> 
> The following examples compare taprio frame preemption configuration on
> igc and other network controllers:
> a)  On other NICs (TX hw queue 3 is highest priority):
>      taprio num_tc 4 map ..... \
>      queues 1@0 1@1 1@2 1@3 \
>      fp P P P E
> 
>      Mapping translates to:
>      tc0, tc1, tc2 → preemptible → queue 0, 1, 2
>      tc3           → express     → queue 3
> 
>      This is the normal mapping that respects the standard convention:
>      higher tc -> express traffic -> higher priority TX hw queue
>      lower tc  -> preemptible traffic -> lower priority TX hw queue
> 
> b)  On igc (TX hw queue 0 is highest priority by default):
>      taprio num_tc 4 map ...... \
>      queues 1@0 1@1 1@2 1@3 \
>      fp E P P P
> 
>      Mapping translates to:
>      tc0           → express     → queue 0
>      tc1, tc2, tc3 → preemptible → queue 1, 2, 3
> 
>      This inversion respects the mapping of:
>        express traffic -> higher priority TX hw queue
>      but breaks the expected ordering:
>        higher tc -> express traffic
>      as defined in [Ref1] where higher tc indicates higher priority. In
>      this case, the lower tc0 is assigned to express traffic. This custom
>      mapping further complicates common preemption setup across NICs.
> 
> Tests were performed on taprio with the following combinations, where
> two apps send traffic simultaneously on different queues:
> 
>    Private Flag   Traffic Sent By           Traffic Sent By
>    ----------------------------------------------------------------
>    enabled        iperf3 (queue 3)          iperf3 (queue 0)
>    disabled       iperf3 (queue 0)          iperf3 (queue 3)
>    enabled        iperf3 (queue 3)          real-time app (queue 0)
>    disabled       iperf3 (queue 0)          real-time app (queue 3)
>    enabled        real-time app (queue 3)   iperf3 (queue 0)
>    disabled       real-time app (queue 0)   iperf3 (queue 3)
>    enabled        real-time app (queue 3)   real-time app (queue 0)
>    disabled       real-time app (queue 0)   real-time app (queue 3)
> 
> Private flag is controlled with:
>   ethtool --set-priv-flags enp1s0 reverse-tsn-txq-prio <on|off>
> 
> [Ref1]
> IEEE 802.1Q clause 8.6.8 Transmission selection:
> "For a given Port and traffic class, frames are selected from the
> corresponding queue for transmission if and only if:
> ...
> b) For each queue corresponding to a numerically higher value of traffic
> class supported by the Port, the operation of the transmission selection
> algorithm supported by that queue determines that there is no frame
> available for transmission."
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  1 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++--
>   drivers/net/ethernet/intel/igc/igc_main.c    |  3 ++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c     |  3 ++-
>   4 files changed, 15 insertions(+), 4 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>

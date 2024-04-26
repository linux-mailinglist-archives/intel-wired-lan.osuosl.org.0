Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9778B3129
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 09:16:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31F9260E07;
	Fri, 26 Apr 2024 07:15:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qeid7AXw93kL; Fri, 26 Apr 2024 07:15:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64EB5613DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714115758;
	bh=nDUExKjA6N+MuSv0HztNKw03ECReN3FGeyaH7D5+fRw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2QBIBdkOaCAWK+lXKNOFPEpcawuBMyilDfUpoVjkUcE9KEGz8Z2WDeDyyPvuKafFp
	 7WoBSE3cfgHO6rCDqVdGQUpBQvfYqVGE1kqZ59rOZc8lUrHCEBcBZeTXqg//r2UYQm
	 Vw60kV+BqemM1RSSnuvQ6xSM5oZWkFRORsVYAekxiyqxv3GJ5MdEeXk9hFvRsl7Orr
	 /6SiHEZHrOXJlwxAvFGSNdD6PQ7qUEuzYsIomCudZQz+dlk0NB/s5VLZc3MfWbRNXV
	 XWbB/Sz0EBZ+rxlEKcYaSmcbVZu1XQaqAQt/eZWopuk8GuhabYKgQmpa9tO0rA7XTE
	 G0R+luypn99EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64EB5613DF;
	Fri, 26 Apr 2024 07:15:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E4381BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 07:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39A2C60D4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 07:15:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXkBt8PK9k62 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 07:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D577E605F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D577E605F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D577E605F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 07:15:53 +0000 (UTC)
X-CSE-ConnectionGUID: AARoNaR9Ski2KDaim4kHug==
X-CSE-MsgGUID: qR0inFB3RTmnezMcOIX79w==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="20395522"
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="20395522"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 00:15:53 -0700
X-CSE-ConnectionGUID: D0vvfdnEQHCl0HEuwjPDQQ==
X-CSE-MsgGUID: /kjWwMAHS0yIIEc8UgUrJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="25963968"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Apr 2024 00:15:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Apr 2024 00:15:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Apr 2024 00:15:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 26 Apr 2024 00:15:50 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 26 Apr 2024 00:15:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QsSqAy/EF9gVVFfZJeecS31NvUab6sI3ouZv2wIZ6hKJCW7Qs+jLZL/x1zNGSS9a29U2p2pPwwPumqQkO8CHd5iykBpz8WJybSrzc72d+Q3qmjGZQT3zvB3Y90kO9FZDQ0QdoPpO6lwwEyLm1s10NKbhAB3dXOTeSe259crtWkxOZgCCwBBpHVym1zr+nNx/sLt4sNub3Z2uDi+WwwHAtMTslsZZl0xyPmcshm06LfKq2N8pThBk70BmThckzsdPjDsBjypzxGcLpN7q7iDu6GU5X+qnhDi6Xk5pnMFizX7vxhtyHDrI3FA7dpUC8ZazZMkrrs4BOi0ILT62sSgSLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nDUExKjA6N+MuSv0HztNKw03ECReN3FGeyaH7D5+fRw=;
 b=AaYgndYP/dkGmb2szhf5rAWqeJxcHZvSWpTjHHIB0GnMBZyvFH+6g8mp7LnLSdKAJb0g1tvW9WA/SOB0CLl+Na9Mc/KD1iMkKlzJB+o31fBGVcJ2Sbh6S7s6hdyevbCumiUfX00oGH0hgIIdOJhHNFkHkm4F0M7h+Y3HZyttRTdxptz1eVV+/HiynihsJWDit8wEkp6uWntr+fddbyWHvHxIREBZilIEjjFbuykZceQqWLvA4P0u26T2cduUNCS7Ms2uwjifW6qQstCi43zJhiazegsogvQSx3l4NS946qnsO2qbEZOUlT+yTJ5Zh0mNzbVmhM2byz+fzgktLTMV8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by CY8PR11MB6988.namprd11.prod.outlook.com (2603:10b6:930:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Fri, 26 Apr
 2024 07:15:43 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.021; Fri, 26 Apr 2024
 07:15:41 +0000
Message-ID: <3029ae3c-1c05-405f-a436-46b27498c6b1@intel.com>
Date: Fri, 26 Apr 2024 09:15:37 +0200
User-Agent: Mozilla Thunderbird
To: Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-10-mateusz.polchlopek@intel.com>
 <BY3PR18MB47378DFF0AF20BCDD99EC9F0C6112@BY3PR18MB4737.namprd18.prod.outlook.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <BY3PR18MB47378DFF0AF20BCDD99EC9F0C6112@BY3PR18MB4737.namprd18.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::15) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|CY8PR11MB6988:EE_
X-MS-Office365-Filtering-Correlation-Id: 97cbf940-9b2f-434f-eeca-08dc65c0ae37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUpPaFdlREtPM3Y4RFhranQ5VktoQnRaanlWcE52bGtVUVI5UXZ3THZIU1Zi?=
 =?utf-8?B?bmdtZU5COXRuai80V29HL2dLazljOTFoOHhFbWlGa1AzOWVLMWVIOWlEcDdP?=
 =?utf-8?B?SkJTNWJkMEd2ZEVLUXNLdVJmNXlUbkVETVNvN3lwYzU4WkorcThWSk8zMzFJ?=
 =?utf-8?B?Q3lrSlVMTU14aGNxVzRLNXJPT1VUaTVMUTZnUE9Pb2pEejlQUExmb2lXa2lS?=
 =?utf-8?B?TlZjL0dsYmprYW9YdlR0b1pRRFVNR1BvaDBKRENqT3V6c1ozMEtCYkVaamRV?=
 =?utf-8?B?NXhLbGNGWXVpWVFoWS81WVFRdHllWEtXYXhaU2VPdXNHZFFHSUkvM1VnUjBW?=
 =?utf-8?B?bjA2bWdJb2VsZDFTTng0emMvUVZyVjZPNkkzeDlKVUZ2NDhKT3FOR3ZicjBC?=
 =?utf-8?B?Z0pWeUNBaktzSlR3R244ZXprb3JMOTRRTnEwYTN6TW16d2MzNnVQdWZCMGUv?=
 =?utf-8?B?aDhteURuZEdXT1RsdHNCWi9yZGRzbC9JYTVpckw5c3Q0aVNqV3ZFczdzVTFR?=
 =?utf-8?B?NDFYMDcyMlpDYUJKeGMwOXhldmtrZ0szWkFiVDJvWHpWYkJUN0JLTFkrNzV0?=
 =?utf-8?B?WWdQaFpCczBSK2FmNCtGUzYzSGV5NU9scVZBcXJGY1pxcXVPUDdmbWRRcUxh?=
 =?utf-8?B?K1F3bWF2RVJ0QVAxSHE4elJDUWY0S1ZVR0I3RXpjRDRVM2w1NGR3OW94S1FW?=
 =?utf-8?B?Z2hmQ1NhKzlxL0FkL1RKcWhDZC9YdUFsQlllQWJJa1lUTkFLbzRpWDBVNWxx?=
 =?utf-8?B?N3Q2TG5IOUwxSlJzUklRaTc1bTczR09QYzlTaDk5ZDQvRlp5K3JiTzg1VnVt?=
 =?utf-8?B?Y0EvOU1xT2hSMUduOS9DdDB5c2JFMk5pT3EyZkpZR01EVjE4WDg2UFE0WGJW?=
 =?utf-8?B?cWV0RWxqT1VkSkJqQ3pSdnNCT3M1cURVemVVSTd1eUl4citVQmM4Um82Tkc3?=
 =?utf-8?B?c2h0RHduOW5pdzZHcUtNL01HM2cxaXBXUUVOYnorckR6eGdtTTYwVWIvVkpB?=
 =?utf-8?B?RGJsMjNaTXJBSFRxb2xMdHBSNHFIZkVycnNQMUkxRzFLQzBHUVQveWRQcUpO?=
 =?utf-8?B?Y0sxQkgybnpNQXNzTnQwNkEwZWVTM2xGVWRhRzU3SFZEbEJrbXl6MTJGWHpX?=
 =?utf-8?B?eVVKeTFNcS9PK1FxaXQ5RGpGMTFEaS9MRmxtY1g2UVY5MExIcVVjOURRdUVI?=
 =?utf-8?B?OTl1cXdtMW5oM2lsYnNrZGhhNGdpYWgwR0d1OVNOdDlyb294ZDBwdjlxb3lj?=
 =?utf-8?B?ZzFQVzgzRzVWZ0VOcGlydXZkbWN1VnhjQisrSFdxV2tSZzQ1NitqeVZ3RHlH?=
 =?utf-8?B?RTI1TVFQNW1USGpoRmVub2lwNXpyQ1dpTUVIM1YzU3Y3NDlVR0Z4L2tXWFlx?=
 =?utf-8?B?Z01DWHlsbnJWWVRlV05vQXhMczlCZFJYbFRqZkt6MlNyYjlDY0hveEJjTGxU?=
 =?utf-8?B?QmZmeldvbnNNcFEwK1RkaFhCZWRma2ZnNmlFbFM0bUplRm16bHBLcTJBbkJ4?=
 =?utf-8?B?bnFRMm9rTkRlMGVIdkFoOEx0Y2FndktybzFGQ050UmtOdnhCQ3pEV3NQc0Jz?=
 =?utf-8?B?S0NOOWNiL21rK1g2NDV2cG1TblVMcGFNcGR2b1Vzc0p0M0JiYmVjWjZaYTlH?=
 =?utf-8?B?MW0xbStteUhRM24xaWJIZy9hamRadkxXSEtUUk1Dak1uYTk0bXdEcnZ5MUl3?=
 =?utf-8?B?MVVTSFM5NjhTOTJkWkVsVHloSTN6bURJbWorVGJMMEVldVZiS0RrbXF3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFNPR0NycVUxeWNPUlNjUjdQcTRlSitJRStpSHpNMk9KM2xHNi91N1NZMUZW?=
 =?utf-8?B?a290T1czUlJleDkrbE83RDI3czZ0OVF5MzUrTUpGNHBlQ2NpZFVDSHRRKzJq?=
 =?utf-8?B?cUx0SWJVSXVmcEsvenB5c0dUMG1NcW9rUjdIdWM0dERaci80UWI2ZE43c2RY?=
 =?utf-8?B?bkh4UGVmU0JabnRyMWFBSHp5bW41MCszeWRPMEZGM1JVbStoazZzMGtTMzgv?=
 =?utf-8?B?QTlHMlNuYW10MEIwOW8xUFVsS2VGU0RDVlFhMGU2TkIySUhhR1RvZzkwVXhD?=
 =?utf-8?B?VXRBeVJsOTAxSWFFdTh3eEloRm9ueVZHNU5ZNE52Rm9YTHlQZ0FnQTdEbkVi?=
 =?utf-8?B?NUN6ZlNuV1hJeHlyWjhJVEdxMVpPdURzTG94TUVwcGtUUG9GSkhtbWNJb3Zh?=
 =?utf-8?B?VFE3TUFrZGgyUUZIeGhsTGVEaC9YeGFFcUd1blpiR2t3akg3L3BzYlBwV25U?=
 =?utf-8?B?N1hoR2c2SmtTM1dqL1pBdVBUdEpTNWdsY2xEclV0NjlXT1pVRXBEUnhvMCtX?=
 =?utf-8?B?bG14am5lTXRWeFNOa2dSMUN4RENYU1ZmREpZTVdUWTNUcUQrNDE0UHlkaHk5?=
 =?utf-8?B?b0xFQUY4V2VBTzJDTHp4Q2VOS09vcVFKSWcwbkFQZGh0VUlsRTQ4SDJHS1Zz?=
 =?utf-8?B?RVhLRllBd09wUFlkNFRsRm5tb0ZKUEV5bmdTZWo1ZUdiSldTcHE5dlEwZ1Nw?=
 =?utf-8?B?elkrNFozc1crZFEwZkMxS1IzaUg2am9HRkd4NEtFdkUvSTlHV0JnVzBsSnpq?=
 =?utf-8?B?OEdueVNpS1F0TG45ejl2K3NWTnhHNTVhTkxjcWlRYVVNMWV4TksrTG5zTUlV?=
 =?utf-8?B?WTBIbzEvb1E1bUJzT3VBSlJXelFaWG55S3VBNHFha0g3YXpxWXdWMWxtUitO?=
 =?utf-8?B?ZitaWVIvM29TU1IzdDJzNDQ0VGpINUVWSi94SnZYTkw5Rm91NWduVXYvMDFi?=
 =?utf-8?B?SGc5bytzQmhqOWVnZ0U2RVRjNFNMdURSTXdLVmZYak1hclp6Y2crRys0ZVdB?=
 =?utf-8?B?a1Bvd2U1dmZGbUoydnM5RUw4bDNZQzhYV0FLVXZiN3VkRHdya09SSUtzamhD?=
 =?utf-8?B?Nk9EcnM1VStqbEY3WkNWWjRmZEp6TGIydUN1cUN0ckpvWUNMalNleHBpQ0gw?=
 =?utf-8?B?OXVyZER4RStjWkt1b0hLRGNPdEQ1dlArYm1EdG9LYjhDVlMwd2JhUkRSWDFz?=
 =?utf-8?B?MTFNRlY5R0tsSzBUZ0JwZ1FKUVZ4L20zZjJuU3RldFdVYWtCbDQxVVNjb0da?=
 =?utf-8?B?YjR3V0ZVU3pJRDRONlRVRnlYZ0lVY0Z0NlNGNnNNMmRGaHlIaFRaYjBuV2o1?=
 =?utf-8?B?dW5ocE5Td3lFME44RGxnaEdGY2FDbVBuNU84NTJlSlpMRHlPYi9adE55UFYz?=
 =?utf-8?B?ZFhJZ1ROTGVsQnFXRzk1b1FVQkRZMjhFZkU4OEJsMG1SK0QwQ1pBeGphS29q?=
 =?utf-8?B?V090bzkrclBWTC9sazBOS3NlVVhrM0gzTmtzSWZIbTJwQjRTK09qeUlURGtV?=
 =?utf-8?B?dDB3RG1HSXBYMlV4bkd5VTY4dTlZOXhzTzI5VzlndUFkcldmNlRYOHJJa2Zk?=
 =?utf-8?B?RlBPSnVyOVZSQUtDZ2YxSDloTWxUQnhHSFIyeHJLYVU2aHpvelRWaTBGTFhs?=
 =?utf-8?B?dHlSa0t3M1dqbXhpYjRXU3VudEJ6b2xaQ1BaYXJWYjlxVXpmVUw4SWxnTVNw?=
 =?utf-8?B?QnMydlUvQUZKclV1SDl6WVM4YmFpNFpySlJtVFEzOVNGY0hjL1F5YmF5K3B3?=
 =?utf-8?B?TTBnWXFNVDMxblk4QjJYMmJrNDRFUXh2VUsxWllWZlE2MUh0SXNzdTB6S2J2?=
 =?utf-8?B?Q09ybHRMbTF1dnBLUW5oNEtIZ2J3K1ZQajRmMUE0VWxNRDNKT3RDdXAwS2xj?=
 =?utf-8?B?ZjM0R3VSU0ZVSXBPbUs5eThMbkhDQ05PZXI5U3dpSU5aSUhLYmNKbDF5ZGIw?=
 =?utf-8?B?L1RCckVZeFJaY0VzQm9URkoxOC9mUnNyM2FhZFdvNjNqcUlTL2NUMWlhdkQw?=
 =?utf-8?B?Y3A3anY4ekVHSlZIMVVGbWlRS2F3a1ZWc3hkYXVqVUpRMFgycHREZDM1UnVV?=
 =?utf-8?B?WGNpay80NUFVYlJQdHN4SjVMWDhBYTN6dytqMjBySnVJVFdTUDUrZFQ3NEVh?=
 =?utf-8?B?djg5YlJTa2dwQVNncE5TbXVrQW9xTU5ZUkx3bFJBbGpjNTdPNC9XT2dhNitR?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97cbf940-9b2f-434f-eeca-08dc65c0ae37
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2024 07:15:41.5772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 505NUIW0gcQ84DQxeEOrZxxvEyb1miprvYXmhVCE39hmUuDNpHeLKaFihWiAFdIE/NPZys3a1dYq2uF21Uo/GOLRsaKkNyDxRfuNY4UI3Wo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6988
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714115754; x=1745651754;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EUDFT5gItrM2M9bVmLlp9Vo3+EhpAJNdtqEZ6SU2DaA=;
 b=kNAXnsWqYA6kL9lRSXX/Z2VjqAH5GozoRFAwaEybeLkAgnuR/i3TAbbz
 ZlnZqxlWrKeFW73dE2s6vFzcG1U1/5aVfiXyF1FKduSYUKb1Tqi+erHw+
 64iKUiI9oBrBoIWAXryshX2xQG4NMm6wXFR2Vxvl8tedxXKzfF1Zd9t1K
 qPNhPWVnqqHmfEbHBw7V8dFyqB6q88h0eKJn047EBdw/IrQtpQyxuNwq4
 iScazJ4NFE8xHPAzOAa0BC/GKKxftP5iMeSCu0rz7rdwPIWQ4odcwonwT
 jMzJnmqujehYQ3+VzIutuPjh39QO6iWWbaveLFZhynvTIY/GP0JQKnJZh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kNAXnsWq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 "horms@kernel.org" <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/23/2024 12:51 PM, Sunil Kovvuri Goutham wrote:
> 
> 
>> -----Original Message-----
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Sent: Thursday, April 18, 2024 10:55 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; horms@kernel.org; anthony.l.nguyen@intel.com;
>> Jacob Keller <jacob.e.keller@intel.com>; Wojciech Drewek
>> <wojciech.drewek@intel.com>; Mateusz Polchlopek
>> <mateusz.polchlopek@intel.com>
>> Subject: [EXTERNAL] [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: refactor
>> iavf_clean_rx_irq to support legacy and flex descriptors
>>
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
>> negotiating to enable the advanced flexible descriptor layout. Add the flexible
>> NIC layout (RXDID=2) as a member of the Rx descriptor union.
>>
>> Also add bit position definitions for the status and error indications that are
>> needed.
>>
>> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
>> descriptor, including the size, rx_ptype, and vlan_tag.
>> Move the extraction to a separate function that decodes the fields into a
>> structure. This will reduce the burden for handling multiple descriptor types by
>> keeping the relevant extraction logic in one place.
>>
>> To support handling an additional descriptor format with minimal code
>> duplication, refactor Rx checksum handling so that the general logic is
>> separated from the bit calculations. Introduce an iavf_rx_desc_decoded
>> structure which holds the relevant bits decoded from the Rx descriptor.
>> This will enable implementing flexible descriptor handling without duplicating
>> the general logic twice.
>>
>> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
>> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
>> format instead of the legacy 32 byte format. Based on the negotiated RXDID,
>> select the correct function for processing the Rx descriptors.
>>
>> With this change, the Rx hot path should be functional when using either the
>> default legacy 32byte format or when we switch to the flexible NIC layout.
>>
>> Modify the Rx hot path to add support for the flexible descriptor format and
>> add request enabling Rx timestamps for all queues.
>>
>> As in ice, make sure we bump the checksum level if the hardware detected a
>> packet type which could have an outer checksum. This is important because
>> hardware only verifies the inner checksum.
>>
> 
> What is the relevance of these csum related changes wrt introducing flex descriptor parsing
> for HW timestamps ?
> 
> Thanks,
> Sunil.

Because of different types of descriptors we need to calculate csums in
slightly different way (based on the descriptor type). That's why we
have separated functions for both cases and enclosed common part in
another.

Did I answer Your question?

Thanks
Mateusz

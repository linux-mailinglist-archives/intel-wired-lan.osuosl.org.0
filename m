Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNyXNvUB8mmElwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 15:04:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5604549470D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 15:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7B48423FF;
	Wed, 29 Apr 2026 13:04:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wlpltjwEdCPM; Wed, 29 Apr 2026 13:04:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EBC94240D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777467884;
	bh=/eOxe4X8vhN2T3NKX/hvFlq7f7nQM5TURqJ5xWFmgbM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ILOBxWHlKDmCB1nm02Ucl9Fe5ftzKR9ff4gMPhb4FlbSa+iE6kEqIUYITHD9q9msf
	 2CVvJzSbd+zLG5xLUNNkJt6usU/AvlyxMjpcuU6OT/RDUUaAJtr7uV5uhycInSHyuE
	 JWQo46hwtTXGzEaL0Dj45FVetWJxMTyJny+bpDEjIPvy2Jg9jFCox6Zc/MbC0w/viJ
	 fqUt+vTtIDjfgZR3BnV9pTFOjk5YF1eKYMLcoay4QfKtIP9eJ7zlEtqI+7ChLiABbz
	 Zaygkh4kpLQR5HsYM9kYfswOdfHJgXSDmzsOWAnoPXZvIRALCOVEPFRqZRaNsnqbst
	 mI2UmLHrRrs4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EBC94240D;
	Wed, 29 Apr 2026 13:04:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AB1C1B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 13:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 661E1615ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 13:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGBeuUFTl3K6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 13:04:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 94ACC61593
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94ACC61593
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94ACC61593
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 13:04:37 +0000 (UTC)
X-CSE-ConnectionGUID: mz+XZC98RGSrrlrl+vurxA==
X-CSE-MsgGUID: QyifD+cbQpCzoViWhvx7xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78269403"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="78269403"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 06:04:37 -0700
X-CSE-ConnectionGUID: i94BZ5QcSEaCDhWgYB6fqg==
X-CSE-MsgGUID: oSIjvYolTDCaAr55pFtS1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="264646467"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 06:04:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 06:04:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 06:04:36 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.13) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 06:04:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvHPXqEHcLe07Be8PC1P0tBQddbQl4elR3PTKPOqY4GJelZ9fC8cj7P8JBptnio7NIcJ3c92QOmJe066WO92JcEazAT9SLR8yPQ6s7NeECPGFDdDKy8adGRi+3ET0n/lWbax48MgMTklkMhq+/BzAw62Heac0uMKd8D8PgITEHj6yKCtff5771qWTxqg3S3QkbYZNRNVRTgZ1Ub12faFwTS8lXsdUt9EkmJy15D1GsOb/NIbIlW6ybn5NvunBvjKJ+6zzFbeDGjvChjsl/30hbkZd0Tf+uhCEujQ2Bcmrg3Dx4Krp0+JDJ+Oo06KPYJjPHxqJ53tnL7ttuUeaEkh2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/eOxe4X8vhN2T3NKX/hvFlq7f7nQM5TURqJ5xWFmgbM=;
 b=A8uWT3ogFboohgXFhGF3a3IF2L4vTpy9PiE/atgza1ybWrIdpEvmp42xRiX0ijaOCj1ZyZtku8XKDW6IvaAyYmjQM43NkEqsgGASN4+IGTPRFDeTEAxG93+ZI28U69jjJCj/vP72/q0BpvkA6k6/KYn2c8wSvzn5OTlh6w2Vp3jSfMkC1RrQf5+42XDUStEdWB84UJQPI/U5BiOQCaGr/6TnnY16DjObH7GqVr03Qas9HFH/3Q12Abyj3w76/BhO7VoD46QBq/K0cb+AU/I/PKdqd7TNm77ojFZ9BRV77OHzgBF8ya4xxKjlTKhwOj1fi1cFY/fBVGedsvDBbv+2aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB7472.namprd11.prod.outlook.com (2603:10b6:510:28c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 13:04:30 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.020; Wed, 29 Apr 2026
 13:04:30 +0000
Message-ID: <755876a2-92ed-42bd-b93c-10faa5b6f249@intel.com>
Date: Wed, 29 Apr 2026 15:04:21 +0200
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <aleksandr.loktionov@intel.com>
CC: <anthony.l.nguyen@intel.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <jacob.e.keller@intel.com>,
 <jesse.brandeburg@intel.com>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <stable@vger.kernel.org>
References: <IA3PR11MB89861527E138BBA14FA907DCE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260429120047.218369-1-jtornosm@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260429120047.218369-1-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0036.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::49) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB7472:EE_
X-MS-Office365-Filtering-Correlation-Id: cf1646bf-cb39-4c22-f96c-08dea5efd9ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: crVl/HPqNOsEB1uyMyW4vq6uezzS02/ru2YJTvC20g6C+7DOt1K/jsxl9uN2gY5NtETdIv3n14024MXvZpCG9mJ9eyMejNJJ2Yz5wERyPEF0aNT5uQxd93H9MNIXwmW8tHBCx0G24yM1cql+mZ75ak+ItEYnPxq82Y/NkzYiK+mKnME3aMHLWknXCmKYbQ1p4GW9ikjNGvosnC78bbw4G/qxQKuketuKlAJhHUw3rFmE+ioOuB+LrBKknCeQFSdf0dQBcCpm5a9aYhduKtPZplGVsMPlljdbLEA+Gly9ySKTAwhewlFxYc6ZMCjPCB7T5G/hn1fVoUZXOfxWpv03BYlC5J4ftLiZY+z1AkqJpaI0JVM+ta5fbhwdMAthUIULtYMYE7FCSo+M5q3mVcCG+m0I9TiQY0qLmtJRYb8rSffKjpobD1shgNLHJpq+7+UVmOqtwFpSVeKwOBEb8eN+AeLovdthyS+IJ9nexmhhMKESSfM/IZjbe0AZBmcnmyxydWoWcwJHZylrs9bbKGjJFbJUYODq5VfxqqIwx1GkSY1wbKrKS33dkaMyONOVADxC7NljhpP+RCSQtysbFjNyWoptiaVzgeOaedeo2aMHg1MD6kdaGxnDVwmngn0fra7l+JdYJbtBSsnmr+j+4oM5E7p/R21zOvOHL+CQMSe7wPLGcoPIZsrM21gHSulEl+P+cXN9Pen8MQCcuCKXKWdvjuaWQOS2xYmewnAVA371CRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHRCZjBTcGZhWmJxNkUrN3N6R1NhNnVONWJLK2VmWGNwWitGWG1jV3RjeVZG?=
 =?utf-8?B?Z0g3MmxtUS9STFhXT291b0VEd2QreHlHTnJKb0FweGZTWUhUVTRodjN2NFNL?=
 =?utf-8?B?WVhUN1VqSDFRdDduUWc5UlRwVS9IL0drN05UcWkwdHZMZldpeVd5WjJpbTJG?=
 =?utf-8?B?bkJCT3hRbUFVaWEwWGhXMFl1eWdnRTZFc3Myc29hVVZtcWUrOGFTZHdOZlBH?=
 =?utf-8?B?bUVmbkpOMWM1UHpvVFFIMk9YZXpaWnNUOUE4TTMrRjNBVU9KQWd3amI1aERG?=
 =?utf-8?B?ZGRhVU1IS0w5eXdGOW0wbGZGV1QwUi9Uajh4cVpRUHBCYkRIWUV2NVMzc1ZE?=
 =?utf-8?B?ZDdUWmMrb3NuZ1F6SWk2amdnS2FMeWtZNGJoVys5STRveHY3bkRQcW51ZFEv?=
 =?utf-8?B?N09VNStFMmM5aExIelRiNmM5WFJ2akM4UlM0bStRUy9PZlRGMXJaMjhRbFp4?=
 =?utf-8?B?bSs5cVR6cWtBRnhTd3VFWFd5R3dLa09HZ2RzUTN6dEdSZFIvM3RoSE1PZmU1?=
 =?utf-8?B?MWtsQ0dNMk5yOUZETzhiYlJhQ29LZFo3SytMTlhjaCtVV0cyVkdpSlRHYnE4?=
 =?utf-8?B?RzQ3NVRNeGVCMFpVQjBUS2U3d3NQc1VNL1QyMmJwd2JTNklOREU5NEN1Ujd0?=
 =?utf-8?B?MUtzekhZWU1HTE11Nk9SbWtjeHRSaEw2SnVzUWhXc3FWZmJ1VE8vSFZQbklR?=
 =?utf-8?B?anVuZzRtYk5tc2QwTkx3ejZVL1BrR3FObERKcERMU0RCdjEyRWUxT2JHNWlB?=
 =?utf-8?B?TnJxdW0vbFZUZ1pvR0ZuVEFCR3I3STBHbmEwTkhVRGhFVzI5WEx1Zng2K3ZE?=
 =?utf-8?B?b09DZUlpamNMSkRGMERYcGlwS1VXenVuYjdEejNPdWU1VGxYeW9jVkN1NXZP?=
 =?utf-8?B?MW1KNjJINGd4MDBid0ZvY2NPb2ZTbXRJYlNHdi9GaTd2RENaaWs4NDRCL2FQ?=
 =?utf-8?B?b3V5dmMxNzNrbFBLejg3WkxiaW5ybWlMY3gyZGhvUHFwMWFoVGFkTlhLVUUy?=
 =?utf-8?B?M3ppaERkNmJzWjBYVldWQVdJVnY2ZzVHY3l1ZVd0WnRvTStzOXRvOTMrR05H?=
 =?utf-8?B?cWt6OVdFVVZBd0FEam1TTjh5Y3RsaHR0cVVJOTJ4T1pLVTVPMDdyTG1lVFVY?=
 =?utf-8?B?TDdhSVYyd1BMaXFvSkNMV0V2RnllcFJoZ3hQRUJnY1ZDNm5FY2haY2loZjNE?=
 =?utf-8?B?cndQUUZLSm1SeHl1M05jRVB1bkdiQVd0QUdxMTA1RzgrbHhIRnc1UTM4OWl1?=
 =?utf-8?B?RUkrdWI0aGRxZGV2TUxMZjlNWlZmMEtHazVXK0NWeFl6SkphLzdxRTF4dkp5?=
 =?utf-8?B?T2c5SFBIQVJ0NnhVU2kyK3BiZnVJTDVucjB6eEY0MENHRzJTc2F6ZTV1R0xK?=
 =?utf-8?B?dTVVYm1sL2toN0VXUHUrZ0syZTBuMWpIaWRjUVlxVGdZaEIyWTRiWTJmUjFu?=
 =?utf-8?B?bHdJTDBYS3NtNFBlVzZRWHp6S3NrNEI4SXYrWWxoaGE4TTBwd3Fmak54alVF?=
 =?utf-8?B?Y1JkMk1ySXFqRHVZVGJLcGN6YnpEQzVncE15Nk8rWTg3elArbVNQQzZ3dHJ0?=
 =?utf-8?B?R0Irc2owK1hvTzJITVdtalVCTTNvNmRNUTd4M0pnbDBFdGtKVGszaC9VK3Z0?=
 =?utf-8?B?WWhCU3dWSlgva1F3QVg1Q0xuZ1ViVFgwazN1UU5XMHJqN3hxY1BjcVpxczdl?=
 =?utf-8?B?RGRYWkxXZHJMdUNMU0lpUVdzcUZSTE9BcjZ1ckVHZ3QrdFZORkY4REMrTklr?=
 =?utf-8?B?RjBOWWtldUJ1RGZTdyszM25RbnBpUGRKNlBJU2l1NzZzTHRjYWNSRXE1Tmlr?=
 =?utf-8?B?RHlnN2tPMjc5SkxZclZTYzA2V1lsSjZlaXp4Z1p6dUROZm10R29wWGhYMVhM?=
 =?utf-8?B?TVVZdTFwRlFoby9XMS9zY2dxNmwrU2lzZThPMHVZU2NUMGlWK2JoblZsczZY?=
 =?utf-8?B?bC9ZUjN1c0lqdEVITnZOQUNiQW9YVW9MbWFxak9tVkhxNm5HVHNMNHA3OUhQ?=
 =?utf-8?B?TlJscGs0NS9BV0NTRG5HZFJyQ05aNVpSQm4rL0ptdFlIbFZZT3A3eXk3Q3JH?=
 =?utf-8?B?UmIvQWVvOGhuT2lLeDZjdU9EUE9kUVRMcGNqa3BGaXdpNDU3Q0NDWks1ck4w?=
 =?utf-8?B?RXBSUWNIV0MzL2NHQzBldmpjTTVWbzZaTURMcFdnM29Sd2xya29EWE90Zkla?=
 =?utf-8?B?dGNqNEk2MmZDWjFTVXU5Qy85MElLbmw3M1Fhc0k4MEppVkhpYkdObEZUZ3lw?=
 =?utf-8?B?cVNZSGlKb2pkRVJKcnhNZjJzLzFZeWNubXZhZk1HcjFVcnFQOHVKeWtIU0pK?=
 =?utf-8?B?VmpOck1TVWdMTk9ucWdRTWNGdC95RWNWM05WRklsMmpjZXNwTzQwYTAybE10?=
 =?utf-8?Q?ATJY4mugMb+z6sSI=3D?=
X-Exchange-RoutingPolicyChecked: XWOt2qG4L1sZdpdR9uiA0dnpF5A1yArP36qbPb3FLjATVIwhBYdqYi38BV2mutDvXDI/zmKJsfgTNS6EsjT59t9SQcXUMKGUhvGtCcM3mZp2nsTNlQ4JyWg0C1WMwTfS+Lak47K94jxkae8JTWnl2jM+NBSsWzuM6BS+RWSyoh9AGFZ6+QQv63YbT0WX/JKwuCM8lfQiIo1CONDnEEDR3DWVjmQs2jxqytAfE+keAZNT+CNeA6x5H8FG7shKGjWE8c17UFTkLa4Hu4+Urdy/J9bf6gR4s0yYqaq4CmNFhzQzmJacaP/2rZSzrtfHc6sDf6x6bdQ52FVg9/eYJquA2g==
X-MS-Exchange-CrossTenant-Network-Message-Id: cf1646bf-cb39-4c22-f96c-08dea5efd9ce
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 13:04:30.5780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UQPw9v9fC//qfjswfrbbAzEDTrvk8TUVn4UJNnl/wlsyJmg5pVJecW1tNicfTubP+U4HO79t4kBoWPzIOTAqZq8HzNsJkz7utOy6e+UbJqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777467878; x=1809003878;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/N2Fkka2gBzyXR6gZKKvrabrlBpM+yi7fl2Bb5B2Ang=;
 b=Q1U/RzBvCgTxMbXCmJh9G8FUrh//nMwBNfqLIfruVdpurq30B/BCGuEw
 mbVrp3Yz4oj1BZ0LIBNZXvMwTa4DKAR2bIvUmqTBM4HGD6jg2gHr8TblB
 ntaId357D5lqSVgtWdstugIKZIeB5RMS6zsZ6hkySqPD0AdR6LjkT1Wvs
 lj7ZD/yApw1aRLpdqI8ISh4s3WWBF0+wlD6FfSXm8Qz6vdgOwI0SVd5QS
 lMxfZLfA1xSWksVHGepsVk6zPzAJtlrPlxwv+YC0BWLiKsCt0ABV8cbmh
 KagWgXZhRF8CtC5OBieGXQa2wQT3yMRnYUHGaZypFJ42gafAQJpZClD/p
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q1U/RzBv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Queue-Id: 5604549470D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:jesse.brandeburg@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]

On 4/29/26 14:00, Jose Ignacio Tornos Martinez wrote:
> Hello Aleksandr,
> 
>> I think continue at the end of the cycle is redundant.
> That continue is intentional; without it, if timeout expires but there
> are still messages in the queue, we give up without processing them. The

Alex is right,
"continue" causes to check the condition clause of while loop, also for
do-while

> message we're waiting for might be in the queue and not a lot of messages
> stored are expected.
> That continue reduces possible false timeouts (because the expected message
> could be stored in the queue) while keeping the delay minimal.
> The timeout is really just an estimate, and I don't think it needs
> to be very precise.

with that said, current code is correct

removing the redundant "if" could be done while applying
(if that will be the only nitpick left)

after more thinking:
in theory, not checking the time but processing next message if there
were any pending on the previous message could cause infinite loop
(to fix that we should stop refreshing "pending" value after the
timeout, but only decrementing it - but I think that this would be
needless complication)

My Reviewed-by still holds

> 
> Thanks
> 
> Best regards
> Jose Ignacio
> 


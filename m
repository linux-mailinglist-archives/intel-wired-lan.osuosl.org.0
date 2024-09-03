Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3513D96AC29
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 00:25:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2A2E607F5;
	Tue,  3 Sep 2024 22:25:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hufTb2VWC89x; Tue,  3 Sep 2024 22:25:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 363DB607ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725402306;
	bh=+Ny+WUJDjbbHmy1vGyw15ZpkmryaDVm1HLJeuuzMTMQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=26m9Rfsnw6oleYuJmd44UgVnlOqcjHix35uQHwSylACKot+3ktAkOHc05Gy40eVq7
	 zfziP3/VkZN2zAvG9+WZZgUGJNpt9XOyAA/UIC1wkpixhPjY2xLdUS14iP8xL1Ts7G
	 gpqM1HAmIrzOt3GGI2mtLdeqDAcwLpniK0FX/i4y4dCpVh412HhUHxlLRbRSLB2tx7
	 +klolkA7Ny0WIszBaPrXWWdqwdCBRxIcNhRYWzF00v2LiDb4MIfRxO2wo1m/spfvo9
	 cBgk1+adCvphAZqKKboDMYfqmJCaVNm9sjjss77LvdqVp1n5uh4LDdqO6P6DPnvaPP
	 TNC77FnfTi7vQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 363DB607ED;
	Tue,  3 Sep 2024 22:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4227D1BF576
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 22:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DF6A60780
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 22:25:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1s2WdFFpAlDD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 22:25:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69100606E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69100606E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69100606E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 22:25:01 +0000 (UTC)
X-CSE-ConnectionGUID: FNUj0zdZSKudebtblIlL6Q==
X-CSE-MsgGUID: tiQqWJAqT7C1Y8oR1dnbYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35421578"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="35421578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 15:25:01 -0700
X-CSE-ConnectionGUID: 9b/ckZcjTOijYnU0b5SsKA==
X-CSE-MsgGUID: da3tA1P5RWm4bOkg8B+YMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="69848570"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 15:25:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:25:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 15:25:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 15:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wcGexgSWmaiAPUppOYdvGD45eM7TYnPPXE3H26dxWPYFkLkJ79hU9FiTFBX6VMaQpF3kdzuRkEEyJP0v+F4WxqRpBMYD6Lij32nhwe93OiW0+dr7SGgVOE9wdUjKwhfwDN/GcRyWTOh/rv4x1N/wthwyebx2/4axYyMExtK/GJf7hIw5wrmIRftkKXFgtdL6kgez4PU72AXK1u+ETNuizgwPCvbjeKKM/HV+P7LdInUd7uBDNPKp745le2965ZGexG6nCyLOneeSubZTgwen96I9lxJwC2DrjZu5bSpabYBscn+YAVtrAjwy1sKFH4ATwZ7QOdSm5zvyhLTaeKXKzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Ny+WUJDjbbHmy1vGyw15ZpkmryaDVm1HLJeuuzMTMQ=;
 b=DY/tjb99cWFuYGvDQZaAOdNo99Ybz+FBUMEmoB8JOZzEyKXQHUCLxDHNUOVV+zDheW1tWHcRshcR03vnre1ZchWuxkCL9TgKP0cjSFSUYrCFiAkMoKMpMHrjD0M1VeT5LJ0N325ef//gMWaaqZY6MgVxVofs24o7Mas6NGHOoeiuuQ0jHMop1vIjDmvxl3Vs33kTKMiKwYdJ/adsuqzzqdp9YJ/dRoOKu8oDlSs9a9u2nxwEHfa+dL8wcTfNhtXKYAeH3lM8y7qxt/YWQ4X/exq8BWyepwZWB2AxYJhdAa9xxZQUrKSgqkvOQwE7AXph6eeSZUyfqUYnZhygqFHbeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 3 Sep
 2024 22:24:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 22:24:55 +0000
Message-ID: <cfc622a9-4420-438b-a60a-5f7285689b9f@intel.com>
Date: Tue, 3 Sep 2024 15:24:53 -0700
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <olteanv@gmail.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
 <20240828-e810-live-migration-jk-prep-ctx-functions-v2-10-558ab9e240f5@intel.com>
 <20240903000800.ue77eim4664dhy4p@skbuf>
 <00d23c42-2611-45d7-9d25-5ad394477238@intel.com>
 <20240903221358.eupqxac7chvzxp6e@skbuf>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240903221358.eupqxac7chvzxp6e@skbuf>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0009.namprd08.prod.outlook.com
 (2603:10b6:a03:100::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB7055:EE_
X-MS-Office365-Filtering-Correlation-Id: 486282c4-f39a-45f5-308d-08dccc673ce2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S25BUWR2YTMrSDcrSWVsd1ZYbnR3TEc4bFE5WFFhK0Fzd2F0aWRlYk84dnJj?=
 =?utf-8?B?TGVMdnlxVHJENDA4WVZHYmJRaTVFZFkzeDRyYzFHeWFvblQwcGYzTjVoK2FZ?=
 =?utf-8?B?M1NjOW1JMTFVTlEzUXBNR0N0amtVU2RqVFdEOWdITmdKOEVuV2JESnBidVFa?=
 =?utf-8?B?UmRROS82bEQvVXovOUdHOEF3NXpiN0tTOE1iamEvcXFhT0xpS3RoOGthQ1VQ?=
 =?utf-8?B?dWNjQUgrQUZtaDlMWHNwK05qODlpck9OK2g5NTllWTF0TkhYRUpxTmM5S2lx?=
 =?utf-8?B?cGJsRVdEK3dQcytDeFErUVJwNXBZQzFrWHVHMmFYVTdTRzVXQ3lQd1dwOVFI?=
 =?utf-8?B?ajZnSEUzQW95Vzd4VGppRkFvUDhVOHpKVkNZR2xPRXh0Yjd3WVFsaXUxN0dV?=
 =?utf-8?B?Yjl1M2dXdzhpeXRWUWNteFpjbVRMSEZGcE1EcW5wZVJBYnhXRzdoQUQ5OG9G?=
 =?utf-8?B?NURtRU1nK0hSVlV1NGpVaVdRRUJhR05FUHlmeThmby96R3NaSTdMdFA5UERk?=
 =?utf-8?B?d2dQSGpFcWgxaGxoUGJhcm1jZDJ3TFAzYW9uUm1jK0RpUEk1Uzd5b3VsbXJa?=
 =?utf-8?B?S3pFVkdWaTQ2NW9NODBmRkpiNUJ5V0U0bEd1blRyMGFYK3JNZ1k1Z1ZqM2Fx?=
 =?utf-8?B?TmprSHJoVHptUGFnWGpSZ1RUNTJuUGtnM2JMc3pFNWd4V0lpVVhaRCtFZTJP?=
 =?utf-8?B?WTcxTXc1UGFjbGtVRnI4bjlYZHZSSTh4c0cyZGFLc0hLQjhBQ055WXg4QVRj?=
 =?utf-8?B?RWhTM0dHZFRGYlBGRlVMVEhzclFmZ2tPeDBTRndJeTM3dkh6QlhVbS9LQU90?=
 =?utf-8?B?dDR6VlB6QVl2RzFmdlNRczZ4OEkvdUpkMHBVYm9WNGNsREVaN3NKS3lWOTdY?=
 =?utf-8?B?akVuUWV1U3YwcGVuZHpmOHBFaUVhQUtuRGVGSm5HV1E0RGtmbkgza0VOQTgr?=
 =?utf-8?B?ODBOdXNZK01lNXE2UEROK0E4SHppMXZxQVREcXpwWDhRakVTVjZaOHA1NVp6?=
 =?utf-8?B?RkdjcXc5L1RlbW8rZFVBay9vdkcxWHUwbzRkWHFQWVpUNzY3SitNbElOQ3FZ?=
 =?utf-8?B?ZTJlUmFJNU4yK2l1UlJDU3V2ZFIwb01xUTBzZXBUZjdOcnVBaURRV1UyS1Ar?=
 =?utf-8?B?Q2xoeXY4RHlWZ3ZBbGs4SERFL1oyOFBFb2dZWFlsWFg0TWpya3ZIYlpkVGo0?=
 =?utf-8?B?Mmx0WWxVb050elZ1bzZ1R1VnRG9iMFdjNGJEeVJiN2NBMDl1VnhESUpEeWho?=
 =?utf-8?B?YjhLQlJEVFk0SzlOWGxnajEwRUV1ak5uVmNQdnVhNFNxT2JkOGNMWm1JbkJZ?=
 =?utf-8?B?Z3ZVcUNDY0FJYzAreHFzN3BrRGd4eGk3c3RjSllDZkNzQTNCdkgzd1NyOWc1?=
 =?utf-8?B?NDNJWkNZeFkvUGxvLzFIU2l1blFiTUVUVk1UVFBQK1F2UVYzWE9HU0NBVUto?=
 =?utf-8?B?cE9pWWVoenM4N3ZHUTFERTRQTzRPV1M4Wis5S2psd25CbFhCTndrV1Z0VEth?=
 =?utf-8?B?Qm5IZUF2V3UyRXlpekNPaXJsMkhTN2Q2dnpmZEJZTVNrYStUczljV2luVWYw?=
 =?utf-8?B?bGJwdWFLVzNKTzlaWUVtTHRCVFhtQ2RWbHFETmdTYkVYQzZRYXloZFkyTnVM?=
 =?utf-8?B?a3p6Q2d5bE14NjIrd2Uyc2UvTU5McXM5MStDZE5WZnZ2U1FCb1lhakxORUdh?=
 =?utf-8?B?ODA5WXBDUXE0TkFlYWMxaHpmQUV2dTU3QmJ2OFd1YTg2RFc0a3BXTyt1aFlF?=
 =?utf-8?B?R2EvS2FYcUlkOGxQOGhFQ04vR2RKM1l2RXFuUDk1d3QvbFlLb3dxSG1yTUJ0?=
 =?utf-8?Q?cOXhdaPquSZTDSTRVxb6+W0+XSdyqj8oDV+ak=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkVOOU83Nk9ucmt3UUFZekpkeVF1WWV3azluZjA1NTh0MmtHYk5OQ0RDcDhu?=
 =?utf-8?B?c2R0K0VKRVRCZGZTZWZLUjdyaVNzbHE4bDJDVk1FNG1HaktKV0RtRGNaY3dP?=
 =?utf-8?B?NEJxR3ZLOFFWQ2NrODA1a3dRNCtUdmFkVkFLMThZT09zN0FhWWFUdlczUzVa?=
 =?utf-8?B?cnFTaXlTUVNjMGxGN3pvQWVRK2JqNGhuTkdtVDdvT21hUXI3bWg2c1ZhNFdI?=
 =?utf-8?B?R2NHQ0dhN3JnODF5dDdiMTdMc004TGR3TkhTbWZMWkhPc1dhWmpVK0E1TXJT?=
 =?utf-8?B?ZVJiQ3lyb0VSWWhyUTJ2S0xyam5kUWg2YUppYlFYQ2wvYmdDMkd4VitveEFT?=
 =?utf-8?B?Y3M5MllnT3UveVpxWFRFMktnaW1NK3I4WEtDWmFCd3B1OWp3LzRCSVdwVFgy?=
 =?utf-8?B?VDhKNHRPV0VkYlFjU2NZdGVGL3BrWW5iQU5JYkNYTVB0aTh5b05KYllwUFZz?=
 =?utf-8?B?R0ptdjI5dWhJMXYvK0pGVFM2S3dpc2pNeXQzN2EvVmYrbzZkVWRrMm44U2VC?=
 =?utf-8?B?bm5NOTZQU3o5MVBsV2JOYWlKR1JSTGlramZLSEFVaVZDMHBKRENidTB4U3B2?=
 =?utf-8?B?MW9uWFFHekVpQzZ5THluQVpzWUVBQS9vUGorRENkRGpvV2p1d1A5WHFlV2RV?=
 =?utf-8?B?Z1R1UDNMdlhEV2R6T2ttOGtzRnhVa0pvRTV0cWRGeXVJOE0wWmFlQnlPUnZr?=
 =?utf-8?B?Mmx5bi9ZdFNkNGVEL0lWRFd5WmhZUWx5UWlUaGNIMmcweHpQZ2pTcW5CWmR5?=
 =?utf-8?B?eVI4c3QrdjNrMW03eUlsMWRiWlk2U2QyYWlyQ2FjM2pzdnFwZ1lCUWEyZEJi?=
 =?utf-8?B?NjU4dmVZR1ZEdERCaG1BTTFnVlNhMlpWWTcxR05abENjdGxrVVZYbFNkU0Rx?=
 =?utf-8?B?enRxS0taRW5rMUJSZ2NQSlNWSkZlOXFZcDhFL3VlRVpUUDltZVh3VHprRjFx?=
 =?utf-8?B?ejF3UTVENkEyc0daZ3hJTCtlMGd0T0dyd1p5S0tVVlZQeWNrUzAwU2NZV3Ns?=
 =?utf-8?B?Zm1ycnBPRkxJd2NCWVk3M2QvQnc5a1U2WHQ0bzhJOVh3YkNaMkpYamN0MCtu?=
 =?utf-8?B?QjllMWEzdzViTFpzeEwvTXRuc0VVSzNjL0JRdThkMjF2c3BsWU5MblJmZVdM?=
 =?utf-8?B?QVZQeXBCVmRud3BSTW1nK29tWUIyaDRKdkVoNUJBYVh0blhJeUVUaFFWSCta?=
 =?utf-8?B?RE9pK2hYcTRzeW95RFJqcHVqWDRTUkVrRnZPbEltU2R4T0pqa0RtaVVKKy8y?=
 =?utf-8?B?aHp6ak1FbGFyQTFJckpPdDJwN0JjTU53YWEra2drc21CcHJBdmhQOEpiQjFB?=
 =?utf-8?B?bU1yWUlKMTFKV2dyNXpzZ3MrQ3NuZVdKS3Q2QVdTaDVxZGpPbWRxM1hHNm1r?=
 =?utf-8?B?SHVHMG1RQXNIUys0YnhmdjFKUGg2UXErcWNGaHNLL2I4V1dEQW85SlZpSmhK?=
 =?utf-8?B?V3NnMWxsdDdmSEZGN0wrVFZGelVzYXJlUXc3Z09UM1M5bG5RSFkwWG9XTVJJ?=
 =?utf-8?B?TmNFMzhvT25td3pOc0VPWFZVTmQ2cnNLSzJkTDdMM3J6cFUya1F6VTJGdTBV?=
 =?utf-8?B?ZE1VcEp5ZXhRRjdLTSt5UHFUc29DVFRCTVppbFlHaHZLN2Y1SnZObjg3TFVV?=
 =?utf-8?B?ZGR4SVhTc2ZuR0dvbmlCQUNqbnR6UTF5TWg1a0NXWVYzQlR3VzJzejY4di94?=
 =?utf-8?B?NUk3QUEvdzFaK2JaS25WdWI2UWpJZ0FFZUJ4ekdXNDM1N1hTSzNySWpoam1y?=
 =?utf-8?B?LzNmL1V1aDNmK0NuK1IyM3ZyVm8rY0pIY1IyZFU3aS9PaFc1NTJ6OGZYTjBY?=
 =?utf-8?B?NGl6MEN2cjRuZWVYbWtJYmtsNkxkdzNOUVhHY1hPYktRQWNkU1Q5VUxvZEtj?=
 =?utf-8?B?eHEwUjR6Q3FIbjBibm5uZ2JOM25VUjhmL0hwL1d6MHhqMms0SWg3bDZWTDZ3?=
 =?utf-8?B?NXVPaVhOcTZmY3hmUTdVMG5qUDhVVHk3ZSs1QXc4N1dwd3lrZk1aeVNWaUVP?=
 =?utf-8?B?bHpFdVpZM1BoV0psdVMreUh3eVd6a3VTWHBpdGxJeWl5SHVYT1JYUmFneEJw?=
 =?utf-8?B?eURGNlV2bzdkL0RGYXFtdVdOYUZzVHZVRFRadmF5TTdybkxUa3VRSGlHZXZO?=
 =?utf-8?B?bVJTcllacWtJcU9DNWhSK0RPcWw1Q0tiM0N0R2x6TUVDdlpsT2RZclhLS3pw?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 486282c4-f39a-45f5-308d-08dccc673ce2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 22:24:55.6711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CQnIQn3MJZxpWqSEK+I1dwTYFLpSt0LJHMsX3idtaMvfDsvOcBqZsqqJHGMeAFkVRo7sEavF/02XIWtdcfK3v2gkMebxQxfn2X/FL4rlAxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725402302; x=1756938302;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=woR9vv4TWc+7ub6WDeTflvfDL6by8HR9naQ2aQsS1wo=;
 b=LY/WQde8u4lW141wpOMa4r0L5rMsbB9k7BkeM+ozCG6J5hxpM2LYyU3s
 1P62Ze686QhrsfEzutKWb6pCB2E4iqBvpxhSKyK+1cyKXbWJBks5K/NdE
 QTgnDN7cgA1Rz7RxI4LXawR0GNkKDZoLlxp3AGv4lT3a48s2FNFCoG1zY
 WRgOQMzDl0Dn+Kl4nZAho7AwZbQBf9MrSbO5UVi8zXgwCx32q3EDwS/mx
 C8Q8BwuN4QHIholVXGcKZDO3qxq0imKDZVpd8vod1QPAm0T1JuxxOOkB9
 s+dhnbUjmXQPl3eRLSbp3kg2WUsz17gw3xGmZO6dVqAgBX0LDiQrZ7ZT3
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LY/WQde8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: use
 <linux/packing.h> for Tx and Rx queue context data
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
Cc: netdev <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/3/2024 3:13 PM, Vladimir Oltean wrote:
> On Tue, Sep 03, 2024 at 02:16:59PM -0700, Jacob Keller wrote:
>> I only kept my interface in terms of lsb+size because I did not want to
>> attempt to re-write the table. I actually did re-write the table at
>> first, and discovered a documentation bug because our documentation for
>> the table has incorrect lsb/msb for some of the fields in some versions
>> of the doc!
>>
>> I ultimately don't mind switching to the packing convention of start/end
>> (though my brain does have trouble sometimes thinking of the start as
>> the higher bit...)
> 
> Well, you can keep the ICE_CTX_STORE() macro formatted in whichever way
> you want, including Width+LSB, but reimplement it to generate a struct
> packed_field, formatted as startbit+endbit (endbit=LSB, startbit=LSB+Width-1).
> I actually encourage any user of the packing library to write the code
> in the closest way possible to the field definitions as they appear in
> the documentation. What do you think?

Our documentation has both lsb, msb, and the width. I agree, and i think
it would benefit if the packing documentation suggests this as well.

> 
>>> I came to the realization that this API would be nice exactly because
>>> otherwise, you need to duplicate the field definitions, once for the
>>> pack() call and once for the unpack(). But if they're tables, you don't.
>>>
>>> I'm looking at ways in which this new API could solve all the shortcomings
>>> I don't like with lib/packing in general. Without being even aware of
>>> ICE_CTX_STORE, I had actually implemented the type conversion to smaller
>>> unpacked u8/u16/u32 types in exactly the same way.
>>
>> I think having this in the core API with a standardized table, along
>> with support for unpacking the types would be great!
> 
> Cool then!
> 
>>> I also wish to do something about the way in which lib/packing deals
>>> with errors. I don't think it's exactly great for every driver to have
>>> to dump stack and ignore them. And also, since they're programming
>>> errors, it's odd (and bad for performance) to perform the sanity checks
>>> for every function call, instead of just once, say at boot time. So I
>>> had thought of a third new API call: packed_fields_validate(), which
>>> runs at module_init() in the consumer driver (ice, sja1105, ...) and
>>> operates on the field tables.
>>>
>>
>> It does seem reasonable to me that we can move the sanity checks here,
>> especially since the main programmer error is if this table is incorrect
>> in one of these ways.
> 
> Actually I did manage to cook something up which I like even more than
> packed_fields_validate(): a compile-time sanity check. I'm not completely
> happy with it, just reasonably happy. You'll see.>>> Basically it is a singular replacement for these existing verifications
>>> in pack() and unpack():
>>>
>>> 	/* startbit is expected to be larger than endbit, and both are
>>> 	 * expected to be within the logically addressable range of the buffer.
>>> 	 */
>>> 	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen))
>>> 		/* Invalid function call */
>>> 		return -EINVAL;
>>>
>>> 	value_width = startbit - endbit + 1;
>>> 	if (unlikely(value_width > 64))
>>> 		return -ERANGE;
>>>
>>> so you actually need to tell packed_fields_validate() what is the size
>>> of the buffer you intend to run pack_fields() and unpack_fields() on.
>>> I don't see it as a problem at all that the packed buffer size must be
>>> fixed and known ahead of time - you also operate on fixed ICE_RXQ_CTX_SZ
>>> and ... hmmm... txq_ctx[22]? sized buffers.
>>>
>>
>> Yea, these are fixed sizes. Strictly I think we could have a macro
>> defining the size of the Tx queue context as well....
> 
> Yeah, you'll need than when you'll see what I've prepared below :)
> 
>>> But this packed_fields_validate() idea quickly creates another set of 2
>>> problems which I didn't get to the bottom of:
>>>
>>> 1. Some sanity checks in pack() are dynamic and cannot be run at
>>>    module_init() time. Like this:
>>>
>>> 	/* Check if "uval" fits in "value_width" bits.
>>> 	 * If value_width is 64, the check will fail, but any
>>> 	 * 64-bit uval will surely fit.
>>> 	 */
>>> 	if (value_width < 64 && uval >= (1ull << value_width))
>>> 		/* Cannot store "uval" inside "value_width" bits.
>>> 		 * Truncating "uval" is most certainly not desirable,
>>> 		 * so simply erroring out is appropriate.
>>> 		 */
>>> 		return -ERANGE;
>>>
>>
>> If we support u8/u16/u32/u64 sizes as well, you could check that the
>> size of the unpacked variable too. Could this data be in the table? Oh I
>> guess technically not because we are checking if the actual value passed
>> fits. I think keeping this but making it WARN would be sufficient?
> 
> The u8/u16/u32/u64 unpacked field size will absolutely be held in the
> struct packed_field tables.
> 
>>>    The worse part is that the check is actually useful. It led to the
>>>    quick identification of the bug behind commit 24deec6b9e4a ("net:
>>>    dsa: sja1105: disallow C45 transactions on the BASE-TX MDIO bus"),
>>>    rather than seeing a silent failure. But... I would still really like
>>>    the revised lib/packing API to return void for pack_fields() and
>>>    unpack_fields(). Not really sure how to reconcile these.
>>>
>>
>> Since this is generally programmer error (not something where uAPI can
>> affect it) what about making these WARN in the core?
> 
> Yes, I went for demoting the -ERANGE error in the truncation case to a
> WARN() that is printed for both the "int pack()" as well as the new
> "void __pack()" call. Practically, it doesn't make a big difference
> whether we bail out or do nothing, as long as we loudly complain in
> either case. It's the complaint that leads to the bug getting easily
> identified and fixed.
>

Right.


>>> 2. How to make sure that the pbuflen passed to packed_fields_validate()
>>>    will be the same one as the pbuflen passed to all subsequent pack_fields()
>>>    calls validated against that very pbuflen?
>>
>> I guess you either duplicate the check and WARN, or you don't, and let
>> it panic on the invalid memory? But I guess that would only actually
>> panic with something like KASAN
> 
> Yeah, I'm still not too sure here. The length of the packed buffer still
> needs to be "obvious to the eye", since the same length must be manually
> passed to the sanity check as well as to the actual pack_fields() call,
> otherwise "bad things" will happen. I believe in the users' ability to
> structure their code in such a way that this is not hard. Especially
> since the sanity checks now rely on BUILD_BUG_ON(), and that can be
> technically be placed anywhere in the code, I expect the best place to
> put it is exactly near the pack_fields() call. That way, it's the most
> obvious that the buffer length declared for the sanity check is
> identical to the one during actual usage. Especially if the usage can be
> restricted to just one function or two.
> 

Makes sense. I may need to do a little work on the ice driver to make
that fit well :D I think currently we have a packing for the Tx queue
context in different places.

>>> Sorry for not posting code and just telling a story about it. There
>>> isn't much to show other than unfinished ideas with conflicting
>>> requirements. So I thought maybe I could use a little help with some
>>> brainstorming. Of course, do let me know if you are not that interested
>>> in making the ICE_CTX_STORE tables idea a part of the packing core.
>>>
>>> Thanks!
>>
>> I think moving this into core would be fantastic. Since pretty much
>> every driver handles these sanity checks the same way, I also think that
>> moving those into the core and making them WARN or similar seems
>> reasonable, so we can make the pack/unpack as void.
>>
>> It would be interesting to see a comparison of the resulting module size.
> 
> Yeah, I'm also very much interested in comparisons: text size vs rodata
> size vs dynamic memory usage. With the pack_fields() API in the sja1105
> driver, I can shrink an enormous amount of u64 unpacked structure fields
> to just u8. I also really like the idea of compile-time sanity checks,
> and I'm curious how much that matters in a benchmark or something.
> Anyway, I don't have a complete rework at the moment, so there's that.
> 

Yea. Actually my entire initial motivation for starting looking at
reworking ice was the weird sizes used in our unpacked context
structure... :D

>> How much of this do you have code for now?
> 
> Well, I do have code, but it's not yet complete :)
> I've updated by https://github.com/vladimiroltean/linux/tree/packing-selftests
> branch on top of your patch set. Until HEAD~1, I've tested the sja1105
> driver and it still works. The last patch - the bulk of the conversion
> actually - is extremely tedious and is not yet ready (it doesn't even
> compile). Yet, with a bit of imagination, it should be enough to provide
> an example and hopefully move the discussion forward.

Ok sounds good. I'll take a look at this.

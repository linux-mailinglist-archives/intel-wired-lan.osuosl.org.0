Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD725912790
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 16:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7F1E616C7;
	Fri, 21 Jun 2024 14:23:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X7_fNjN7tABx; Fri, 21 Jun 2024 14:23:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA17161690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718979784;
	bh=Xt+Q3LZdisgrtATkrpKkxrwj/ZXuECfc2mlz4y4SrKU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HQp5+nyQHQbuGSelSiBOOZBYRTXPUD2k4DsBTMaz4I6wqZFyHq3FEyNZCo5e4/QZE
	 E/DjZuOv+0Uk8Wd3ZQ/OA6fFIsa18IyBxR2ID/4e/ocLt218n339H5ZDcYOkrTYCGV
	 g+FE/yRi1dPRfrcPr8i+FCfaIrMn/FQlI0QKYTWRwFR/a91NuvRDAXk2Y5dwz6tgWs
	 xekzom6LJW+5IyfX+skWSpkzXWEncR2tsww4w95x7J7CFjCJBRl8YCtmGZa9X6o3SA
	 KYHJ9wPCS0Id5iZj//uiUac+ayYXs8N7ktbzaRHT9Vb9rZ02u+oQnws7+/MqnuQeC9
	 EhMLedEdc0GmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA17161690;
	Fri, 21 Jun 2024 14:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C66731BF36F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 14:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE4EB4016F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 14:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yN79yY5BwaRk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 14:23:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 74A2D400F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74A2D400F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74A2D400F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 14:23:00 +0000 (UTC)
X-CSE-ConnectionGUID: ZDgyOnG3S7GLKTczDV8Hbw==
X-CSE-MsgGUID: OhQfUvWpTZGHJvDOcVs3Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="15988953"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="15988953"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 07:23:00 -0700
X-CSE-ConnectionGUID: UQSLqrR1TPGezaHDOobD/Q==
X-CSE-MsgGUID: PLYfq9JiQW6jGgucUmN2bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="42428509"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jun 2024 07:23:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 07:22:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 07:22:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 21 Jun 2024 07:22:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 21 Jun 2024 07:22:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dInzG2qt5THOu6c91dGONwafF0ikGzJR7OUVshc6UVPz5ofULhY1QW6rX0IyBA/fLdvqG75JdZmSlDPoFgJZqfrwxxAzKAzMag7hq1G3f/3OwSq34OGGhTBDwrB6k8ledKDOo++Fiw2275kr8xpWyUKwtP4yYFZ67Gs9HndKQVMShHAFpuVyR5uGK/rMnlpm8lehN3hWI/6qXgZORN9EkMYQZgNOaZwtzhD3huq+N1UIzXnhUPqqxuEvd9VFoY8pMSGk/EQ+VSIiwN4I/6IX17bv4m62QYG8Dxx7/NkaPKxBy+xgNoBDKn9L6TMdaAt/X66+en7QEAwNUCsIHQOufg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xt+Q3LZdisgrtATkrpKkxrwj/ZXuECfc2mlz4y4SrKU=;
 b=UihpeYgVGZFBUYi/tJ8InQSW/D0Sz21DwGXir7pidqxvZbUTvA1Aci7RfB6j3YhzFvxCdKLsulrh0tDwS0O97F/lYJnM9DdSWriUdzXDEnnPanvJwwxQYTLpq7u4cLA1WywWJmvUOZbNkVMepp/F1bNomQmQJnqn4+IZZsVvgbEOwzIaNNL8i6vWQ7A3KNXFlYuxDda9xpca1B8e7yEQ+qBJEeZz88jdCQt9yascTipVWgS+jn11qfCzThht2utpGJeE28W53OPbBiUQ5a9TmHrmxEhgwZTTh+4WA8x5EuOzDxI/dmMLV6B161gtmQqGST75/eWEt0+vH6ATg0x4Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8767.namprd11.prod.outlook.com (2603:10b6:408:215::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.21; Fri, 21 Jun
 2024 14:22:51 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7698.020; Fri, 21 Jun 2024
 14:22:51 +0000
Message-ID: <af7d5e43-b4ac-43f2-aa13-305c024b3ae8@intel.com>
Date: Fri, 21 Jun 2024 16:21:18 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
 <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
 <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
 <f9689f4f-885b-46ee-af63-d4775cacd43e@intel.com>
Content-Language: en-US
In-Reply-To: <f9689f4f-885b-46ee-af63-d4775cacd43e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0326.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::25) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8767:EE_
X-MS-Office365-Filtering-Correlation-Id: 8acd42ff-c0a5-4a26-8681-08dc91fda1df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGZHSTZnK0pKMUZTRmtqaHZ4WlE1ZXA1RTFHTkJBdkV4TnlFanVKOVJOcnds?=
 =?utf-8?B?UWVWTzlzYy81MVEyNGc5Kzk3MWgwUml3a0NoWThWMm02d3JGVHFYSVZDRmEv?=
 =?utf-8?B?R1ViaDV1Wnp3eDdrc0JlVWNPbk4yWkNxZ1lEU2cxbEtwTmVoWkVjTjIrQ1pL?=
 =?utf-8?B?ajVXUDloSUdJKzJQM1dzVldvY2llQ01FM2FkSU5vSjBFeDVSV2dNTFdObDVp?=
 =?utf-8?B?T2toUHpJclZVS0VoVVhZcHJKL1pIK0NKWWc5aHJuMGJ5MFIvbGF2Nm0rSi9k?=
 =?utf-8?B?Nm9lRmp0QlEyaFlFT081WHVGM2VtK09KdUVIdStKcG93UkFONWZNWDhKaWNt?=
 =?utf-8?B?b2ZKRU4rNVE5SGN4MWNwbDlQNE1TZytxWHBQRE1QNWVnNVlVa0JxMlVMM3hC?=
 =?utf-8?B?UW5TakcyY2JrN1BNa3Fyc3NSa1o5Slp3VUZTdUw0bkxQWWdPOGd3SzBicE1y?=
 =?utf-8?B?dEowNTJWWm00Y0dIS2Uxb3VRU08wSFdrd3VhNFFlenBkK0VpWnlNVFNObFE5?=
 =?utf-8?B?eEFvNnVXTkY2V3psREhWcjJKSmhLRTMwRzhiVFBudDQwNGZaeXlvL09IUVF6?=
 =?utf-8?B?RXpqNXc1dTgzVXM4NmdGZm5meEdVSjJnQTdzKzRmY09nbzlxYlhHWGRuelow?=
 =?utf-8?B?MDhsZzh3WVNMVTE0WUNJbTlyd3Nvdm0vTFdTUHNsbzVsckdWK1dmdWRzK1kw?=
 =?utf-8?B?S0wwNnh2NGJhWmhrNGE0Mm0rK2Q4TjE1T1ZXQ09CY0tsODdNa0FSVmRPQyt6?=
 =?utf-8?B?Q3NUT1NuaEwxU2p4SUQrUHMzbE1GZytCZlhFS0xIVDJlSE91ai9MU28reTdP?=
 =?utf-8?B?dDROc3RoRUZvWEtHc1Bndk4xcW1JbGxpNVRSbGY4cHVObjR2R2NMNExGM1Mz?=
 =?utf-8?B?azRTUG1Bc2ZjK21mVUUzR3JLK2k3YWYvRUZMY0g5ZTZQQ2pYMVRJUDc2Y091?=
 =?utf-8?B?MjhrYm42OTJDbW1ncU8vaFdQQWRXQjNpT205TFArc1VmY1JVK3J1bmxiNlBN?=
 =?utf-8?B?MmFsMzUxa2h5aUsyQVN6Sk9SYUoxUE5XZ2todUhrV1RqYjloTG1EVGV2NHBM?=
 =?utf-8?B?Qm9uTFBmTVEyeGpQcmw4NXFxdm1GSHh3SzF2aTV3a0RLQlpMVUdTR2FQZms4?=
 =?utf-8?B?TWc2VGphV3Izczk4YVpJZlJUVWg1c3ZaWkRaYy91akpvRzQ4WHBLMjA0TVhC?=
 =?utf-8?B?bHFveTZESGtHVWJKRVdNeVVKeG8xYTlkeEJZOXN5djFWTnc2UjNJby84aTdX?=
 =?utf-8?B?bjNTYWFITjJzc0JPQ2RFUWdodEg4ZDBqS3B5b0tPeXliT0NxOS94OCtqWVMx?=
 =?utf-8?B?a21IaWJVQkJ1Z0xVRXFoQzVIKzFKS2EvU2xzV0pYek5yOVZaNzV2ZXI3Y29z?=
 =?utf-8?B?dXhZN0NKc09Fc0VxTjdYNnNuZEU0QjlFV2FDSVNHODRaMjFaVVFmZDlXYitW?=
 =?utf-8?B?MFRRbExZSG9UUHVBcVBNOFRmZjNBbjhrdnFFZUdqOXVPM2dTMXp1VlZLRmQ0?=
 =?utf-8?B?bDk3dnRsRmo1RXhRd3h1Nno2OHNnditSL1ZCL3BFNlQ2bS92bTF3bU5uUUtx?=
 =?utf-8?B?cUlpY2s5VGF2ZTEvdVZJV0R3cDZkdFEwQzFsMG1Ec2hjb0hjc1lVMWZIMmpP?=
 =?utf-8?B?MDBZaVJrTERlSmRzRFdITVBrK21PQnQzOStBeS85dUxCU1hlM252Vnd1Zllz?=
 =?utf-8?B?YkR5cFBsVUFvc2VQZUNORVFlcFZDS05KLzZwcmR2MlAxSzdvSGdmOHdEWEhN?=
 =?utf-8?Q?kCX5k8xlOJbmA6nYs3bIqbMTGvUq780r5V3EgPm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXB3U1IxdWNXQ3B1R0l5MDNZN051dEZNc0laUmNnWFRjYWVyWDJ2eG9kOGFK?=
 =?utf-8?B?Q09jb2c3dmRSR2hoMWx2eGpHNTFHYTE0MlhVRlRCSGs3SW05NWEvZXJWYUJM?=
 =?utf-8?B?VU5wWUIrZkI2ZEVFRnprM2N2RzJySzkrRUJ2N05nRmhRQmNvMVoxSml1RTJM?=
 =?utf-8?B?aldZL1JJY09KNEUvZ2xuejdFRXNLR3RGdHRwR0hzdzArSE9INUtwN3hPUkJn?=
 =?utf-8?B?VDU2V0tJTkRJSVRKWEZDU3dQbmw4TU5KTXBaVExvb3psMkdLQktwMHZXK2sv?=
 =?utf-8?B?N0tPeW5vVHc2TnBFNE9FRTlMY1k5Nzh5Wks4UHEvTi85ZWJscWwzc3FyS3p3?=
 =?utf-8?B?ejlWbm5EaFlpajFqbHNTV0dKSVhzbEVJQzdRTHhMUFlGakpOR1VEN1MrWDFy?=
 =?utf-8?B?ZXFoOU1rT1VydEZRNFdudUZUYVdKS2xSSXlZY1lDelZYUnM1MGNhbThQUC9o?=
 =?utf-8?B?MXZQNW5VYmxISTMzQzlHRm53SElWcTZQNWJyRXhzRHJiQ0tueFNRelF4c2gr?=
 =?utf-8?B?Qi9tYWJUdHl2MEhzQ3U2SmFzbzZrUFEwd0RPVkdhMGZCK0JJQU5lYTAzSDhY?=
 =?utf-8?B?ZllMeTQ1ajFSUVY4VXdZTGpGYXlKdlJYbk13ZUFhZTlvRzQvN3MzdFVYWDdS?=
 =?utf-8?B?WDJpVXN2K1lERnVRQlZ1bXp0NDF6U21HWFdrY0haaFFRQlJ5QlVkenY5RzFW?=
 =?utf-8?B?M0tJdEVPOS93YVRobmVDYURQb0tyeU4vUFBuU3ppMlNRZURncVlFYzNFUWVk?=
 =?utf-8?B?ZUtia3dPaDcyOElnd1NXRkUvN2poUTRjQSsya2lOVEVzSWx6U21OaGF4TjZi?=
 =?utf-8?B?L2QxbnM5WGRvSGJyeHVvcUwweFBDT0F5RDF6THJwMmJrek04ZFF6NUNwbkQ2?=
 =?utf-8?B?amtMM3R1OVpiTldFZ1NkbDErZUJnd2lOellXaVl2a3E2aHh0TUFEUlRCQldV?=
 =?utf-8?B?MXBocGdJWm9tYnJUZlhvanVrVWV5a0FCT0RZV1BIN29ydGt1M1FDdFRDckpz?=
 =?utf-8?B?RTF4RzJrRXl2QmJJRm9kRnplVTQ0OE9oeUtaeTZYRVpvdG4yQVlmRlJidmJn?=
 =?utf-8?B?bzlSMnZtVG1PTFN3TFFrRllOLzBmWjYxSDV0Z2wzbUZzQkc3a2pMakxjMmo3?=
 =?utf-8?B?SHV0djhMZWNlWFZNVUJ2eGwyeTVkamdudVo1OEt2UTdmcndkNG1BUkYyeVly?=
 =?utf-8?B?TzI0YjlFMEFTWDRMZ2F6cEVWTkxYQXJVc2RSS0htY3BmM0lXVnkvZ2djRHZk?=
 =?utf-8?B?cWtUNHM4RUNYNjIxYW9qOUtYWGo3Mk1CenlxL3MvSDdnMFpHWVYwWnVFMEtU?=
 =?utf-8?B?L09hdU1jbTkwelZtOFI4L09TYUZIeVRtcjhVS21TVGJNZEFQY3o4RjFVbjFS?=
 =?utf-8?B?V2UzaWpTc05UeGEvTCtoYkowS2cxR0tHUFh6ZUhwM2hsTE84ZE5nOG92ckg4?=
 =?utf-8?B?em0ybks3cWhtUDZnTVZBYXJ6K245dW5XcUNDMXcxSElOSmNUL0NMWnJzendS?=
 =?utf-8?B?ZVNoM0JoZGd0YmJyMmhJQWE5WXBscjc5WFVjQUJBLytaejhqcnA5TTA2MHUz?=
 =?utf-8?B?clJwMTVraG1mdEFUa0p1MmF1aFdTWmViYmlRakpGWHpWcjVDcUk2T1ZaZzVW?=
 =?utf-8?B?QjJ3dWx5VG9DVVEzM013VzV5QkxzYnZza01KYWwvc0VTMkZ3Z01HUTlYajEv?=
 =?utf-8?B?bnpzM0VvSkFlNU9QSTBGTjBVSFhzLzI0cmsrVVhZUDlNcWpOVjVjNVBKbjg5?=
 =?utf-8?B?NFRyQVhONmViVEYvQnZpUEsraGtvRmJqTStEK1IzVWZRN2NNaDgxOHFpVU02?=
 =?utf-8?B?WTdGeE9wditGMCt1K0RpZHpidE5TdW1Rb1lJaFRZV0oyY0liOUJ2bkNkWFJG?=
 =?utf-8?B?RDhjNzhJYTRLaW40ZVBLWlIwUTgyQ0EwaFdSZXh0emRtNHVBeFA5UEZJdm5p?=
 =?utf-8?B?elNuaHJXZTFkclFPT0tqS0FHQmdqNWRTV0JPUG11ZmIvaUFnV3JMNjFLbGl1?=
 =?utf-8?B?NHorTDlHa3NUWWY2UUxhQzFMZ05oYjU3TzFSRE1rMzYxajBRSTZ0RHRNZDlS?=
 =?utf-8?B?QmFIem0vY21WMFFudVY1SjR2SklEdTJ1UUZkeUdKem52THJBNUVtR1gvZzl0?=
 =?utf-8?B?dnNFZzl0TWJVL3NDQURGUkwvbjN0cmt5ajZYNEhLalpSY0FnYld4d0xudzdt?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8acd42ff-c0a5-4a26-8681-08dc91fda1df
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2024 14:22:51.0670 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aDOEmo6AqD3yUW0l40Chdh+Mq8dgwXf6f0kPTnmR0VxxxuEQ/+v8OtIaodnvR6iM2yKWwZe+0DtA94UsXFYJv1IgsSAHzEvPjWiZQneRfj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8767
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718979781; x=1750515781;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x7hv95cZPxVIFjrqXZZRT6+UKXlZErykwp4Tc1mb87c=;
 b=Snp97weHcZHFCG8m4Xj8rUWODTTMcWMOYtGh8JPUE/xSph8FJK/G7eMe
 VOz9SkJ1FrsuTyku/f9ZUX6buTJ1orDe2NNQMBZ12WQgWi14l3KDjdYmO
 DtrvCSBxhAlmQcSWSHFMOWWtldakSPCpW7YGpF+nwZaenQHeF2gN6Dtmp
 zYfrBatXWRCYuqaSZ2hSfib1fGN1bmx/UUDK3ImeRfXUD7pgP9VN8go+r
 S/06FfE0d2+APZISWrujgUv7CQy+XVtY7P4MwhbrWLIORrZZDhZ/sORo+
 MtIinwUHoD+JFz3mFrRC/MOIaZQ8HvluMdcTPHAPV++FgBTfeAEXW9Qiv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Snp97weH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 12 Jun 2024 14:33:17 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> Date: Tue, 11 Jun 2024 13:52:57 -0700
> 
>>
>>
>> On 6/11/2024 4:47 AM, Alexander Lobakin wrote:
>>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Date: Tue,  4 Jun 2024 09:13:57 -0400
>>>
>>>> From: Jacob Keller <jacob.e.keller@intel.com>
>>>>
>>>> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
>>>> negotiating to enable the advanced flexible descriptor layout. Add the
>>>> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.

[...]

Why is this taken into the next queue if I asked for changes and there's
v8 in development?

Thanks,
Olek

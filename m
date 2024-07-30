Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B41F940DD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:36:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76D5D60769;
	Tue, 30 Jul 2024 09:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Udrz1qIp2z-5; Tue, 30 Jul 2024 09:36:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75B1C60781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722332174;
	bh=RsuAnrK8eiEDSG1a3dqPrfTjHWCmf/jVqCjn4laTiBg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P3y14iTG+N2KS2MAM4ZS5+CV9NSF2ms6YW6zgNUhnNLn7Eqpt1UstnbEPWsBapsvI
	 LeoD7VH7lLC9/UMm0wUD24kBHQxKYsMzD6s9eQpIYivzw5Jl9PyPTCAYdT0ImBloAv
	 6JWuPEGmUyLbOg+yrK6JOHHsK3Jrb+V9Xu1pIWX1+WgFnYdXrF+A04xElz53GMYqqn
	 u5BkHbMi7Pq0OOH97u7KUHxk07tVuEVeod3pCknMSG4nIuP6Pj6RVTv9SXsy/Blr/D
	 Hp9tFBW/nphBM90YrkTHsUqQYCxeIeLiP6XhjMkBf1CSQTWe3cWoy6whMsONy/Gduk
	 Y3PvswGDNkT6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75B1C60781;
	Tue, 30 Jul 2024 09:36:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75D531BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B36940648
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fSPXqP3ParNJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:36:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2710A400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2710A400F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2710A400F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:36:11 +0000 (UTC)
X-CSE-ConnectionGUID: PKqk3FEhQWyp98845fkWgw==
X-CSE-MsgGUID: 5AvfBOzCSJ+EMIISghQxAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="30799501"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="30799501"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 02:35:59 -0700
X-CSE-ConnectionGUID: V4pdwyguSwm4UtRpUrJApQ==
X-CSE-MsgGUID: As/Wj86NRx2XlsK7Y9u/Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54873495"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 02:35:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 02:35:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 02:35:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 02:35:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 02:35:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g0EBbaSMwdmhps3HmOGMiEBqNSHhlt1NvEBzUmg6LTkPR18Gyhwsf9me7xepsTgY+GgwEFgFmLPivbysVHYC8R+fojkkhJDiyxIRTsvUiKovOG0zVdagNbCrJCwmNvPXY/RQsMKJgwEmYAvGQKV4FYivn3XzxT94xJwC2K7zEtm/qws4rVKDsMpVuSYw5MZ6w2NOxplX7VmFbn2d3Xw1I6eXG4CPei7VH7MvLmi1sO7BWoMeZ4CGUqUtP8OGVDnjdTkpUjjn3w6nK/TCQJ/g/NaNI4po2RnofPmTFHu2s6SW58kULoSfBmDOehgm0RPh3+DjJMFKF7LrJcf0fdlAPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RsuAnrK8eiEDSG1a3dqPrfTjHWCmf/jVqCjn4laTiBg=;
 b=HGmIrPRsAswU4Vy/ezZc8pvcLv3tMSx6H5FkPMxKNFvNa5xbJ3T457sbUb81qsGmISZGW6fW1HO0d5sNxgFCRTa7zpeWpz1kn2CcKFcyf3rvUk/BMUHDzWCgK2vaOupfrmMNVeleTyfBsw4AXMKJwN4qo+R7O/5OfutdneqjAw1RA4NTNOUKChWikxUrMP0MKWJ2LKvN9A48bOzvOtOuTcoQcKB8B2RtwdmImNWM2ckqvSZbDqgdmkAHust0sguPqSkXw2RRyhiH9CBh9eL8EVnsnWzLUJLt2S+VocNpVdhWaHXisVJk0IotApf9teEbW+x8dMKoRTUiusYH3S45Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 09:35:54 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%7]) with mapi id 15.20.7828.016; Tue, 30 Jul 2024
 09:35:54 +0000
Message-ID: <c0504288-ebc2-4caa-ba03-94d1b341b18d@intel.com>
Date: Tue, 30 Jul 2024 11:35:47 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
 <20240712093251.18683-7-mateusz.polchlopek@intel.com>
 <20240714073048.77cd4b3f@kernel.org>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240714073048.77cd4b3f@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0079.eurprd04.prod.outlook.com
 (2603:10a6:10:232::24) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA0PR11MB4575:EE_
X-MS-Office365-Filtering-Correlation-Id: bc0f8670-1a27-4aa7-f665-08dcb07b020a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1BlVEw2WEVSeUM5eVorMEhLQ1o4ZjJWZnRGV2VNYWNJbXdkOTQ1bkV3QTFs?=
 =?utf-8?B?NHphN2xwTU1WNE04ektDV2lFcDgrcWwzTERINnlmVXc4dDdrdm5PcU9nbVdh?=
 =?utf-8?B?bVk4bXM1M1JyL3puNFBaWmZwdUY0bytEWjhPdjhHTWM4Snh3ZDk1bDVDK202?=
 =?utf-8?B?OVhNcCs5T2tJU3g0Rlk1aS9tU2J5d2d0M1RsVmhYdjNBNjJOWGNmSlR2S3VT?=
 =?utf-8?B?d1crc3o1R1VCWitkcUcyN0xIakV0Wmw1V0xHSjRoZDU0aXUrcFQ4aEl3SVVa?=
 =?utf-8?B?cGp4QTlybldDaEg0VlFmNElFaGVGR2pkdlFaaGNpa1d0MHRnbXdGOUIrYk1N?=
 =?utf-8?B?YVA0Nm5KSURxdENWRFc3SGZFWjdudkVZTkd2dFdRVUlwQXo1ZU9ZdGxGNHRR?=
 =?utf-8?B?QnZtYTlZYVBWUHZhUFEwcHh5RkhUUlJXYnkrYnBWRmpvNHJrS0s4K2tYKzJP?=
 =?utf-8?B?UzFwR0Y3MXVZVnRaaVpZNmxlMTRwKzRGWkVvZ2tlbXoyOGFucVJ6eHNkaThZ?=
 =?utf-8?B?TzZCMXFSRysxVStMQ3Nxb1krb2pONmlGN0IxMVI4azBZRkd0N1E2OVZKanVz?=
 =?utf-8?B?b1lrM2NvM0hObDAxeTN0UmlGNlFRSmZDd0NMUlMrbTFaaWl0Y2hMaXVHZGpQ?=
 =?utf-8?B?NCs5aGxGWVpVdmkvaHhqUGRUZ1lqUXpUUENTcXJHOWJEVmZzZVJDTUdodGUr?=
 =?utf-8?B?RnBHdlg0RGxFMC9SU2twcWtPUjNJYkpaQUEvZnZJRjdFMlNKcGlhOFBaRmps?=
 =?utf-8?B?SW9pU3B1QXNOSzhCVDZqcngyaFNOeFJrdmN3aERESmNqUTMwMjlaalRJaTlW?=
 =?utf-8?B?bG8yaUEyclVpOTVLc2tHaVQ2MFhtMHNXUjhoYW0wdVJXcWh5WGozWWxLV1Zr?=
 =?utf-8?B?QWttOWNxQWZZbFNnTGZORDFKZjhnelVaWVdTRGRQeHJ2cDNkLzUyclVBbURW?=
 =?utf-8?B?RHJWSUVFV1lOMERPeGVHek1rTEdFRTE4R01OZ0hITDcwNmVKNk5zbjhDQkV4?=
 =?utf-8?B?aEpMZjg2T1U1aUpST0V5RGwxZjNscGtOT2VOa2pZYWZIUUFwTkJzZWwwMGxX?=
 =?utf-8?B?eDZwakd6b2Nsa3QrbzhXRWNrbVhWbUdXYTA1dHVxUjZISWs4dlBUWDVPZFR5?=
 =?utf-8?B?Y3JYcFBwWmtlV3BUVVlKaDBRaGN4cnlNMHlsdHMrSTJBTGVMRkZDYjZOd3RW?=
 =?utf-8?B?RXJrN01nR0VKWmVZN2pSUDdkV1daQXdsOWNuNzVpSFptN0o5MmtjU0tpZGpy?=
 =?utf-8?B?OW5YK3ZCMU5iQTN3Y3RJU01YM0dIWnlua2lHbVV4aVd4aFo4T1MyVVFlWkdK?=
 =?utf-8?B?UENmY0lUVDR3OUx2MHZVSW1PWU1GNzI3cXl5bU8xMmVrYytiZGlTWDFVMHdl?=
 =?utf-8?B?NWZnNm8yVG9qbllJQnoxMHNZUUU0T1R3WC9WMnBDSTVpeFpTU1djUnVrci9X?=
 =?utf-8?B?RWZoNDA5M1NOVnluUWk4M015NE84cXBKek9rc1JYZUtkL0IyRjRwdkFOL2tK?=
 =?utf-8?B?aDVzbmxYYzMwR0pMVVZMNWxtYjJYN2JqMWh5S0ZUT3huUUhOK3hUNFBwTDRm?=
 =?utf-8?B?Y1NjWDRaUFhZbXZFOUZzUHBlQkJ0RjBYNGViVUNFTUJscjlic2U4SFQ2OU04?=
 =?utf-8?B?bHBMQlNXZjltbHNUcFhQdnA1Rk1KSVFPWTQzTGJHMkxhWGJ0aVpadGE3Rjc0?=
 =?utf-8?B?bjZaVWs1MmV1cU1PM3QvTk5OU29tWnowT3RJVUNWQlhYa1RES0lnU1lXbmUx?=
 =?utf-8?B?dzdpdkxRQWFMbHZNeXRKaHdXWnNwNkNnaW53ZTlTclA5d0ZCVHVUUENVaHpJ?=
 =?utf-8?B?ZWRjYlNOSnNkU2p5YnBzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THJvd2UwZStIbFN4THNUOGZ6MnBvNE5FSnZiUm9wUmlqVGNDVGN6NGNvK2hK?=
 =?utf-8?B?Um5QWTBLYkMzSUdXNEQwRVFGQnhaVGhIMmx1RGsvWmRkMWZmRWpEUVpIUEZQ?=
 =?utf-8?B?Tmx4Z0crWlQwc25ZWWxxZGRqNGZSYWdjSXBRVnZrc0QvL0IzUWx5alVkbThq?=
 =?utf-8?B?QXlaMDdVK0tSU0VaWEdPaUtjd1owQ082ZHBod0loUFVWRDR0N0xQNUs4Zi85?=
 =?utf-8?B?V1BhOUhXN1hxTnJVNmp4dk4yVVN6cWw5cHMrZXFocXFiQ3VNYlZTSnpBa3Fy?=
 =?utf-8?B?dVk0ci9kaEdLWWowV3pvZ3hyNnpYc3RHQVZzdi80SEdUbUpadWFaaDcvT0VJ?=
 =?utf-8?B?UExVSUtwQWpCb0ZBaTJaVEx0NHJ3S2JpdU0wMWwvdTZYOG9xampVMjFWMnRY?=
 =?utf-8?B?VXdtQUFma0E3RU0vM3dmU3M0d1FqTklyZkJYcThMZG5PWlpFZ3RZOW1wVW82?=
 =?utf-8?B?ekExVVNnWFlNNUMrZy84MVc0N1FkYkMxSGtOZXVDdzkvVTNFc0xnVnNRVXpm?=
 =?utf-8?B?V0ozNnpWZG9Vc3gwbXAwMk1wb1BYTFRZVk9UWmVtSTJNaDRrcmRCZGJEaklZ?=
 =?utf-8?B?M09OcE5HS3MvQkZ3Q1YyQndCWFRqcEtTR3hoTU9IeXkvcHpPdnZDRjlCTXFH?=
 =?utf-8?B?d3k3SE0rbExUTFEvdiswMERjRktWSFRKTVJNQVRpaGJJSmsvNWR4N0JIWmZj?=
 =?utf-8?B?bW9pMTBJa1ltL2JicE05dGhRQk9LMm9IM1dwK0lXdjVISVdhYmtCUk9MYklG?=
 =?utf-8?B?MDlBSlZ3YWNScEo4c3B6Qld2OHZPS0N5K2MvUHFlZ0VnT3RkQm9wMDlCZkJJ?=
 =?utf-8?B?U3hyMEs1UjFzNDZZelg1Z2hZSzQ1bGpUNXA2eG1hQzdScnh1R09wOXhjQk5r?=
 =?utf-8?B?cVVvVjB0eTkvcWZSUkRtMUlGMkc2T00rcE9HUW5GZFdUa0M2Z3Z0V0FibE9B?=
 =?utf-8?B?ejdvZzR4MEFoWHJBaW94cWVFcnlQaFdMbE84SzE4TEVjQm1QWEZ2TGIySWJo?=
 =?utf-8?B?UGExMFEzbVFUalZtaE5rdGg0SGF1UC9wMkZIUzZRbXh5SFdVUFBUUFpKUGhG?=
 =?utf-8?B?Si9QK0ZSK2pqaHlGZ3VqdWJtclpqc29UNVNVSVlnU0VQTlNTaHdjbzdGTE9o?=
 =?utf-8?B?eWpoellPL0lwYXpuWFFRcXhjMkovVjdPcm1HRVZQSmt1WXFrZUhDS0RBbVFv?=
 =?utf-8?B?Z2todkFTWUdhYk5GZWZjb1NBRmxFRDZnbXdvWDBrY1RyK1B3TXBrcjd6QXNR?=
 =?utf-8?B?WFFnd2YvT25JSW5oWXNYTWh5NXdVUkhabFdpS3lSeXFkYWpDckZSNXhCdXZQ?=
 =?utf-8?B?TGZjZTZtRk9FcjNwT0ZuU3hpbGJnVFJpeXVpMWdISEtHLzhRdEhxc3hhaStp?=
 =?utf-8?B?RjM3OTBPR0d6MXd5UjFCd0RXcWVvc3d6Wm5OczE3QW9lWnh2RDJFRXM3WDNm?=
 =?utf-8?B?QkZZYk5mZVpHV044cTIzUFBCWU1EUUd6cVpCYW5objUvVU5tekoxNTFnWEFT?=
 =?utf-8?B?cEhpWDlyNzVhT0NTSUhZbE5wWmpVbG1kZDd0UWpqM1lQazJuT2NIbWViQVRk?=
 =?utf-8?B?djk3WnpBbHB6OHROVzR2aW5UOTYwa0tFK255dFFiOFV2MkZ4TElVbmk4NXNa?=
 =?utf-8?B?ZThaeGxGTXVmS1hkM3ZqMTBDeGo4ZGlOeVc2VmNXUWlTQlhtdnZxYTQ0cEFT?=
 =?utf-8?B?S3pOb2FGNDcwYTdFeWwxdXd4bmU2Y2RrbUV5dVY2NjUrZTdSSnUySXV4bjR3?=
 =?utf-8?B?MVRNRThqQzhSTkdoL3pnSHBFYXVObjYzNU5aUnZUV1FWTlVONU82a1AxSW40?=
 =?utf-8?B?aHBnb2RTRUJCODdRV1J4Ry8waVFHZzNRcUxWaXNtRVlLSWs4OFozWEJ2cXJM?=
 =?utf-8?B?cDlyaWp6Q0Z3L0t1TEhuUFI2d0RqQ1VmajFFWFBpcE5seGJ5anBMVUxMaHZV?=
 =?utf-8?B?dnZLR0dmc2NWMlNnRU9BU1ZydXhVWTc2M2E4TGpJQXlEdlFIakczQUxpTnhT?=
 =?utf-8?B?aFlaY3kvWE9XektvNk91b3FGVERYdUtqYXJJTVdaU3MwSks3eVF0Y295Tzl2?=
 =?utf-8?B?bDN5R0lDSnlHMnVmZ1gyMUtSZm5relNyWEdKUkZXeW5IL3ZPQVNvTVZ4bHFi?=
 =?utf-8?B?TkIydzN0L3dHa1YxRlRzMWtVRkUyMmR5ZGVOV1JrOGRpc0lpZEF3V1ZBcGxj?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc0f8670-1a27-4aa7-f665-08dcb07b020a
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 09:35:54.2914 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TtvhgNuPZDS0doWMWWeogjx/9sSuK04WpdaNNPadP3b3vx3U4wNCHUTsQSOm7MG7jus3MQ4Q7uhPA/o6l7YYVvpOfHAfY8dcbVlWVO3vEgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722332171; x=1753868171;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SZLcBOVcG+aTig9QTMjx8NY7RLK/voWYwKsDuzsKUO0=;
 b=lI1776CPvXOu3oJzAYmPkapxyQtl86SDxER5A9UniA/udj4vWI2WyShM
 VyPjluJ8B2TEHd24TC2CMIaN0r1MQ+ZJSuN+BuEEwK3mZ8EMDbHP9sbyb
 0vjVCy8rFKX8KYWCKb8xQrbVoE25LUWEFQz+zqN76x9ZnYZfoDttJzUsz
 IrtCn7wUmhICfBzUiWEfIQWfXs/mlO5wd/+Oez/+f9w1TFh0xXbAlSVRL
 dc5OAV+V0h5IQlpVkfZkufBxdKAySjRMIQNSpLhA2NSbJ+2Ivz7sepSlS
 xs1ksZOyt9fX36MpJnJUes6qPFmgSRt4cx4Yy09M6IgcycUlWKnCRfqsj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lI1776CP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: devlink health:
 dump also skb on Tx hang
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2024 4:30 PM, Jakub Kicinski wrote:
> On Fri, 12 Jul 2024 05:32:51 -0400 Mateusz Polchlopek wrote:
>> +	buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +		"skb len=%u headroom=%u headlen=%u tailroom=%u\n"
>> +		"mac=(%d,%d) net=(%d,%d) trans=%d\n"
>> +		"shinfo(txflags=%u nr_frags=%u gso(size=%hu type=%u segs=%hu))\n"
>> +		"csum(0x%x ip_summed=%u complete_sw=%u valid=%u level=%u)\n"
>> +		"hash(0x%x sw=%u l4=%u) proto=0x%04x pkttype=%u iif=%d\n",
>> +		skb->len, headroom, skb_headlen(skb), tailroom,
>> +		has_mac ? skb->mac_header : -1,
>> +		has_mac ? skb_mac_header_len(skb) : -1,
>> +		skb->network_header,
>> +		has_trans ? skb_network_header_len(skb) : -1,
>> +		has_trans ? skb->transport_header : -1,
>> +		sh->tx_flags, sh->nr_frags,
>> +		sh->gso_size, sh->gso_type, sh->gso_segs,
>> +		skb->csum, skb->ip_summed, skb->csum_complete_sw,
>> +		skb->csum_valid, skb->csum_level,
>> +		skb->hash, skb->sw_hash, skb->l4_hash,
>> +		ntohs(skb->protocol), skb->pkt_type, skb->skb_iif);
> 
> Make it a generic helper in devlink?
> 
>> +	if (dev)
>> +		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +					  "dev name=%s feat=%pNF\n", dev->name,
>> +					  &dev->features);
>> +	if (sk)
>> +		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +					  "sk family=%hu type=%u proto=%u\n",
>> +					  sk->sk_family, sk->sk_type,
>> +					  sk->sk_protocol);
>> +
>> +	if (headroom)
>> +		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +					      "skb headroom: ", skb->head,
>> +					      headroom);
>> +
>> +	seg_len = min_t(int, skb_headlen(skb), len);
>> +	if (seg_len)
>> +		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +					      "skb linear:   ", skb->data,
>> +					      seg_len);
>> +	len -= seg_len;
>> +
>> +	if (tailroom)
>> +		buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +					      "skb tailroom: ",
>> +					      skb_tail_pointer(skb), tailroom);
> 
> The printing on tailroom, headroom and frag data seems a bit much.
> I guess you're only printing the head SKB so it may be fine. But
> I don't think it's useful. The device will probably only care about
> the contents of the headers, for other parts only the metadata matters.
> No strong preference tho.
>  >> +	for (i = 0; len && i < skb_shinfo(skb)->nr_frags; i++) {
>> +		skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
>> +		u32 p_off, p_len, copied;
>> +		struct page *p;
>> +		u8 *vaddr;
>> +
>> +		skb_frag_foreach_page(frag, skb_frag_off(frag),
>> +				      skb_frag_size(frag), p, p_off, p_len,
>> +				      copied) {
>> +			seg_len = min_t(int, p_len, len);
>> +			vaddr = kmap_local_page(p);
>> +			buf_pos = ice_emit_hex_to_buf(buf, buf_size, buf_pos,
>> +						      "skb frag:     ",
>> +						      vaddr + p_off, seg_len);
>> +			kunmap_local(vaddr);
>> +			len -= seg_len;
>> +
>> +			if (!len || buf_pos == buf_size)
>> +				break;
>> +		}
>> +	}
>> +
>> +	if (skb_has_frag_list(skb)) {
>> +		buf_pos = ice_emit_to_buf(buf, buf_size, buf_pos,
>> +					  "skb fraglist:\n");
>> +		skb_walk_frags(skb, list_skb) {
>> +			buf_pos = ice_skb_dump_buf(buf, buf_size, buf_pos,
>> +						   list_skb);
>> +
>> +			if (buf_pos == buf_size)
>> +				break;
>> +		}
>> +	}
> 
> You support transmitting skbs with fraglist? 🤨️

This will be removed in the next version, we will log only the number of
frags

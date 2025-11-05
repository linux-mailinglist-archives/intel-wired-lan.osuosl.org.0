Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E3AC350D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 11:14:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FA9E840A8;
	Wed,  5 Nov 2025 10:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdWVd3hmirQS; Wed,  5 Nov 2025 10:14:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9340840A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762337661;
	bh=0VuwrxRb74mAWmi3imeRTTYti2YDMStzrVRHa1vR7Jw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U7HfEq1St4XJvb5DrSdMtrM8Xwwg9VzgBUpJ3NM/XKsNpRTquBSGo15JqsqlfNzI/
	 +rbX7NEstN0ONl7ZdXcHsV8Y7GcAlTiAmNDPByhJswW+ie17kTgj4HjlBsZdaDfUr7
	 kQtTjiDYngjpUM5pa3U0VLGSiT4YqGT8EaEciWgI1nfhcu1ojemSVLH0ziJbhWSX3z
	 tqPOrvtnJ+MhDZufX0Z4q2TaaEP9AYBjrNmKuVb2pbyZ2XB9FqQN+aCDJsQ43larYI
	 WYvF42tf7Ut0W3uPeAut/Q8nV3APyaA/HxbNOTRDWFsvQRA5ihlFXAa+pQhDid3fR7
	 HMAY/9CAeHibA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9340840A2;
	Wed,  5 Nov 2025 10:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CE767462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B41E961258
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id amJ6ZlfhoDqR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 10:14:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 94B3B6122C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94B3B6122C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94B3B6122C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 10:14:17 +0000 (UTC)
X-CSE-ConnectionGUID: IoJN7K+yRwi+0e4loHDJwA==
X-CSE-MsgGUID: srbOLNqbTrSBll7SZCmpSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75797652"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="75797652"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 02:14:17 -0800
X-CSE-ConnectionGUID: L9L/WOqzRL+mS1Y4NCwPEg==
X-CSE-MsgGUID: 7A8VSyXORRapn66jgmWKAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187106457"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 02:14:18 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 02:14:16 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 02:14:16 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 02:14:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ymmkim3pVLjwT+Gz0idovPieXMZWXG98RoV9djGvIgz6qDBZud4XhSNe+2kFC0b9XFYn28WDyvbgZ1k01Iwev2j5kqCuapQxtrUOhOhJMuzXkeO1bW5bU82MD0N3q1Xn8fjLWT+irj+tAF3L3MrhGUA1yE326WcegBJBh3ftgV0C/KPtiloAGN4/Ijh+0GAg1l2aSmtgLRNcW6JD5LrKMnUVIXczoVbq4R/rqZ7DWfWc15OEGCxzwqWKEWzFdHE7FAJgttOnL44RAu6D4sX7PvaIjnl7ApJpQBiFsatzhJxYYDpY8+4B1Hl/TjW8qpj9ODIcVOjTQPdxpsoH2wcW/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0VuwrxRb74mAWmi3imeRTTYti2YDMStzrVRHa1vR7Jw=;
 b=yOX6EYElhv06eLb2B1EFaBMxpvLmy3pPv0d/+u0UPZi2Iye1RT/9n5nFN2LuGG0AJbQVyti6ToXCfq6+ZD0lHp1uAcMjCtSmkE7xzNyX3C6Mfk1PPuEFLg4aKYMLJfEEqEnfY8r/NscqBWx06Xy19j68lOSKtTGg13ojEXS5Sg1qM2I6khoUIQQi8EYsN61UzIPjXcG51noEdhhX45Vhl4cNmSPAjeqqiiG7PPTdAtaTMYqh6PMz+/p3vSRijxBw8/mJTR43ZE6iWZueF7pYBYIyeAW/K25ntrolkEtUBrJhe64xU62G2nyQzKQdz7jDip25+8nuVekb5Hup88YsXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 10:14:13 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 10:14:13 +0000
Message-ID: <ba97ee38-a9d6-4d59-811b-055534ffbe8a@intel.com>
Date: Wed, 5 Nov 2025 11:14:09 +0100
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <aleksander.lobakin@intel.com>,
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
 <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
 <aQMxvzYqJkwNBYf0@mev-dev.igk.intel.com>
 <621665db-e881-4adc-8caa-9275a4ed7a50@intel.com>
 <aQS216HKiUmF0tky@mev-dev.igk.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <aQS216HKiUmF0tky@mev-dev.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB9PR05CA0010.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SN7PR11MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: 3930c20a-259f-4e4f-0865-08de1c5411d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bG9pM0NTNFByWitnVTJHNS8xWWlCUTRzSFNiUk1LYWpRR3VmbVBuYWpudkxv?=
 =?utf-8?B?aGErRlEzeGNBcHdlL0FOcEMwMmNTUWs5cXIyRjBybTZ1Tkt2NmNGTGl5QTJ3?=
 =?utf-8?B?WXQ2bitvWXV5aE5JU0JPdENaYS9Kd0pXOGRHK0pMbUcybndCUGgrS2c2MFQw?=
 =?utf-8?B?T3B3NUxrZXV6SW5tSHVsVzFNdldvLzRPTmRLdnBXVzI2ekh5VWhxTVdyRGgv?=
 =?utf-8?B?VXJsaFBFNFMrSVVkSWNsQTNpNktYYlRNN3dUdW1xbTF4cnFqeWJtcFkrUmI1?=
 =?utf-8?B?Z0R2Q2ZxYlJlM1V1Kzdvb0JuNXBXSmRLOWk3SmpQQU02KzIzRTc3d2FJVHlH?=
 =?utf-8?B?RWh2Z1J0MlFCcjdxVGVMcUxVK29wYXo5emNXU0UyL2wwWFdFL0I2L1lSY1Ur?=
 =?utf-8?B?dHdqREFGaVZHMUgvY3FGNkJza1pDc0NLZ0VkOFNydE05WkRzbXY5Z3NqVk5C?=
 =?utf-8?B?cHhtOTl2MEJDR0lLSWN6TlFyOS9EWW5sKzNpeHZnVzlmUlZBcjBaTVR2SFdm?=
 =?utf-8?B?MUV3alJKZTFZQ0VPRDdoeXJoNG40Q09lLzlDZXdxa2hxMi9nV3g3WlRhbjl0?=
 =?utf-8?B?cDQ2SGVIMGpsanNXd2p4VVZ4T3AzWUdlVHYyYUs0NWxZalprQVJvUHhLb3JL?=
 =?utf-8?B?OHo5czBqd0lFejVuSk4rcS9RQWdUbTd5MEMzK0dqMDBlQzRMQ3B3Qzg0VkZl?=
 =?utf-8?B?ZVhNMC9hQlorbVJ5UVBBbUZLNVpvdTZKSlVraTlzeWVYeS90TytSZmx4V3R0?=
 =?utf-8?B?ZE9jMjJOUDBuMHFZdHZNSTZZUWRKbzB3QnZyVmdmTXc0bXNESXRsSXEwcjZQ?=
 =?utf-8?B?ZjdnOFllWXVPNmdWSWx4UlN5VkhUdDlaZkExQUVtU04yWUpUb0ZwZjNpNmpG?=
 =?utf-8?B?b2Nnek4zckZRaktnTUphZmNXTXNvdXZrdFVmNWM3K3hNNWFmYXF6YmVOOXdi?=
 =?utf-8?B?ai9KQkFHRDFHalhCVlpuS05IYU8zb05uODYzYzJWQWNJRUpOREZHSVVnQ3Fk?=
 =?utf-8?B?YnNXbXJHdXM4YUpkdGh5bElaMEppeFlxU2tMalhWclJxSVhJMWgwaDJ0UG5r?=
 =?utf-8?B?NXovTXB3THRLcE5YU1pNUXEvaUtwNllIbjZFa3Fqb0cwMTNKZHBTVW1IUHB5?=
 =?utf-8?B?RWtuWEFIOGtpSExZakRiaUdPbzFOQWEwQjZwNi9hb3QrbFlXcHI5Z25mWnpt?=
 =?utf-8?B?NnZhd3pXME9VM0lhbFBGcmFYZGFlUGZTTEF4UHYvcXk5UDZxOU5tSXNyTGg5?=
 =?utf-8?B?VHVqaDhNZlk0SEtNaUpHcEJUOERheHptL2c1YUVjeTNVaWZGK2pjbFMyTTZk?=
 =?utf-8?B?ZXFvWitsSEpnL2IxS1hGOXNwRms1M3RtYWxhbHhMTUNRN0ttbUNZN3FhNTVs?=
 =?utf-8?B?ZStzRksvazFaSndESEo5bWRYVVVKZ1dYNGV4OFhXUXdQdlZPQ01QYVZSUmw3?=
 =?utf-8?B?ellKcGIzUS8rZ1FYZ2pCdnJVdkt1bVNKVktuR01hdklpdXlLUnUydGJPbUhh?=
 =?utf-8?B?dzQyQ2JteUNxSU1MUDJlYXlCQlNqM282Z2x6bHcrNHF6UmNCbmhEamYvcFVT?=
 =?utf-8?B?TEtqb1VRTFBkTFRkOFBqSUlOL3RlMy9ENjB4T3I2SHRtcjJTWGZEcXcrekVj?=
 =?utf-8?B?bWM0V0ltMGJHWW9FQ1pBQ3VwVGh0eThhczRxYndDa0FQREtBNEZ1N0dMWW9x?=
 =?utf-8?B?d3V4M01mZ1l2VFJ4T0lIWG5LQ0doN2Y5ZFBwUjFsZ3c4dTByZ1hSK3VQN3No?=
 =?utf-8?B?ZXA2OVVrZ2pJMGQ2SlB6bnNjYm9RVW5xaFVUZHNTWFFjSHhacndidlh0K3NX?=
 =?utf-8?B?amJWZmoxWXoveThoTEpGV3FkUTBLWWVpN3cyYXVYN3h0SDN2KzV4c0ZPYUl3?=
 =?utf-8?B?aHJ5MEZOTGczYit5M2U4ZWtCVXFIV3A4UUwrRXNmVEowM2pTL0dyS1g2eER0?=
 =?utf-8?B?dE9kM2NKTnd5aW44M05ST0lZOU1KRFRnTUVNcTlldmM5TG8rREltTWFpeGV5?=
 =?utf-8?B?ZzF3OHovZ1hRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OERvL0JWandnQXZQd1F2bTNyU1RGR3U0Ums1cG9QSG0wUHVZUWc4RWhjajdS?=
 =?utf-8?B?cTJlVTRHcWQvWUhjeUVVaVJNYVpBUEMwR0V4dnlvWFBORGJOU3A2ejBEL3BC?=
 =?utf-8?B?MnBpZFJNdHJyaGJRajhtZHFZdm5HUnV6WEhTbHkwV2FVNm1aTzVDQTFhSmds?=
 =?utf-8?B?S2NJK0hDY2hGSTcvWXEySVBqVHpKWFRuMjdPcXlXcm9RZmpsUmdORmFYUk5l?=
 =?utf-8?B?eTVBUDZPV01seTZDLyt4VVNXK2Zad082VzArNkxOVk9PUVRQVVo4QUhoUE1v?=
 =?utf-8?B?djg1MXRmaDFmUmNQdTNzeStTcHdxWlRNcnlkQVJQWVhmOFlzL2JDd1lTZTNH?=
 =?utf-8?B?YmY0R1BWYzY2VmE4OStGSFJJMXZFZ3BBa25iSmgxdGVqQ2VXak5VMzdZek93?=
 =?utf-8?B?T3N4ckp6T3Flb1YzNDJUWEJCUU9NdkV3YnR1SGlHcG1tcGhOYlhyR0k5blE2?=
 =?utf-8?B?cnZoSldWY01Eell4RlE3QUJiNHFFcmRCeTBveWh2L1R5Umc5a2pnUnRxQmJh?=
 =?utf-8?B?THpWNUJIRFNQL1pJanBoWUhDeHBpdXJaQ0hzK0N5SFBJZFI3M1JXM2xKYXYr?=
 =?utf-8?B?dVhVKzc4MnNMNXRLcHFabnYxRXFGbVNPN0VONGZabGxHWllGQXFndjNPMTdr?=
 =?utf-8?B?YUR1OUhkWWNBaXczK3NxRjNkTUtGUkNVdTFidVQyRzlaSHQwZlJUaWkwOEkz?=
 =?utf-8?B?YllndjNKcm15enk2RHozZVpLSE02WUNIRTdYRkFFQWFhRXhDOFpxcko3Ympa?=
 =?utf-8?B?bG9lNnkvNzJYa2RKczdzMGM0dXZzNFB6SmFwL2Z0NlJlQ0RvVzlmczlVYmRm?=
 =?utf-8?B?ZS9JalJIWUNicUxsNmNyRU5wWkpnWkhpK0llY2pydDJvMnAxbjFvVHQwcGlU?=
 =?utf-8?B?cVo1clY5bU9LckRIa25YQzlsSUZ5SXZydElxTWJiKzExQWxTV1JxdytnTzRG?=
 =?utf-8?B?cXhmb0ZKTVBZUGpiOG05N1ZVOVYyYWMzTEZQZzRvM3djWngvaSt0MXptcXF5?=
 =?utf-8?B?OUVUSTU1QmtXbjZFQmdicU1rRitQUUdyMXVWVnVRRU5tUTVVZW1OeUg4VGNS?=
 =?utf-8?B?ZTlheDVHVTRVbzVjQ043Zzh2dlZhak9seWZEdDR3ZSt6MWpCKzU5dGhsamFv?=
 =?utf-8?B?bXk1cGJnUG1SSVNsNGt4S2owb0ZZcXFSOWJtYkRpSVNNdDdHZDRFMFg1UjY1?=
 =?utf-8?B?UG1aMmJBU0t6YU56MlVuMW9QNnlQUDN0UDFxVitraCtMWGErSVJuYlR3cFdP?=
 =?utf-8?B?SE90b09ycFhsc1VaaWxYK2tEMDJ2Qy8zUVlIZ2J6YXpUV3ZpdlUxSmh4Qi9j?=
 =?utf-8?B?WXFjWFhKTFFzQTZMcGt4eG41R1dwUDlXNU16bFJGcFZvT0x6ekxXbk8rREdm?=
 =?utf-8?B?M2FmVXp0VWM5U3p4bGVNeU1pcXRMYXlTczJPNDk2WEFFZnZPYzFCMzBSNDZ1?=
 =?utf-8?B?NUZGdXhOTmRuM3h5NGFoZ1FtcEJYaTdKWS93YnhWT0F0WFJQcEw3STFsKzJC?=
 =?utf-8?B?aDFibGh0MlVkcGlDUXdKU3d1K2djeGQ3UXFQaGEzSWxoblhKSFpaZjZRZ0xk?=
 =?utf-8?B?WVpIQzAvbWUwUjE3TFI1aVdaZWhDODlkTXdaaEJZTnkvWlNpQ3FCb0ovbFlB?=
 =?utf-8?B?cXEzNldkVXp6aDNOd05qb1pucnpsd2hTT08wUmJyMCtvMDRwZkJreVpmRmtn?=
 =?utf-8?B?NHZKZy9ySFE4QUhKRnlQOC93QWtkaWt2QXlZQWMySnlJUkFTZk1sTUV6T1ky?=
 =?utf-8?B?T214YlR2b3Fja0ZRSk92cWxFMGRGby9BSUtuamRNSVg3N2l3MkhueVF2MTVD?=
 =?utf-8?B?MlJXRm5LNk5PRFV5djZ1L0NSc3pycC9NaDJzZEU2QzlPcHBDZVkybkU4RERj?=
 =?utf-8?B?MzlFUEJQMzNGS3JPKzAzeWc0L04yUlh0eDIrVit3SlJQVk1TTGRmMHVyTDBJ?=
 =?utf-8?B?Uk1XSjl6aloyaEpoWk42eG5HeVloSG5IVUR4WEhBdGVhaTRuQlFlYlhwM3dv?=
 =?utf-8?B?ZDBxTmZOa0k5TUdWMnZDMWhJWEdjR3VUQkgxVStOdWxxRndpS0Mrc040OVpN?=
 =?utf-8?B?SXNDL09yV1ZlSG1PaWNNUFFLUnJiYU1ZY0d6Y2o1cU84T1gwbGRPRGVhbFNa?=
 =?utf-8?B?SXQ3TDhVRDgvTThqZmdGZ3lSN3FTcWlxQU5Pa3lXSUxaRndCNFhOWXpuUlFv?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3930c20a-259f-4e4f-0865-08de1c5411d2
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 10:14:13.6132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zsoy5kTeRpELuBSa3RlOql3eGPD5DF6GaWEzxiDfJsRw3IaHBX/ulo89UEdf6GS9I5DcqGCQaWOUrIAevlX7fWGcIkzk6a1qVQvGxNOPgh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762337658; x=1793873658;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WR8O8j/iqB7AGluimRxbe1pd4NgbuPKjVp1951uy/kI=;
 b=M08qwRIskObrQXheRxb1kVSbfUbRxHLslgrZlo+DoV1BWbc5epli6Sz4
 2SsFqvsggSOnunrhjRE/YRKPQxLQUtaSSnJpbwOYinhtxTMdDiCF5nLnZ
 zF5xcWLRqolx4XkBpNv+qzewFY36jl1WalvlqZcPir7qpj8qX9mlTSG0c
 c7x0wm67TlU91xjjHYrk63gsSPx64j98a5uWFagf1EUl7L+PJ1cMtCIzL
 7eC1dCdk9mJqALb/aNaC9RICrPiGevn2lZaAW/Wyi0OZOvwFDkIwRBA7b
 yOIFfmnvJ0RDHsyIe9jWRU32tvu0ix8tTwaB6dfL8P44ZR679kSAd2Tya
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M08qwRIs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
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

On 10/31/25 14:17, Michal Swiatkowski wrote:
> On Thu, Oct 30, 2025 at 11:39:30AM +0100, Przemek Kitszel wrote:
>> On 10/30/25 10:37, Michal Swiatkowski wrote:
>>> On Thu, Oct 30, 2025 at 10:10:32AM +0100, Paul Menzel wrote:
>>>> Dear Michal,
>>>>
>>>>
>>>> Thank you for your patch. For the summary, I’d add:
>>>>
>>>> ice: Use netif_get_num_default_rss_queues() to decrease queue number
>>
>> I would instead just say:
>> ice: cap the default number of queues to 64
>>
>> as this is exactly what happens. Then next paragraph could be:
>> Use netif_get_num_default_rss_queues() as a better base (instead of
>> the number of CPU cores), but still cap it to 64 to avoid excess IRQs
>> assigned to PF (what would leave, in some cases, nothing for VFs).
>>
>> sorry for such late nitpicks
>> and, see below too
> 
> I moved away from capping to 64, now it is just call to
> netif_get_num_default_rss_queues(). Following Olek's comment, dividing
> by 2 is just fine now and looks like there is no good reasone to cap it
> more in the driver, but let's discuss it here if you have different
> opinion.

I see, sorry for the confusion
with that I'm fine with the change being -next material, and commit
message is good (not sure if perfect, but it does not need to be)
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
>>
>>>>
>>>> Am 30.10.25 um 09:30 schrieb Michal Swiatkowski:
>>>>> On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
>>>>> Forest) loading ice driver with default values can lead to queue/irq
>>>>> exhaustion. It will result in no additional resources for SR-IOV.
>>>>
>>>> Could you please elaborate how to make the queue/irq exhaustion visible?
>>>>
>>>
>>> What do you mean? On high core system, lets say num_online_cpus()
>>> returns 288, on 8 ports card we have online 256 irqs per eqch PF (2k in
>>> total). Driver will load with the 256 queues (and irqs) on each PF.
>>> Any VFs creation command will fail due to no free irqs available.
>>
>> this clearly means this is a -net material,
>> even if this commit will be rather unpleasant for backports to stable
>>
> 
> In my opinion it isn't. It is just about default values. Still in the
> described case user can call ethtool -L and lower the queues to create
> VFs without a problem.
> 
>>> (echo X > /sys/class/net/ethX/device/sriov_numvfs)
>>>
>>>>> In most cases there is no performance reason for more than half
>>>>> num_cpus(). Limit the default value to it using generic
>>>>> netif_get_num_default_rss_queues().
>>>>>
>>>>> Still, using ethtool the number of queues can be changed up to
>>>>> num_online_cpus(). It can be done by calling:
>>>>> $ethtool -L ethX combined $(nproc)
>>>>>
>>>>> This change affects only the default queue amount.
>>>>
>>>> How would you judge the regression potential, that means for people where
>>>> the defaults work good enough, and the queue number is reduced now?
>>>>
>>>
>>> You can take a look into commit that introduce /2 change in
>>> netif_get_num_default_rss_queues() [1]. There is a good justification
>>> for such situation. In short, heaving physical core number is just a
>>> wasting of CPU resources.
>>>
>>> [1] https://lore.kernel.org/netdev/20220315091832.13873-1-ihuguet@redhat.com/
>>>
>> [...]


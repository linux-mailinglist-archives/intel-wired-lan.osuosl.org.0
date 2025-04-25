Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E43A9D5BB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Apr 2025 00:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C61546067E;
	Fri, 25 Apr 2025 22:42:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIoUhuH6t8dv; Fri, 25 Apr 2025 22:42:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8ED160684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745620919;
	bh=ahqcLUHTEEibI1OSljCIyf5byI1BxFf7ZG3PCoOPm+A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ovi3KEoLKQu6LiWvzmfDwHzjhpW60XAbTHJm/54Tw7S4pE2MyF5IPRuiyxgJvQbX2
	 fUTFHifGkk7+d+bCAHrtnmDSwR3WP+HvJ31R8MNOOM44hNgQlblXnllSth7XNs7h81
	 bmd4yij1gk86ekHtrKOWtNZji3qQ36SmgHS39GzoIEA9b+DiZcw6NkGGQDLVsQlzdQ
	 qmxncB4Ox3qkQLmIEe0dcN1/wq28jE4/8sBCyL/dsbwfezqZyPi7Wfr18Ylbp6CgxE
	 AB5jNhgAMvnGW4ZtrHVBRIhMsToku+QONEkAB4I6nXQHAvCIh8u00uWh2SrJvs5NBm
	 GYxUkctDK5qiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8ED160684;
	Fri, 25 Apr 2025 22:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 217D731
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 22:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 104A140604
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 22:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l5b0y9KAkud5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 22:41:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 250584003A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 250584003A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 250584003A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 22:41:56 +0000 (UTC)
X-CSE-ConnectionGUID: +6nB/1yETQ6qjAXxBONDjw==
X-CSE-MsgGUID: UECWA2UcT9C2WlZOtRRSGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="47167917"
X-IronPort-AV: E=Sophos;i="6.15,240,1739865600"; d="scan'208";a="47167917"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 15:41:56 -0700
X-CSE-ConnectionGUID: noqVOWHHSkidI2O3qxOAuA==
X-CSE-MsgGUID: f7r2PVNZTu65Tj8rzMEJyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,240,1739865600"; d="scan'208";a="132905146"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 15:41:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 15:41:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 15:41:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 15:41:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VtIX5ghsOuzayFv9+yY+muMkJYq5xkv9mmztcWqJUZ2nX/kILAFJDr0hqK+xN4E2An/HljQVAWAL0lhMKGjs3UFesqslb/bBcpu201V7/AkrFTxc8XL5nf3whIMysOKbRMFzcNAy9BCnSdXm0Ld9rcjlJ5DcYWynt+aUhyT8EddSLiHzvO8NLaNm38aN9DsMkJXuW7Qgq9oD6pAvLjOxYfYokPsNZ6Us+Lh0apDN3m8VG9X3KbHJ8vVEvtAXr0fL7l5EM+hw4hUEN9qkbmF4VBzIb83Gj9hV5ModOYMThs7stKkbWTK/eedsZuf6kzp7NEygAkN5TNgfkzZ7JTG1Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahqcLUHTEEibI1OSljCIyf5byI1BxFf7ZG3PCoOPm+A=;
 b=ctzakGwCSqFvFSIrDgL3TfVyTOYYZNjtPLNb9h8Q26k/G3nBJog1Lv9ceG5bV6stSv9gsXp1JSbJNClnnLUF6qWqPpezwppcZlFjwnCEmTsq4yR0DeJgaeHWMthXw57cBDzia4SQmcntZVaBNwZSzlsZOsfZgC+AH0B4HTUIFYZeHXcj4SsJlrEQ8wNMzVUgu5QELblhwDMBNH8tVcN13koB4MiekQ9UEaqNcH5lOWdFsIFklp1d1DeoLmKzmdGepcI83vLrtQlSp5Y6TF10fWGiMJvlX6+6SfzMFoqTcthO0CFKJrpFc9SIXCkdYkjT083HIt02CfnXdFdW4YyQDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 22:41:22 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%4]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 22:41:22 +0000
Message-ID: <a1d7a46f-184e-4c01-8613-6cc5d35d2545@intel.com>
Date: Fri, 25 Apr 2025 15:41:18 -0700
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <emil.s.tantilov@intel.com>, Josh Hay <joshua.a.hay@intel.com>, Luigi Rizzo
 <lrizzo@google.com>
References: <20250425175426.3353069-1-brianvv@google.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250425175426.3353069-1-brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0002.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA0PR11MB7840:EE_
X-MS-Office365-Filtering-Correlation-Id: 14bf04f2-a8ec-4ea9-182c-08dd844a4db5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVRaN0NHL3BsTWU3Y1NldHRFREVaWUhnL1NMZmZqSXl4VzlFazBVV0dqZ2VZ?=
 =?utf-8?B?UkovZW5HaDB2ZW5OVkF1bGlCS0ZRNWxpSWhPQkNPcWdMaFRqZHhuOExrN1hR?=
 =?utf-8?B?RVhEaEJpRzBjWEZEOGMyWi9KNFErMXJKcmFDMTRrTG5uREFaWlJNaXhUSWhJ?=
 =?utf-8?B?aUU1L2FoOCs4TWw0a21VL3daS3FqZTRPMkdPSjcrd09TeFRpdGhoVmdBL0lV?=
 =?utf-8?B?VThPOThzVEI2YnhUMGNjalluQmpZaDhnc2Y5UlNXTFoySUM0OEM5YXIreGM5?=
 =?utf-8?B?ekxUUWwzdDQwcUovTllLL0VpbHpVbTFIa0xzZDVSeGdNUFVqM2JvcThEcmhG?=
 =?utf-8?B?S2M0TE16VlNUeGJhVkp6WGxCVy9vdEdBOWY2c2drc2JFQ2ZlNHZqZGRKRmVp?=
 =?utf-8?B?VnZXWUVVNFk3M21GUTJpa2o2a2hyODFpVVNueWpZWS9xSWJwZXhFakhOOXNq?=
 =?utf-8?B?eVZ0TThCcWdxdnVpMWM1QlhWSjhETXAyQTFXWXZwQ29XeWtYWjNnblNsOEJY?=
 =?utf-8?B?T1YveTBUOFBqcFNWL285TTBLWFQ3d0phTlNFVlVoVU4rWXRPbXUwOThLQStP?=
 =?utf-8?B?d3Y4eWp5QnhEbjBsdUFiWElMamZycGsyaWdHUlJxZFRnWit3NXpMckZrdVNG?=
 =?utf-8?B?d1FBWmxRSi9lVTU4UnE0KzdhOXNDc2w2eDl6UlhtMFE2QzV4djZ5eWFNaytL?=
 =?utf-8?B?VzBZNWcyYlljdWpVUmRiOFNtQ2YyYmdqSUMyRXBtUGIxNTZNM0w5SUd3ZjZv?=
 =?utf-8?B?OTE3L0RtSjE0SjN5M2ZmQ0JiNzR4WjZYanJ1aGVpeG9VeVBjUWQ5NTdYZ0w4?=
 =?utf-8?B?d1NLcmt4ckgrN2FWa2tpdUZzUXVTbmZQTGRCUUtKc0YwWVVTRFMxVmQ4RWhh?=
 =?utf-8?B?RnorVWppU1FmckZVY0xuWVZKR1FVdmZhZHNZWDZwa2YyZStWVjRQR2g1MlRj?=
 =?utf-8?B?U3BXVzE1V2hRakNmdTZQWXQxWHJmZjJLdG9XUURrVkZBSlIyWEVlVTJWVU4z?=
 =?utf-8?B?czZTeWx1QWdubDNYdThhdWhVNm9Va2IyVjU4Ly8yVVB4d0pHVVBhOFNzRkxT?=
 =?utf-8?B?SWhWN293aHhSYUg4QmEvME9aNUdXcDR5RE5SNk5jdWVCclhNNkpEM3cvb1Zj?=
 =?utf-8?B?OVFYMzV6UWJkSmlzZ1FDZVFFb05aOVBWUjZzektreThPV3dHTzNRcHZybDJ1?=
 =?utf-8?B?cEovMWFJem1za1Jpd0N2OGs3cXpONE1wTittMTlrUk5qVGErY0EyK3lEZVFu?=
 =?utf-8?B?eUxHcTl2ODZtYlFJQWs1QTRxbFhQdjRWcTA2TjNFRWRCakhtTjVvV1creHhN?=
 =?utf-8?B?ZnhFM2dzSVlDUWx1NkpDUFJIc2JTSUVuUFpNbUR5Qy8vS1c5SUUxcy9qbWYv?=
 =?utf-8?B?VzloZ2JwU1U2OWF2c1dodXZCZmRDRE5MZnZ6c1FXVDVpOUJuRHlvS1IwL0xD?=
 =?utf-8?B?SnB4dmFVdU1mQ2FuVXQ5bjIyUHh0dG1reXh6amZPZjRwVEthYzNvajdKTGlr?=
 =?utf-8?B?T0taMzdFY2k1ZWF6YjJQUVBxUFNrYis4K0pqbHhHVjdoTkhHQ1dYTEtmZXRp?=
 =?utf-8?B?YTVCZ1V5dVd6Rm1GUUZpWStOdDN2bjFWS1had2lQYXNGZHdHc041UW1KSGYv?=
 =?utf-8?B?clV2em9oemJmM0RkYzgwMWFCQXV0VXNna0p1ZHR4S2VkN3M4NGQ4TE80T2Vp?=
 =?utf-8?B?eVFyY3Y2cTZYUVk2TUhuVWpwb3BQWHhWSzdhWDFnMGNMYVUzaDVTaThlelVm?=
 =?utf-8?B?RFhVbGpqdlhqN2haL0tJb0RORWQyWXBaVmR1U3lPdkIyeVlHc2RYVGRwcVF5?=
 =?utf-8?B?enFJWmhEK2tzK0ZJTWhkNk93d25vU0hCS2hheDVmOFVxbGk1WTlZM04yMThu?=
 =?utf-8?B?MzY4N3JZZ0pKZ0hVNjB4bFdjK3BZS0ZOQW85UVdTMW96WFE5MlBqaERyeHFa?=
 =?utf-8?Q?VO5nxj0GhUw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDlyN3F3SkJnSDNlYWozVGRoK1JreWxabGlPQjh0YjhqTlRSc0o3NTVzLzZv?=
 =?utf-8?B?dExrczM0QTNGeTNkQWZaVXNYZ3F5OW9LdEcxc3RIOU54cXZEOTc2YjdVNmpj?=
 =?utf-8?B?c1ordk5DREM0Z1cwVlFIUzlJQmVWR21Qc3dpZE5CSDZySkI1d24xcWtoOUJh?=
 =?utf-8?B?STFTY3ZtOXNOY3UwYWZ5dnVnczBnVWpjNVJKU1gya3pIYzZ2MnRROHNVNWdu?=
 =?utf-8?B?YlkxdlM1aXZ4L3lTNDBqaVRrMXozVXM5OGRQM0FiU3hDdnhiVU43VUwzcG4r?=
 =?utf-8?B?MWVwUDdRcWw0YjAxb3RRSnpvNjlGU3d1UUxENmRpZGVleEZkeStrYVlhRGl5?=
 =?utf-8?B?d1VQVjhPVjdHRllxTHM5M3E0WnFCZUprZWdEZ3JJalFaNXBVMjFOTEdSQ1Vt?=
 =?utf-8?B?QTN4ZXhDcDgxeXFYVGhia09xSUZLVjZOcldzbnZmRXcwdWl0TURIcFlNWklr?=
 =?utf-8?B?WE1tTjJuR1ovcXRDVjZDak82NlFOOTNBMXJ1ek0rKzc1ei8zTHRoWWF4YWhv?=
 =?utf-8?B?N3BDYnZrMTRIWjlnK2IxS2RnRDEyS0ZYYkFodm1FSVZqYmt6ZmtrdE1HTnRn?=
 =?utf-8?B?SE12VTFhb25xVndmcUZHOGx0R0F5R0N0UE5VdlBMNGFTSzlzRHRHLzhYclJx?=
 =?utf-8?B?R0JTWEF2bnZadURnWkM1QXpHZEcvWnptTWkyQWU2aEdYbU0vVUl1WTRzTkd2?=
 =?utf-8?B?SDdLdVM4MTUzSERzcHhIaUhZVUN5c0R6eUt5RUE0SDBKOVBxUjhPTGlPdkJJ?=
 =?utf-8?B?cU5rc0pidGFjRUU4WlIzVm8vV3AzQk8ydUtoQUtCTnJEaG9lNWN1SHlnNTNM?=
 =?utf-8?B?RFFNZHdrMjdEdFEySWluOWlxS0dJTDRmcVo3QTFHRE8vSzJ6c3lZbDFtZHFl?=
 =?utf-8?B?VmtRYWhiM2R0a2pSS0YzWEJCTlVVTlNwNkJiV3J6VGl3SXhwMEhhZmN3a3Jz?=
 =?utf-8?B?c00wTVNIQ2xFWjkxb1Y2TzYxQU9pay91Q3NXTmlXS0h2dG9KUHlpakNITTI5?=
 =?utf-8?B?VEpmeUN4QzlTbFN6SGZuVEE3cXFNNHczMEdhSHBUU1o5UzFVYVFOcVN3TmQz?=
 =?utf-8?B?emFML3dRRldMTjMyZ0kya0xOU0J6Z0ROWGxDbUxSdWp2Y3VRVVVFNG1lREtM?=
 =?utf-8?B?b1dGdCtiNUpoV2Rpb0psWGU2NWZTeENRRTJDL2J3U2RudXVxT2lydXJKNE14?=
 =?utf-8?B?YjJFWENwVnRaMENGbmxFV2hreWdSb2J0Yzg1QlhSejRDSXJCbjdnUUtMdk5N?=
 =?utf-8?B?dWVUNjg1YjNpMjYvSTVkaVFTcmlENU5aRUhWSEFhWVJlWWQ3MnNhSU9CN3dQ?=
 =?utf-8?B?Z0g5UVgyNnd1THFXWDZPUVU0WC9wK00xYmJCaU15Vmhaam94cDgwT3JJVkdk?=
 =?utf-8?B?Mm16MHdlK2RLcFhTbE5LMW5xZzFOOVZ4VmpEQjNXWmp1N2VzTTcxcHYrKzA3?=
 =?utf-8?B?NytFWXhWb1ZERGMxaUxDVVVFcHBZV1I3WUVNYyt0TUd5dTkrL3djNmJ0THdT?=
 =?utf-8?B?c1F1Y3hxYytqK1JLMDFFWjR4QVkvRGVhbnc5Y3ZwMXlWZFhvYkJ6UHRwY3JV?=
 =?utf-8?B?anhWYVBhYjJjQUErcHFxL1hzS3I5OW9QU3c5OENTSkdxbEtzWkk5bldNWFBt?=
 =?utf-8?B?allnUnByVDYzdXBuSStRNTlZZjYrdThSK1VlZmVITU5RZ0ljQWFPa2cyZk82?=
 =?utf-8?B?emRWMTlCWXBOS3Y4NW80dGJuTzc2RWhSVzNxWk4ycFRIcXduckZCWm5EM2du?=
 =?utf-8?B?UDEvQ2g4bThONXl4YURQRjJFVnA3ejZaZUxmMkpRUlAzZkp6cjhxOWpqN3dK?=
 =?utf-8?B?NXVlVGZxWTdHNkordkt3NTE5NlEyWE1Fb1dYVWZiamZWVE10QlNqRVFNTHNx?=
 =?utf-8?B?OFRVMXRkRjUwdVJLYW5aYk1MWWlDTzVKMFpuWVBKTE43NDcvOFkzYldPei95?=
 =?utf-8?B?Q3Jzalc1UFlHZnpMSEZBRC9aQmNuSEMrZGt6eGhjME44elBRMFg5UDlMSkVi?=
 =?utf-8?B?QVBqTXlhNkVteXBjcllSRmltbkRDOTF2RUVBdVIvQUJGdTJJTERzZVliVmZ3?=
 =?utf-8?B?YXZBZElJNldaaUpuNFVDSmRvT213NWk0S2U4S3hPbFZQU1lEUzlTN2ZIZzZR?=
 =?utf-8?B?a2ZEVmczUndKSndEaHVMZHFydVIvWjZxY3VBK2d0dlFJcmlCbnNGS3Fkakhy?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14bf04f2-a8ec-4ea9-182c-08dd844a4db5
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2025 22:41:22.4992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e/16nExbeKNi/s0//JfGG5H/+g9FdQpCQHBYXoDUFDaUq7C2+0yVjv2lfSLZ96hwUCOtKDFhaGPr7vFXtM9MsoVJaVb7gBnzkN2bIfZOKY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745620917; x=1777156917;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dp32Z1AZU7rwNrg7sp6vy5tHdggHC5x8+JKNDotRNxM=;
 b=H5ky7o0il+IaOPtncxsWC2k+nwETcrZkyXySya6fs3rgAhUaFoZu4Ar4
 u2iRJCrF32KMxocm/aJFSu/NGRJXyEDEizn1FjrGLX++d5IjgiE2hzYyO
 IcamgL/G/hXM1eChMNISBxFh5xzUkV0lOD755P5RebfW67ezFHwyzbCMF
 MblDYhVoBweJVAGWEkQuIkGoyYVi++mdG3Ao+lUq7Cf35HCv91teEGkwZ
 jhA6IiCVzWd0txfCGMVB85ak3WnCk0TwwYDEu+oL2KkNw/NnR+aoxhehX
 DfJ4XG+ix/oUIhNLSKyCHh79gC3yKfUEKrlN2fGfgVfdumdvawXoE+Ssc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H5ky7o0i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next PATCH] idpf: fix a race in txq
 wakeup
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

On 4/25/2025 10:54 AM, Brian Vazquez wrote:

Should this be a bug fix going to iwl-net/net? If yes, you'll need to 
add a Fixes: as well

> Add a helper function to correctly handle the lockless
> synchronization when the sender needs to block. The paradigm is
> 
>          if (no_resources()) {
>                  stop_queue();
>                  barrier();
>                  if (!no_resources())
>                          restart_queue();
>          }
> 
> netif_subqueue_maybe_stop already handles the paradigm correctly, but
> the code split the check for resources in three parts, the first one
> (descriptors) followed the protocol, but the other two (completions and
> tx_buf) were only doing the first part and so race prone.
> 
> Luckly netif_subqueue_maybe_stop macro already allows you to use a

s/Luckly/Luckily

> function to evaluate the start/stop conditions so the fix only requires
> to pass the right helper function to evaluate all the conditions at once.
> 
> The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> and instead adjusts separetely the conditions for singleq and splitq.

s/separetely/separately

> 
> Note that idpf_rx_buf_hw_update doesn't need to check for resources
> since that will be covered in idpf_tx_splitq_frame.
> 
> To reproduce:
> 
> Reduce the threshold for pending completions to increase the chances of
> hitting this pause by locally changing the kernel:
> 
> drivers/net/ethernet/intel/idpf/idpf_txrx.h
> 
> -#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 1)
> +#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 4)
> 
> Use pktgen to force the host to push small pkts very aggresively:

s/aggresively/aggressively

> 
> ./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
>    -p 10000-10000 -t 16 -n 0 -v -x -c 64
> 
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Signed-off-by: Luigi Rizzo <lrizzo@google.com>
> ---
>   .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  9 ++--
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 44 +++++++------------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  8 ----
>   3 files changed, 21 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index c6b927fa9979..fb85270c69d6 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -364,15 +364,16 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
>   	struct idpf_tx_buf *first;
>   	unsigned int count;
>   	__be16 protocol;
> -	int csum, tso;
> +	int csum, tso, needed;

This should be moved to be RCT; longest declaration to shortest.
>   	count = idpf_tx_desc_count_required(tx_q, skb);
>   	if (unlikely(!count))
>   		return idpf_tx_drop_skb(tx_q, skb);
>   
> -	if (idpf_tx_maybe_stop_common(tx_q,
> -				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
> -				      IDPF_TX_DESCS_FOR_CTX)) {
> +	needed = count + IDPF_TX_DESCS_PER_CACHE_LINE + IDPF_TX_DESCS_FOR_CTX;
> +	if (!netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> +				       IDPF_DESC_UNUSED(tx_q),
> +				       needed, needed)) {
>   		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
>   
>   		u64_stats_update_begin(&tx_q->stats_sync);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 970fa9e5c39b..cb41b6fcf03f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -2184,6 +2184,19 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
>   	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
>   }
>   
> +/* Global conditions to tell whether the txq (and related resources)
> + * has room to allow the use of "size" descriptors.
> + */
> +static inline int txq_has_room(struct idpf_tx_queue *tx_q, u32 size)

no 'inline' in c files please. Also, it's preferred to prepend driver 
name to the function i.e. idpf_txq_has_room()

Thanks,
Tony

> +{
> +	if (IDPF_DESC_UNUSED(tx_q) < size ||
> +	    IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
> +		IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq) ||
> +	    IDPF_TX_BUF_RSV_LOW(tx_q))
> +		return 0;
> +	return 1;
> +}
> +
>   /**
>    * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
>    * @tx_q: the queue to be checked
> @@ -2194,29 +2207,10 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
>   static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
>   				     unsigned int descs_needed)
>   {
> -	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
> -		goto out;
> -
> -	/* If there are too many outstanding completions expected on the
> -	 * completion queue, stop the TX queue to give the device some time to
> -	 * catch up
> -	 */
> -	if (unlikely(IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
> -		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq)))
> -		goto splitq_stop;
> -
> -	/* Also check for available book keeping buffers; if we are low, stop
> -	 * the queue to wait for more completions
> -	 */
> -	if (unlikely(IDPF_TX_BUF_RSV_LOW(tx_q)))
> -		goto splitq_stop;
> -
> -	return 0;
> -
> -splitq_stop:
> -	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
> +	if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> +				      txq_has_room(tx_q, descs_needed), 1, 1))
> +		return 0;
>   
> -out:
>   	u64_stats_update_begin(&tx_q->stats_sync);
>   	u64_stats_inc(&tx_q->q_stats.q_busy);
>   	u64_stats_update_end(&tx_q->stats_sync);
> @@ -2242,12 +2236,6 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
>   	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
>   	tx_q->next_to_use = val;
>   
> -	if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED)) {
> -		u64_stats_update_begin(&tx_q->stats_sync);
> -		u64_stats_inc(&tx_q->q_stats.q_busy);
> -		u64_stats_update_end(&tx_q->stats_sync);
> -	}
> -
>   	/* Force memory writes to complete before letting h/w
>   	 * know there are new descriptors to fetch.  (Only
>   	 * applicable for weak-ordered memory model archs,
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index c779fe71df99..36a0f828a6f8 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -1049,12 +1049,4 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
>   				      u16 cleaned_count);
>   int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
>   
> -static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
> -					     u32 needed)
> -{
> -	return !netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> -					  IDPF_DESC_UNUSED(tx_q),
> -					  needed, needed);
> -}
> -
>   #endif /* !_IDPF_TXRX_H_ */


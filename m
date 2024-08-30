Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F9096577D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 08:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA5BC611A1;
	Fri, 30 Aug 2024 06:16:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJVtMFPcZuAp; Fri, 30 Aug 2024 06:16:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B01AD611B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724998580;
	bh=SYL/GwpKHCom8cAL8P9itBbCX+tdKfOEk7V3XpPFPbc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8GJrMJ/8HZm7gwvBqZOG50C8N2Y38aMiF2H6KhgUAZ4NEPpjQeCM6U7HseLEK/idB
	 bnhyskARW4QbJjlm5NBLEKDEdiePPVY/sqNnvcZNPU9Qi19dD5Pnx3yAy6NdJz431M
	 TzJbikV+Pf7thCzYFo++8C0HVm3FGpiA669URlSa8+4ePV+sZFxua/Gi261yNoaIub
	 Jl0a83v5h/VkNZuSSRMdp1NRaLGSHiccfRsMCbLvQ2XmSJ/9Ambzp54hrJ+vMHqXly
	 G7oel1otLg5UAxsGsQVwUX0t6RK7DSQ6YdEj4Dc+5DZGyVcK3mKXxcECrC7Tud5TfG
	 iklIFZpYqbXkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B01AD611B8;
	Fri, 30 Aug 2024 06:16:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1641BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 06:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 464A442386
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 06:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6nBnPiBmDP0i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 06:16:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB2C241E8E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB2C241E8E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB2C241E8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 06:16:16 +0000 (UTC)
X-CSE-ConnectionGUID: B5Tq1hCXSVymxn2rOlwMMA==
X-CSE-MsgGUID: gZuPmI4pQPiRDavKI96TUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23755236"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23755236"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 23:16:16 -0700
X-CSE-ConnectionGUID: VheCrqkPS2mjwD/lV+230g==
X-CSE-MsgGUID: bF1q9XntTG6OScGUETVp9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="63432952"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 23:16:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 23:16:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 23:16:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 23:16:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cAN74CczutJr0VBoAl7W1rElhpXSv67EP8d3sfDsPoR7vUu/YfHGlRCiD9gC/AxJ5O53GBcSYpAthFPuBwS4rnKb02YYGD8QxoSx7nH7iWO/BL7HgkwAlcszm0zGxGyHjp4Jrfh9SKAFeMftENwGafQxwNZPpJUXu0+BsoIPAGNH82txdIL8D8qfHLGIHcfoGrHhDgIp/pH0fdTHqUzGgysSHLQeAntsFRVK+hHRCy/p8qWAWkciuylP26SjbZ5CKSgPfBwJuS0iSBLyPyc+0DamW0BFmPsWy/0IhFLvyKl1HXQjXqvaul0A8H4pdr5jQV+CKZ24W6/aXxqyim9W9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SYL/GwpKHCom8cAL8P9itBbCX+tdKfOEk7V3XpPFPbc=;
 b=xtllZjiH5v0KVRR9nhp8gLXn+mYSdbrOGOd8ffq6/dV+N7TfoziG+OJit3tX91pEuVGpMb/mT5k27gKRo6REn9fjLxg/gTFkwuH4OCnnjVtX43eNkhfhjnNRuGQMc0vQEIk75n+jc7/oz0SAUyad+HfmB7Na/SFhdaabeio1mCMSzQH6Jrj8zlk7qEopHOY2lrBWgGCLTMpRpmWJL0iEIhzVzEddlLWjfpr/vp1CdvfCcup20kxhod/axSg7crEMpI2lJbBWyTvyhmO61+wMvVRrTF3Ed63qT75EicrD4LYOoUDojVouVmMwdHOnhIb9VXXhDJEjLwKQbskRH9ESCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Fri, 30 Aug
 2024 06:16:11 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7918.019; Fri, 30 Aug 2024
 06:16:11 +0000
Message-ID: <ae995155-e564-47df-a9c1-416dc3a389df@intel.com>
Date: Fri, 30 Aug 2024 08:16:06 +0200
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <pstanner@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20240828130403.14145-2-przemyslaw.kitszel@intel.com>
 <839bc942bb6d8a3fc0cf9081b3f7d91fcbec790f.camel@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <839bc942bb6d8a3fc0cf9081b3f7d91fcbec790f.camel@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0214.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:6a::9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB6612:EE_
X-MS-Office365-Filtering-Correlation-Id: 13cfba1f-0bf8-4f5f-6962-08dcc8bb3e59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2MxSE1ORUtVYUI4SHlVQytQQjFvYjU4b2RjUzlzMUUrMmUzU2NubFV2MFk5?=
 =?utf-8?B?U2lGbFg3ZXAvTERYTVJIZFdsNG93MFFHcnowYkgvdnFEcVVtVnhONzdzSzBG?=
 =?utf-8?B?d1R4MHVVclpiZVB1Y1l3cmdZOFZMeHEyZ2JCTzJxR3dDVXlhdFFJVGtNeG1t?=
 =?utf-8?B?a1VTb1M1WTRjU1BYUVRrekN2KzlrQ2JrVk1rditHaXdxMkZLQUpVaU5lUk54?=
 =?utf-8?B?U0M4eVpzU3pHK2dFL1E0UWdQOEhQU3lraUdNNERnbVhwZHE4V3Q1OG5USytG?=
 =?utf-8?B?QnMwUG8xa0U5U1llWS9WTUJoOURmVktQQjgwWUFNcUE3bVRFMEFXNkdSVFlk?=
 =?utf-8?B?SFZMb2RoQ25oaXVqU213azhlanlLSitNdVdTRVQzQ09DL3BvT0xmcjhUcklF?=
 =?utf-8?B?SEJqYzdIUFY1dDE1azZoWm91dFV4NXY1ZVF5ZUxxeVRleDk1TytXVzBsY1Q3?=
 =?utf-8?B?a3lOOHFESTZmUVlsQngwV0lGR0RrWUlZWWNYQXkxYVFNOGNsclE2MkVSKzcv?=
 =?utf-8?B?Q05CeFpPb2Q1TG5GRTRMdHp3eE1pTjJvZWplQzB6bHBVNklVZGpRL2Y3Zmd3?=
 =?utf-8?B?VWppdFV4M1E2amw4WmF3SEpKVmpwcE5tR2R6VjQyMHVLZXFIMkZIM1NIcVFj?=
 =?utf-8?B?bXNVLys3eDlveXdDZ3E1bDd1U1dXS1Q5YlFmeTZxTWE0cHMvWGdwVlVMVWpP?=
 =?utf-8?B?dTBtUVhVcUVYTzZ1eEJjRG1lMkM5OWVXSlpMNWJmQ2wyTmthR3k2UXZOZk93?=
 =?utf-8?B?dGh5bStycEtiNHdtSFk3WVNETUVwbklXSlMxR21nd3ZUWVU1L25VWk1PVEdY?=
 =?utf-8?B?bzBXR1RvdGhwMXlLeU5YczJ3a2tpdjBBZWxOZEhJbmFsRW5tcW1hNzNjRkFl?=
 =?utf-8?B?ZlhIRXVwbG9hLzR1cHJqeWpKMnovZ2FPVEhWQTlwS29iS0lBWFRpZVJTTG9t?=
 =?utf-8?B?WnpydUZWSG9CTHEwbmdQT2ozRG5kbFZ1MngxeEtnR3UrcG9SZTdNK2EzZTlY?=
 =?utf-8?B?UnZOYkRqT0dQSDNLNDRqMFdQemVrOUJhalJqSWUyTisvV0M5Rk1sS3laSVdT?=
 =?utf-8?B?K2NwQWc4VEpFT09JMzUva0ZmQXVQeHQ2VUp5UTFJSC9tMFV5cXlkOGUzaGw1?=
 =?utf-8?B?Y1NBQjlXbGtKM2hrNHdzV0lEMXpPTk43dmNndlUzZlZnOStOSVdMQlRpeGpt?=
 =?utf-8?B?Rm1KWW84Qjh2VDU1MERCd0sveHZpSzFhajByWnZ6djRHTUJLc3EybUFzbDlY?=
 =?utf-8?B?T0EvbG1keXVJK1VqU0ZBZnJTK1BrdW5raU1ZZnJ1bzV3c0NYMUhMVERpK3lQ?=
 =?utf-8?B?ZW5YVzdtcno1d0h6RUZ0TXlnM3dJd1VmLzlUbnNMdUkvaXE2ZmxpbDQrdW5B?=
 =?utf-8?B?NFJ4TTZYVVhiNCtQcnpMekJjaFBvc2k4Q1N1ajQydTZndFJKMmFMR25paFRi?=
 =?utf-8?B?aFlpK1E3WE1BTmZzZitPZHlpRzZzZlJqWnZPUEdNZXBXMmFPc3VYd0srSUN5?=
 =?utf-8?B?Y2lRTHUyaVlVMFdpRnpqZEtnRkZpQ3d5UURQR1JIZE5KUjdQNGhiVkEzaUll?=
 =?utf-8?B?TEhIeU1hdlpIZEtxcjloMDdsUDFOOTk3OENPeDdRbzc3UlJjeml4eTg2S0pj?=
 =?utf-8?B?M2xYa2hIUDRUbWJyaDFEcmVFYjF1SGpQRHRTT3ovZFRld3lkc0ZlK2pHbjBv?=
 =?utf-8?B?eFE2L2hnKzk3TXhwdUpCMEFyUXVtdTBEV3Bzc3JqLzlhcHpqSGdlS1h6TDBD?=
 =?utf-8?B?anJrSXBhK1grcjJJRFcyZ3R5OWptZlQxRTNXYmdnUXVPc3RMV3h5bzFxemJ2?=
 =?utf-8?B?T0krdDB3dVc4Z3lRbDFLdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjBsdmNaVjgrU2pjUUNVSDRSMlVHdC9BN3kzMkdhUHdtRjg1OURhaitLZTdI?=
 =?utf-8?B?NTR5WHBkK2hoSnJlc3ZsZ3h5T0o0STFhRmNkR0lONXhhOFozb0IxQlhyckFt?=
 =?utf-8?B?aTBXNGk3NmYwRXE2a01sMVJQZFU2VDJ4QVJoL1ozclI1ZEc0dERVRFdOaW9y?=
 =?utf-8?B?T0tTUldwaHRhbENTWWdOcEV2R1J0YWNIWFpXaWtTeTRYcFhCQlQ1d2FZV3Ns?=
 =?utf-8?B?cUVaTFhqMkNwOElaeFFLbFJLWnkvWlJQY3BKYjBFc3NVMnhTRG5wTnhPUFhG?=
 =?utf-8?B?KzdqcGlwSkMvNWc5V1RDZzdkWHVheXQ0WXNzcmQzVzVreEw1QURCTVFYYS9t?=
 =?utf-8?B?RmFyTXhkRW1XWURoak16WERzZ0MyQ3ZNenkzMXFFYndFRGhSalpZMEp2SFkv?=
 =?utf-8?B?MTlhWnJqY1BFS1QvWXA4L2RCWHUzamNuUXNTUGV6aStHbDBLcUN5LzdSTmZF?=
 =?utf-8?B?RzlyMVMvMFBMSXBuVjlSSmRmeUZuYWZrQ2FGb2t5OU54anEzMFNyTDZLcjRy?=
 =?utf-8?B?ZTczVWJpTlJkUHlCcnBpRjN2cTI3NVVVWUJXWEpkODdPYTNhWk02NGg4LzdV?=
 =?utf-8?B?bGJnQ2pHaURJTFBZVjZaM1J0VWxPdExtTkxyTFUxSmgvakt0enFxa1crTzRo?=
 =?utf-8?B?NXZYWHpzbTFaY2FMQldocVNTUEhLVmZsYnprS3hRODVTMS9pNDZPR3RHejZD?=
 =?utf-8?B?Tkx0MzczL2ZhaDJVUlIxRTdTQ0Q5MEF0TEdERXBHYW1CQVNxSC9qbmNhVTNw?=
 =?utf-8?B?WkhkSlVmR2NrQUpJcHkvUnZmTjNTSDZVdit2dFF4bEVnSVh6MHcyRnVHZmIr?=
 =?utf-8?B?My95TUk4ckVLTkFtT2pSMUpNSG9pQk1yVFJTOHRxTlExNVdWaW1kM1NLdVJI?=
 =?utf-8?B?UUhyenFnVXRUZVF0dGY0aG1MS3RzMDNBTFNTWDJ4SUhnb2QwaWlXMjdtZDdT?=
 =?utf-8?B?MC9sdXh2b2JIQkErcHJUeU5qTU1acXdadlhmZFpsS3NWRzNVcUtkSnhzVUFk?=
 =?utf-8?B?dGZuYnArM2lhakx5Y3lFdWxVam9WYUhwdlBPeUJrdWtVS0hITTVrRThIaUV2?=
 =?utf-8?B?czUvWnFvZFEycTh3c01OVzVEVTg0YmdOWVo3SW5hbFZjZDA4d3BpRElYd2ZX?=
 =?utf-8?B?Tnc5RDFneGtKN0Q0c3VrQkFHdGwvMDZRSFQzUS9za1paQ29QYXlCcWNCUDhr?=
 =?utf-8?B?a0xROTNFek5QRXdEcUZoOEpYUUZNMWJnZXhUQWovL2NzcmJ6dEVhYmVhdm9u?=
 =?utf-8?B?Skc3MU5CVTBxVkhnZTNzcy9hL21Udm1uNDFPV1NyY204eStXNm9mTkFFejc4?=
 =?utf-8?B?L0diSHhkd3R3WTY3eGltaThTOTNEZUlrR3RNWnhsS3AxaHYrV2psZklmMWRG?=
 =?utf-8?B?OEdneUNxQ0YydTNuejk0RENMNWdycXlHaFFwdFZud1drSS9mbXZpMTFVQVpM?=
 =?utf-8?B?VjIwVTR6aFZFanJCTWRpWHI0WExBZElqNUlqVkpxMTB6aGhhb1FDVEI3NFp0?=
 =?utf-8?B?Y0xSakRhY3puWHUvanhkWm0wOUhiSTREMUt3MlZjYmZnei9odEhRN2VXUnJ6?=
 =?utf-8?B?R1BiY0l4aHF5MGF1bmZWTFJhaEV2dnR0RG8zM29ZYW1RSytFRm5XTkVwMTZz?=
 =?utf-8?B?SGQ0RWMyR2R0U2NYaWN4dTl0MUNQOUdSSGVJZ2t2WWRCdTRmaVJ3N1VIZWgz?=
 =?utf-8?B?SldwbTYvMFlSYlptWGc1aElMY25jVWUrR3F5YTA5OUN6bW9sbEEvSGJXdTd2?=
 =?utf-8?B?N2orYm9lSFIwMytjUjZ0WFpiVDVyallXQjBUMERCby82OWtPc3BMRi9lWjNR?=
 =?utf-8?B?bWZXZ0hnZmlMZXgrZXdTQ2d0L0tsUnJXN0trc0s4OUFJamdPSHdpZmxoeFg5?=
 =?utf-8?B?ZUxoQlhZWHN6NXhRSXh3dDVkKzhnaXdwUW1BdmZkeHh6ZERKTkU3cFBJOUQ2?=
 =?utf-8?B?RUhJeis0TFhyUEVuRHFBdFIrMXM5c3pORWxPcGVxT2hiTXFCVGZKblI2U2lm?=
 =?utf-8?B?ZEprUDM2alJWc1E2QWtZa2VWTnJqODJsU21QK00ySXZ1eDVjMXdOUmIwYjFO?=
 =?utf-8?B?TmRnaS83RGdhNzZyVGtXSElHVmRjQlBKd0VqTnpxSmhEQUVDVkdCbDhNQ1Bz?=
 =?utf-8?B?b0JqMjB4OWc4ZEI5YkJTYVhpQml5Q2xqRzNwb3dRODJRWE14dGI5dm1ucjQ0?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13cfba1f-0bf8-4f5f-6962-08dcc8bb3e59
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 06:16:11.0846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B0YY4Ls2hA8oqmtVVde4iuiYdYWuX/u/W9DR6oRITk7iYQXRcGPSS9+R7VB0mzmQ5GHkqe60W/E915Rb/x1XjixDjSeXNcIcX6GhLhFNNmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724998577; x=1756534577;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ewSOMRq6+w85lnI6HoX9c0vsSLq8zvgsiPnZR8gTwmk=;
 b=newWu0utAgJxan500QuzzCj3ceE94tGLqqH/HXDojFbY7Lgq3mLmdlXm
 GnSwA86m7ZdPTsU8ntBY3VGSJQeBrbF5dehhBdecCTrucfhpnVsFM/4Oj
 SQK3AJ0y2RkkLxaFlqUe3++Zd+7O7hKbOzD/lCyPyU3aRUS00+HakEo7s
 fPLJDufhxBAuOMHbxvJl2fnpDh46W3Z91jQaAZsXDCIB2AhbbI9+6TdIL
 +JymxqFi03o/BUoJnfuBtLNhOYSOWxqEAyfmgy5z8aZrA1q8/L/Rmq/YI
 NcImLiuKxVXl6DCeIIGoOLlvtybxCxoUxOeRp0CRLM7GKkqEeGBSfS/gm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=newWu0ut
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: stop calling
 pci_disable_device() as we use pcim
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
Cc: himasekharx.reddy.pucha@intel.com, intel-wired-lan@lists.osuosl.org,
 Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/29/24 09:11, Philipp Stanner wrote:
> Hi,
> 
> On Wed, 2024-08-28 at 15:03 +0200, Przemek Kitszel wrote:
>> Our driver uses devres to manage resources, in particular we call
>> pcim_enable_device(), which recently has registered
>> pcim_disable_device()
>> as device remove action
> 
> That's not the exact cause, actually.

Thanks for review, you are correct, I will reword the above paragraph.

> 
> The ultimate call to pci_disable_device() (not pcim_) through callbacks
> set up by pcim_enable_device() has always been there. It's not me
> adding that which caused the warning. What caused it is that I removed
> the enabled-check from pcim_disable_device():
> 
> f748a07a0b64:
> 
> -static void pcim_release(struct device *gendev, void *res)
> +static void pcim_disable_device(void *pdev_raw)
>   {
> -       struct pci_dev *dev = to_pci_dev(gendev);
> -
> -       if (pci_is_enabled(dev) && !dev->pinned)
> -               pci_disable_device(dev);

[...]

> 
> Theoretically, we could add
> if (pci_is_enabled(...
> 
> back, but I think the far cleaner solution is to clean up the drivers
> as you do here if that warning occurs. Faults should not be caused by
> this, just warnings, if I read the code correctly. Please correct me if
> not.

I agree that your approach is the correct way, and it's fine to
introduce warnings in misconfigured drivers. Fixes tag is to only
allow backporting the change (as noone wants to see unrelated-to-their-
work splats ;)).

> 
> 
>>   (see cited "Fixes" commit). Since that, unloading
>> the driver yields following warn+splat:
>>
>> [70633.628490] ice 0000:af:00.7: disabling already-disabled device
>> [70633.628512] WARNING: CPU: 52 PID: 33890 at drivers/pci/pci.c:2250
>> pci_disable_device+0xf4/0x100
>> ...
>> [70633.628744]  ? pci_disable_device+0xf4/0x100
>> [70633.628752]  release_nodes+0x4a/0x70
>> [70633.628759]  devres_release_all+0x8b/0xc0
>> [70633.628768]  device_unbind_cleanup+0xe/0x70
>> [70633.628774]  device_release_driver_internal+0x208/0x250
>> [70633.628781]  driver_detach+0x47/0x90
>> [70633.628786]  bus_remove_driver+0x80/0x100
>> [70633.628791]  pci_unregister_driver+0x2a/0xb0
>> [70633.628799]  ice_module_exit+0x11/0x3a [ice]
>>
>> Note that this is the only Intel ethernet driver that needs such fix.
>>
>> CC: Philipp Stanner <pstanner@redhat.com>
>> Fixes: f748a07a0b64 ("PCI: Remove legacy pcim_release()")
>> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Reviewed-by: Philipp Stanner <pstanner@redhat.com>
> 
> with or without the above suggestion for the commit message.
> 
> 
> Thanks for solving this!
> 
> Regards,
> P.

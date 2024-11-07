Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B799C0E10
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 19:49:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61CF8808AF;
	Thu,  7 Nov 2024 18:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vLNzEIMORnae; Thu,  7 Nov 2024 18:49:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73556804D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731005371;
	bh=YAG+4OFF1C39oZSjStL8p5SkcTXTi4a3nuUiuYy/utY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bPIi8BR9iEoTWxijn1uQIXcvhfZxobj+5TI4Q/C3xM3UAXC3sCFFIh4+zrSSS/R84
	 AlF7aufCJ2Drl8W1yvGVo1tJPiGOVdvG+9ssZ01IHUOdpRoEP0S9uOaCB7UAJJqgDD
	 N5PXRPkbFw1jlDRCIVsyA3hdZLcQCaq8wAMp8A+I9z1TQuNHWdFeUjldZSRNUVKKAg
	 ihpfYyglzemoEFKkyknqqwohUSLo7rmOOaSM3swwBvl1aZEtNTegR7HpfDyPTayRV0
	 BLolTDRlBD31ZO+OivKlY/d9NsPY9AZv7c5yEuJ3GSMhyxKZUyqcx2ALmeKbtPe8J9
	 y6EyFlJkLWiVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73556804D2;
	Thu,  7 Nov 2024 18:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 33375C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 18:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1ED1941D7C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 18:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bZkmQnqJRRPy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 18:49:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BE3A541C3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE3A541C3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE3A541C3A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 18:49:27 +0000 (UTC)
X-CSE-ConnectionGUID: ZCWPJHiORlS3F7U6zzhgbQ==
X-CSE-MsgGUID: h3FMg5+SQkKkN0u+PWCBpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="30972986"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="30972986"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:49:27 -0800
X-CSE-ConnectionGUID: v4zz2CacSwW31lhE0j1jUA==
X-CSE-MsgGUID: ljtw94PjSZe9osLNCYzHMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="90321333"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 10:49:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 10:49:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 10:49:26 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 10:49:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M4n1tjjorEtblFgS6+WG4IvtmCFYIuVQ9tUhHbw666jvptWXl5eAJ0T6XLU39Iz2IsIohAUrCT8Cccbr2wMW3/S6BrvPGy9BYDDNGbYvzgdivduzn7OONNG7ZL+huQPmT1vRsFWQHqQy7HQDMmLGcuaziXaTLjjynFgYjflpE66tIYPnkc/SAR32ZY5CHmtS2/0GBUmIZVGBsiukhAiCKBQjO/7k7uzZ1HJs0ewMpxW1357Be+yaLM9863oM6jymReAvXWj88H3THTCNhRihOkVOQ+DeQXDLgHs02IqGbxU3sqkZwvE8O5ZVVTGInRDxJ5oEKGtb88G8zN13hvLudQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YAG+4OFF1C39oZSjStL8p5SkcTXTi4a3nuUiuYy/utY=;
 b=vBVZ4XqA0nk/W7wpZWawrXhfy/OZ1IkaqZ6DmGSQTKk2pIa9X359nkvJyNddx7L5yOTkNwPUXzbaidgrAW41133aPAZU0yGnXADjEgQtX7aFkQ1XaDTXRg4Bz9oYU4RNLTqoMQr1Rn2RyTolyB7vsuaNeiZq9BqBws0aRkyk1y/Vi1TGwX3aMim4hNpOb/30gwGw3WijuSq1e/RbNHU3PWPbjc+YwEnjBWouootWxQpUPdyX94E8hLxQsYyqnYmj17CF7gZ95u3tP5cK+3yhWqN0gK9ClTgf/HuktQYfBO6+JJD4apPX0WZGf1+CfS1RGVhKbXRNVPCh6KgYbQ4b/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21; Thu, 7 Nov
 2024 18:49:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8137.018; Thu, 7 Nov 2024
 18:49:23 +0000
Message-ID: <19b30532-213b-4c96-9896-391c2f83dfd7@intel.com>
Date: Thu, 7 Nov 2024 10:49:21 -0800
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, <intel-wired-lan@lists.osuosl.org>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <80949168-67a8-4d28-a6c7-3cae9f92daad@molgen.mpg.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <80949168-67a8-4d28-a6c7-3cae9f92daad@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0163.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::18) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CO1PR11MB5169:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d16e76c-0711-4f91-84e4-08dcff5ce5a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmlXeVp2L0lTL2tJbENMS01nbHJxQXplQlBRV3QzRFZEbGpyWURyL2FYN1dH?=
 =?utf-8?B?RnpYdW9IOFF6djhwaWlUUCsvREpKMTF4ZlZ3cnFyL2lSeDcvOW16djFRYnNH?=
 =?utf-8?B?UXVHNGxVWFpEbWlRWVNwcFNYT0ptTmdFMmtWOWl0c0hKbHI5dXI5YTBVMk4v?=
 =?utf-8?B?TDZrT0NacUwxMnBMeWxuMTlnUWNsemFHSmlOVWNkYTV5UklkN2s0aUV6MEd5?=
 =?utf-8?B?RHV0R0lsMmdXRk9yQnBMenFucHlZcUpzUVNPc29lV2xGMlVWdjZ1QnpFQVdr?=
 =?utf-8?B?bWp2NU9YUktlaHo2RmdNbEoyTURiUkIzN05Nd0h1NVpFcytieHZzQVdraW9B?=
 =?utf-8?B?akxpbnBVdHVIb1B6bzZudjNGeFBmbHRxY3F2czQ3ZUk2a1RvMU8raHhPdmEz?=
 =?utf-8?B?WmJtbk1jdFJ4NFZHTUU1SXB0UkQxTDh4b2g3dGhHeFk4dVJKS05hbEhxUHFZ?=
 =?utf-8?B?Rk1RZ09VcnVzQUY3dXRvT0tkdVEvWFp1aE5ka1FUT1FWVm9KR3RNbXVqZnoz?=
 =?utf-8?B?MWcvYVVIR3hvN2xGRjlVdFdZWXVPTXFYWkdXU3NOZmFPZ2d2QjFzdDZub080?=
 =?utf-8?B?OEVGMG1EUXUvM0hoaElVelRkdTZiQ1NEQ09vQVluTnpEOUlNcGk4Y2JIM3RY?=
 =?utf-8?B?MnN3VDNGTkR1dm5NUnJxLzNpdGE5S2xLWmhJa3o0bEFLRFRDUDVtOG8wMkhM?=
 =?utf-8?B?T0E0VmRaa250ZndGWG10WTlCNXQrNjhkYkZtblBKcEpJRzZqdHdQUlZ2eDl5?=
 =?utf-8?B?OFlYaTdnSzhUMU9yNFJiZmZzQSs3NjExTGFmWm0xUUw3eXhveEVRQ0VCTS96?=
 =?utf-8?B?SVdiK1lVdUFGLzUzaytUc05jMDFHemd3a2hDeS9KMlBndW1HSTJrRFFSR3BF?=
 =?utf-8?B?cUdwdXRUTnJtVzZwSC9OUU1WRjhZZk02MFUvdHNQUlpWc1N4eTdEdFNubWg5?=
 =?utf-8?B?SU9MdTF6Wjk5RUlFSkt0YVR1Y1M4dUt3WWZJK2NPampJMXBLd3JaMXNjWVRy?=
 =?utf-8?B?NjBNblVwRzZnQlYwTU56c1BIQXVZaE9WRS91a2J3dzZlVGlsVmZ1bDhsUU04?=
 =?utf-8?B?cHF2Qk9ORWRkczUzSzR6V3NQTlZLYmxTdXNOVnZuai80VWU1amRsVStTaFA1?=
 =?utf-8?B?NHVtYkxJWXF2cXlPdVpUR05wQmtVV3BVUkRsaW5pSndOdmptQmduYXhXZ1lE?=
 =?utf-8?B?QkRVRS9ibkQ2UFdmT2NoaWVseTBkV2ZENWRMZVAvckR2bDRCOFg2T3M1K0NI?=
 =?utf-8?B?UE90Q01hQldhSkhONkV5cWxNcWI2V0RCZlJkaXZEVkRYa0FsTzYvN0RML1Bo?=
 =?utf-8?B?TlZOWkxMT3dML0o5WkJOM1ZlNmZnRno1U0RiNlF0OFExVGNBV3REbXhYd3Ir?=
 =?utf-8?B?NjlkMjZxUW02RW16U29ORTdvZXd4ME55VmNZRmhwYnRxVjVBcENlWXI5QnJT?=
 =?utf-8?B?THZ2M01SL2dFaGdySENtZTMzNit3S3ZGYWtOYWQ3dVVLcmo2cEVNMktra1la?=
 =?utf-8?B?a0NvVkVRbnZtbmFmK09zVnpNZWd3WFFYc1dpVUlSeWJuSnZ5cWF1UnovZHlt?=
 =?utf-8?B?ZnBkalJYbDdBT2RCMjJQWXBJRzR5dlBnRDVqQ3ZqTDQ2VmpON1hOYjQyM2Vp?=
 =?utf-8?B?VkdkM2R4S2ZpcWc2NE1CcElNbjZHZTcvQjNUNHFzYVVVVEx5cU5aZ1FRLzUy?=
 =?utf-8?B?blZna1l1RmdEd2ZDSWpiY0hvVy9oOERvaEo2Z2FwUURLbVRLLzFZZnFVUk4v?=
 =?utf-8?Q?3HNGI4AtLXOYGS/Vc6B+/9CJYoRRuCV72c8IirB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VU1XM2VtNGd4SU1wNWIyeGJHc21CRTJhNUNqZk9LTlBZb1RLWmx5SnAySzR3?=
 =?utf-8?B?WmtXWktEbGpDR1EzbkhDWU13VHgwcENuUHF4ZmRTMzBqWG9nZkdTSmVJUURq?=
 =?utf-8?B?c2xFaHRRTWxLdGsveExxSHJxL0FWL1BJZFRiSDJoS1VEMlZQRFBFMUl2d0dG?=
 =?utf-8?B?V2w2R21KZER1ajNuSTNVVEhOaEtDQ3NGNitnalZKOFFxTHZlUFI4ZU9wS3B6?=
 =?utf-8?B?ci9sRkdrVjRGUkhrZlRCck83a1FsUHFQK3kxOC8vMXlCYXQ1UmE5dGk3SmVx?=
 =?utf-8?B?c05rekNrYTZxaU9QMEVsd01zaks1R0NpUU1tQkluTm5hbUNneEYreVFTeU05?=
 =?utf-8?B?S1ZCTnlWcHB4UE01MjVTV1YvWU1JS2g1a041b1h2bG5NMEIrNWZnRkgySkJI?=
 =?utf-8?B?YkFwUWxwbmFXWTQwWFRJRUxSTWNhblRrQTQ5UkpFUnNXN2QwUCtraTRWaFl5?=
 =?utf-8?B?aWd0SHZ1WWovNERHNnNHeCtTL2c2UkppaWlhTVdENjVRVG9TUnY5LzdLVU1Q?=
 =?utf-8?B?L2d1cjMvK08zMDFIN1hpck83SVhZR1BBU0EwVU9UbTEyZmo3cWhjTVpkb0I0?=
 =?utf-8?B?b3I4bHFXNHBzbXlEcTZmOFdQQWRjd2dac0VLMTExYXkySW5VUHB4U2tyN25z?=
 =?utf-8?B?dkl2dmIydjBtSGpQOHJ4RVJoeGNpdExwS2xuUC9USEpWa3lWU1JqcHkwT3p0?=
 =?utf-8?B?THJwT3lzbVlES3h3Yjh4UHhYRDZDU3NjeVpTd0xreUpzR0lmaW4yM0ZRWFpY?=
 =?utf-8?B?aEhmUW5vaytNSEJrN2srNWhRR2ltQnFjOHBRaVFaNEQrWFpDZ3dsNTVjaHdn?=
 =?utf-8?B?dWNxSG12TlhWaEpYMGtyb0czTEtjQURkWUo2RGlzMDJBOEJJMThSUDZqbFZS?=
 =?utf-8?B?bXZuVk5xL1VIald5OWphMHV3UWJReWFMVXUvcnNUbThKOHU3NlBXSVdtaTdt?=
 =?utf-8?B?Y2VnRjZQZ1ljS2FXdGNQRzdoVmFoTlR6cmRGeEJYZFNBbGlWV2ZVZERKS2Zn?=
 =?utf-8?B?Rlc5cHlmd3RnNFhQWFNobTJxa090WW9KOHpqU1oxanF2WHc3QkNpbzBYK1hs?=
 =?utf-8?B?dHRwT25zbSsyUTBzTkQrYkVMSFlNcUU5YmpraVJxWGVUK09vdnVKYkVQYmY4?=
 =?utf-8?B?a2VsYWQ3c2Z2ellwNVBLWWFmRnY1WWRVV2U5S2daQVMzUk84Mm12c2ZIdTBm?=
 =?utf-8?B?WGhtNTExM1JaYld4L051d2pRSVdEOFgxT3cwSFI1d2lGMFIwWjNLeW41ckpi?=
 =?utf-8?B?Yjltai9CYkZTWjN4V1JaSXZpQWU0UEttYzMrTUZFbzB4NGVCYkp1UllRdHAv?=
 =?utf-8?B?c2o4TEhNRW9DWU51YWhxL0oxUmE1c2orZWJzVzNuQXVzM0NyNkRzTGFhSEFY?=
 =?utf-8?B?azBLbG5DRkM1VnU5UzZzYk4wVVhVQjYvTG9QcUlCNVl6WmxZS2dLL0JnSnRn?=
 =?utf-8?B?ZTUxL24rK29icUxSTFNicHB2QWxNVnhnN082U1hmc1ZBNzFKdVZnMDMrWnRO?=
 =?utf-8?B?VHgyZzVmM1M4dmo1cnlTWWZzMlY4UEhaMW1naTA1dDVRZW1XY2F5bG5vSnJn?=
 =?utf-8?B?bDBRc1BhRWVEWi9mYWtnZXEwbkRqT3I3eG1sZEUveHBFUXJhZjFjeUluNVZZ?=
 =?utf-8?B?SysrYkNQaFpteXpxS0lHZ0x1Z09hSVlzYlMxY1BnRi90UkRLM2IyMW1ENEQw?=
 =?utf-8?B?UmZNaFg2NmtNMkxaMFE5UUl2Z2ovQU02ZW9OVWt6TEgzaWRTSitXY283Yjl4?=
 =?utf-8?B?YUJjV0hqWUp1VVZwVTl6RytXV2EyTGF4WWlHM25IWGVIcHRUaFdubVp2TDJQ?=
 =?utf-8?B?UHdwL0ZaNmtqcis3R3dxKzJac0Vrb2lRUzE4dlcrTEtqc1JZMW1ITTV3azVG?=
 =?utf-8?B?Q2QxMEd2Uk5ZNnltVDd3L2NaUkpTZWdvMEtsQ3laZlkwcTludklTd0NBYmR1?=
 =?utf-8?B?bk5hQUtVTDRGbTR5cVZIU0tkTU5ZMGE0RTJOeG8waksybDAyY2ROaWk5eENG?=
 =?utf-8?B?WmppZWhSdGNtU0RsdEV6TFNrcFhBT3lkQnQvTE4ySVRGZWg2K2tOdm9lRmor?=
 =?utf-8?B?bDhDNGZIc3NNTlYwU0hxRVpsRnI1T2Jha1MrY1BlSk9IdXIzZjUwWWo1TlZi?=
 =?utf-8?B?dnN2T254eUdxMTNPM3FrWXFrcXVuWGlmQzV4YXFPcDYvbkdPeTJNZnk4TmFk?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d16e76c-0711-4f91-84e4-08dcff5ce5a4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 18:49:23.6770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fMSSuezjw0gk+KNzjwLCuQPrCIC2Etwe3AgB9eRGoi4DEuPn5U8CyBEgY0AktBFd8RWZD8RaH+kMrSevCMK4rY4DbjokMXI6yzIb0ODicxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5169
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731005368; x=1762541368;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tL4cIhEzjQ1WDcL6S84S7PpWSKN92JH20+Osn0xj+Ng=;
 b=X0IqfRJ72K8aHbwQkFoJJbYJfXQ1G0b/MoLTAi3p6G6enxadka0ambjx
 2Rl4WP/36kMwm6jWEol/Mw9ChfT9ko0h3nnzQAy3J7aiESsv11TJozuHM
 tL79xYvtICm9XxO4qIPtb11kg6ni+L12iObewKHE4kQ+bxW54GLLl+1V9
 tZDxBGHXRAR3XigirQocVVhMUWNgbRPDejRhlQmR4vI4tlnX5YmOtk+qB
 kQRKyTkRXEJuVXUrdWqWiwSduJkp/eERAzvVugXLPruYBEtlKIY12i+ke
 6QvHDf8U9F72l/y/YO87hVl4lSJIeHpAH5aiV1m5ZqEEchTcVjUt2z0gk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X0IqfRJ7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Expected effects of layoffs on driver Intel
 Wired Ethernet driver development?
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



On 11/6/2024 10:07 PM, Paul Menzel wrote:
> Dear Intel Wired Ethernet Linux Kernel driver folks,
> 
> 
> It looks like some developers are not working for Intel anymore – like 
> Sasha Neftin. I assume this is a result of layoffs from the news [1]. Is 
> this true, or was the team *not* affected by the layoffs, and developers 
> just moved on by themselves?
> 
> If it was due to layoffs, could you please share, how the team was 
> affected and how Intel is going to make sure, that driver developments 
> continues as before, so customers know what to expect?

Hi Paul,

I don't believe I can share that information. However, all our supported 
drivers will continue to be developed and supported.

For our client drivers, Vitaly can assist.

Thanks,
Tony

> Kind regards,
> 
> Paul
> 
> 
> [1]: https://www.theverge.com/2024/8/1/24210656/intel-is-laying-off- 
> over-10000-employees-and-will-cut-10-billion-in-costs
>       "Intel is laying off over 15,000 employees and will stop ‘non- 
> essential work’",  Aug 1, 2024, 10:14 PM GMT+2


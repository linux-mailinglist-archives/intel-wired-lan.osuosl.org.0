Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJd/D81N4WmargAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 22:59:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A72A414C0A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 22:59:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 459AE60A9C;
	Thu, 16 Apr 2026 20:51:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N_jQmyLi2y7O; Thu, 16 Apr 2026 20:51:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E3EA60A9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776372690;
	bh=ti218o62VAlO8sUaBxtgj7qMJEkEnv9FeQiYHCITeHc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xzWqqGMK4WWEtoUEFdExKjs1GVgvFLm2GGCJYRvTo2LhliexzbHWfq3ZewPIFOOqS
	 RCLh6M99BJcg75rpZvvA1IMbTTFyWGIFQ1v4HtOAntm/lvRFdeisD5ZE0fsF5ynqFN
	 Xy3R8VXzfJKMeQG1PeLaVQVKtD4aejrxREFadzq56duDvlJdXgYGRlAwprIWTP5etT
	 DS5PJYt9fRLnILNd3hijrdr0eXU2KrXCv1V00IDnbaU1k+5EiEqAWeR0tvMLeSeAFZ
	 GbnZSoVJGUgCp+bM4Hf+gBBBwQ1oDiA/1MPj0ZAiAtmZPhjuFkjHmb5ksZaipiWPmG
	 9Dg7hbeUQQmLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E3EA60A9D;
	Thu, 16 Apr 2026 20:51:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A8FAEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 20:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FB314041B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 20:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ps2Sgf5n6kQl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 20:51:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 26AC940164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26AC940164
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26AC940164
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 20:51:27 +0000 (UTC)
X-CSE-ConnectionGUID: K+64knAAQbu/DqSSkdgjgw==
X-CSE-MsgGUID: YwdKg4G6SiWfFB7hlcG8Kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="64926419"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="64926419"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 13:51:27 -0700
X-CSE-ConnectionGUID: c01Dl0R3T+m5TomQmYB/FQ==
X-CSE-MsgGUID: Wo76MQDmS7CwKC4QCIJaMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="228170834"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 13:51:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 13:51:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 13:51:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 13:51:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=POn/LNXu4rkgI+OC9isO/ytjTrRs+FcIHLlVzyqvQVHd5ZgbwUKFWNGUb7xYSbqOb7mo6hNP5b6+uPB36hFe4uuAhh0zaWv6k/eQL0WIrpRq8xQbEdFU5BKTLwvaAcPmwsEjy3Hc94IR3B5uP0hDRSP9t+vey2STqqQDSJS8HENjuxSe59qwQ4fKAyDaGfES50GMU9x4nkEe2r4yJ90R/1dc/i9aI7QObIJZFcz2cwp0i0VGGfa7Y4CSg7Tvogfr3Sr2sRhG6+1b0tcDZeNAoMl8idpj+LsuPK+Da3qbQjoQ7S2GnzETR6dnr0oGLZjMcw1wWyt1VEjlk8gYqu5/GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ti218o62VAlO8sUaBxtgj7qMJEkEnv9FeQiYHCITeHc=;
 b=frkZ8moMuI9hLRgjxytmtzBqrow5DoMotJwfMJ1Rgp7nUgB+OCbvyWnGX/N8H+ws2MFb1s4ZpgCChGVGqhAfyYDdMKjxZyinFfIfWtjaZ5kOtVILNw4DqA011CLJK26/V3HbxhjZrqwCnhsZl9fLW0pQ72o3tT8i43/WWjRVYgKUg86W7HU+giEsiNGa78S8T+4cm2p6tT+n4K/ABol3Fq7nlFmZ2pInjFcg+JmzBZvZ+ebWULX8tVWtKNm1OvHL3IfX21cysWKpFtomzFYc7SUXehp4xL66C9zUgTavig5Lp2Y/pBoi/9NeyFIopfMBMr/auMre/EeH9ULCiai1sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 20:51:22 +0000
Received: from PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3]) by PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3%3]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 20:51:21 +0000
Message-ID: <76337dfb-ce4d-4b22-9c41-e91a5790e850@intel.com>
Date: Thu, 16 Apr 2026 13:51:20 -0700
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <magnus.karlsson@intel.com>, <kuba@kernel.org>, 
 <pabeni@redhat.com>, <horms@kernel.org>, <przemyslaw.kitszel@intel.com>
References: <20260416114046.642171-1-maciej.fijalkowski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260416114046.642171-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0224.namprd04.prod.outlook.com
 (2603:10b6:303:87::19) To PH0PR11MB7588.namprd11.prod.outlook.com
 (2603:10b6:510:28b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7588:EE_|MW4PR11MB6618:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dfc6676-ae0e-48ba-20b1-08de9bf9ea85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: HTtnb5w0aUQ6EikpVoegaclu6lUTy4pRq1tnq3zN5HsR2Xhd76MlLQS5ZhRYaBfFKu54SPgz0tLm8dMBjTS2CD3z/uWsGyt3CokHmny26kdWaDY0IW+d0j0tLGxAOZvoonTEP4/qIS4cIpefVI55NK3jVN+MXFyAVSRTN5LAQSfZI+W9wEzBgZd5L1kzLb4L10fjq0DESBmQy8tRiDFo5lmwsfqTXL5VsOPREIV+kRkjMYbQQw63Dc6s16EQNll01lsF3g8mJwMdUoI835veeV6g4HMeZNxub3P3r/ijSy3kmf/Ep+86fesU2Q2y4Lrq72B4DDR25D+TchS2KuIidl0a4HI9PJwNnLwqlwv/zMPoZUoUilEPN/O/bI1lfmi3bet/izktP5pkcGgSJ8opQgZLpS8W2myGW0M2v+V0tqRGncHtJvtpq5w2xwdN4BUoOsH7/97pWyByTDV50lW7ayIce4oCyONbThBZCcGPws65lwawwMGxQ9JydJJo4pGHj9l0wSv70YIOrnxX0UsH6FMtk7UDLJLTbRV3wuRBSFQmlIaBAjSzLef6BNGH9UoBhqYYT8+1AEY+/EDNHm+nwTvar/isYU7U75XtITIV1dFtOi0e3GAoBe6/xUoVDNWZlU2mfQOPNbbC5hCZ31v70AnDcL6zcZazRr5sJ0Jdl9mPAfwXaQCztO8rPfSaXlE81H8TPy5M+gDetLqFed6glP22Qo9C3AZ8aBXXQ9hs4fE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDBudGUzUDdOUllxbnZ4bmd1dnFwREZxUklUZTRsSGNqVUJUUW9wTWNQd3NF?=
 =?utf-8?B?dFBEY1lVSUs0SG9oY3d6RzB0NWVyZ203aE9acHhaUTcwQzlJTzVWaHV0TU9N?=
 =?utf-8?B?VGJNN051YkJ6MGxQTGVZRmpiRi85WHdYMXZzeWZzV2w1STYxSW9YRFJ3RzlW?=
 =?utf-8?B?bTV2WG8zZnRMc2pUWHpiUzhoTHI3QTFnNTVIamw1WC82VWQ2eDRpSFFGaUhh?=
 =?utf-8?B?dlN5M3p5NnpLUUdBSzFoL0Fxd1NPV0lUMjErNFZQWFJDZDFsU0NYOGR2aXlN?=
 =?utf-8?B?Q2kxOHBGM3lLYVFXdk4xVVJ3Mzl1cEtLbTRmbnBDOUJOM0lCYlFZWlk1ZytF?=
 =?utf-8?B?cndQT3I4bTNsSXZ4Nkx6QTI5bUZCQjhaa2I5Y3lpV1VnZ3JscDF5MGFpK2dm?=
 =?utf-8?B?ellWbWlMNkswdTFQUlJpQU05eW80UWJvRGlHQVZEemdUcHRxOUpVQjhJZXJa?=
 =?utf-8?B?a05iblMvd2RpM3hodjF0NjhyVWNCOFhycG1WdisvN1hLOVpicGFvazJWbFlN?=
 =?utf-8?B?RS9FRkVvTFMyU0w1dTJHNGUvWk8reDVzOURpZi9seSs0a0xLaGNNM1lHakFO?=
 =?utf-8?B?N0IrZnFKT2xjQ0ltaWY5YlNiR2tOMUpJa3J2MGVNZFpOa29maFEvWjl0S296?=
 =?utf-8?B?c3kxdTNKdFVNajhZT1ExVEh1ZlZicUdZOHBweTU1OHN6ZERpL1lvTGhiY2tJ?=
 =?utf-8?B?TnVOVThHelBoQWlsMDNydC9BSVNBQ24vbmd2VXRzUlo0NzRTZy8zZmMxY2dm?=
 =?utf-8?B?Uzlqb2hVMlZwN1g4MkdsU1MyWmtJaFQ0dVN6Q1FhUGtHSEg1L3UvN2lIOHR5?=
 =?utf-8?B?US82K1djdndtd0JvZnhOODhMWVNveVluc0M1OUtsTDF4Smhwb0RKSHBCSEtK?=
 =?utf-8?B?Y2RVSkNWV3NnaTJ4cXM2SHAzTzNZYVNTazd6UE9YQzhMd0k0dU5pUm1VUXp0?=
 =?utf-8?B?NExGKys2SGRDYXZZUldnWDQvakZYQ0FVWXgxMmErVndmU0NFeFloK2xPZ3pD?=
 =?utf-8?B?M2tHVEVLRjlyUFVOamZkOFJmekY4U1BFNG9IQzRZaUw4ZWFXK0dHaEpEQkc0?=
 =?utf-8?B?dTIxdXE4NlVpVENqOTRKbUJYYjB3NnlDRHRlTmxySkxjR0NocWZZYUYrVGMy?=
 =?utf-8?B?OFJpVmM5VjlkZjFGWjE5cUtxcThqU3ZES0xnSjM3WFNjWm50SmtQMitjajJB?=
 =?utf-8?B?MnZNc3oydVgyUzUxTlhIVjdMamVKSlllUzRMMzlFQzFiSytkcUVyWTRQejdB?=
 =?utf-8?B?a1dURWRSR0dZOUhZS3lhYmRyc3RzcTdtcWVHQkxyMWNXdUtDV0tXYVJwT0Vr?=
 =?utf-8?B?czhPbXhpYXA3ZjY0TnpNOUdkRzBoWHcwWHJLRmEzRFlJenF4aTkrK2VUSkdm?=
 =?utf-8?B?UlZBeEtFcm1mRzJHckthak9sYk9FZ0RQeExWdGtKOW9pZU5rekEzQnorcWJq?=
 =?utf-8?B?WFh1MExlbHd0ZlhaTjFBSkxJeWswYTlTRjhBNktScFBQMlZxR1hsV1lrL1lo?=
 =?utf-8?B?M2pSSm5qcU1QUjlCQlpDYlA2V05SQmhpMWRDZnZhM0pUMVB3V0JRWGVPbzZ6?=
 =?utf-8?B?S3k3OFAzc1EwWDlZTGNuZ3FCZWRrZ0JkazVsRHMxdC9uVkdzajVTWG45ZFgx?=
 =?utf-8?B?dVR4UWNBZGtJczJvTWI2c0NHbGpKTlhBSVQ0NWU0bkNaNlRyZDNuT25pVERj?=
 =?utf-8?B?Q3NQWEpMbi9uMHRDMm83Wi9NZk5IcWlmYitFYk80K1cvU2d0eHZyd2s4ZFli?=
 =?utf-8?B?NkxRZTJoZC91VU1mMlY0ekMrR3VjZlFya3B4WlRNR1AyRnZpa2JLM1JBZjMv?=
 =?utf-8?B?RXJpenpBTzZTdm5meUFDRnFDemNzUjBycXgrQVZsN0NzVW9Xcnljc0xKNmw0?=
 =?utf-8?B?bUc0K1hsNWxtS1hRSlh2YTZ6MkgwdEtreTZEZyt1REJvSTh2NzFueXRodEV3?=
 =?utf-8?B?MFkvdFdZQXMwOFllUStjRXAvVTJqbGVCd1FCb2lYNmkvQTEwcUlScjVKVHl2?=
 =?utf-8?B?VGpPUmlmdVhUNFpjcDdyY0dxTmVUTkZlcEZhMmdSaXY3VDhpNHJ6bUtXT2ND?=
 =?utf-8?B?RU92S0tBQlV2eXN1TlloWXFZUU1zTzd4dnFRZ2ZOTHVSZjNSVjR2K2FEZDM0?=
 =?utf-8?B?U0t3dUFIellLQWowVWZOV1N3dkRPMldrR291aGVuRjBINnFCQXpuL0E0OWl4?=
 =?utf-8?B?cTVCZERLV1VyNGVRMkttS2NSYWdXK1hvWkZUbk5LdzBKL0RYeGlvQ2c5a2Jq?=
 =?utf-8?B?VkZlTnAxRU9EdkZyT0h6UGRsaUtUMm1HUHdiVmx1eUhFMVEzR1IrUUtHSkE4?=
 =?utf-8?B?UmRBRi8rYlhvUWt2SE5KZ2VNSDZDTFFSNDlVeWFvWERQUmhZTmdjQT09?=
X-Exchange-RoutingPolicyChecked: MpETeA9rK3OyYW2veUvWK6NYnVon+lYjXj/d+CsVdiqKNsyHGtmBV8ds16UlR3319PcHafyRbWhjL+J8o8p6G9k6TcaW/AEutFKZTERbpIzltaTf3Q9w0XO2lbhEiyYqIsttihIhN4uSLJECx6EU/oJBJKsf4sdA4tyxEbTuGOSpik4sIjyuNVQe363xiyUFU9wlto7hXKK0+SqyD3OmBEG/duQW8qNPRbgzE9SMave03uI1RpGRuikkpFHvQu4vrdHC0Pk7BaisyX1OdSklwCr037ezT5xrPR6lezgWb7XKFi+ecWANjlXNZigT6fUgs1CheV6eIz/IkUCRYMNU5A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dfc6676-ae0e-48ba-20b1-08de9bf9ea85
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7588.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 20:51:21.8291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l8LqbSL536NtC7pAsQ7RCzuXJb4i4W3ld/4lTSxZKq3J1mfdqZRbudajWOP2DuDrr4e0vFgYZ3ijwGTFGzToT1IJ0PPchyHO+IXa22rlAPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776372688; x=1807908688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sj6Zyx5uwak2P0dl7IyJgxXkgLmpjXvLKgCTX5ujcOo=;
 b=dkx3t3eOC3BuuZDjwC+n0eZA0Sp03NnKiBsI49PvHcjPPT9LRIX1xGsY
 13UxFL/0AidEQ196EC86xvLsVtyw00CnTa2IBihxOr/wjLepngaqqdZK6
 LyGewzemzdM6/2iQTw6RohnMiFbtQDO3RH05pELikF4XT+MpOaZJ+7ErG
 9fbw1zrkOHhrOhW8qCR8aT16Fix99+gJ1lf+83Wm3o7G+D+qs0S+1mq2a
 Zz/PVsKdF5E7AB6EJ4miWPcOxIODmJunP28tSL72jB5S04V1x7Q48ZuIR
 xG6EGLkT/OT7mIWTL2ToCain8LUDdfqa68DnKPTx5UEsbHOvpCSbbmTUE
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dkx3t3eO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] i40e: keep q_vectors array
 in sync with channel count changes
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
X-Spamd-Result: default: False [8.39 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.345];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_SPF_ALLOW(0.00)[+mx];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,napi_threaded.py:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 8A72A414C0A
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On 4/16/2026 4:40 AM, Maciej Fijalkowski wrote:
> For the main VSI, i40e_set_num_rings_in_vsi() always derives
> num_q_vectors from pf->num_lan_msix. At the same time, ethtool -L stores
> the user requested channel count in vsi->req_queue_pairs and the queue
> setup path uses that value for the effective number of queue pairs.
> 
> This leaves queue and vector counts out of sync after shrinking channel
> count via ethtool -L. The active queue configuration is reduced, but the
> VSI still keeps the full PF-sized q_vector topology.
> 
> That mismatch breaks reconfiguration flows which rely on vector/NAPI
> state matching the effective channel configuration. In particular,
> toggling /sys/class/net/<dev>/threaded after reducing the channel count
> can hang, and later channel-count changes can fail because VSI reinit
> does not rebuild q_vectors to match the new vector count.
> 
> Fix this by making the main VSI num_q_vectors follow the effective
> requested channel count, capped by the available MSI-X vectors. Update
> i40e_vsi_reinit_setup() to rebuild q_vectors during VSI reinit so the
> vector topology is refreshed together with the ring arrays when channel
> count changes.
> 
> Keep alloc_queue_pairs unchanged and based on pf->num_lan_qps so the VSI
> retains its full queue capacity.
> 
> Selftest napi_threaded.py was originally used when Jakub reported hang
> on /sys/class/net/<dev>/threaded toggle. In order to make it pass on
> i40e, use persistent NAPI configuration for q_vector NAPIs so NAPI
> identity and threaded settings survive q_vector reallocation across
> channel-count changes. This is achieved by using netif_napi_add_config()
> when configuring q_vectors.
> 
> $ export NETIF=ens259f1np1
> $ sudo -E env PATH="$PATH" ./tools/testing/selftests/drivers/net/napi_threaded.py
> TAP version 13
> 1..3
> ok 1 napi_threaded.napi_init
> ok 2 napi_threaded.change_num_queues
> ok 3 napi_threaded.enable_dev_threaded_disable_napi_threaded
> Totals: pass:3 fail:0 xfail:0 xpass:0 skip:0 error:0
> 
> Reported-by: Jakub Kicinski <kuba@kernel.org>
> Closes: https://lore.kernel.org/intel-wired-lan/20260316133100.6054a11f@kernel.org/
> Fixes: d2a69fefd756 ("i40e: Fix changing previously set num_queue_pairs for PFs")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v2:
> - NULL vsi->tx_rings in i40e_vsi_alloc_arrays() (Sashiko)
> ---

Thanks Maciej,

I'll go ahead and replace the older version of the fix on dev-queue
today. Apologies for missing the exchange related to this and the
previous fix :(

Thanks,
Jake

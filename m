Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F5FA783FB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Apr 2025 23:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 582A86110C;
	Tue,  1 Apr 2025 21:23:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQ-TuLORROWz; Tue,  1 Apr 2025 21:23:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAA5461134
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743542591;
	bh=x9ijxP675j2eSCEunXq3u5WREtiGJcFm8CrCtDuX23s=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8qOT0u7D2/Ifkc1TzEodue3sqqMryCQ7S2uO6MR4IXTzNAbfd9uaqtaS/GXCHqdZ3
	 7fw8T7PJzFISdH4mbLHcUQHK6JIyBtkmgTZGuUw45wrftbGAP5GkaH3AQXIOL1W12v
	 o3m9+BrjV1a6XAXWRY8SAMr5a39cD7wGi821Nz/hDbMMr3oACxklMEwmwch3vctzsn
	 FhLYlB3CqGSYSZn3hoqmtBjpqrSdBjLiv8EbclVRhyS41gawwrdHtnC/8B3EBGiVYb
	 /wHVmhXmb3+TTugWSOPKGlNdjPW/NzbBEv6cRid3832zuiFJjLM4kAK8cRGzqW8BQ0
	 V3OteklLry8Tw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAA5461134;
	Tue,  1 Apr 2025 21:23:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA17C137
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 21:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3DE38487C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 21:23:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ivafte0ZcVTS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 21:23:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1686E84808
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1686E84808
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1686E84808
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 21:23:09 +0000 (UTC)
X-CSE-ConnectionGUID: SE6vzf9zQKOQdP4mshDKww==
X-CSE-MsgGUID: Ffj85/EhSK2cVF5X/A5DQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55520722"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55520722"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 14:23:09 -0700
X-CSE-ConnectionGUID: hZK6QeJYRWKQgChWpnThYw==
X-CSE-MsgGUID: Dw2HEjuhQ7y5zCECplx17g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="126751646"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2025 14:23:09 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 1 Apr 2025 14:23:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 1 Apr 2025 14:23:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 1 Apr 2025 14:23:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G0Fxcb1OTPAy+ShbkvXwJvnoaTy8pB3PkLn3a1C7eXlO7oPhEdLGJ4me41annrGjJ4G9W1AfwlzJySq2eeFToEJI5bupTAZKiVExwmtxqbu4zIamqrF6Xn9x3X86f3HcpG7gYacbWTDXw06vsfzvX4AcYaLN3U9Jfq93Owis3iZkYz/R3B0Od7HawPDsbXDfC7b9enKlimLoLjlB4um1N5IoxkcsfTytfhT5IjI2jn2Hhl1KDhld8CljxA6knoLukfv6ZTFBLobKbJuoyTPSjitxEOHGlnAedq00bvMybyaOGYprimLtAZXAoiSk3SrgiB9cwnfEA8K1ubSUEvEH+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x9ijxP675j2eSCEunXq3u5WREtiGJcFm8CrCtDuX23s=;
 b=itAbGLbvuq4ultfsdDM5B0BJLIH4AmVlTNRSSfbCtszETfFcbt1dQfe1Sl9mun+GCtOT2r9uu/X2YQ0hmPqs7SWEl6mRCf0fvpPYdDsf6BczjFb6jeZBijqHFRnNNZfyRWSfapvOkg/aSdIWFJE+JfExdF7SEAQ5w2FJDYvUSpSMI7XZTMcqjxa5LRimLxirU48c2/0TFM/pFMEz+7PkeSHzKCyZP5GXelWT4ciXGasadg9h7V3TDlcmRS7FRd6BMRHjIDsWLqE96sitAhVYVn4847E0TPQnIHSQ/K8tzQb7gBBhLPwtYROwKKf7gr+cbzZRUgoOKwqarV1xcc/C+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.53; Tue, 1 Apr
 2025 21:22:33 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8534.048; Tue, 1 Apr 2025
 21:22:32 +0000
Message-ID: <c843f075-3738-4a9d-a6d9-b817f650e26c@intel.com>
Date: Tue, 1 Apr 2025 14:22:28 -0700
User-Agent: Mozilla Thunderbird
To: Rui Salvaterra <rsalvaterra@gmail.com>
CC: Mor Bar-Gabay <morx.bar.gabay@intel.com>, <przemyslaw.kitszel@intel.com>, 
 <edumazet@google.com>, <kuba@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, 
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250313093615.8037-1-rsalvaterra@gmail.com>
 <2710245b-5c2d-4c1f-93ef-937788c3c21b@intel.com>
 <CALjTZvZYFEqSGZvSfthsTC5sOkVixAFyPg0Jj7eXZ0tac4QS8w@mail.gmail.com>
 <024fb8ce-adb1-42f8-91f9-ef08868fee01@intel.com>
 <CALjTZvbChDaMACCdmubV9hVXWnih2Rx0NRkcj3K_NbW+O-qrbA@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CALjTZvbChDaMACCdmubV9hVXWnih2Rx0NRkcj3K_NbW+O-qrbA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0249.namprd04.prod.outlook.com
 (2603:10b6:303:88::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5950:EE_
X-MS-Office365-Filtering-Correlation-Id: 25ba82b5-6cdd-4456-bfab-08dd7163503c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aENLczY5bGV2elZ0akZLK1pFekRhbDJxUWVjT04xTzh6Vmtnbk5haThXQS9D?=
 =?utf-8?B?b3NIM01Dd0xMT3A1RUJZYnFOSDNqZmlXbjZCZnh5azVzMitIWkJtcWxrRjBn?=
 =?utf-8?B?MWladXRhZDF4azVHRnhTZGtiRHpUS0NGZzRQMitMVksyWnFCUHFEZHhVclhS?=
 =?utf-8?B?dDVrdW1vakprKytOaXkwQ0VpQWFjbGh0MkQxREg4c3gyVWI2SG43cWRBUFlF?=
 =?utf-8?B?azg1b05wa3JhY1RJWHgxUzRKajBmSWxqT3c3cm50VnNWOVZWcnRIa3dIS2li?=
 =?utf-8?B?UzRSck5KeWZpK3I4SjhOTS9tcUJMcUE3TWRwbWY5VkROYXQra29ZY2xLZS9K?=
 =?utf-8?B?ZEhBRDZHRFJINWcxSzVMKzlqditmRUtFZXpBaGVqdktoY1lNTUtqTHNEZDNt?=
 =?utf-8?B?ZFc0M2Y1UzBpbHdUcFNVS0xySlFZKzFySXdOcUJmVExKMUQ4SVdIWUpkbFpi?=
 =?utf-8?B?cXJCWjBDUGtOM3VJRktJM1J0WHd5dXRqUk50Vi9JSnI5RzMyZlBYcGZnd2hO?=
 =?utf-8?B?K1JSbTI2Yk91bEIzdnZ1RG56WjNvaXBIa1FjakU4YVJUNkVIYXMyRDF5dVF1?=
 =?utf-8?B?NGtoQ2ZDeldqMWg0UjRoNnFkLzNzV1czWHR4QWJaSGZ1NWU4Sy9qck9ieEpi?=
 =?utf-8?B?eU95WHh2WVUyMUxmR1NwbGRieVpFZFlEMWFLREl3MnJSZWcyLzNSUmRDVHRx?=
 =?utf-8?B?aXZ1TmFuQXhPemo0SU92RVhzVnNnNTYwdDBtd3NEODNMMGZLUnVGakZnQTJM?=
 =?utf-8?B?UlorLzJVUkRoMWQxM21welRWay9vTHliOERRMXVqSncxbHREVWdqVThPaXVh?=
 =?utf-8?B?V0pGUFlGcEdqaE8wMVNvbEQ4c3ZSWVJ5ZEJUY283ZXl6UjJaRmI0UE91Wjlq?=
 =?utf-8?B?N25rUGtRdEpnanphTERXcnBCcTB2SlVuU2cvZDJhaTY3SlJUakRxWWlBN3FJ?=
 =?utf-8?B?UWVIV1hDMHRsN25vTTNUYTlWSE5QY21kS01kenNlZzRDQkFqcjg3MEdRbXBv?=
 =?utf-8?B?MlhCaGtwNzdLU1V1OE1NbURJajVrcHFKZXpic0FMQWdEREFyQXVPdURsWVhk?=
 =?utf-8?B?cFdpQitLWFZFTVMwR2FCVG8zb1NHN3ZVVEZTMmpUNDJraFBzS05MMFNFaSta?=
 =?utf-8?B?bnJpRnJwSWJhQk1XT1U1SzBQcFI4a2dxay9VVkVVaVMxbG83WDhuVEFCeWlu?=
 =?utf-8?B?UzJpT0VCSTBIa2FTTDAreGxGVzl5UXRINm56bjd3T3FnWVhVU1dhU1dGTC9H?=
 =?utf-8?B?MTkxUVVnRkxxUVA1V2ZuUC9DeEl2MDdhdXhyUlcydU1FUENMYXBNS2l0RCtV?=
 =?utf-8?B?SFRIWU5kZEFWWXl4cG5iQUJKeDZLdXArbEVwSzlyV21mU1h5cDdFSWt5U3hi?=
 =?utf-8?B?b3JGWkNRRHJnaUtSNW1iL1NLOUJ4THlENkNWZHp3YVJreXB5MnAra1VDanRy?=
 =?utf-8?B?OGE0SGVaTGhkS0t3OFpydzcvdGN4TXdEZXdHb1llN0lpM1NNWDVuY2d6M1Ir?=
 =?utf-8?B?MkYrZ2ZpelZjVm1Eb3dwN0hHRW9UNVZIellIQWx6NWFWbHpSVU5BbmUzb3Uz?=
 =?utf-8?B?Y2RFMExrTElnYWZ0ai9JbnJ0OFlTVUxhUW9KMEpQcjIvOGUyZ2kyTzlJY01l?=
 =?utf-8?B?cmVWTnJnZlR3RUFnTTJQMDB1YUdGMWVNWm9ZdXlnZE9pMmZjdFFzbGVnbm5O?=
 =?utf-8?B?WWE4RXdlN2NIcGVqYlhkSkliKzZDRlM5Uy9VU0JwTmVxWWxnb2JXcndid3F4?=
 =?utf-8?B?cnBiTDdmZllpaVFVc0VicVd2WUoyc3JJUkpwTjVUSFNNYVJBelVHd2YwSU0v?=
 =?utf-8?B?aXRHRE5heTk4RzdkTS9ucVg4ZDk4WGdMbERaSUVzWU9aWFVxZk1RWTNPTy9z?=
 =?utf-8?Q?Zwd0o7eDmxbOj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWMvS2dsQkRiNGVncWpNdlE3b3JCKzRBbDJ3ZEk5S0hYejd0ejlUWGFDNlVV?=
 =?utf-8?B?UkFEVUJ6eXdkZ00rRDdDdVptUEU0R3E4aVovN1dSNjczKzFZUituek8vTDNS?=
 =?utf-8?B?TGVQbFBiUGtrTkl4VGpEd1VnUFhGMTd4bmc5MFkxUnVhQ1V2QmYrSXVNV29G?=
 =?utf-8?B?cXZsTUZtVXhvbTNDTnZ0dHlPaFRLVXhRVFBHZlZyZ2t5QVBrcDhXQTJzM1lr?=
 =?utf-8?B?U1AyTWZKNVI2ZGY5bFJUZDRYZHdSNG03SEQ4NHlBS09ITWZuM05HajVYN0I4?=
 =?utf-8?B?UzY0VTRaWUVZOXRMYnZBU1VqQ1JCQmRmMWdLTEtiVG54SjgweUplYzBMcmlO?=
 =?utf-8?B?cjdKVkFINVNjSG50cXBuS0pjZEoyTzZ4MUlib1JxVEh2dk9kVzFYZktoRnpw?=
 =?utf-8?B?YkFOajFxZHAxQm1zak1EM21PZ2k0cDZKSjNvM08wbTBSS1BVdlEzUXQwNWJE?=
 =?utf-8?B?MVU5OVJONURrWG1NZTdLZ0ZwaHZWNjdUL2FuMlNuQ3Q4NGk4bWFKbDZ0QXVw?=
 =?utf-8?B?WEZOQ0hmUzlUajlONkpRVFVYRGdaWEIvRi95TUlyVm5CcndZelFyRS8yT1Nw?=
 =?utf-8?B?bzhpc1diRTU5eEZvUmY2WWc3bnk2Q0FZR1MzRldnNDhLMmxVVnZMdGxxc3kx?=
 =?utf-8?B?YnFBalBYcjdGMk92SWFaV2NOc0hUQjFpMzVqMTFiN1JYbWFoc2dWblV5eWVm?=
 =?utf-8?B?b3pSeGJrWXNsMzNaTVdCU0tKYkhDekpReTBDYmd2R2dmc3dTMjMvWW1uQUFW?=
 =?utf-8?B?WGQ5TEdCdWErNjg3MXF4VDFOQktUMTFTUXFhMDBxekVhOWVHQ1BiVGx2VndT?=
 =?utf-8?B?VGJLTVVjNHhNT3R2RC95dE1ZQUNGQjBVdEZPbFFzTUdYOWt3REQyOTdOY2Fo?=
 =?utf-8?B?Q1RCUGMyblViNlR0QWN0eUdtNDdCRCsrU0FHY08wUlRsLzJrYUVTTHYyVDlN?=
 =?utf-8?B?dW03a1V0SGY3RnhsMWdQM2xPRnhDODM0STlMMFBFLzFlUkVUTDFaSmIyWkFB?=
 =?utf-8?B?dVA1RFcwdlBVUWJSWkluVitBTHRBQTk2US9JODZ2bVgwTmlqWHZic3VIT080?=
 =?utf-8?B?dE13WmlISXJRbEd0VEMzZlhFTnNqb253b2dEaFhqUlFZVnFIUVpxNENuUjFC?=
 =?utf-8?B?bk5pa0FFbThpZVZZK3JONEtBSUlaT3Fkc3RHNkZzQTJuVXdzYnMvL3QyS0xU?=
 =?utf-8?B?STNuTjNkVUdONnNydjdQMFpieG8wc2VUaS9ueURXd3VRWEw4VlVLdklGU1dJ?=
 =?utf-8?B?aEc2V3lYbGoxRXBnTVBvb0lPZUtJKytKWTMyRG9meVVqRzlJblRyNXZiQVVt?=
 =?utf-8?B?ZXZlRnowTnJyYklIWE42eUFmY3QvOVd1YXhVUktFenE1TEdNdGYybDdRai9l?=
 =?utf-8?B?K0tQcnpHZGpTNk0vcWJqZHJlMU00SkJYaVJ2azFJamdyb1RxNTJFdnM3SlNo?=
 =?utf-8?B?T2MzRWVwQmxQeEFoMWFQMmxVVjR3ZzNMM3JidGp4bXpSNmlrTTRDQlBvRjlF?=
 =?utf-8?B?WGNwdFZPVTVpSUQ2aUE0L3UwdnRQWjRqa0JvV1hwUU42ZUd6MUpCU3Z4anU4?=
 =?utf-8?B?Qlc5NHBTYUx1aXh0dHd1Nkd3Y2NzamFucytNczhQUUFhcy9WdkZKd1pDRCtr?=
 =?utf-8?B?Z0ZaRGpEenVjb0lDNWhRbzNHVjF1dzFwQjRtWTF4NGlMR2JablI4L3lLazMv?=
 =?utf-8?B?aGN0SE1qVTBzZXhONHd2ODU2WmcwTEtROXQrbmZhcmYwelBZNmVJTVhHanJ5?=
 =?utf-8?B?ZFlOVjFSV0pKT3haMUNBZUpCWTFLTEhDQXB3T251bGlyUzlxeHhGNjNFWkxs?=
 =?utf-8?B?Mk1PVzBKU2VuQlIwTXd1blphbHhWMHd5SmZ3MFJ1Y3BkR1JReEs1VUNtY2Na?=
 =?utf-8?B?M0Fzd3NvZnV1a0I5TUo3UkpmcWpsL2R0QXVoTUNoUHhpU3ZmZStZNXU4dlow?=
 =?utf-8?B?aDN6R3daRnY0R1hmZExId2hSeEZDYU9UQTVsS0VKY0YvdCszZm9lY2tpYVhR?=
 =?utf-8?B?Z0VmMEpzcE5OTnJGY252bkprTW9QajlWb3ltb2VuUW1QNWtCT0dwNFptb211?=
 =?utf-8?B?WDVXWkJlaTNqT1c3ZEMrLzEwbVVBbXR5OGY0R1k0S1dUdFgxSjUzcXpSVk1J?=
 =?utf-8?B?N3F1eFVSYkVaMEdIUExnQW56REU5Y2RKcDc2WnorekhjWS9HcXFHWDJGamxt?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ba82b5-6cdd-4456-bfab-08dd7163503c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 21:22:32.1465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xama3vV5AGZ6IwmIwqrJzjn2UO7JAo1dM3oP9IkRr+U9e3LE32dMjKySxAWEY5joXCWbu1ruqAEKbz1d6Fth0zk4hsdGLQzLKjI23wP8Plg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743542590; x=1775078590;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mdFSmMUTTIAAvbHkz8rzFgL8+s1nW6OBy728g7TqIlA=;
 b=jOrKAjPA5La4TJyvFJ13UjpNnQw3MulzeqYwWjCFiKP2CDzJsQ7Khf2Z
 o4mJCvkmHVqbhJJKjPhILayYrEELda4VwLPuX2V96mYeXy3vhrbjASgUe
 knEQ6td4MeALRDD5SBeQ8mEHlAIHcvtcHvsOniwL/JOch4DCuLe1OFe3n
 qXvCnTLotNbqn9ynFIBxbidmPAAnBFs/STI0egGZQrH6QLJ6HbUmtzzU9
 uInDFo1QS/YyzKMIfAPRYNga987ZDd9X9z9EZGVNNLqhDsdIkMnDdEMrI
 cy//If1nuYua+Pfal/17lnRS8lT9oDCmYxmVlru5HgsKUIFV6KR9Ie0/0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jOrKAjPA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: enable HW vlan tag
 insertion/stripping by default
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



On 3/28/2025 9:17 AM, Rui Salvaterra wrote:
> Would it be too much to ask for this to be backported to stable,
> though? I've tested it on the 6.6 and 6.12 series just fine.

It doesn't seem like a strict bug fix, so I don't think it should go to 
net, but we should be able to request backport to stable afterwards.

Thanks,
Tony

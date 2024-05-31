Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199338D5E8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 11:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD70B40571;
	Fri, 31 May 2024 09:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id th6BIa39p_Nq; Fri, 31 May 2024 09:38:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 963084064D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717148321;
	bh=fwnyJCykJz4lPBsIK/f3wikgv9fMvB0AaAYeZujWDRU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gqT+1rvkG9w2EyE4rxSgGtkMjLyqn0Decw7/G4MgIvWo09idpuLTr56cPWr0ZcjSm
	 2VKTV2OAGHFSOzF3OSqENdF6R3nLwMWaMKA58pZir5owm02E814U0CiU8bsa0qkjE4
	 yFtWZdEfp8akMVcnlowXumcR0BOQBXdtVEy9ikgaBvHPyYqFAkPQc62kG8RImsB+Wa
	 VuTb1VhtttsXE2iT8F6BhDsFRv1uPPLov0JpzTFgnAR8d58r8H6eqDP0mvyW/3o055
	 jelMkRunpWXeYbVxKEGmSiz1Kf9lMTdNdJhdary1PyW36/OlE3pYys9YFGaO3drE7V
	 tlXbVvmXXOIUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 963084064D;
	Fri, 31 May 2024 09:38:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CDED1D5024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6806E4053B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:38:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pOHrHJuu7_Hh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 09:38:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC79C40256
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC79C40256
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC79C40256
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:38:37 +0000 (UTC)
X-CSE-ConnectionGUID: ygFSauGNSSS4cno4LLpk0Q==
X-CSE-MsgGUID: +/N0q+9hR0ahYRHeT9vJlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="39077270"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="39077270"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:38:37 -0700
X-CSE-ConnectionGUID: 6O0vuJCwTZi6s+PQkfcY1Q==
X-CSE-MsgGUID: 2ifH3/KPSNWubrn02XfCWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="66969612"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 02:38:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 02:38:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 02:38:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 02:38:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ql8gT10XGYfpWJbC1pbThM+hWeYfMIxi5/eN/rwsNj8m6TPN5NIjvy/XAeiwy/6x+96NNEsFPxfJBTGrn4VmRRlhCTlPmSMDtvawBzl+8L/vxcSAxl1KLT0GGHX/eYy4BRW2s+wyfKdbkphUpTqzdJ8Hr9idRlxb11JEADwctvmF01heyo2gDDmiK9FHTvfjQCIsq1jCdOFVwMdLj9rIleljgpK5y9VOJuFn0J0p0fNrVsT7pikouH/rxUTsUU2LNBmBOQSHU77DSnuxRy4rIS/TuXyjCBXAS/0dYSIsVayqkQp6booQzEiGLx/iUxRidM2pYXru+wFj4kSLyNQUoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwnyJCykJz4lPBsIK/f3wikgv9fMvB0AaAYeZujWDRU=;
 b=bA4LdOtrXwuj0CmlnFvHoYEMR9KzZSJrxSbQ0uhJt2djcpX0ZKwcAMBVtzRD0k9XHEphod5jeKL1W8XukUXDSNiNl1ZmCG8WE2dZ+NyiQQAvGdbV6IkrkcnRAWNpXoOTCYP1crf89bP9sSVbvhDPyG4DduvHwguzfMsDCQN8quOHPaBoWBfBTSke0ZaGl8BF2i6J5ldDJzMMCJUqVRo2uZPRL9G4lE7fQMGD88rk4cKa4J+CQJiq7h5y5/SJqwjBQ36qR0/+5YU81fkZDEexGbrnLR1LddpyYk4Qisbtyq+3tAmyTbzZAQPbtxo7CjGX7iIMLDfWqKVDKalvzhKO1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB5969.namprd11.prod.outlook.com (2603:10b6:8:5c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.21; Fri, 31 May 2024 09:38:32 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 09:38:32 +0000
Message-ID: <d71d21ef-7e72-4962-acbe-a4cd82e6e1ca@intel.com>
Date: Fri, 31 May 2024 11:38:23 +0200
User-Agent: Mozilla Thunderbird
To: Ricky Wu <en-wei.wu@canonical.com>, <jesse.brandeburg@intel.com>
References: <20240530142131.26741-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240530142131.26741-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::9)
 To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB5969:EE_
X-MS-Office365-Filtering-Correlation-Id: 85ba2ae6-2bd6-4612-c259-08dc81556f8a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|7416005|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDNZWDVJVmhmKzdiMllQNTZ3UWRBc0pPL0lGdlhqSmtsbE5OZWt0Mk1ZTG5M?=
 =?utf-8?B?bXVzL2hnUExVRlN4aHhNdGxTTFJyUzliTytESnNBb1lFWXEzRThwRCtSdXNx?=
 =?utf-8?B?NXBVc2JWcGpObGVqRmJ5ZFBiSEtQY2dBSkJON25vM3dqa3MwdVBZUStCV2Ro?=
 =?utf-8?B?YTJCL1hzVVFQWVJSRGZKNTV4SGp2SkxLaDAyRlR4MDNhd1E4dzlvR3BTSnRL?=
 =?utf-8?B?cjFhRUlGWGoyb3FBRWw2TjYzS0pEZ1pzYTMvYldWdE9IOW1CcGx0NENhNkRs?=
 =?utf-8?B?WVJwcjJUTzdmdUNJdGE3RWhTVE95V3pYYytIekdlc2lubllHMnRtNy9UdHIx?=
 =?utf-8?B?UGRGdklPUlJPV3ljaHhITk53QzRLNytDaWZDRVhOcUNmQzFjd2F6aW1kNkJM?=
 =?utf-8?B?dWc4T2ljR3RKQjNlMmNianhQSFMvTmhxRGZOdnBlQlVnWlRZaGZRS3RvTVkw?=
 =?utf-8?B?U0haeHg2a0pEQmxBcnVTREltSGNqdkJTK2F4cnpSNTJLUEN4V3V0K2o5Zk5J?=
 =?utf-8?B?bjFPcVRURk1xUjRlRE5iWmk3UTY2QVhZMFdFbWVoNmxqYlNJaXgrQ0djcktp?=
 =?utf-8?B?eUtzRDlNdSthdVpyNVNoTXFEWWExcDcwM2NYZzVBeE44R1gwZUg5SDFnWlNI?=
 =?utf-8?B?dXRqSk53SU9XeitEbVVmZi9CRHlwU3k0d0tQRkRNMllaa29OUWRieVMrQ3Jy?=
 =?utf-8?B?T1picFJNNVVIYmVDTE1ybWhvRjNpZGNiUC9JYks5ZFRsQitpSjg1WENXRys5?=
 =?utf-8?B?bjJrLzhiWXpLWkV6azBQVGxudi9tQ2FydlNvaytjSWhKTWJqMlhmekRaNzh1?=
 =?utf-8?B?SHJoSW1TSW9sSFZOWVIrU0pZOHZJN2V2VTZudkpzSzJUdEJRcWFnSlhLcWFL?=
 =?utf-8?B?UGk4WGFtWm5TZ2ZDTWZTNlI2UHJTV2cxQzUyYlJMTnFMdVk4d3RCdzZ0eC9X?=
 =?utf-8?B?a3V2LzAxaXZqQVdCV25rdTZGdEx1ZEx0OFdMM3FtNlBUK0NMd01JVXFJcERr?=
 =?utf-8?B?WjBVZ0hnS0dEWStMRWs3Yk1EcXNSUTJkV2VOS1RUTmpBMkZuaE9GcEJXY3pL?=
 =?utf-8?B?dDcvOVQwUkxvZ0FjRFhZaWtTRlBVMXV0a1pHOE5pOExlSjYzOFdTcjVXS3Iw?=
 =?utf-8?B?MmVoUitIVWtXWGxMTk16T2pCTEYyenFoU1FSdDh0NEZQMERhZ3ROa3BOZnBm?=
 =?utf-8?B?eFk3SEZjbTNaYmdLeW9kMmYzTEdhZDFjd1BKeis1MVhvRXRZUXA1Z1FtWnh1?=
 =?utf-8?B?Z3ZmQit2cGppRFRqNGlJd1R4dnQ3N001TnZNZU1ZeFY2V0ZZZklTL3ZDZ25u?=
 =?utf-8?B?VjE5WTJzemJDM0dxNUVRbnVMOWR6TDA2bDJqc1p2cndIZWxLd2Iyekl1WExQ?=
 =?utf-8?B?MXFOY0xRU3laZDNwbDFUUVN2TmJnQ2pNVzlESUJQdXBMQ29yUGdLaFUwdXZr?=
 =?utf-8?B?aHNYK2FxYWFlR0dSMXF5L3NJWW0zbk92UkRuWTB5TTVSa2tVaUtiNHU3YkVv?=
 =?utf-8?B?NG9YbC9CVW5sRHMwamNmRTJRdVdMMWx6VGI0YjY3N2JJQlRaT05qbFM5Qzlz?=
 =?utf-8?B?TEdPbHVTWU41T1ZBNURLYURWL2ozbjFZbWZUeGV1K3ZnMGRBUklHakZFOWs3?=
 =?utf-8?Q?EPHRACnRpOGF3LnsdNkaArE4WgxrMAXptBgfQJa4lsfA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlNIWTNMRlM5b2VuSmpUZmFKeDUxVm9JclFWSlJEbk9Kb3NWQWoySGxtdlMx?=
 =?utf-8?B?bVNralFkSFpPSWZwRFllcUl0MzBtdnRnUmhIY1p1eWQzcEJ6K0Uzbi9WN096?=
 =?utf-8?B?UFl6L1ovQy8rRGd1RlA0SEF2WFlZWjhjcEd2TUlkSW03VWRlaGh1azFrUUNj?=
 =?utf-8?B?Q0xsaFoxeHhwSUN0ZEt1bUtRNnp2OEo1SERuQk1oKytMVThlaWlYSng5WUQ1?=
 =?utf-8?B?akhTYzkvVkMwQ3R5WmoyRGhlT2g4eWpjakl6bmN0ZjkzL1hzVFZXcWJEZ3FZ?=
 =?utf-8?B?VGR6Y2FSRFRZcEp3TUk2Z2pQYTk3WlVlZWtjZ3pBVFhKS2hwWkZOaXJ0MGYw?=
 =?utf-8?B?MkFBNUc1M0N0Vk1Nam9qdHd4bFc3eDRmRmkvQnZzR3E2L1FwTnJheHd4MlJM?=
 =?utf-8?B?c1FINTNZbmVBTkZiSVhvakFjeVdtOWc0bGpzdkxnN2RXWU1uWTc1eEpUUys0?=
 =?utf-8?B?dzdkZjNCMU1EV1VMLytGNkhQTm9XT2MrWER3Q2EvcHJJQzZBV0FvVWhONWpX?=
 =?utf-8?B?N0Q1UnppeEFNR1d1OUVvak1EV0RtRFNvL3Bvb3UyR092c1NqU0drdnBHN0Mx?=
 =?utf-8?B?UVc3L3RidXEza0tKUDRnSS9SRSs4UWdIWkZoSFhydWpGTEVocUZSMC95SHM2?=
 =?utf-8?B?WTZKUGpUTTgzaFVhVWxBa2FOM09DZU9RQTZBRnIvUjliLzB0cGt5NndmL1ZG?=
 =?utf-8?B?QVFWbHo4TnVoVmdMNEZwRjFXTUdrVFowS0VMa29hTCtReU1MT3AzM0JsSjgr?=
 =?utf-8?B?d055NFNVN2tuenVsNlBGV3JKeEZvRWR1YStuMEFLOWNPUDdxWDFtaE03WUVo?=
 =?utf-8?B?ZklvMjVDYklOekhRMlNRWU9HVXE3TlZTTXdPbnBnMWsyR0Z4QmhNKy90cHNz?=
 =?utf-8?B?ZC9VZTBWM09kTHFoRTRMbGxPd1M3RmY1eW9Xbzc1S1Y1NUl5amZWeVNZaXVt?=
 =?utf-8?B?cGFUb05NL3NSTjQ2aCtrOWxQVTM0ZWtRbVlEemlPYmdKUVh1RkliZ3N3WkYx?=
 =?utf-8?B?TDU5cTRiU2JGWkNxWWtVNWNRQ3czTGViMHovUUt3RTFDbUFnK3RzZytjY3RK?=
 =?utf-8?B?cldhOXZOMWhFZXd2SERzTWROM2svRloyZGFjYW8yWnlDbFZaR1kzNCs2Rzdk?=
 =?utf-8?B?UlV3VUtPaE9mc0ZQS2FGRVVYWkhQLzlNT25zYVhJbktPK2tEcXRJRDYrOER6?=
 =?utf-8?B?SC96TzMrQ3d3bzhrUnpZWXZyUzJmTlJpMjhZK28xUUZYTzNuTU11a2RhTUNt?=
 =?utf-8?B?S05uVkY3ZlpQRXBjcTVUNE96NGx5U0ZDUlRGdDRCcEFTMzQxaEtsS1lHYXUz?=
 =?utf-8?B?VmVXbUY2S0ZlTXpMWGM2OHZVYkdxWVdVV3NlVkNhbHpyNEdsVkYvNXUxMFBH?=
 =?utf-8?B?cUdIbWptU01rQXl5MDY2ZmRaYW9DZjhteERCUWM4cHNPWURYL3FLeFI3N3lK?=
 =?utf-8?B?QkoveVdjWmVOZW5wOUJGMFp4Z0M3ZEFxVStBbFcweU9OZ3JPUE9YOHdYOFUr?=
 =?utf-8?B?RTlnR1dVMUU4VFhsdEdKVjBOdTU4Q3duMmhrbEN3NUFhR0QzQU0yTFEwU0Fk?=
 =?utf-8?B?TVU0eEZQTTFGdkFBVEZ5cWtxbk1JVnk2YVNmOXJJWGFKMDVlU0J1RXNlLytS?=
 =?utf-8?B?NEpwUXRHcURkOGFOWHFvZGhGdHgyYWRKN2NWd2tIc25NdVVaM3c2YU0vdWdp?=
 =?utf-8?B?cXVla3RsWGN2eVNGS2dQa1dZUkRmejVsbloyTGYrakdud2hVYWZFNDlHTFNF?=
 =?utf-8?B?YUhGSUt6ZUFJb1ZHYzJmU3dSNXp1TWFtMmlqYkpLTEU1eURMVVZOR0lmWVJr?=
 =?utf-8?B?TlZQbkYwdDRQNW9jcDF1bm9pTTZacDA4OEdsY1lhZWpKdlZ1K3UrMkhnYk15?=
 =?utf-8?B?ZWQ0cUt6Tmd1Ym41SWVPd0w5dXQ0NmNDTzVaRURKTDlDQmJPbVZRZjRqN2Y4?=
 =?utf-8?B?SEQ2dnlOekZkYytOM2pON0NpOGpGWG03bU8xTFNhci9xTnpORXRiaHViZ1Rv?=
 =?utf-8?B?VitXZUVtbWV1K2ljTXE3b1MyZlByRlU2aWsrSEhoN2FxQ2N0Z3VNaWZuazJh?=
 =?utf-8?B?M3ZLUGdNNWR4ZDMvTWVTTDBSbmZqNXRqMkxxVWdqcElUNkRQeVppZi9zRmhS?=
 =?utf-8?B?YnJ4ejd0dEhSVGtWUGVic0Q0djhEc0dnY01kNHNON3hOSTBzU25VMVdMaDJw?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85ba2ae6-2bd6-4612-c259-08dc81556f8a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 09:38:32.5883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 80tcK9H1UJdka2kgrHwaE0SCBq2YNlbvRdskh30k4RGEoAYnGPQswf7SKtCezszakImr5SOdC0hKSJ/C1gaqrlZ2bojWu1rUgeWbdpl7APg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5969
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717148318; x=1748684318;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FD67DcfrJ+P9kR6q26D1TnvEPJliVRbyhejtCl1BvjI=;
 b=J545gX9QkB4aKD+LuI8yELF9hz0kXSCcNvy/YOYkz9XGVvlncbZJjIvt
 5rSFaNH+hy6tJHATvrZIH1AI1SOuVcYUMyk2MRd1txsWiqj73redXVzO6
 2fKxJ9IJ3VjvOIPR4KV35VUR3i0WVHV6gJX5agB0EHW2Zm03Gr421OMsN
 EMZuevyqwlVRkdfNinidL5EpLFAdFLzZw5LnDsVJ8DLhso/U1ii7NWoRC
 QGnK1Cd8DDxGmMoaGyXl1AI17QRN1o4ENGyJDAQsgRFn0qExNNmr0TYka
 7/x1GurnFJ9r89Ng+WdzLK6nlA4D/CkW4yRTQ1ar3u3MX9ZWdCnmXOP+q
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J545gX9Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net,
 v2] ice: avoid IRQ collision to fix init failure on ACPI S3 resume
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
Cc: pmenzel@molgen.mpg.de, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 Cyrus Lien <cyrus.lien@canonical.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30.05.2024 16:21, Ricky Wu wrote:
> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
> that irdma would break and report hardware initialization failed after
> suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
> 
> The problem is caused due to the collision between the irq numbers
> requested in irdma and the irq numbers requested in other drivers
> after suspend/resume.
> 
> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
> which stores mappings between MSI-X index and Linux interrupt number.
> It's supposed to be cleaned up when suspend and rebuilt in resume but
> it's not, causing irdma using the old irq numbers stored in the old
> ice_pf->msix_entries to request_irq() when resume. And eventually
> collide with other drivers.
> 
> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
> clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
> irdma if we've dynamically allocated them). On resume, we call
> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
> MSI-X vectors if we would like to dynamically allocate them).
> 
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Tested-by: Cyrus Lien <cyrus.lien@canonical.com>
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> Changes in v2:
> - Change title
> - Add Fixes and Tested-by tags
> - Fix typo
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..ec3cbadaa162 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
>  	 */
>  	disabled = ice_service_task_stop(pf);
>  
> -	ice_unplug_aux_dev(pf);
> +	ice_deinit_rdma(pf);
>  
>  	/* Already suspended?, then there is nothing to do */
>  	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
> @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
>  	if (ret)
>  		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>  
> +	ret = ice_init_rdma(pf);
> +	if (ret)
> +		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);
> +
>  	clear_bit(ICE_DOWN, pf->state);
>  	/* Now perform PF reset and rebuild */
>  	reset_type = ICE_RESET_PFR;

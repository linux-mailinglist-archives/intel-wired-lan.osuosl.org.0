Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D3FA55B29
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 00:53:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7168C6100B;
	Thu,  6 Mar 2025 23:53:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jNH2fbVJ4ZIQ; Thu,  6 Mar 2025 23:53:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39C9E61020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741305225;
	bh=tGJxfbYQZr2Rof2vhlLk/3J0Npo7o0eY6VycZ+S2zvc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zUUBdX7H5QzZelcd3aIjUH1l1egU91+ryuvoFFMRINXVIy1SJ7cCBhzwWnrMDCT53
	 xOuQClx5FL9A1zEkQOrtdCnxR8FAjjJXcNyfKTdWsLCwZthU5H6BDfaPkw574aYO0F
	 0LI6Dw/5H7HAD+lL7bYC/T1+JH5UJpcNKBwXpXNVpKY3EL4KWQcUHHsyy5CtBaMc95
	 QMcTZPDEte5HQqb4gXKx4tIfjHTzu55iytVZpbnTgT5wvvoYG7YNXjze82a6xi+bln
	 8IlPwkoT3j7UGOIKKNFCPtbtnIg+V9V747TO0ZSwi/yFRR4cpTFtlfhEmoTF7JL3Cl
	 uhBRmDPaSUaNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39C9E61020;
	Thu,  6 Mar 2025 23:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A8656F21
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 23:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8987E400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 23:53:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4i0kp2La0e-0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 23:53:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12916400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12916400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12916400CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 23:53:41 +0000 (UTC)
X-CSE-ConnectionGUID: L5F/79PaTrWYwd4pLDh3cw==
X-CSE-MsgGUID: ucr3yH+MQ5K7aOyI4RY2tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="67719282"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="67719282"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 15:53:32 -0800
X-CSE-ConnectionGUID: Cb+Ss0pnQn++9z3tDM7iBw==
X-CSE-MsgGUID: R7JmflqvSQSDgEbuEdjF/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="124252675"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 15:53:32 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 15:53:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Mar 2025 15:53:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 15:53:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mOCHsPFfWXY5TGu0ZZHMeO66kHb2tDyI1n4NPVVg03KWp8bvRE34HFrBvbNROM3K66h/Ey13fVcv9Zmv6OHjg1CeXCeaNll8kPrMW6O4Q5TjWWDPlxzdQZdM/NHJPcebGj623pJVge5S0P8KoPqRWfhXKtyZL4wuuuhws2A97R4KbQ1YBomamEfm9gJRSjDk8re2v1ulmukGQysfdaCPI4H5Un7jQ90+Sw3YR4H/zsHMKjLFrS/3IKTnKr8AkUNmrQFzwVNKFYKnwwdevj4sNiaO8NkIYt6+gka1oLFL+Wl/z2sZRrJ85FcL/dFCCAXj24pqXOf7bkhEdFZBBTgVdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGJxfbYQZr2Rof2vhlLk/3J0Npo7o0eY6VycZ+S2zvc=;
 b=zRH1VHlgXbpAl0hLUPRtVFtZ4z767qPV+5/4VrJJNrkQaRXjB9GwOd9xBlTEYixT9ahijGelohH5V+ew40ay3lQdE0ohSyoK9H/ClGLyjZLTxfkF4DiTtCJbJPcd6IGsfjg0AIDBuWyohEolBAI3/Cx5p6xuKeBCbzMn3m9NcW1veWSj89++5/vZB+oLHnc6ixuGt2Y7RMHOuUouDSR8A++IT2M/9iUHZVyR98l9Mexfroa/SeMqhN5houlFCpj9q7qeo2HBsgdBIM/eSIjdGyd7FiL9zAUsuEAUVPa5lHGTTdBYskbFHVUX0vK+DeEnN2Q4uFe0fEucVAQe+Lzsqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5145.namprd11.prod.outlook.com (2603:10b6:806:113::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.16; Thu, 6 Mar
 2025 23:53:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8511.019; Thu, 6 Mar 2025
 23:53:07 +0000
Message-ID: <28792ae2-bee7-48c9-af5d-2e1ba199558a@intel.com>
Date: Thu, 6 Mar 2025 15:53:05 -0800
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0012.namprd21.prod.outlook.com
 (2603:10b6:302:1::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB5145:EE_
X-MS-Office365-Filtering-Correlation-Id: e6c85198-7ce8-4d46-716c-08dd5d0a0ae7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjdxcVV2elJ4UkRrZ2k3cGlZejBCOVNxQUtONDFzVmRBaWtscEtoczlNc1dJ?=
 =?utf-8?B?OEFOV1hZNVhRWnh1ajFSdDJQWVVUeXF1R3o4SFVrRGVaaVZ2dDA4NWxwcEYr?=
 =?utf-8?B?a0U1Rzh3dFJFWXRjM20zN1g1WVJwcXpqWmxyTWFPbUE4OWUzbXN3QUdYb0s3?=
 =?utf-8?B?eW5mbm5tZGNRWm9rZWVkNTRtRVNqRFZqNTRaMWpJUGk3TVZaUVo0RjdNalpi?=
 =?utf-8?B?c0JBUGdFRjFQOE56Yzl6RmVBRjZranNhbDNMSG8wZ21TbmloVHV5ZG1uQi8z?=
 =?utf-8?B?eU9xZ3BKMEwzZm8xRGNDdUdEZlUvWjhZWThBalBmZVpTMWx4UmdXbDZTY0xX?=
 =?utf-8?B?UTByNlgxM3IrMVhOVmNMb0t2S0MyWDF0K2o3UEMvY09TanRuUGNaZE9kd29h?=
 =?utf-8?B?RENlSk1kM3dBaHEyZ1d6TmtzZnMyNllDM0lkY3dmWWhLN3QwVXh5Z00wZnpO?=
 =?utf-8?B?K2tWWkVEcHdmSlBQYUJPOGhvdnQ1aHdsSFZHY3c2ckpuZ09CbU4yNWQ5UGxB?=
 =?utf-8?B?ck1JdFR2QTlOSWRZcS9TbXVCRytjUjZjSzl4SERLZkduVXY4ZXRablBZMXNH?=
 =?utf-8?B?WTViL0wvRkFDQWVNY1V1YWpnaDIyRmp5dCtibytIbkxlRlM1WXI4dTFuL2VO?=
 =?utf-8?B?UUtWOFZocXc2MWg3TjRRcXN3cE5nSzZHdWtLV3ArT1RmTTJKU2pvZXA5aWVZ?=
 =?utf-8?B?L2QyQVExRm1Ub3VxckpSSUwzTzlLdnZ1L3lHNzFsdTBnUkM4NzlTdU9yNEZL?=
 =?utf-8?B?eWIzemJ4cjByRlVqTVlkN0EyZ0xnNW5JangxVjV3S0RtWnJiNVV3Nll5Yis0?=
 =?utf-8?B?THVSVXpIbWFvNkIzTUJkdzI0UWlJT1BVWHZlcHBsRDRLR3FteGtQRmdaRGFr?=
 =?utf-8?B?NXZPL2Z5T0JWZXcxaHUxdmg3MkFGWm8wd2o5a0tNV2ZFb05NdDdDT1V0VWxu?=
 =?utf-8?B?T2c1cDhlMVNFdFpINEMvL25nNitJdVIxRWhOOVBhZkhTQkVsMUFHVVh1am5R?=
 =?utf-8?B?WFRTc0tNcDJQei9LOXA1L3N5SlZ4STBGaFAvUWExek9iT0phaXFLY0E2UU5S?=
 =?utf-8?B?OUhvVlNWZHVzbytScG9OaUdpbkZvOFF2SlpXTEZoaGVhSUhrN1U3YlJFVTIy?=
 =?utf-8?B?TzJRLzZDV1FBKzc3TzJoKzJkYjdPa045aVBVVUFXMkE4OC8ra0NmRmlrbzBu?=
 =?utf-8?B?dWUwNWtpR1hOeWpHL1VPdlFuK1BvSThNa0hVZjRsNG9ZcFNraWtCQTZiSTRE?=
 =?utf-8?B?ZGxPTWJQelNqZ3phSEFheWFFbm44ZDRUL2x6TEptaDI0TXJKTElrd2RXaXJZ?=
 =?utf-8?B?WjE4YnBCVHZKcDZVdzBNS1Zkd3FQMTIzSTZydE5NYzdMOVZ3WDFhUXRTbkgw?=
 =?utf-8?B?Yno3TkdjMjk3WDBiYnA5ZjFidFA3M1k5OWhSTktqSU9OQ0dqdDNQZ2FGZGhm?=
 =?utf-8?B?WVB2eVFWMncyVG9FKzd3WVJyVVBlbFNjaWZQcnllSFRHb3plWVJQT1dUTi9F?=
 =?utf-8?B?bkMvMHN0NkdINFA1bzJLTXQ2RStkQ2lFTmlWSmlyenRtOU5RR2ZNOXE5aWVR?=
 =?utf-8?B?RS9lTUJmUTQ4UzlTNVdNYzNyTlY1cGZ4ajJMYVNHMHZobURKb2NHMnFHT05K?=
 =?utf-8?B?bmJoKzYyMVhpamREREcvYlA3dUc3QkR2VmppTkREclc5NllNRHVENzNyVEVp?=
 =?utf-8?B?WU0zKzMvRU5BZ05XK3dpVjZjT1NMUkE0OUNwMWp1dEd0dzFXd2RDOWY5dkVG?=
 =?utf-8?B?UzM1SWNLa05qUGgxU1BqVURoMklXUXhpcDQ4eDdkRnRlTWMyREJDSXY1TnBL?=
 =?utf-8?B?QTNTRENZU2Q3bThHa2gzZWhhZVA3ZHpsRW92QmNhVDFvR3lyWktydnNLTVAz?=
 =?utf-8?Q?WXOagOrGpJ8u+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUFWM2xneGJJVkZHTkk2dzczZWw4RUFHWm85RUxnekdScExFNGR6VE1VWWNu?=
 =?utf-8?B?bjhBZGN4b0RNNEdtdDlVdDE2dldsV1FGUStSd21aSlVPRzhtNTZKOWlPbTJR?=
 =?utf-8?B?V0RaWUV4bTBKOG5VQXFzL1ZXYTBRWnBLWEtvYVpmZnNQUEpwZVAxUHAyS2hy?=
 =?utf-8?B?UlNsN2F0b01sbFgxeDF0MHBPd2xKTzB1N3lNWldiMnV4bVJ5S3UyMVpWalAr?=
 =?utf-8?B?TnFHYTIrcGJQdXZhclBCVVQyZTE3RUYwVGxXM05IN2FJTGRJai9vV3YwN3ho?=
 =?utf-8?B?U0Y2bHRabmd3bDNvdlF4KzlMVVhoTm5FU05JNUpMMlU3OEJqTkVnVnhGRkwz?=
 =?utf-8?B?R3B2MFdSWlJFU0wwbG45RCt1Y0Q3eVdDK3d6S1A1N0pmdHN1K3c3M3N2R3FK?=
 =?utf-8?B?bHNpUm0yNitKbU9Yam9VUG1iaWtCckYrRU40bmxzenNuL1ErYkJpVURMWi90?=
 =?utf-8?B?UHlMbjYySVd3VW5mZHB6aTNlMjVyd0dFaU8wbnBWRGxzd2R3YVJEcjVWZUE1?=
 =?utf-8?B?UnVqTC9rMEs1NC9sZmZCKzUyazkvRzFpYzNIWG1PaCs5NzI4MkI5L0M1RWlu?=
 =?utf-8?B?Y1dubDNRRjZDdEpJaldyVE1vSGxhOVpMUjNEWHFnSWNnKzM0dDNSUGFtMUtV?=
 =?utf-8?B?UUFGWVZWNnR0dkZNUGV6Tk5FWVFmazQ4NS9xZ1RPTHBwbUNjK1cyNVhkbVc3?=
 =?utf-8?B?cElOcjQxM1hyK1BGVUZxSk1wYWxUYk1xczhQOGkwbE42UFdrSzdlSHVuTTZS?=
 =?utf-8?B?di91YlhuV2JCd01tVWRFUS90c2VSQ0tGUjNzQkVLQWxFNWlDakY0cjZHcUQy?=
 =?utf-8?B?QjE0b2YwSWcrQUd2RG9QNG00ME1UaEc1WlBPNFp2aisyVzFsZjZmQWVrOUYr?=
 =?utf-8?B?SjFYbTFqR1FpdUJYK1UyK1NYbmpxdlBva0xGbXJ6UEp3cEVNWWtFTUxBbFdh?=
 =?utf-8?B?Tk5venh4YW1yNlBUWlBTUGkxcDNRK0REazlsMDE5Mnp1NjdIRnhoOHN5Nm9K?=
 =?utf-8?B?RHg0ZDdXWHFSUkdRV0tKRnUwV3FqZlpSeXh6SDZGSnlxd29zeXUybkt0QzIv?=
 =?utf-8?B?Y1lGalJhbVRVYVRUM1ZvcVppWWh3czBsZTN0dFJWSE5qQStCMEJlM1IxbnJD?=
 =?utf-8?B?YXkwZThyOGRHMVozbUQ1YUV3N2taeUV3YjZCTDZqTnhOblNta1B5THZmNUdG?=
 =?utf-8?B?S1JVZ2ZiV1B6dFVJbHpUWGdtTC80SHZhSnY1V2VTaTd0TkhOd25aSG5xT0dz?=
 =?utf-8?B?aDVpTngvc3dlQVVTbXJ2bXhDbWZBckFnUGF1a3E3VW5RRlVUTmQrZlNKQXRJ?=
 =?utf-8?B?Z1JpUzczeDNNTWU1MkZGa1MxemJ6dWpxaWRUVG5ybVRLaVNCSE5KSk1qWWdj?=
 =?utf-8?B?eExvUVZqS0pab2ZQNnFkdlYwOVZLZ0VPRHJpZkRtbUlFUXA5eS9QVm10UTBv?=
 =?utf-8?B?R2l6dG9mc0pCTGZOWTdyMVZWMUUzVGdiOWZNOTB1QktQOWIxMzNRMThtdEdN?=
 =?utf-8?B?WXZxWWtZMUdqSTRyTmI3emg2Wk9DTExoOXBNcW1JNDdKTlFXeHJPejlSWDA4?=
 =?utf-8?B?VHdGVGkwZW0yb2kwSktOaG9QNjdMb1RjVU0rMCtWRWZpNnpSOGc4b3JnQVNo?=
 =?utf-8?B?QWFUMGVmdnhvTlBTSk5jTGtSVWNhYitUQ0tXY005TUlrVFJVOWkrWUVielFU?=
 =?utf-8?B?ZTZINXNnbmNpaCtIRXRMZFNkTEprM1U2ZGY3TWtFeks0SlY4bi92a3hVRDVN?=
 =?utf-8?B?c25qNGFpN2hzdWJTZ1NNRjF5YURaNGZneHdvRTVjbVNYbU9SbkQ4SWU0U0Jx?=
 =?utf-8?B?Yjlic05saUNwdlRCVngxMFNHNVZ2NERKYkVQRXlXZTJ5enJ4ak9qcUdPWGFu?=
 =?utf-8?B?TUp5aGh3b0E1Umd1ZVhPbmFOL2tSak5NWktobXlHV2lrODhyV21NajJaRWF1?=
 =?utf-8?B?NVV5Y1laYW9Dd1FyR2doWVlYc2tzcC81d3pGanNyOWtPR0NVMUQ0QTNnSmZG?=
 =?utf-8?B?bW5UdERuU01jb2xUMUFrd1kwYWNTaE5mWEtaOS9jU3RGSTdubE5zYklwcktp?=
 =?utf-8?B?VndHNHE0ZjJWU2s0bU12ZjlIY00xUWVRcFVPSU1vTGM1eURPVDNFSGVnbHVp?=
 =?utf-8?B?SEVNNXpDR2E5YkY5NkdxMXdUUzhiaDUraXJzN0owTThOVi9qNkZ6YXUrUzJw?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6c85198-7ce8-4d46-716c-08dd5d0a0ae7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 23:53:07.3740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KZ/kCiNotU8BLUgo5vBubnBagY6i+/KfoRNeaEohGLzEaTRfrHrI/W7Lsasi013cO4y7Ox75RznI6V8wUopFjwZSJdUGrncx+CrFAGflQ7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5145
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741305222; x=1772841222;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=veVb025KiNgow/W9CHPXjlifyW1Het6FPY1qIes+QQ8=;
 b=l6YFVFo/eGr2VBsKYe66QJUn6EfZmyGJlMMyj32IjAEhOODu1X1B1l7g
 AFZTsH4Ga7s/yIIz2ks43iEPnXSau0w+E0O7ZBdPlpTee+O4gLhIRkjxw
 IzMuAhqbQF9nbwNIw3w+Eqgsqbomn3lnJ6tPHmg/tpHlvGxeUb5NnnHTu
 jgUcR0xHz6dvCvdIzC9OU8QO+z6Epa5TOxuThoXys6VoHyNkl+12gw4Au
 94JEb4Z9+5YJqNYuhGeXY9lfNxLv9priCMid1HTi/nn6uDOoSGGC36ydN
 8UWxQ4R0/hgXhN1eCFESR/NA+gpwdzZZvB6Sl0Wd85wUgnH+DWTaWUcIY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l6YFVFo/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>, Sergey
 Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/6/2025 1:11 PM, Przemek Kitszel wrote:
> Use Device Serial Number instead of PCI bus/device/function for
> index of struct ice_adapter.
> Functions on the same physical device should point to the very same
> ice_adapter instance.
> 
> This is not only simplification, but also fixes things up when PF
> is passed to VM (and thus has a random BDF).
> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---

The only caution I have here is that we might run into issues with
pre-production or poorly flashed boards which don't have DSN properly
flashed. This shouldn't be an impact outside of early testing or
mistakes by devs. I think there is a default ID which is almost all 0s
we could check and log a warning to help prevent confusion in such a case?

A couple systems I've seen have serial numbers like:

  serial_number 00-00-00-00-00-00-00-00
  serial_number 00-00-00-00-00-00-00-00

or

  serial_number 00-01-00-ff-ff-00-00-00
  serial_number 00-01-00-ff-ff-00-00-00


In practice I'm not sure how big a deal breaker this is. Properly
initialized boards should have unique IDs, and if you update via
devlink, or any of our standard update tools, it will maintain the ID
across flash. However, during early development, boards were often
flashed manually which could lead to such non-unique IDs.

> CC: Karol Kolacinski <karol.kolacinski@intel.com>
> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 29 +++-----------------
>  2 files changed, 6 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
> index e233225848b3..1935163bd32f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> @@ -42,7 +42,7 @@ struct ice_adapter {
>  	struct ice_port_list ports;
>  };
>  
> -struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
> -void ice_adapter_put(const struct pci_dev *pdev);
> +struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
> +void ice_adapter_put(struct pci_dev *pdev);
>  
>  #endif /* _ICE_ADAPTER_H */
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
> index 01a08cfd0090..b668339ed0ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -1,7 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  // SPDX-FileCopyrightText: Copyright Red Hat
>  
> -#include <linux/bitfield.h>
>  #include <linux/cleanup.h>
>  #include <linux/mutex.h>
>  #include <linux/pci.h>
> @@ -14,29 +13,9 @@
>  static DEFINE_XARRAY(ice_adapters);
>  static DEFINE_MUTEX(ice_adapters_mutex);
>  
> -/* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
> -#define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
> -#define INDEX_FIELD_DEV    GENMASK(31, 16)
> -#define INDEX_FIELD_BUS    GENMASK(12, 5)
> -#define INDEX_FIELD_SLOT   GENMASK(4, 0)
> -
> -static unsigned long ice_adapter_index(const struct pci_dev *pdev)
> +static unsigned long ice_adapter_index(struct pci_dev *pdev)
>  {
> -	unsigned int domain = pci_domain_nr(pdev->bus);
> -
> -	WARN_ON(domain > FIELD_MAX(INDEX_FIELD_DOMAIN));
> -
> -	switch (pdev->device) {
> -	case ICE_DEV_ID_E825C_BACKPLANE:
> -	case ICE_DEV_ID_E825C_QSFP:
> -	case ICE_DEV_ID_E825C_SFP:
> -	case ICE_DEV_ID_E825C_SGMII:
> -		return FIELD_PREP(INDEX_FIELD_DEV, pdev->device);
> -	default:
> -		return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
> -		       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
> -		       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
> -	}
> +	return (unsigned long)pci_get_dsn(pdev);

Much simpler :D

>  }
>  
>  static struct ice_adapter *ice_adapter_new(void)
> @@ -77,7 +56,7 @@ static void ice_adapter_free(struct ice_adapter *adapter)
>   * Return:  Pointer to ice_adapter on success.
>   *          ERR_PTR() on error. -ENOMEM is the only possible error.
>   */
> -struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
> +struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
>  {
>  	unsigned long index = ice_adapter_index(pdev);
>  	struct ice_adapter *adapter;
> @@ -110,7 +89,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>   *
>   * Context: Process, may sleep.
>   */
> -void ice_adapter_put(const struct pci_dev *pdev)
> +void ice_adapter_put(struct pci_dev *pdev)
>  {

A bit of a shame that this needs to be non const now.. Could
pci_get_dsn() be made const? Or does it do something which might modify
the device somehow?

>  	unsigned long index = ice_adapter_index(pdev);
>  	struct ice_adapter *adapter;


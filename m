Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEKkE0RcBGqiHQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 13:11:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 350AC531EFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 13:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 630F183E8B;
	Wed, 13 May 2026 11:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1M4kaQrAD4H0; Wed, 13 May 2026 11:10:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB79E83E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778670656;
	bh=mwKt+0R5v+NplFFPNS4HLGvK2cmE2Hu2d674cUiQ9+4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HRyRFI5gIxYYi72yBZohRsZFonXjub9IeUYy3YISZxwqgAAELanxtDUNccNqnx0FG
	 BnUt+wocc2IHWHRxWtKjbfU5MIkx503TrvBDskcb1dq0ZCbmNX7er7VKuIase/iCGE
	 vl7OuF1q6bivmkn/WR13qyeUurswxi+0KgC1Ufh7Y2nPCntAHhUdvPWP7FbKvPYe9S
	 ECRzrybPjD14FqK/coRF5C5yoS+CwtwGp7PR0QxnbGWWY8AlJWxyw5C3wxlxQ1kAy9
	 maQrtykW4fBvYieY5MaehP4/CnCT/kSZI1BaRUKEnz72XRCtEdViqNFYGbLrWdgwEU
	 1ZarC6n8t4L4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB79E83E92;
	Wed, 13 May 2026 11:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D3A315F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 11:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AE54409B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 11:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SHipv0w4d6gR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 11:10:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D10EA40671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D10EA40671
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D10EA40671
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 11:10:54 +0000 (UTC)
X-CSE-ConnectionGUID: WtChtvQDS+2aXQ3DzfC48Q==
X-CSE-MsgGUID: 3cJddblZS5SEBBmoKUHJaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="79490142"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="79490142"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 04:10:54 -0700
X-CSE-ConnectionGUID: pqHv6xxZT5+KPazc7n8HgQ==
X-CSE-MsgGUID: e1Few6CJSACwugmDmlEK1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="237072285"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 04:10:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 04:10:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 04:10:44 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 04:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UfN0FYQVPsGuqX4K7CVH+owMiknhqsIywqMpGgzwzJabS+qwUQRZ3auzBXm6cHg/k5mGXr4ByNCcVqNMrbt0oD2K2eFDkqpEXOtkjBKWMk2bJOcf+3lf66NmPon0rCP5Ut05/ay5/g0uq6JlSpPbtdaEu2FZqQhbSEcfQA2SXvMEXMqgoQvt6MKTfOXyN3srJmgr/5itbuE6B5megtdFIAhMmfPgMniE4FB/Uh28WlJWxNOD/5FjD3dRlwG+a+k8FV9Z259SNDARl6pNMwg7StSlsy/b1wAHJJcjmhOFtcPDqN2wiwHlQ36zdI12YAmM2Ov95s8wCRIYXrkH/ykoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mwKt+0R5v+NplFFPNS4HLGvK2cmE2Hu2d674cUiQ9+4=;
 b=Tpebq3bS4Dv0xlTNFoxmFeIpGAUYxxmqDPhNrgnlNIoZFzd8nMY1KVB6Ec2J7o+UGT3yQW/Qjvd8ZVA3tsEIxSriOAnQyzBENlemj12V6w3vuRnQMCYX4IUmvg4M+fKNGJS8A5IDDVpJiFtGAnstf3gjIoccT1/btvu7ipaeVTj2Zjcv/jnKXbA6K4KswDVlLRi0a7mRBTb6XZQfkFcf98+wp6Nm5vypFcrvygF15Xi9juRC5vJz7P0HOyUbxFbVe8Bh7PfmentCYLGJQDaov97r4ApYzyD0gNINvueQRiI+JlYW9ZG2050eJWciGqlLuyAsmZLAAbLDNIBRxF8XMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by PH0PR11MB9775.namprd11.prod.outlook.com (2603:10b6:510:397::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Wed, 13 May
 2026 11:10:37 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%4]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 11:10:37 +0000
Message-ID: <e7ab3958-c894-4089-aeaa-d4eead234bc4@intel.com>
Date: Wed, 13 May 2026 13:10:30 +0200
User-Agent: Mozilla Thunderbird
To: Junrui Luo <moonafterrain@outlook.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Yuhao Jiang <danisjiang@gmail.com>,
 <stable@vger.kernel.org>
References: <SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0239.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::28) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|PH0PR11MB9775:EE_
X-MS-Office365-Filtering-Correlation-Id: 950c2b80-2ab4-4a26-b4ca-08deb0e04274
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003|11063799003;
X-Microsoft-Antispam-Message-Info: GPzADn96BCE14gIj7mm1ZFuFX8FCNb7i9Q2SUHvGlNWDT3dyrTT5ZtY5M/EzkLwAPPt8zZsKxPDA2Rnhr2OdE4DT4MtMK8k/8zcuDjq/nLpdqDS4CeQ0T1GuL1faypKhM2HGu0QP5JW/rS+XPsdW3/kAm/CFJT9wTMLzeRrv3RiM+FwXsTyAUZSZ8ozLvmiOXgNByIRUvDIbvevT7bdIuIWOG1G8jBoiX5lX8N3pZ7XoMDdotCCJddxiM7B8Zz2jdvuPwKCZP2Io4dJEhqDXKy6FtWO9aovNkr5IhhtjSI1XvJPQf+JC8aZlzDSkKNRNwMPnxcEsy3lcKWy7gLH2NByXmWSzepR3zft3U+Upho0SzVUrZpq7YHNf8+C7kQR25pU8HjF8Ts76fkb9uJHl+8AkfWefqDkeDeU9EUGO3Q24CeDZ/Q3ChmRkEs0dO1lhBk2w4pB1cC+wVePHaeD5EV9MdXdo7TlBnRq78J6jTAOcmSdvpNTnRKFBJjSeJTs/veu3tlLlGOB5vYtvmhN1Pb4McnIdsaSuHpxMLZI07jdzCqs5GNZWtHq6aVHhSNM7O3lH7r3m2VHkLdxy438V4xfJY6a3drmmzbpvXuJXJyS6jJ1CBagVjYrzaEeSXpyex5SlWgjEOA7QG2Cq5Hpfk2pE1l8nlwRhwy5FlvPBmzqrw1pxGZjbGJEXHdhLLqsr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUtnWUlGTzFmVDBsWEJvVjZNMlloSFQzaFpRQWN2aVllQ3N2cHluN0NMay9u?=
 =?utf-8?B?Y1NoRWtSdWFTeXRLQXhYQ1JQZWl2bnZ3VFBESWdtYTd6cmpzZWI5L1dHL016?=
 =?utf-8?B?Um9WMy9kcU9nTUpSY281Y0ZiSll5V2FuaVFXem1yd3pFVk8xNm50L250MXlq?=
 =?utf-8?B?bmlpR0hBUzE5ZnhUaFNPemJ4aXVSa291UWo3dnRpVjRKYldXZFdnbU04Z2Fv?=
 =?utf-8?B?ZnJwQnl4MEhXTzRMWHpjSWI0VEk4NjFFY05GckErZjB0QzdVc3ZFeU1USE94?=
 =?utf-8?B?cHBucklDRTdkMDJ3QkNNM0tKQ1lob3dkSVNmekFIVHZBT3RDVnRxN29Id1Rx?=
 =?utf-8?B?cjRLc0RPWnNzdUtVTFBlRkowcTI3UWJ3QjRVdzFBWjVpTUMzZm1jWTJ3ckJm?=
 =?utf-8?B?MFZKTDgwOHo4Q0tLeVdBZ0ZUNkNSeW9hUkJqNVZ5T3I4a0dGSzdmV2phUXRi?=
 =?utf-8?B?alpjc3B5MThrRHM5NXk4WWxReTdUMVdsdFFtYUNsZExKRDhUNDJnQWZaY1lh?=
 =?utf-8?B?RXNYTm41ekdpMWFTckZySXVDVkV6d2RrU3UybVNKejBBNUFHa2tnTE5TNG01?=
 =?utf-8?B?bFo5UExlN0NVb2h3b1NEL2VOdnRXeHhEMCs5MGJxVTRkRDlZRHZ5elExTkhj?=
 =?utf-8?B?SUhCYmRZSDlacHF0eVVtTC9YRnR1a3lMdHhXTlc2dW43V3E3TXBjOEw1eGJF?=
 =?utf-8?B?T3FZQ1ZGcXhUQy85a1E1VVdBNXZ2QjZJODBBVWYvZFAyR0xVZXdzSTFCdEwx?=
 =?utf-8?B?RFRHVGxYcW10U2wxNnNsRk1LWnJRbTREQWJhVGxKdE9SWmpYRnBMOW5XSFFr?=
 =?utf-8?B?dFNEUmV3Nm1haUVpYzE0Slc4QjZpSkdlTDM4T2ExZGs4bE9WV1dSR1RBV2d0?=
 =?utf-8?B?bi8wNldhbGs1N1RxVzFITFhwRW51RURDcFVxVHhHYThBcG5BYk5mVXdIQ3M3?=
 =?utf-8?B?MS9hTXV4M0VXMS81ZWVTSkdFUlI4bm82TGI5T2FId1BWOTJMQ2RlSEc2enln?=
 =?utf-8?B?MkNPb3lxTS9aTCsra2hvekl6UzBEa0pNeS9id295emRtMTRRNXpzQUxkZ09q?=
 =?utf-8?B?TFZzd2ZuUWphTmlMQjV3OFVzaUk1VXJKcDhsdkhTTytZS3BGbm4yVmFJS0Er?=
 =?utf-8?B?RVhYRHo4U3lSd05nYUtnejVnWmtrczhOQUo4Yk0ya29Vam5hRURDUHpIT3dX?=
 =?utf-8?B?bXdSZTlJNTJMRmtyT25ZdDJ3NlozbmE3N3dab0pQSE8xU3Y2UXdpTmVkWlRU?=
 =?utf-8?B?KzhzaUtKL0E3cDZicGpQaDhLNUFhc3NvSVo1RHJwZEZwS24ySE41bjhaYUVV?=
 =?utf-8?B?ZG5jS3A3N09RVjN6eXVIS2gxdXd0ZWd3Y2VDdVI0WGtnMDF0MWZ3VHNLNllW?=
 =?utf-8?B?N0lHVXYvVmNnYTlEdFk3Y0lJYXVFWHdJTnhmaE1mTjlxVC9OVmUrbS9rWkt2?=
 =?utf-8?B?ODYvd3hmODZzV1FOMlFxSFMyL1ZxTDdMZ2FweWw4WVlQL2wyK3lBREVYc1Qy?=
 =?utf-8?B?YktCcnorVkVKdFZQZHZyTlZDbWN3VUs1OG1VRjh2a0djS2NxcW9Zb3NsY3lJ?=
 =?utf-8?B?UUZpRkdiS1BiY2R4LzNvdW5TTWFTVk43MlRpUkd4WmNiOWdZaTgvVElJT3k1?=
 =?utf-8?B?dGxvRHBoT1pET0JjVWFwVmJKcXdhbWVraUxNTFhJQlp5MlZTRE5LRFlGMDJF?=
 =?utf-8?B?MU0wT3RsMDREUjMrNDRpbVlhWllUQ2hVNVBrN01KOUprQ256aTd5NmVlcUhv?=
 =?utf-8?B?UG1HbXpYZzRmT3o3L1dKZ3pNeEcvbnFPVDNLR3A5Q1U1T1BjTWovMmpKQlhD?=
 =?utf-8?B?RXlmaUJZb09ZLzE0RHVsYi81SVE3b0g3bDhYVmJ5SDlyajRRVnM1TUpDTWNU?=
 =?utf-8?B?QjdZU2NjUHI2N2QyQXpRK1NOUU1MNnFzdWxrMEEwZk02V3VZQzJoMm1takNw?=
 =?utf-8?B?S2pNeHFrbGpGSm1GRFlBcDNYTjhqSzdNSTlRVUY2OXg4SXF5RmYwOUtnTGVF?=
 =?utf-8?B?Q1d4Y2JvS2p1bnNZaGpVT1Yxdk1pKzNiakJpeTMvYytNakdlczdhM2JtTXBq?=
 =?utf-8?B?WjRQY0FhOUZCTk5pZWJaQTllTVYrVmxrQzdKaWh3U3JtVStXTlJvWmFKeXRN?=
 =?utf-8?B?STVDZXdoMDVKOG9KOWE2dWp4dnE0dVVYcEJFbG5Ud2FMN3lWa0NnS2ZJb3Zv?=
 =?utf-8?B?ZTlPcGliVHIxWnBiNVlHN0c2bWdDdEdCNGxYQ3NiRVRZSW1OdGhzL0VHZGxC?=
 =?utf-8?B?NXR2MmRNSFc3bHpBaUNIZmxqMmRiaDB4b25qd3RlSVlEYXVzdTRvMzJFWFVI?=
 =?utf-8?B?bHh5c1d0OXJOSFB2dm1zNUkrelY5ZzBBcG9VNkxLbFR6MzFOc1piV1ozY3Fx?=
 =?utf-8?Q?e+64VONkE5g+w/kA=3D?=
X-Exchange-RoutingPolicyChecked: ecUnagzHF3OBFRtfrlqsQw0R+Zd/Oct/nVLMo9XG9/KrhD2hfyWQWOKoJOkTSAZyDvAQwVKFDrcgbwFkVlltJQTftqqmN7nVvhSjQskjsyp3mYSwMvrNiaB3BMWNRyufgMjYrd09Q6U6pu+Jkz18Ol+FDVWUKnuPV/6kylh+1vdMuQQfG02en2z84nAZl9s7474Tgv1cjEYN9TeXjfvANU+HE/f3iKwbfTL9l5Wt665IcEwMHzZE3o5xieSx47B2EvKY2kIa9USBr/i6KRYLyWpXER+KCbXbUayT54Tr2V7uSCvURN171EW0MFtRuqrYrU655fimnjIcD3rGoNN4xQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 950c2b80-2ab4-4a26-b4ca-08deb0e04274
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2026 11:10:36.9469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9akN+9YkSq1Fy/cDNjL88/Rp4pNwfuWi7f92aM1ANwcGaptx2E5LW7jlu8/U9B+1AMrno8VFVY2sZXbCZHzkQomwPK4wGhHEGfD1111RdIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778670655; x=1810206655;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6MqlIsh4Uf52XTlehxbX6+QOPwB5qV6HIpgjTIyqVRY=;
 b=Z3S01iNWZ4Hu33UQ2vAzHO2MBDBVgNfZe0xV/q0LozyLKFIWFVfkk6h4
 26+K/i6QkEGbW2qNe88Joqi7wa+faRmjXx85lSlSEEJUynx48Q9XkTeAL
 GufbokSbPUQdf+T0UAwf5OSaXFyd4TO7aVHjuLGACvXs0mzMb0/+Eb5LC
 5ZE7DKP6dJOV4nr0KSfX7sH5TpADPHqXMW7vF+07sUYY6OzfvnpJ3Jc7W
 U1FQ3xsWKkdg7+yiYqYoshhR1ZMM58/E/87bz+dYIE9C80OokaRHFpA+K
 Hfym9eKcN6PP7ADHR0VPIsSOMFkliqTFLJL7nWArmIYADmB7f5p/wl6OL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z3S01iNW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
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
X-Rspamd-Queue-Id: 350AC531EFD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:moonafterrain@outlook.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:danisjiang@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[outlook.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/13/26 10:51, Junrui Luo wrote:
> The VF allocates a fixed-size buffer for IAVF_MAX_VF_VSI (3) VSI

this is the MAX that iavf sends to PF (and only usage of the variable)

> entries when processing a VIRTCHNL_OP_GET_VF_RESOURCES response from
> the PF. However, num_vsis from the PF response is used unchecked as
> the loop bound when iterating over vsi_res[] in multiple functions.
> 
> A PF sending num_vsis greater than IAVF_MAX_VF_VSI leads to
> out-of-bounds accesses on the vsi_res[] array.

this array is part of the same message from PF as the counter

Thank you for reaching out,
as is, this is not a fix
if you want to add some hardening for iavf receiving side,
you could add some checks that passed msg lengths cover whole
messages (when accounted for FAM)

> 
> Clamp num_vsis to IAVF_MAX_VF_VSI in iavf_validate_num_queues(),
> following the same pattern already used for num_queue_pairs.
> 
> Fixes: 5eae00c57f5e ("i40evf: main driver core")
> Reported-by: Yuhao Jiang <danisjiang@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Junrui Luo <moonafterrain@outlook.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index a52c100dcbc5..2ebfb65a6f3b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -254,6 +254,12 @@ int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
>    **/
>   static void iavf_validate_num_queues(struct iavf_adapter *adapter)
>   {
> +	if (adapter->vf_res->num_vsis > IAVF_MAX_VF_VSI) {
> +		dev_info(&adapter->pdev->dev, "Received %d VSIs, but can only have a max of %d\n",
> +			 adapter->vf_res->num_vsis, IAVF_MAX_VF_VSI);
> +		adapter->vf_res->num_vsis = IAVF_MAX_VF_VSI;
> +	}
> +
>   	if (adapter->vf_res->num_queue_pairs > IAVF_MAX_REQ_QUEUES) {
>   		struct virtchnl_vsi_resource *vsi_res;
>   		int i;
> 
> ---
> base-commit: 7aaa8047eafd0bd628065b15757d9b48c5f9c07d
> change-id: 20260513-fixes-26ec29fa50a5
> 
> Best regards,


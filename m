Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJARN2GOjWl54QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 09:25:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63112B3BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 09:25:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAEBD41C49;
	Thu, 12 Feb 2026 08:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voa0_sqwnS3Z; Thu, 12 Feb 2026 08:25:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D64041D2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770884703;
	bh=++LIIRtoiklmXt+L2EyWwCyS0oiUSgf/bdPcbqW/K7w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1NobmJ5Bx8LMTZ6lvh8xynXKkFg1idPYgAliy9bwTdTdhHDKRmU9yb0sG/AASR/Ty
	 2cusO6UeCQx3Q6kf+9XPIJwjjrXSy6mNdcJLwkrxLPKjjXp1IymBVtlvltaWfMfO2w
	 8l+yM3qQpdaf+locrYm2MCFLVcVJD8OIxU2OrO/mLy9t5Q3AHKCL2FNTwdca8qsMOh
	 B5jxCTHVwXX7gRtSwDQEWbJM+eVmHxBRe6vxPpeJebByMZx1Ix4kK6hWLFNY5uDbHm
	 LN0ADieCrEthYeeQm1fRqLip3uTrDxQ8d7LLRnROJFoWOQ/bYfZzgwl1lxbJjwIrNb
	 53Nr/ALlhV+Gw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D64041D2A;
	Thu, 12 Feb 2026 08:25:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84EC71F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 08:25:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75BE1611F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 08:25:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZwJaCfU8hNqS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 08:25:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 625F5611D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 625F5611D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 625F5611D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 08:25:00 +0000 (UTC)
X-CSE-ConnectionGUID: gHhleHrfRcSKP7rBT9EIRQ==
X-CSE-MsgGUID: erf1yjzhSPmzC8mblSjmgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="94692588"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="94692588"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 00:25:00 -0800
X-CSE-ConnectionGUID: gcP38Wa2S/izmPB8ZDLNDg==
X-CSE-MsgGUID: xZ+Dv2ewSm2WyHHgwzmhVQ==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 00:24:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 00:24:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 00:24:58 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.67) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 00:24:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kKTYulDg12MRBbT+2yGYuMnyO8dHtyTQ3YUrK5nEMGNYlwD9wyteHZ3dXMTUiZHCMOb3Xnunk1Th50BMvMAuwevk4M3+eh6SgPxaQ4n4aW963nUn4nrQT6tJbEpuQZms3Dh9jtFjXcHyhhQzRHppRxjihDyijHFqFX4zLVmPAUuRkw0XCkK3WrND1lcNJfFtatfygdmtiWX/LD7G77UzTeL0BLzcG1lL5uL3xOdYTFwiPf7AOr0HzNTCzhtpk+EWAxzx/j1Lbd8RDkQDqozqwv0SN8WtOTenb5m6NsMoXD2J4ROLi3PfjwO7SeoLOytfQsgSNUObH9s3D/GjRTbl3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=++LIIRtoiklmXt+L2EyWwCyS0oiUSgf/bdPcbqW/K7w=;
 b=CtHTQZNxRfzihL4uDAvUQjkR5KJC/ZB4210ZsAPRPFMVl4MTDDUsXoCptJkc1whk1OsgXTMEihXxplK/KFZ99O0TGcvM9ytv6hImfIMhiCBGZ0WDIBCvHWEn4yGAVMsx0+KrMWwW+bIx5xYY6eV8Zs97iSz9dXc/zoGEr4rzZ8nCk2CbQXvOtwR7betwZlT1RfQpnhCNXzlfqR0IneqsaKmRxDccqw2iWhvAAfeL5F/tt7jHvJ9CQ3aCbnIFf9DjD6jfa7FCWHqZlNvaZkyQI7mJKH0eKg8E3GbsLHoz41bSjTZi/bV8//24ohHO59uYRbjHCGCvaez3Fp2U21dALQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF7CCC4B437.namprd11.prod.outlook.com (2603:10b6:f:fc02::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 08:24:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 08:24:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: use
 ice_update_eth_stats() for representor stats
Thread-Index: AQHcm/TFKB41V5wSw02b48iodPAUQrV+uiLQ
Date: Thu, 12 Feb 2026 08:24:56 +0000
Message-ID: <IA3PR11MB89860309716B8F26B066FE10E560A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1770882260.git.poros@redhat.com>
 <27c3027a6cc22b565e2a741bbf5ee7d3382e80d7.1770882260.git.poros@redhat.com>
In-Reply-To: <27c3027a6cc22b565e2a741bbf5ee7d3382e80d7.1770882260.git.poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF7CCC4B437:EE_
x-ms-office365-filtering-correlation-id: ecb09bfe-5925-40fc-389f-08de6a103448
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V05Bd0RXL0FWbTRKM2ZXRHh0cGpHTFAzdFBQaFRjc3pBb3kyQU1jR0lLelZM?=
 =?utf-8?B?SEoyREtsd05UamJpRFQvVjhpUWdKS0QyUSszclFWWTVIOGp4RlNMMzYxYnJM?=
 =?utf-8?B?ajIvUVlRbElSQlRvRHdzT3MxV1VRRm9vZUVheHVzL1ZDck04K0FyeGxlaW1Z?=
 =?utf-8?B?Ky80OUFhSksxU0lXcmZsUUJKNnpacy82RWxjdmZtZE1ON1d0V0lPZndOOEtE?=
 =?utf-8?B?Y3R4WDFRL3hMMUFtSzBUWVNkdnkxRTE4dEFQWmpXWThaZngwd29JUmtJcDJy?=
 =?utf-8?B?YVl0QUJXVU9EMkYwMkk1NXJINlJJemcvYlZnU2NCOUtrZjRyc3EwZUh5NXpo?=
 =?utf-8?B?TkpnQU9wbUlJR3h3ZERLM0dNaE8wY2ExdDN4S25MTUlCSEpzK1RkRGJ2eHJH?=
 =?utf-8?B?WmJYdk1kb3BpY002dDYzbkhvdzNPeW9MWkRmbmlyQUNNSGNsMnJMQ2VYRHdx?=
 =?utf-8?B?MWtTakpNS012Ynhzc0V1SW00NnVuU0U4c0g1dTdmSTViVTk0c24vN1QxN1Vt?=
 =?utf-8?B?cXp5RS9kcWRkVm44ai8yQldkYTdjODA2cUdrcS8rN2RRazc1ZU4zTW0rNlJ1?=
 =?utf-8?B?cEorTFdkMmxyY0dCb282Yysxdmd2dUliS00rdE5keTBuMGFDZWNwM21oMjQv?=
 =?utf-8?B?K210ZFNRaU5DeG8vdkpCdDVRODVCaWU0Rng3VjhYaTloM25hSTNhZXRwQjVr?=
 =?utf-8?B?Ynpad284OEoxbzNIQjMxenpIMk1wTE9ZYm9pbXFJTXVLT1hEc0NHQkxrM084?=
 =?utf-8?B?TGkyZGRxL3k5REJPZGM4RWJqV3FGUXFQWDJPU3FOWHRuVjN3VTlHZXVJUTc4?=
 =?utf-8?B?QlRaVXh2akNNT0g5Vk1odTdBNmo1Y01kZGoza0RDOGJpN2JtbU5BT3ozRU85?=
 =?utf-8?B?Q0lTQ0hVT3ZiaGR3MFVFOU55dnlwclZwU0ZYcGpZWUdTL0JlcVRRNVhtVURl?=
 =?utf-8?B?bGdkVDZEYjJCVEw3RlJjWjlnVmNUYmRrQmdveEJIaUhKN1VVQnV1Wk5YUFhK?=
 =?utf-8?B?OVBjRUw2c2hWdysxaDI2cXh1eFcwWXdLM251ckVEL2Q4TlhHbU1lbnlpbzVt?=
 =?utf-8?B?Q3d1TUFRRUJNT0RIVkRsR3RUbndFNWRlcU12ejk3RFRFMGdCMmppbno1NXRi?=
 =?utf-8?B?amRQRmlMaU9sTzEySithY0JSbFZXc3lRU0VhbTZCMDFoVHJJNzVtcExBa3Uw?=
 =?utf-8?B?c01DQmt6dWRIanREd1c4MmpwQi8xcDcvSkNRS05zdVoydkxsMjBEQWxMS3NI?=
 =?utf-8?B?REprbk1pUXZ4OVAxRHkyZ25sNGNCbGhBSXdOT1VXR2ZBWEt0ZE1zSHQxQnNH?=
 =?utf-8?B?UXdaSlI4NXlsZXpGMUVZT3g2TUtON21RWXJpd2FCVDFuZzRBZ01XV1l6ZE5k?=
 =?utf-8?B?ZFpwVVNDM1l3Y2JFdkRIcTV5SXZLMG1uN2c0cFZoU1pjZ0FRL2xzSWxPckRO?=
 =?utf-8?B?R1pNelhnMndGRXptd29PNU9ab3J5UDRXR1VEUmZidEhQSlE1dGswWW05Tk9K?=
 =?utf-8?B?aEI0cndpRFhoaDloZThyV1kveEtjcDdTZEZUem40eHZidjlIVCs0eWx1NkRp?=
 =?utf-8?B?aUFlQ0dURVNUNysrdExRZis0TFJwUHkwMkc2Y0tRVTA0TnpjSFJJa01vV1Jj?=
 =?utf-8?B?MW1NTWUrcWFqVGNBNWRhWVBrWklDZVlFTVRGTERWb3B2ditzQTdibE4rcFRT?=
 =?utf-8?B?Y0lTMmQ1WmJhVXVIQkJSbHBRNE8zQytPTHBQNFRaS0JCZ2l4UmJkTE14VUIy?=
 =?utf-8?B?TVlSQjd6ZFZCemxSSWlIVjlWS1luWHZLdGFydndycDdlaHNMRytqMjN3d1BW?=
 =?utf-8?B?ditDTm5yK1piQ0tDcWN0MXdmcGNpWm4zREFUV1dGRTloelhpVXFkRktZRjE3?=
 =?utf-8?B?bC9LZGVmU0Z3UXR2d1FYY1pEU3lEdHU4SEhHd2VTbzcybFZUMkp0YkpqV1pX?=
 =?utf-8?B?bFpCQXMvak9RczI4QUoreVUwQ2dBUlFRRENqb205RUdWZk5KbE02YlFZTzV1?=
 =?utf-8?B?NEJNTGRUMTYwU1JkcktIRzBCRU1aNERiMy9xNFE1dGgvUW5tT2UrR1FMQkRs?=
 =?utf-8?B?d2hwTnBCbXpiWmJOVUwrN3ZOcEVYMTd4TzdlYmVaTGRPVUEvQ3RPVDRDVnVI?=
 =?utf-8?B?Um5LdEtXZHpNbjRzSG44dDJ1RHFjN1RIMExIQzVUK0FVWmpKWm1JSGtxVnpT?=
 =?utf-8?Q?A9aR4PVWAJucIb1ESmrS5c8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTFQUWxQeDJkdkNnUHhkMDB4QWdGN1krWjZTWmtpemwyaWhzd3hBTjMxcEsr?=
 =?utf-8?B?Ni8wN2NTYVZ3ZiszblhNZm9JLzhWU1ZUaCtKQXREUUJqazdZU1l6Vlo2bVBt?=
 =?utf-8?B?TDg4cFNKZkVwTUF0MlNnMGZjNkxXa0NHWCtOSXBMUFF5MWsrOUZrWlArUWNG?=
 =?utf-8?B?enFyZzh4d3JabmRrQXZ2elVRenkvSDB5clVuRFgzY2ZiZHpWZDJjVFN6V095?=
 =?utf-8?B?VHZOV3l6dkZ1L0hCSElIUW5uTWhYdzZhR1B1dnFlQmJ2SlJIcHFFVHBMMzN3?=
 =?utf-8?B?dTFDVUhCOGdzSXphRWozY2p1cGlXMlZCZ0dTN2xEd1E4clMzSm5kRUN3Rkd0?=
 =?utf-8?B?SkoyNVp3YkU1VlllN2VvdE9hU2l5TDBoRmE0RnVwWHpHUW95dU9RRlVJQW9V?=
 =?utf-8?B?SVp5bWg0aktTbkxPTzNTZGYzZDB5a0VZQzduendZZ2tSb1JVYk5ZdzIwNkpV?=
 =?utf-8?B?STN4T1Y2Zi9zRDVURXZnN09QaVdwUlRsTzlHQ3R5MTV1YnRBVDA4OTR4TjZC?=
 =?utf-8?B?QnVGcS9JRjVLRkFIakpzSmZzWWRtQ3laRHF1Wjhnb1NuVDdqV29rVFM0U0NF?=
 =?utf-8?B?YUh0R1A3RFZabVA5VTVRcEErd1l2aUNrdGJJa0dET1NBcE45MHF6WThqR3FC?=
 =?utf-8?B?OHorUTQ2aXNqYXdzai84bHNhOGhaNEJFYXo2WEFHZk9MSGJUdHMzc0xNRFJY?=
 =?utf-8?B?NUZrT1F3ZitXeXpkYndVdjlBUTRxQkpjUFYyOFprZ2dtb2NmY3djVkpXUEhO?=
 =?utf-8?B?MkhYbkNQSjgxYXlIMC9Td2M5ZTFoWk9QTFhsTERnZ2VPbE96c3VQWWJ2TTFo?=
 =?utf-8?B?MDRhMk1idjZ2VG96VUFDNUNVOGFYZVFNY21FVUxWbFBOWWlxT1FNNmdMc0Qr?=
 =?utf-8?B?OE95TXpaelNkVGYvRjFKM0Q4bWQvdTZ2MWJENUl0aC9YcWFJdFltQjhFZUdJ?=
 =?utf-8?B?RUpSU3hkZmpQSUNtZStXejBpbEtrd3V1TWRkTFdFdDJybTB2cW9HcUVTelFm?=
 =?utf-8?B?ZDRTWmowMVRsQlc1Q1dwc3l5Z0NzQnhnWUJUdGhHMTBMQm9ucUNzWVRJWjJV?=
 =?utf-8?B?cFBlcUwxRmltTVRmY0Jtam1EdVFLMjZucDVuMTJTdWVUQklaMjZxUzAydzFp?=
 =?utf-8?B?S3hTaXAwYXdTeE05ME5senhPWEtaQ3FlOGRNbm9aSDIwM09jWDBXdm9PTmNK?=
 =?utf-8?B?Y3pIMFJIUHV3blpUK2ptOEFGN3U1YWJaem9DYXc2eDN4SjlCWXI2d3U5Q1FV?=
 =?utf-8?B?Zlp2d3ZkOGljVlpRT3VIWWZPMzQ5NEdmeHFZSkMvd2JxQ3BGaG1NVTZYWTI1?=
 =?utf-8?B?aEZRUFI2YmljUzlsb05wemp4SzFUVklJSU56bUtJOFB2ZlFWMldPdlFtb3l3?=
 =?utf-8?B?cjZNcGVoRDg1MUxRZlBTYUs4VUJrMy94aHZORms2bFQ1U3I5WGhiK0VkVmNa?=
 =?utf-8?B?cEQrOHlaTUNQVWFIR1ZJWlgvc1krdUIrbjg1WGlrVjcycWY0UnBIUmJqeDlW?=
 =?utf-8?B?TjFmNkpvZU5JNkwvSGphTW1OOVVyNWlUTEdBQzNzR2twSnMwdGlYSWh4UGM0?=
 =?utf-8?B?TVJ1VnYxeWtUZ2ZxOERLMVNhQkxJTlNCNk9rV3NzbkhWN2xUWlhUOGN5S0hr?=
 =?utf-8?B?SXpscElvNFd1VWJCTWNLOEtsbW1CRy9XUUJFa1BjSXZ6dDhweFJmYzVxVlg3?=
 =?utf-8?B?akV3aFVqVmg3enRBeXpsVE1tL1hwcWREVE0rZUE5THA4NXBBRldEY0pPaGlF?=
 =?utf-8?B?ZkRIc0g2UkNPUEdicEpDTlNHa3BVbE5pRExkdVhNRU44UGczTXFVNlVidzg2?=
 =?utf-8?B?djl3cSttQnJXblZZa0ZkWmpHd0J6b0RxOEJnVFhrUlZqeUM1b1FpaUhaTXcr?=
 =?utf-8?B?OXhnVXRsaVNudkV0N2pwWnBocWtZVGFPMTk1UlVKRVF1ZlNsTWRmS0djZFdq?=
 =?utf-8?B?S1BJVjlLY2cwb3U5SVVuVjZYSENyVVQ5UkE2RldDenhicWVoczkvTHpSeEw0?=
 =?utf-8?B?b2U2TjBxbi84MHE4bmZwN0I0NjZFNGFiMHNveWJCaGJVVk9waWIwQXZWRTJw?=
 =?utf-8?B?VnRONWU4aHYxNWxNWEM3T0dZTFBRd3Bhc0FkNjBwUG1HS3EyRlY3M1lZQXNI?=
 =?utf-8?B?QjIyOXo0cFl6enZNY2NQeWJZRllqcTdlUHR6U0tzL3lha0ZnR09GQzJncTR2?=
 =?utf-8?B?emE2dS9NOEtkYUtGY2V6WFRBbUNId3RlbllNVGFBQUFLbVBsR2R0L0tEUTZN?=
 =?utf-8?B?anNPQVkwZkN1MGNFRFduaUpsZStCc2pBcDlTdm1rZVRPa0FoMVg5TjEyZTM0?=
 =?utf-8?B?OC9GUVRlYVJEWDZmMEwrK1VRWFVrbSt4MTl3WTZXMFA5eXdiRHB0L0Z6NVNo?=
 =?utf-8?Q?UQoAwi8tfHQVxaqY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecb09bfe-5925-40fc-389f-08de6a103448
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 08:24:56.1848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: POkI5TQ6y1pNS41jaVsDHQEVys9+BDRWKcKQkFRdTEXSGSzZn36xjy+WL7ltWdfUrGVQlcB37iB1qkVrgX9dAn5QLtw+nvvD0eiZnQz7lm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF7CCC4B437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770884701; x=1802420701;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=++LIIRtoiklmXt+L2EyWwCyS0oiUSgf/bdPcbqW/K7w=;
 b=ZN/S275LDwOiA8wofGt6Y583q+1gG1ZPXtEDlyJnN9pFqZgoSDnkRF5R
 JZ0zQAuFqQl9cm+5ZhaCceLVMdlz/I7zJJVcyc4y1SWyzsLsrnugeMhN4
 1pV7mM/ws67UGBtVpoW+3oRgPQ0fBYHrEkjqMcsz644hL7MBeRt2zuRNk
 RFueaY2nzn0ppqEBybGPxoohN9WB1/1gekLD1Mdi5n5hpmY/kblQrjqFG
 DrNJvLr/yJZlfuhCH/E9PDZPY0EuavGbKUN4OjFXCM1U07N0X2nB4SPB+
 ygUHGdHr5ZPofwchSA5NhwIt88/1q3w+AzL+bOjFUo2bMbBydUGS0RILH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZN/S275L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: use
 ice_update_eth_stats() for representor stats
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:wojciech.drewek@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3B63112B3BD
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgUGV0
ciBPcm9zDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAxMiwgMjAyNiA4OjUzIEFNDQo+IFRv
OiBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IENjOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVj
aC5kcmV3ZWtAaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5r
aXRzemVsQGludGVsLmNvbT47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47DQo+
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2
QGx1bm4uY2g+Ow0KPiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5j
b20+OyBTaW1vbiBIb3JtYW4NCj4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNaWNoYWwgU3dpYXRrb3dz
a2kNCj4gPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+OyBKYWt1YiBLaWNpbnNr
aQ0KPiA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsg
RGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgaW50ZWwtd2lyZWQtbGFu
QGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3
bC1uZXQgMi8yXSBpY2U6IHVzZQ0KPiBpY2VfdXBkYXRlX2V0aF9zdGF0cygpIGZvciByZXByZXNl
bnRvciBzdGF0cw0KPiANCj4gaWNlX3JlcHJfZ2V0X3N0YXRzNjQoKSBhbmQgX19pY2VfZ2V0X2V0
aHRvb2xfc3RhdHMoKSBjYWxsDQo+IGljZV91cGRhdGVfdnNpX3N0YXRzKCkgb24gdGhlIFZGJ3Mg
c3JjX3ZzaS4gVGhpcyBhbHdheXMgcmV0dXJucyBlYXJseQ0KPiBiZWNhdXNlIElDRV9WU0lfRE9X
TiBpcyBwZXJtYW5lbnRseSBzZXQgZm9yIFZGIFZTSXMg4oCUIGljZV91cCgpIGlzDQo+IG5ldmVy
IGNhbGxlZCBvbiB0aGVtIHNpbmNlIHF1ZXVlcyBhcmUgbWFuYWdlZCBieSBpYXZmIHRocm91Z2gN
Cj4gdmlydGNobmwuDQo+IA0KPiBJbiBfX2ljZV9nZXRfZXRodG9vbF9zdGF0cygpIHRoZSBvcmln
aW5hbCBjb2RlIGNhbGxlZA0KPiBpY2VfdXBkYXRlX3ZzaV9zdGF0cygpIGZvciBhbGwgVlNJcyBp
bmNsdWRpbmcgcmVwcmVzZW50b3JzLCBpdGVyYXRlZA0KPiBvdmVyIGljZV9nc3RyaW5nc192c2lf
c3RhdHNbXSB0byBwb3B1bGF0ZSB0aGUgZGF0YSwgYW5kIHRoZW4gYmFpbGVkDQo+IG91dCB3aXRo
IGFuIGVhcmx5IHJldHVybiBiZWZvcmUgdGhlIHBlci1xdWV1ZSByaW5nIHN0YXRzIHNlY3Rpb24u
IFRoYXQNCj4gZWFybHkgcmV0dXJuIHdhcyBuZWNlc3NhcnkgYmVjYXVzZSByZXByZXNlbnRvciBW
U0lzIGhhdmUgbm8gcmluZ3Mgb24NCj4gdGhlIFBGIHNpZGUg4oCUIHRoZSByaW5ncyBiZWxvbmcg
dG8gdGhlIFZGIGRyaXZlciAoaWF2ZiksIHNvIGFjY2Vzc2luZw0KPiBwZXItcXVldWUgc3RhdHMg
d291bGQgYmUgaW52YWxpZC4NCj4gDQo+IE1vdmUgdGhlIHJlcHJlc2VudG9yIGhhbmRsaW5nIHRv
IHRoZSB0b3Agb2YgX19pY2VfZ2V0X2V0aHRvb2xfc3RhdHMoKQ0KPiBhbmQgY2FsbCBpY2VfdXBk
YXRlX2V0aF9zdGF0cygpIGRpcmVjdGx5IHRvIHJlYWQgdGhlIGhhcmR3YXJlIEdMVl8qDQo+IGNv
dW50ZXJzLiBUaGlzIG1hdGNoZXMgaWNlX2dldF92Zl9zdGF0cygpIHdoaWNoIGFscmVhZHkgdXNl
cw0KPiBpY2VfdXBkYXRlX2V0aF9zdGF0cygpIGZvciB0aGUgc2FtZSBWRiBWU0kgaW4gbGVnYWN5
IG1vZGUuIEFwcGx5IHRoZQ0KPiBzYW1lIGZpeCB0byBpY2VfcmVwcl9nZXRfc3RhdHM2NCgpLg0K
PiANCj4gTm90ZSB0aGF0IGljZV9nc3RyaW5nc192c2lfc3RhdHNbXSBjb250YWlucyBmaXZlIHNv
ZnR3YXJlIHJpbmcNCj4gY291bnRlcnMgKHJ4X2J1Zl9mYWlsZWQsIHJ4X3BhZ2VfZmFpbGVkLCB0
eF9saW5lYXJpemUsIHR4X2J1c3ksDQo+IHR4X3Jlc3RhcnQpIHRoYXQgYXJlIGFsd2F5cyB6ZXJv
IGZvciByZXByZXNlbnRvcnMgc2luY2UgdGhlIFBGIG5ldmVyDQo+IHByb2Nlc3NlcyBwYWNrZXRz
IG9uIFZGIHJpbmdzLiBUaGlzIGlzIHByZS1leGlzdGluZyBiZWhhdmlvciB1bmNoYW5nZWQNCj4g
YnkgdGhpcyBwYXRjaC4NCj4gDQo+IEZpeGVzOiA3YWFlODBjZWY3YmEgKCJpY2U6IGFkZCBwb3J0
IHJlcHJlc2VudG9yIGV0aHRvb2wgb3BzIGFuZA0KPiBzdGF0cyIpDQo+IFNpZ25lZC1vZmYtYnk6
IFBldHIgT3JvcyA8cG9yb3NAcmVkaGF0LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyB8IDE0ICsrKysrKysrKysrLS0tDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3JlcHIuYyAgICB8ICAzICsrLQ0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMNCj4gaW5kZXgg
MzU2NWE1ZDk2YzZkMTguLjBiODc3NTYyMWYxNTY3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiBAQCAtMTkyNiw2ICsxOTI2LDE3IEBA
IF9faWNlX2dldF9ldGh0b29sX3N0YXRzKHN0cnVjdCBuZXRfZGV2aWNlDQo+ICpuZXRkZXYsDQo+
ICAJaW50IGkgPSAwOw0KPiAgCWNoYXIgKnA7DQo+IA0KPiArCWlmIChpY2VfaXNfcG9ydF9yZXBy
X25ldGRldihuZXRkZXYpKSB7DQo+ICsJCWljZV91cGRhdGVfZXRoX3N0YXRzKHZzaSk7DQo+ICsN
Cj4gKwkJZm9yIChqID0gMDsgaiA8IElDRV9WU0lfU1RBVFNfTEVOOyBqKyspIHsNCj4gKwkJCXAg
PSAoY2hhciAqKXZzaSArDQo+IGljZV9nc3RyaW5nc192c2lfc3RhdHNbal0uc3RhdF9vZmZzZXQ7
DQo+ICsJCQlkYXRhW2krK10gPQ0KPiAoaWNlX2dzdHJpbmdzX3ZzaV9zdGF0c1tqXS5zaXplb2Zf
c3RhdCA9PQ0KPiArCQkJCSAgICAgc2l6ZW9mKHU2NCkpID8gKih1NjQgKilwIDogKih1MzIgKilw
Ow0KPiArCQl9DQo+ICsJCXJldHVybjsNCj4gKwl9DQo+ICsNCj4gIAlpY2VfdXBkYXRlX3BmX3N0
YXRzKHBmKTsNCj4gIAlpY2VfdXBkYXRlX3ZzaV9zdGF0cyh2c2kpOw0KPiANCj4gQEAgLTE5MzUs
OSArMTk0Niw2IEBAIF9faWNlX2dldF9ldGh0b29sX3N0YXRzKHN0cnVjdCBuZXRfZGV2aWNlDQo+
ICpuZXRkZXYsDQo+ICAJCQkgICAgIHNpemVvZih1NjQpKSA/ICoodTY0ICopcCA6ICoodTMyICop
cDsNCj4gIAl9DQo+IA0KPiAtCWlmIChpY2VfaXNfcG9ydF9yZXByX25ldGRldihuZXRkZXYpKQ0K
PiAtCQlyZXR1cm47DQo+IC0NCj4gIAkvKiBwb3B1bGF0ZSBwZXIgcXVldWUgc3RhdHMgKi8NCj4g
IAlyY3VfcmVhZF9sb2NrKCk7DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9yZXByLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3JlcHIuYw0KPiBpbmRleCAyYTg0ZjY1NjQwNTgyOC4uZjFlODJiYTE1NWNmZjIgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcmVwci5jDQo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcmVwci5jDQo+IEBAIC0y
LDYgKzIsNyBAQA0KPiAgLyogQ29weXJpZ2h0IChDKSAyMDE5LTIwMjEsIEludGVsIENvcnBvcmF0
aW9uLiAqLw0KPiANCj4gICNpbmNsdWRlICJpY2UuaCINCj4gKyNpbmNsdWRlICJpY2VfbGliLmgi
DQo+ICAjaW5jbHVkZSAiaWNlX2Vzd2l0Y2guaCINCj4gICNpbmNsdWRlICJkZXZsaW5rL2Rldmxp
bmsuaCINCj4gICNpbmNsdWRlICJkZXZsaW5rL3BvcnQuaCINCj4gQEAgLTY3LDcgKzY4LDcgQEAg
aWNlX3JlcHJfZ2V0X3N0YXRzNjQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwNCj4gc3RydWN0
IHJ0bmxfbGlua19zdGF0czY0ICpzdGF0cykNCj4gIAkJcmV0dXJuOw0KPiAgCXZzaSA9IHJlcHIt
PnNyY192c2k7DQo+IA0KPiAtCWljZV91cGRhdGVfdnNpX3N0YXRzKHZzaSk7DQo+ICsJaWNlX3Vw
ZGF0ZV9ldGhfc3RhdHModnNpKTsNCj4gIAlldGhfc3RhdHMgPSAmdnNpLT5ldGhfc3RhdHM7DQo+
IA0KPiAgCXN0YXRzLT50eF9wYWNrZXRzID0gZXRoX3N0YXRzLT50eF91bmljYXN0ICsgZXRoX3N0
YXRzLQ0KPiA+dHhfYnJvYWRjYXN0ICsNCj4gLS0NCj4gMi41Mi4wDQoNCg0KUmV2aWV3ZWQtYnk6
IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K

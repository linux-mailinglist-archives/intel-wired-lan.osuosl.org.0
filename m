Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 813C0A49442
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 10:01:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 333BB839F9;
	Fri, 28 Feb 2025 09:01:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lr9QYvGYrywq; Fri, 28 Feb 2025 09:01:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 598C583ABA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740733264;
	bh=bv48k4XsfNixnX4cTjt1osKLcgyhvWp8UtD+zKkgB+4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ej/YI5J/bM2kTiOBiNQwbtUnhjJY07EFZJ3jDOlskQ4xC6cv15DQ4xgUSbrPFZVe5
	 vpdlE/OnuN1ZMc4nNFbOZCTITX9e4QrlW93maMFsqmrbTrNGLEbLTCrCYViVMPag+c
	 B3UpKn7yweDEtt/liy8hpKPzzThmrCI0uEYyoaVk6OSr21mY0qhqy8T67uBGslDDN0
	 1I1QPZ7kcQwyxnOw/oq8inlXTdYdthCDe7VNtw03F6tcsBW6mSZU9BDqbVg/5ocsKd
	 5lKXAyVZhjJzZZyx3DWuUpDg+ztXoluQICETdm+74vZB+dNeffdpZ1h7xiI740XZzL
	 At+cD8QAHqVBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 598C583ABA;
	Fri, 28 Feb 2025 09:01:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0943E94F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC97660665
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:01:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dALYGEB-BHiy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 09:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0D10B6065A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D10B6065A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D10B6065A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:01:00 +0000 (UTC)
X-CSE-ConnectionGUID: LhOXy1wERiuIS5VfmzClhg==
X-CSE-MsgGUID: CUu6EWyVSFWF+a50p9s/qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="45305111"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="45305111"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:01:00 -0800
X-CSE-ConnectionGUID: XJmQyaErTvOtPuL5CYnTmQ==
X-CSE-MsgGUID: DkoVlhsBTWqi2RSehA2qqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="148096386"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 01:01:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 01:00:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 01:00:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 01:00:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PK29HRIotgBUIrJExgFrxJqNXK1i5YnvZ1k56umntbU3Y6BGWCcOoWpqev0V3AoAJ0P86AfoSm3YGHo+vu48WxJIOHKo5agh3xDz81/Qu0sftsjQ36QT032kQ/c0h0bbU42yP+d3b1fr/bD1XM+DWmivpbqBQ2izowP9AOIF/k1XOwhsv08PvjK4ayPOJrA8S+OmXRvVHAbijdUXjOS/xCiHlQIpyC1mnP6jL5lnrdITwCU2TPr0cSG53JqhrNuEz2OZ/JBJudLRDtFFaxhp/ZWujfHHinVtcjXMkMcX1R+ZJl+RXJN0xhWa+bjNpbeXWKBlKV74kRgr61nsgkdi3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bv48k4XsfNixnX4cTjt1osKLcgyhvWp8UtD+zKkgB+4=;
 b=in10wjGCdL0XG6VF5KnbKRKYdx7Sr8sr59FjQ75C7urRyEJkugiO/8hidyNf3V94zymCTHihcnoddI/8HHDZMpuIuLl5cA/42hT+q5hcnW7mSCZviJYhyp8H+MSvUv6t6pXyt2cohu4WwoVJW61X/QOKgfA6x46BlSxvGUdv4BPS9vq/+JtuJuq/+OPywIzPS9E8/YPAd3BcFJn7DGGY8NbBLVNIZdc19sdATQ5H7C/1nk5TXMC0SWCacVRq6vt9apyMlh6mtr9nFdNJGviI04eaD2YEpbP7XjzAN7pMlT+kUqBIZNzGrrZdY3lu2FQ7TXT9DKYsZW9OMtEqiMRwxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Fri, 28 Feb
 2025 09:00:49 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8489.019; Fri, 28 Feb 2025
 09:00:49 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Damato, Joe" <jdamato@fastly.com>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/4] igb: Link queues to
 NAPI instances
Thread-Index: AQHbgS+MQU5b2Zl6KUq8j+Awsw0U0LNcd/PA
Date: Fri, 28 Feb 2025 09:00:48 +0000
Message-ID: <IA1PR11MB6241E71D8A5450B3351990AD8BCC2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
In-Reply-To: <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: cf51eb33-7a79-470b-fc6d-08dd57d6653e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bjZsb05send5SVVVb2tpNG5uL0l1eEVYUnRzMFAyb1lKWU8xZHRzdnY1bnNl?=
 =?utf-8?B?bXJ4ZzZKZnM0cksrQU5mQ2hWclIvU003WTYrVzNpdEc3em8xcFhHekwwRllI?=
 =?utf-8?B?L3czOXA3b1QzWGVobE9KeVA4aUliUmtwT2dNaTIyMUJrVElwRDUrNFhTbEFL?=
 =?utf-8?B?SzViQ1dWSjdObmN5Nm9URGZkZ2ZMTk9BUFh6ZE93U0l6TW5uVXovZ0pGOXRz?=
 =?utf-8?B?cnZPQTdTUXUyVjhtSloyd0xkd0JSaExSQmVYY25uZ0ZKV2F3cUJJQnFQLzA2?=
 =?utf-8?B?WTQ0dmIzWUFiQkIvQ0pEZDh3THN5Q1FoeHpHbUdVSlQ3eFdUSEFSazZWeUI3?=
 =?utf-8?B?TFgxZ1NyWm1ncG1ZL1V0UlZwL05EcVp1dkFwK2RUNzY0RE5xeUNpdkR5cklL?=
 =?utf-8?B?SWo1Wlk5Vmp0dTlzZ0FJdW13U1lGcXU2ZmJOem5UVFJINmRLNmtWR2hOREp5?=
 =?utf-8?B?NGRyNldFSGZyVW5YOEl4YW54WnlZekwzYk84d1I3QUQ1dXFYMDdtYkdMdTdo?=
 =?utf-8?B?QlpxZ1BiUXc4WExSdlZrNE4ySG5sVXRnZzJtK2pEVEJxcEJXcmVyTzl3RU1O?=
 =?utf-8?B?Z1NUWENQWXRnRlV1azI4dnUvZDA5T2pDTzVrQUNiODFlMFRNNThNeVpTYksr?=
 =?utf-8?B?Ty8yY29iNlc5NHZ3eGJxRE4zNWorOGN5V2hFeUV1VWRzU2UveFNTTDBwZzJV?=
 =?utf-8?B?MkkvdGZBQVFUdjJqTVUwa1JDbVdoVnF4WmUrQUo1WmpTT0xNQW1GOTB1dEhB?=
 =?utf-8?B?dHBHa3BpSzRaL0VqWFhFL2lDczVRRXhoeFJpOFdjaVB6OUhJazJ1VmVrbHox?=
 =?utf-8?B?Y1hTZ3hVQXdlUEJ3S09UNWJWakpiZ1BuU0RzS0lHLy9yR0FaYkdHOGFIS1R6?=
 =?utf-8?B?MXNHVENuWTd1Q3R6ZmhpNzg0SFRKZUw3MU11eGEvTEZwUWtkQzJaaWZzZ1Q4?=
 =?utf-8?B?d2NlMFZRcXJka2xaeTdmby9UdGtIOG5VWUl6UHBnVFZPWkhZSUlRYm9ZTmt2?=
 =?utf-8?B?RmltaXlpeDd2T3JoR2l3NVlILzRNLzJVaXpsbWNMbXoxNzk1a1pyV3ZGSmxN?=
 =?utf-8?B?cWcyL2RFMTVCWUFJMEl3WWdLd3RQcEJXMGx2djFoWXFxNWhVUkZuL0hpSm5y?=
 =?utf-8?B?a280VnhueE5WRnIySHhlRGdNeXlWV1FjWWVXeHlMaEI2RFBsQ2NIdyswREtq?=
 =?utf-8?B?MjR5SnA1aTJKSkdTWCtWRGk3NTNFNW1HSzljclI2T3MySjFkejUwMGRZbCtB?=
 =?utf-8?B?RnpuUjlqSnRVTmtpaGxGRlZtSUNBRW5hM3owZndBakt3K2Vtby81Y1Q1STNI?=
 =?utf-8?B?T1ZnMmhaMjhodXJkWVY5b0hTREJwaDUrdFZ3WG1NSXExRnJiSEgrdG5GaHB0?=
 =?utf-8?B?ZEMwR1NxaFd2UDlLYVBHQy9CSXYybjRldElaNnY5Z28xVElxblU1ekh0TkxS?=
 =?utf-8?B?bC9MN3ErcGludndEeVlWb0xBQTRUT1Y2QU9yQkZ3TVJDRlBUZ0s0SzZBNE1y?=
 =?utf-8?B?ZGd1Tlg2dlRqbEtkbE52a1NiODNzM09RVEVYVUtKWDdOcFo3WXpqQ3p3bzUv?=
 =?utf-8?B?OUdvUFdremhQWmJNdlhVQ044VmFFMmFmNFZxQW1pRWVTcGdsY1dBVDM1WnJm?=
 =?utf-8?B?OTBHK254eEVuUkp5aE8yTlNjdyt2OC9uTmdsYXFGREVzK1hEVVB4NXp6Y1Iz?=
 =?utf-8?B?QXArVzZRVFI0ZVFqTm02c0dTaUcxbmpWZzRmZ3loelR0NU5nWjAyc3ZxK0lm?=
 =?utf-8?B?bjRQR1p0ekJQOHB4TmROZFNlYVRNUEp3UEptaHhMQTV2eDZrNXFCZVlFVFZF?=
 =?utf-8?B?VnlSL0RDVkpTOU0vamxBM09PUGJSczNkTkFmdXRpQUF4TWY1ci81ditBZDhT?=
 =?utf-8?B?QWkzUFlhS2hhMmlFOGJGcmZFcFVOczN0TkFPb3A4eVhtdy9XWFVwSjZiVnVy?=
 =?utf-8?Q?6q0WTXmS7TMIDgf1aqYxPCusRfSjj4rw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzM3MGpnWW5LVEhzc0hqbU5oL3IzYXgyOFRHOUZUUG1sT2xYa3hUVDQ2YThR?=
 =?utf-8?B?TDZLVzdmN0JGbWIzc3hzdlJpMWtMc21aQ0lKRWhNVS83bktkbjVQWEgwVjJZ?=
 =?utf-8?B?QXg0SGtjSVJvMGJ6aXQ5VHl4bEhSVDdqT2FKb00xVW1VV2YxSVA2b0hNTHFC?=
 =?utf-8?B?REZ1V3NkaU1JcnNXTXVJc3BXTkdzZWRvQUtTSUhsQzlEZSt6NE4wckZTMTRj?=
 =?utf-8?B?dVNZNi9kSExZbmNBSExhT0s3MCtLSzlZdkg3Vm1wdUZvK2J1eTZCR1ppVkNt?=
 =?utf-8?B?UnFCbS9CQmRGMTN5cXhoZ0RmOWY1Ris0SHgwdkU0b3Q2cGlWTHN6NkhDR2to?=
 =?utf-8?B?WUplQkhkb0Y4NmVjdFB2RVVBQnkxT1J5V05HeE83ZFRQL0d1M055ZjIvbWVv?=
 =?utf-8?B?d3N3TGxjUzMyTDh3QTVZYUVTZ0xNeGg3dm5yMnRMOGVmeTQyd1hJQzlmOFlE?=
 =?utf-8?B?bnhiS3lBUUhVS1lzWVRoMkwxNW5CdWY0UE92VVpPNUtHa01HeElnLzlGSSt5?=
 =?utf-8?B?cXZvZnZNNksxNU5Ta2JTZFJxV1A3RWREaFcwenJUQkFTME9aSjQyRXh6Q0ow?=
 =?utf-8?B?QWVEVmxDUFdweE1FbDYySGo0Z0lKclpJOHBtMjArc0RNY1YzaHZlTExGL01m?=
 =?utf-8?B?L0RSMHBrVjhJaVdrSmNRem9RNlJRTXlwSGdKWUR2amtITXVDZkJoRkVCWUo0?=
 =?utf-8?B?ZERMcFRaNjNxSE52eXRzZ084ZTVoNzFtcFJaQUpPc0xPSWJ0NE0yekhZZWd3?=
 =?utf-8?B?R2NmMXRldm5Ob3o5OUdwT05TSWVVdDdMSlFtMm94UFN1ZUVxdS9IbllkWVlE?=
 =?utf-8?B?YkJ6ckpRR1RLZ3UrTktRbmFYRWpBeU1LSE5qeGdrcDZmTlJ2NS9xZnlFZUFo?=
 =?utf-8?B?TnVvSGg5azl5UzlSRU9uaEVaWW1UaTVGK2F1Nk9TRFJ2UDl2REdaKzBOWTND?=
 =?utf-8?B?YnZKM050V1lnWFZQN1NvOG5xdFdEUjA4MzhuZHM0Z2ZmbWFrRXNyaUJDV0hW?=
 =?utf-8?B?MDZwMklBN2ZNVGh1YzhkajN2NFdSdGhwU25CVktmMjF0ZVJ1RThaOWpPb1Az?=
 =?utf-8?B?VTF6OTRUN3N3TGpDL0hmK3VyMG1LTUoxamNrWlVYSHZmbGgxRFZNVFNQRzdV?=
 =?utf-8?B?ejFMVjhQV0x1NWNnWU9lQmJvRDNWeHBjNFpVeWZBR1B4czVwTTVvVmJWRVBD?=
 =?utf-8?B?NHhKWWloQnlpcjRQREV6ZE0vSG1ZL3RpMjY1WXRGNEhoWEc5NE9YcEZ2N0tO?=
 =?utf-8?B?MTR5eVZFVGtqMy9Ea1VSalhlYk9LcTRlM256bXoxUmVvWEhmeGlMWjg0b2FC?=
 =?utf-8?B?TkcxdGhsN3FWMFBxRndFZm14bHAzaWNvQ1JxR2UwTS94dzEyL1pIc0t2bzc0?=
 =?utf-8?B?eWt4cjBEcU5YVUY1ejRIMnpFY081YVRrYXhqTXNIWUNxWTZBZzRTd3kxMzJZ?=
 =?utf-8?B?OVJ4MDNYWXpGT0t3Ykg1Snd1bFlpbG5GV2pPcVlmWEdFQW95RGxLdjJHT2lY?=
 =?utf-8?B?bTNiemJ4djFwMWpNOXNKNDd4enhkVGRoYTh0OWE2UlpoWHphVU9vaUdMalJO?=
 =?utf-8?B?YkNudndQOEYzL2R6ZGxTN3k5YjZ2Nm9IekRXZm9sV0ZKSVd4SlN1bUdVeGdq?=
 =?utf-8?B?Q1VzWnNiYUJMY1BjTFpVSGQ4NzRXQWJEZURkbDJKOXE1cDZJWjE5TWVtTzBF?=
 =?utf-8?B?aW52MWplbmRCZHByZSs3ZXFXVTVxc2h5QlRIcmRQd1BhcnN6VHpqdlFaZGN5?=
 =?utf-8?B?bWFZTER5RTJwMTVVdGlhV1hVbzIzNGV6NFUxV0hpNkZWZVE1Skdzd0d2STFE?=
 =?utf-8?B?aXZxaHY3VXlGWFY3TjFRSG9uekY2ZzdTb1hET0VxSVVVeGZzMS9CQnM3dXds?=
 =?utf-8?B?MU5GVXdaRng2ZkpEMlNXNGR0LzBHRWhxWGNTMFpEOWQ5SEdrWmZSVThmZlY0?=
 =?utf-8?B?TmhCK2ZtRUdTaDNBbWZTRHMyYjVTbkgyZ2kvTU1RdzBobmNMbFFpNS8vUTNk?=
 =?utf-8?B?REgxOEdmQ1ViV0ZlaDZuUFI4UlhnMDlNQ1JFVU9RYXhPeEtOTHhWSEdrOXBx?=
 =?utf-8?B?VjUyS3p4RUlXYW9RbWw1Vlk5bWJpZ0NhKzh5NUpiYkdnMHlJSmx0ZnNrdVVB?=
 =?utf-8?Q?a85XijfJmVKrXldbkLb7744XT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf51eb33-7a79-470b-fc6d-08dd57d6653e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2025 09:00:48.9477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yXJKxZsD6ly/0HCwJsQy8Tq2Uwiz0C2XgVCHWZY6w3ykJFg9Y5f2L56o70LkVxQM9mV9eZ+O0/1X8SJWWCaI1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740733261; x=1772269261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bv48k4XsfNixnX4cTjt1osKLcgyhvWp8UtD+zKkgB+4=;
 b=Cmg05H34oV4jwcqWQmOsqGQ2QiU8R/QcywUMN2Q66b6geIT2Wxw/66ae
 vGifgXYWG1V4KXX8AJAelAgOEFVZbl4jlQdadSpqGWV3JaBfWpeyOxACH
 x72dyDZaEgWTIXwxgRW2VtdhtYMU9A7hWkyYeW7fr0c+NC2rOuUHBpbUC
 WVtrV0JQLdT3/a7ENiUouhSQBhgh6g7RUQjf4jV8c0IUIeq9XjexSzIgI
 zAqPIwQYe/MBXLnoKCcems0gRExXSXCN4QxTmlJtG0KHNwgsMsqVAg95w
 QIptmtbtCe4wpYHK6PIs+6fQ1hCGmiTm0zYYR6sJ/33d+/7ij5usmiEW6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cmg05H34
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/4] igb: Link queues to
 NAPI instances
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBLdXJ0IEthbnpl
bmJhY2gNCj4gU2VudDogMTcgRmVicnVhcnkgMjAyNSAxNzowMQ0KPiBUbzogTmd1eWVuLCBBbnRo
b255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gQ2M6IEFuZHJldyBMdW5uIDxhbmRyZXcr
bmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBF
cmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBr
ZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsgU2ViYXN0aWFuIEFu
ZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPjsgRGFtYXRvLCBKb2UgPGpkYW1h
dG9AZmFzdGx5LmNvbT47IEdlcmhhcmQgRW5nbGVkZXIgPGdlcmhhcmRAZW5nbGVkZXItZW1iZWRk
ZWQuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IEt1cnQgS2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KPiBTdWJqZWN0
OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjIgMi80XSBpZ2I6IExpbmsgcXVl
dWVzIHRvIE5BUEkgaW5zdGFuY2VzDQo+DQo+IExpbmsgcXVldWVzIHRvIE5BUEkgaW5zdGFuY2Vz
IHZpYSBuZXRkZXYtZ2VubCBBUEkuIFRoaXMgaXMgcmVxdWlyZWQgdG8gdXNlIFhEUC9aQyBidXN5
IHBvbGxpbmcuIFNlZSBjb21taXQgNWVmNDRiM2NiNDNiICgieHNrOiBCcmluZyBiYWNrIGJ1c3kg
cG9sbGluZw0Kc3VwcG9ydCIpIGZvciBkZXRhaWxzLg0KPg0KPiBUaGlzIGFsc28gYWxsb3dzIHVz
ZXJzIHRvIHF1ZXJ5IHRoZSBpbmZvIHdpdGggbmV0bGluazoNCj4NCj4gfCQgLi90b29scy9uZXQv
eW5sL3B5eW5sL2NsaS5weSAtLXNwZWMgRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL25ldGRl
di55YW1sIFwNCj4gfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLWR1bXAgcXVldWUt
Z2V0IC0tanNvbj0neyJpZmluZGV4IjogMn0nDQo+IHxbeydpZCc6IDAsICdpZmluZGV4JzogMiwg
J25hcGktaWQnOiA4MjAxLCAndHlwZSc6ICdyeCd9LA0KPiB8IHsnaWQnOiAxLCAnaWZpbmRleCc6
IDIsICduYXBpLWlkJzogODIwMiwgJ3R5cGUnOiAncngnfSwNCj4gfCB7J2lkJzogMiwgJ2lmaW5k
ZXgnOiAyLCAnbmFwaS1pZCc6IDgyMDMsICd0eXBlJzogJ3J4J30sDQo+IHwgeydpZCc6IDMsICdp
ZmluZGV4JzogMiwgJ25hcGktaWQnOiA4MjA0LCAndHlwZSc6ICdyeCd9LA0KPiB8IHsnaWQnOiAw
LCAnaWZpbmRleCc6IDIsICduYXBpLWlkJzogODIwMSwgJ3R5cGUnOiAndHgnfSwNCj4gfCB7J2lk
JzogMSwgJ2lmaW5kZXgnOiAyLCAnbmFwaS1pZCc6IDgyMDIsICd0eXBlJzogJ3R4J30sDQo+IHwg
eydpZCc6IDIsICdpZmluZGV4JzogMiwgJ25hcGktaWQnOiA4MjAzLCAndHlwZSc6ICd0eCd9LA0K
PiB8IHsnaWQnOiAzLCAnaWZpbmRleCc6IDIsICduYXBpLWlkJzogODIwNCwgJ3R5cGUnOiAndHgn
fV0NCj4NCj4gQWRkIHJ0bmwgbG9ja2luZyB0byBQQ0kgZXJyb3IgaGFuZGxlcnMsIGJlY2F1c2Ug
bmV0aWZfcXVldWVfc2V0X25hcGkoKSByZXF1aXJlcyB0aGUgbG9jayBoZWxkLg0KPg0KPiBXaGls
ZSBhdCBfX2lnYl9vcGVuKCkgdXNlIFJDVCBjb2Rpbmcgc3R5bGUuDQo+DQo+IFNpZ25lZC1vZmYt
Ynk6IEt1cnQgS2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KPiAtLS0NCj4gZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYi5oICAgICAgfCAgMiArKw0KPiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8IDQzICsrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfeHNrLmMgIHwg
IDIgKysNCj4gMyBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENv
bnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K

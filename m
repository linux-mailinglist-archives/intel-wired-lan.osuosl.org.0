Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B503BA3A1FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 17:02:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54B7B40881;
	Tue, 18 Feb 2025 16:02:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2PqSumaWmKeD; Tue, 18 Feb 2025 16:02:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DB564076C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739894543;
	bh=HncDA3/9faf79ai66eG+9CB9MDtqp84RPxAR1QTViOI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U3qoccvWYJL37B9wfriFAitUdtfYTQ+6LIRAiw6tt/SpDcAYGjKSF/qxol8yad/Wn
	 6oS3LDVZR7cEvF35yx/LfQzYbUMqBmDpmAv75hDbZOfRIZAvS6kpBYT/IP063GrK7L
	 XrMNzfpg5VKtf/1nz3OAYC2cMi2DICh8QsZxofVp9aMlScmcwnt/r0XF7yr7xfgBVr
	 NIA7GP0NDJROGdUApDlaWOrSlkDNy3RrwTYr/e23SabTi8PKYi9oJWbo5y+qZ+C4PI
	 MDMIVW05C+pkTpF/2MpZPHutRXA1yAHE9AxRSUhchTiSfyjDcgB3cpVYD3i/B5eSGY
	 LS2fJbaH31qCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DB564076C;
	Tue, 18 Feb 2025 16:02:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D891E05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 16:02:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 711E661056
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 16:02:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9aIAGvYHn7I4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 16:02:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B4FD61011
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B4FD61011
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B4FD61011
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 16:02:19 +0000 (UTC)
X-CSE-ConnectionGUID: W6Y06WwDR86zdo6DZiAqWg==
X-CSE-MsgGUID: BG4wjGHHTpaQNpZdzb0zuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="52005250"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="52005250"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 08:02:19 -0800
X-CSE-ConnectionGUID: MiVmLHG+TbaE5z7MlEUl+A==
X-CSE-MsgGUID: Afz6fg1VT/ysZSiDIfw5CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118570912"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Feb 2025 08:02:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 18 Feb 2025 08:02:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Feb 2025 08:02:17 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Feb 2025 08:02:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kOaGrlzwLbhtcGDuLfyIJDTl5w7sY1UkOqj/NmimfxKkOvb3D7mNLNaVqZdWcoxVz6TdpcG2WlBEQkzUUXR379Y57SM97Xpu7UaDo5KEhcBurIJmh+nxQWtcB6C+gYnzHkEWlfbyl9G+ceKtLu5Oy5TJOYaYvO/I2auiG7242nXfXY3Iv1PFV/LBFCMTMIRlRCIRYtDooYdSIEybEWG+P62J1jj5MFznvf1fytjuVCXG+E4fYPifhO06/Pvp3YcpdcF4awD6t0luuyTuzQEyJTZg5eVKVB5z5DXKPRwkKChT4sKPM5GUQkINMa0Mp2gJk27DtofBssJVia7gwAhVoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HncDA3/9faf79ai66eG+9CB9MDtqp84RPxAR1QTViOI=;
 b=wJnzThOsz+91NX+nmFt3+VLpGAcZ81y+TKpVV7RpCNqSjBwRJWbI7F9yiIGS67aCnP/N9MqTfZjpWx0jJHKRM8GoyMy4fubkKeVuEeELIDqhnXRGZe1vHyi1eLMGaE+6zcNR+6tNeu1cDhzKdGK7PbL7RD8iafIzaMp/DRhy6QbC1gQRep6ZF2+2uQjPQm5t1WcNeyu857Jk4wQ+WtZe5Kwm9VbDs2XSrg76I2as4OD9ZLO+OntMb/d4oSwnFjQ8LsyNrPFtm9Lx37VcCRenq5udqFHYX0EAC5aTEa8ZeV2ZV91l41N3MR4X1uR/8HmdhJF+bcMsmYayDiTOM6Q1hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH8PR11MB6949.namprd11.prod.outlook.com (2603:10b6:510:227::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Tue, 18 Feb
 2025 16:01:53 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8445.019; Tue, 18 Feb 2025
 16:01:52 +0000
Message-ID: <5425dd93-988f-4a45-876d-6a81d6154a04@intel.com>
Date: Tue, 18 Feb 2025 18:01:44 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Piotr Wejman <wejmanpm@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>
References: <20250216155729.63862-1-wejmanpm@gmail.com>
 <20250218125959.GS1615191@kernel.org>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250218125959.GS1615191@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0016.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::18) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH8PR11MB6949:EE_
X-MS-Office365-Filtering-Correlation-Id: c8e42e2d-4e95-4b3e-e7e2-08dd50358f3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3pOditEMjY5Q25rWU9JbW1pMnJESk04d0N3U1AwNVU3RUViUklFR3o3eDhH?=
 =?utf-8?B?RVBjenRwbjdnZG5UTVNQMFRxOXE1L0VsbE5PenExNnFTeUhiemNYWVZVOGlh?=
 =?utf-8?B?c3lKMGFoVEpvUTNBSy9iUkxJOUg5NzFhUDJWR2JWV2NLNWNzWlI1VThyVFd0?=
 =?utf-8?B?aGNRNnpuakRkLzBMTjFBRHIzZ1ZRczg3NE1vRkdMNzRPSmd0WExEQVEybXNw?=
 =?utf-8?B?NjhubmRvYytCV0Y1bjdTUDZtVll0bzZrUjZpb0lvaWRzRHFkZnMxU2IxSEJl?=
 =?utf-8?B?OUVpbnlRNFBvc3crZTJjWWlMRVFlNVA0YVpQMmVSQVVPd0ZOelZmaW9lMVcz?=
 =?utf-8?B?YWlzZ01CVnl6WE5lV01ZbEw0VkRXY2hIZThCdjFQdXJ6bG9WaXBMQW44aXc3?=
 =?utf-8?B?SzdxbmJ6R0I3TjNaWllIVGkzZk1wT1oyNnFiSjcwdkRzSEl0cEVaNEwxczBX?=
 =?utf-8?B?S2lHOU9NMHU1VzVHUVc0eDg5Zk1xNDFDQklRNld1djJUcGFROVRuZWtUUDJY?=
 =?utf-8?B?VEpxQW41TlFTNVRUb1ZTTXRRRm5NRHJEN2tyM0Q3cVVsbzZjUllTdHZNWUFV?=
 =?utf-8?B?enN0c1IxdGpqei9jZTFEQTNQQjVOVlFSaVdlWG8relR0VnlCemZaaVRmMnJx?=
 =?utf-8?B?WVRQbnNyMUE1emdSNUhlemdrR3ZJZGIrdVVPemlJRklWQUgrTG5xaGRSczVI?=
 =?utf-8?B?TWtBb0RtSDlsWWRyY2dsNWJPYXNrdUpBUWdoMUs1RGxjR3RsS0xZUnRjYjla?=
 =?utf-8?B?TW9ROUV3N1c1dFVMVTR6NVBxbGR3VXgzS3djbHdDVEx4dmNkd3NDVTFWMGpT?=
 =?utf-8?B?Z0NZejRuUXl3L2xoWEh4Yk9KRVNTSG1CMW1qakRZeVI2QmFOcy92M090b3pz?=
 =?utf-8?B?OVBKWGRNK3FncnVGQ1FQbHBkN21mUXVWaVJQRE9TS0pvWjY0a05ZbTR5THZm?=
 =?utf-8?B?RHg5VFJYdjZ1RUpBR2V5bFJzck1rN201YktvelFFVTJzZHRaWkZqTjhCdkJj?=
 =?utf-8?B?RVdRYjcrQlZTU29YakNUSjZZaGhUUmlaUzdJNXpub002Y1NZZHBiN01PVnFu?=
 =?utf-8?B?S0tQajd3RnRQWStLMEREY3VqS1pqVlQ3c054SkxhanUrM2ZtalJyU2NuYmdl?=
 =?utf-8?B?Q3RXcUxLVmRycXk3cGxGaHZERFo3cW1VZmFPTEVuUUhsVENlQm5ldmlJV0gz?=
 =?utf-8?B?UmFQbko1N2o0cTNqcEU5c0RKV2NHYVptenhxMlFZaFZpTUZKdGlyYTZlM21Z?=
 =?utf-8?B?REdSSDcraXhBc0FTT3Q2eCtHTE1vMVZiZkFYKzdYUWFOVGp3WHphNlpnem1U?=
 =?utf-8?B?QlB0N0NqMmdFeGUwS0tZWEp2RlNIaTRMaHZZRDhJbG90QWNaenpySnhSUmJw?=
 =?utf-8?B?RU9Wa1pBNzd0c0N6YTYyTVRyY2ZYZjc0MlNBVE14RDYrdm43SzRjYkxxVmhv?=
 =?utf-8?B?czZuSFRWWDF5Q3dwMU1EUWJXVGFqYWpoWHpPRUdyV01xNkpHSnJxcFJONS9w?=
 =?utf-8?B?aHRJbjNnYkVaRzQxSjEvQzNEcXh4b3FRVzRCWW9iN2xObTQ5SklYd0wvS2Mz?=
 =?utf-8?B?T2VkeFM2dWVPeFFtWm9yOWE3TUNXeXJwU3JyekhHK0VNQnVnbE96SlpsOWVj?=
 =?utf-8?B?NHc2K0NmL3ZhMUVndXp0dk9OTHZLVXVvaU9YTnZJY0l1SkVpcy9zL3l4TWl0?=
 =?utf-8?B?Rzh6ZWlQc2RWSVc4SHZXdXR2VXFhQmZpWWJIOU1YaGwyVHpoQUZjWjhQRHhF?=
 =?utf-8?B?dVJPY1Q0N3hVM1A3OTBEOE8xVnczNHJ4YkFpK2JNMGY3b1FRZnBScWROblRR?=
 =?utf-8?B?cXBBbTZ1TDcrUlhGSTgrUDlvZVZRNVZONDhxZnpzdzlvMnBkd1lSRk5MTFlB?=
 =?utf-8?Q?3t8AWaIP/rzpI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eno0czJtZWUxdmUrejhzVHhIT3Jsdk5XS0FFU29NdFpocFRlUnZic29hcGxa?=
 =?utf-8?B?U3hYdURqNlJuU3dRNm5INDB1eldZVFVNMmg1b2doVmhFcTY0bEcxdnYwSTJh?=
 =?utf-8?B?NlBaOEZZcTJEV0ZqMWU4V3ArZEMzem5zR0VzVlQxazQxc2JnVUVDVWpWYnBE?=
 =?utf-8?B?eFE4c3V0UVJ3L1BCaEl4OG9aQVFjbHNGemdncDNwQTZBWFpCTGYrT0xhbE5M?=
 =?utf-8?B?U0JBM2I1dld6dHJDaG5jeDRtUC90SlZQZUo0QW9ZQ3c0YlJWTzE3N0lDV1JX?=
 =?utf-8?B?TzkrRDZDSFBFd2ZKT1FsaGJ6NUFNSkxETDVoNGFzU3ZLTkU2TjBSbWtVSlV3?=
 =?utf-8?B?aUhpUHZ3eWtmR2hSNWNmNjZTRm1xSldvaEZVMzNJNzk5NTc1Mk9HKy9tT05k?=
 =?utf-8?B?UC9WSUVyRnpaNlBzK0xlenBhb0xRMCtMS2NwdW1PZ3ZKVmRqNHVtdjZLRFM1?=
 =?utf-8?B?MGN5TFFVUlh4MmI4anp2MHNBdy81Vkw4Y1U1Zlg0NGRjUmJSaTBwYVNnZDE3?=
 =?utf-8?B?cTVIckVLcXJTSVdpZnJidEUycjRQQXRLclQwYnFmNFBObUFlODBHaTB5VWFy?=
 =?utf-8?B?ekRaQlVYMDcrY1JIZndmZmJqUXNEdjFIdlI3SFU5QUFSYUpXRXIwQnpSSVhi?=
 =?utf-8?B?eVdFRkdiaytlQ21OLzlpbDRwelRsZFNTckpVcTdFd2ZIWEJoOUdXSzRlaHo3?=
 =?utf-8?B?MFVhQVNndDBiVnZVV0tCTkpjQjJTbGM1Q1B4K3ptSXFzOWt4NTY1VWlQdEZ3?=
 =?utf-8?B?aDMzeW1LeWJMcm9mSTJQL3pBSENPbXBUUUI0MENxbkhYbjY0R1pNc3VudVFh?=
 =?utf-8?B?VGtCVFFBd2lYd09jRkZ1N09NaktMclhQNnIvV0lGZkVqS1RkMDI1NkN3UDAz?=
 =?utf-8?B?d09QMUdpS2lGc3VvN1l4d1dUdWVYbmZmb2FZdklPQTlnSEhWL1d2NEpSNUtR?=
 =?utf-8?B?RlROMUpzWEVZOExZalk1dm91U2ZsRGxMcWxXbm5sYWlsVnpneDdpc0pIRjM3?=
 =?utf-8?B?Wk1GYS9wWHh6TjVTR0RPZ0tpd1lXUFZVdU1QY0IrdmtuZ0xEOVd2VlJmMFlk?=
 =?utf-8?B?NTl2Q0NXZzZKb0tvSEZZVDhiOE5YY1lUajlPL01kd0lDU2xNZklnYm5PM29i?=
 =?utf-8?B?RDdvK3Y5VjdYNE5GLy9KV3JYVWxGS3JleEdsS0hVdnNhR04vYVRuYUUyNmpt?=
 =?utf-8?B?TlJnVFh3UzJLdkc3dGViOUFEMDd0MmdPTjRiQzJOc0pVdWVuOGFjT2k0RjJN?=
 =?utf-8?B?WVJMMDh6Q2tud2tJcWJRUlRVYjdvc3prZUMvWDU2MUptOU5nc0pKanZQeTFw?=
 =?utf-8?B?SUx0MTYrQWZpMHd4K09vQUtVSW1NbnVib21uNGJ0ZzZGK1M0clpEYnkxV21C?=
 =?utf-8?B?SFVoYVQ0dEZzeFYyd2lwVzI0Z1NRaVpUOUkyUC9iM1EzcldnRWg2ZjVkTkxT?=
 =?utf-8?B?SVhHdWRxR0FHQ082KzNLVXdEZGlWZWZBZkRSZE1zNEZqc21vdVJSUWk2UGdE?=
 =?utf-8?B?ampLSzlXRTJobzkyTUVwTVJOcURGays5dU9xTU9LRnFVSlR6amROVDRFeWx6?=
 =?utf-8?B?VFM1bk54bCtlOHA4WVh4K3BkcVZjZTdIRTZ2ZW5ITHdLRUFrSU5POHR6WFIr?=
 =?utf-8?B?dzhha3FrdytoaVRRbGxKeDc5YXczMVNTcXpaNWVuZmdab0ZNN1dRU2xnZFJC?=
 =?utf-8?B?WUV3S0wyVFU2aXlUOHRVU0RGeHQwNWFHR0tXOXdQNXgrRUFoYTAzQktBSW4w?=
 =?utf-8?B?NjA0U0x4VFZabkdDTGdKQStUbDdQMjh5V1dacHlYc2tObkVnR0E4V0lLbnpN?=
 =?utf-8?B?T3JtWG5teG9JTmNJWkdxQTBpUHdSMTBiK2tnL0pia2ZLRE1RbVdqWGxBUkYy?=
 =?utf-8?B?MEV2bXlTbnZienBYbGxyVEJCbnZSNUZBRUlLVlBZeEVIRTcrMFM1ZklNMExN?=
 =?utf-8?B?R2pzdmI2Uy9zdVJ2eTV6VDYxZk5ZZjZpYkpRYnlxeExVVlZORWhUL0R5S0lD?=
 =?utf-8?B?NDJBNDB5WXVaWkloWW4vS2dGT2FScXVjODhIVlBvQVUzcHlybTZXUkNvZXl5?=
 =?utf-8?B?c0RvWm1GazNQdFhLS2lYRUM3VU9IWis2cFlzb1JNUFpDRmxnbDlsbUVFSlVM?=
 =?utf-8?B?cFBIN050cFV5QTZrWEpoY2hmVFlnTEFoOGVwZWk1S0JPYkw1SitKNmVzRVBS?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8e42e2d-4e95-4b3e-e7e2-08dd50358f3f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2025 16:01:52.8262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bSiCSAntlpcNxDsrTPyH3hWU9kXwp+pjiVtpz+hhd+QEbCul8aq/kc+GM+00I0myjb0gJLAwRLtJIJLbGJQjElRk/wtruwzXdG/GCBhh+Vs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6949
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739894539; x=1771430539;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OIZ0OZ9+5u/N6K4HWTo1jfMAlfMExuPkcL2SZnxmRKU=;
 b=l1arOVn0eHJT8+U9z/SQHzWcwBxF+0okWZsy0AOcVJ2xxWnTuB4khTCs
 x6+szcHRopMbXXhazYjPAQ3VN1xWokCeJKkHJmARyv7uzasLcLnARHnsN
 2qQEnGlLQaYSm8hb1Z2BCraPuCKfUx9H0BQf6nJewnxtX78h4H1H/uu4e
 KXwOmJG5zaI+jIXU8u/C0NRfaz0a4yhdI1a8AKij1iq6BDFaMESJjN0TY
 S9D7feYdE9oZGuS8VTIOXrwydyxfu/4OfG9fg1kBLg9haz7DAkz/LYnWP
 HPGmdn6RRYrY1plDXh9yqe9CvckzMN7iaUNxHAuUDNPgUVlnKLPQuAT5f
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l1arOVn0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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



On 2/18/2025 2:59 PM, Simon Horman wrote:
> On Sun, Feb 16, 2025 at 04:57:28PM +0100, Piotr Wejman wrote:
>> Update the driver to use the new hardware timestamping API added in commit
>> 66f7223039c0 ("net: add NDOs for configuring hardware timestamping").
>> Use Netlink extack for error reporting in e1000e_config_hwtstamp.
>> Align the indentation of net_device_ops.
>>
>> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> 
> ...
> 
>> @@ -3932,7 +3939,11 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
>>   	spin_unlock_irqrestore(&adapter->systim_lock, flags);
>>   
>>   	/* restore the previous hwtstamp configuration settings */
>> -	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
>> +	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config, &extack);
> 
> nit: If there is a v4 for some other reason, please consider line-wrapping
>       the above to avoid lines that are more than 80 columns wide.
> 
> 	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
> 					 &extack);
> 
>> +	if (ret_val) {
>> +		if (extack._msg)
>> +			e_err("%s\n", extack._msg);
>> +	}
>>   }
>>   
>>   /**
>> @@ -6079,8 +6090,8 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
>>   	return 0;
>>   }
>>   
>> -static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
>> -			   int cmd)
>> +static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr,
>> +		       int cmd)
> 
> nit: And conversely, if there is a v4 for some other reason,
>       please consider merging the above two lines into one.
> 
> ...


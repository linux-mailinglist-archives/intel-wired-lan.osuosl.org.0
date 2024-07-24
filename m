Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B00B193B790
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 21:29:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5ADB40612;
	Wed, 24 Jul 2024 19:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zh-F4ozIp0Ca; Wed, 24 Jul 2024 19:29:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE6AB4061C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721849354;
	bh=IfygMEMhehPs5WIkojyjXvXs6h3k67FMdrXvkMhJreU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a97H7m2J4Awwm4VCYyF4VtQmIEgP+OX0LCPJaSgsDgSxCg/U7Drdhp5v48BWERwiT
	 SU3sZkmm5ZyPlGZCSnc5O0FicL+dUUo+G4Br1c19H6xOIkWqmp66u55iGtekeUGRmh
	 iBhBKmpxsk9rBfs/7UR7kxAPkWpseJ/Et7Y1wXBAnbtZddOR2wgOq/cStxkeDzJRsK
	 /f4mf6Oz89T8Gc9KjPa8qs00gDpoH4O5ZPvUdIqygn2McNMAlWxTY6eIDj/JBx7t5Y
	 9ESfBi9wHglQRZICf+P4Z21Y+CbC8NBO+hVrUYebLVEWdWIE7U/nzGD09yK3itggY/
	 HAZEnNOuuP85w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE6AB4061C;
	Wed, 24 Jul 2024 19:29:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE691BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 19:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DFEA6065D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 19:29:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C8ZWqL4girQ5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 19:29:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3054960655
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3054960655
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3054960655
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 19:29:11 +0000 (UTC)
X-CSE-ConnectionGUID: EfqTfMJaSF6qXAmrneeQFg==
X-CSE-MsgGUID: RC7UbAEIS3KvCu2iRxj1JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19690515"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19690515"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 12:29:11 -0700
X-CSE-ConnectionGUID: 7OshvyQNTsSGD5lmIOynag==
X-CSE-MsgGUID: ItvgQQxYSD+5qdsup7Tg+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="83290170"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 12:29:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 12:29:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 12:29:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 12:29:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 12:29:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PuNFVAGpA30HhM7HZPfAQTccrMzcKNIsSux425sdPAc3qOAanw1JyjDy7VEi4myGSKSQnJ8GgjfIVE7UK3yR28IL9URFYXMVPEQSZJ6kyKYghtX9w4H/rTjQ8SlUncpRjwBqCmriukN7vmTi+5qN14pg8Pfd/Xn6cAr/IFkV41cb3Fq/l9tEoWWs99+6pYqjrrilYSbC+Lt5PeuHs4Ty6tQ+CJ8JtAbsA1T7EZhsK6By+T0giFpidJ2F0b1IDdHpENJASmV0EUrPbUfpg5K/iZz2qW4pKXYXOXg4hS+VIbAFbbmnSbKAyg6TEcpRBHAnVg+KD3StAOET2Uzkj7E2vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfygMEMhehPs5WIkojyjXvXs6h3k67FMdrXvkMhJreU=;
 b=hGRP8dp4tjLh7chCtFmScr41787C5XxxPddKScOFWlP9RWMfiCjBiazYBmwt4vWJuHE5f+Gih4+IBqdhGgp0YoKWf2D90MA/pMyZHaDcknxok7sMq4yE7bIOS1SsnT+LmPTaKzMVJDr8z2z2e5XJvxzrHuRJaEP2ZUja5yt8uyQCln4VeP1NuduAdcQBXOrruMQLoS/4wop4WhdGEuwEWthyg2TAzlNSfFQMlNW+FNUhmAUm3i/QCNSMGyEsnkqCPze58zDp0q/fyOJ1OAzZ9xi33HP2v4kMlgNoa5Gw1nzm6swed0FFLJHxmuj1PI2OEvzjiOpNbp0D0sL7nP9AUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.19; Wed, 24 Jul
 2024 19:29:05 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Wed, 24 Jul 2024
 19:29:05 +0000
Message-ID: <9bce05f8-8a57-492c-9567-2ecb1f6b8e10@intel.com>
Date: Wed, 24 Jul 2024 13:28:51 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-13-ahmed.zaki@intel.com>
 <20240722150431.GK715661@kernel.org>
 <4691e62b-0597-4184-8e85-0e74d8cdab85@intel.com>
 <20240724163016.GB97837@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20240724163016.GB97837@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::15) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM4PR11MB6455:EE_
X-MS-Office365-Filtering-Correlation-Id: adf1514b-e54a-411b-c7cf-08dcac16e1a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0FJRHlTbjMvUXB3TjRtYjNEYVFoN1FxTGNHcnB0V3dON055LzRCcmp4M1U0?=
 =?utf-8?B?bkE5Z0JndG1uREdXcUl3bnhXTEUycnZJNzFidWNnZThwSFRGNnJ4azZ3SFlG?=
 =?utf-8?B?UW5lMmN4U1dHMysxV21VcllKNFZ6NnF2UTRiM2Q4Q3lOUkJPWERJWkp2WFUr?=
 =?utf-8?B?S0M3OHhwSkNDRU5JVkNNL0JUVVpqU01telhTc0dJSnVvZ1oySjFCL3VzT1l0?=
 =?utf-8?B?eStZZHRYbE1WMVZLRWJZZ1BGQVh1dHVYTndHQjZTZ0JQR3BPMzlDRW9OZGlS?=
 =?utf-8?B?UDdqdXlVT2VkQm1pRk5tTHdUdjUxSXc5aVZ5WlhyWmtqeVhxZS9RZnFJS3B0?=
 =?utf-8?B?dDRlaEFKeGw1WDd4cW1nSkphN29zM0QyR0xaUk5Vb3FUTkNtcW8rdU41R0U1?=
 =?utf-8?B?Q2d0TmM3TldoaDQ0aDNLbGpEWk1hS1JGWFR2WlRGWWhSL1d5YVhHdGVMVDZG?=
 =?utf-8?B?bEQ5T1FSQlZSVmp0b0RlWXJSd2x1aEpiM0FPZFNFYTR3azlkKy9XNW11S2Fj?=
 =?utf-8?B?WU1vTEMvR1Z3SVQzb1JkVnJQSnVpMlE4TEhJbjRqSlB6ZFhFaWtZWStVcVA5?=
 =?utf-8?B?aUszaENnTTljQzVydDNrbXNDKzlkR0ErRFFvdWJlRjl3SWZFUFFmczNlUzk2?=
 =?utf-8?B?K2RiOVo0VmwyWmRLc0VyN1gwMDh0eDNSQXlyMkR2SCtQUUpPWlY1ZElEVGt4?=
 =?utf-8?B?ZzZ6UXhOQWxzNFp5eDN5NW9BU1ZRNWplcDhmVmlyV3VzZ1dORFdtM2pjSzNH?=
 =?utf-8?B?Sy9ZZG1tT1FhaTkyb0V1dFVnbmxFL3NuUWk5V2lNQzhCTmR4WW5pMHVLRUJJ?=
 =?utf-8?B?aUIrZDNTWWQ1VktRUzRKNUJuc3VVMGpUclgzckFRd21ZeUQ5YWdCRkYwN29s?=
 =?utf-8?B?TXFFVG5wbXZmTkFJa0ZzVWxjSjZROE9PU0pmcXU5VFpZMi9SQXM3eE54STI3?=
 =?utf-8?B?aUI0cGlPQVRPRGx1OUp1VGVsUFp4SExKTmdhY1RESEViUHU1N1Rrc1dyMVBY?=
 =?utf-8?B?c29BeXhHOVc5M1QyV0w2UGhnbjJ2dVA5NlRNZTkwanRNZmdNR3hJN21haGVK?=
 =?utf-8?B?U3Y0cUxNakcyaTRLQVFIZm9DMDFqRGRuc1VvQTVIb0d1b0VzdkpuR21VZnFo?=
 =?utf-8?B?RG9qUmg4d0hzUEN2eGVUUktLUGNnTEMxc2pIMzQ4MWJzTS9lNm1menMwWFhz?=
 =?utf-8?B?MEVTVS9hSFZKZWZvbFFBZmplSkdZK2VIeGZNbllaTUdUcFdDZlQwVmdvNGpk?=
 =?utf-8?B?c0Z1Q0hYWThMYmp5RFFyQVdCekJEcnAxdG45UDU3VUJOa0N5dFFWK3Y0dWc5?=
 =?utf-8?B?R3BIUTBTMmJKQTRjZ3A4ZDhrcksrSk5WRmsrMFNWa2hSTFpoUENaVEw5QnFt?=
 =?utf-8?B?Si80WGhacmk4SEVIeU5rMGFKNGhvbkYxUjNTL0FXVllLMmU2UEp2NW0vdWg5?=
 =?utf-8?B?ZXhZK2JJdkF5TTltOTdtWWg2d08zVlVyZFlIaFA2ZEN4V1hjdGR6bXRISjF5?=
 =?utf-8?B?UElLcnBTZy9pQ1JUS2VBR01oSnN1RFhHUDdIbzZoK1kzaCtaQzlxUjJCT2wy?=
 =?utf-8?B?TWcxZmlZU2ZnSVYyMFAwVVBJTWp0bVl2YWUrQWF1VytKU2hyN2FqT0dvZ0Vo?=
 =?utf-8?B?K2QwU3VRQ1hBOGRpTEx3ci9XZmdkY09MOVNvWlNIbGY1bElWWTc1MmtFWVBp?=
 =?utf-8?B?VUNmakVwOFpZQTMwS2grMDQvNk5MUWk5ZGJlenczYSt0elNmNzIvWVdmcHFh?=
 =?utf-8?B?eG03V0xnb0ZldFFRY3BLRDY1VGplcUtBTXE1SGJndE1aeC9JN0lLZlVaSU5Q?=
 =?utf-8?B?MG4wZ1o4NWNzZk5IT2Jrdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzZTdDZnNWJTL3FZZThPdlVQa2pYcG9LTWQxNy85ZHJOSHZ2dmVzMkxPb2RS?=
 =?utf-8?B?ZHdsN2wwb0RhS29ENGxCbWFMRVhjdHFpaitEdU1zblFmSEszaS9EMHQxWTda?=
 =?utf-8?B?YnVkZytlU3FXakRlTVV1Tzk4ZDkwQ1UvbTFycjc0TGJUM2x2OWlXb1oxWnE0?=
 =?utf-8?B?KzZKdnYzeXFaL01sTTVWZkJJN0tBeUdyV0lqS2ppZUY5UG9IYU1heUZCWm1B?=
 =?utf-8?B?dE4rRFFSd0IrLzdjSGlVNkFyVWJlUGJ6Ykt0eFNHV01yazc4MVZzTSt5bVhF?=
 =?utf-8?B?QkdJQnMzZTBzcTBVTVpFNnZwaG9odndzOUtyYzY4OGZHMC9IMFB1dkJBazdF?=
 =?utf-8?B?akRmcElXNFVFcEp4VVdQMkZWYWEzRG0vM0doVzlObVFmZm91S3VnVzRzOUhU?=
 =?utf-8?B?dFRaOEg5WGF0d2h6MTg0ai9icGZTSEEyU29haVV1RXFNT2NBMmpqa0FqZExR?=
 =?utf-8?B?bFE0Q1pwRHc3bnU3Rkg0WVFzUmE4QjJTS2c5M28rU0cvRk1vU3Q2TXppS3h6?=
 =?utf-8?B?NmxpYWtPODFWdlhNYmM1UW5IM0thTnp5NEx0Rytjb3ZpOVlFU1dub2hsZW54?=
 =?utf-8?B?NThNNWtoRDdUUm1nT2RkNTZEb2RBQTZYcDZZUlFzK1dLc2xkYmhEdU9nMFIz?=
 =?utf-8?B?R2Y1a0JaMjNucXlNaWp3NDVyNWJHOVdhZTVrUXNscjd2Sk1FamVTc3YzYmNj?=
 =?utf-8?B?MzJnZDhnMXZIa2I3M1NZVUcvcVgxSmpCa21ORVRBNkJYTitIKzB0ZVZvMHN6?=
 =?utf-8?B?S2NHK1pJUVZKcEJPbE9UKzlWT21YQ3hCbnE3UEdsd0Z2eStucW0zbmt6aWhE?=
 =?utf-8?B?bDlra2pBMzdsZzJqOWlJaGRrS2NNekdOdUpqaVlyNEhZK0E3SXdqTTB2cGww?=
 =?utf-8?B?Yjk4YVRXM1BCdmJ4TDNpakprMjdxamNBL2M0aUxpMjZ6clhaZkh1NVlMU3ll?=
 =?utf-8?B?MWE2MTkvLzhRekllN2hvSU83ZXU2VnhmK2gxS2xGNGZnb2Vjb1VtYUtmbzZr?=
 =?utf-8?B?bjRueXRXM3RiT3k3Qk9ZNzdUNTQ2RzAwSG5ZWjZkaUZ0SnE3Q21OVllJZkxL?=
 =?utf-8?B?NDVZYml2VXNWSFRPN1QwcGVXUW5yWDIzVVJMd21TR2RYYnZqdVhsUGxaSmlS?=
 =?utf-8?B?eG1Qb3ZkTzhLd3hwdExmVCtudks1YUxadmV3ZHhSUEZoUHdRTFdOcHJVTUZM?=
 =?utf-8?B?ZHlwY2lUbkROTEFRSzF3V3ZMdlQvcENOekt0NHNPVWxHcmQ2c2h3emtlTHVO?=
 =?utf-8?B?bURjbDc5NSt6c01FWDZ3bTdtVkNBd1VmaUd6Y29PT1dIaVZ0ZldZVHI1ajFy?=
 =?utf-8?B?R1NhZ0dQam9FRWxyTU1ESVlUWVVnRVFUQXRTQkgzc2V1V2xTL2VKSjdBdkt0?=
 =?utf-8?B?cHJWbERYRzhFVWpLY0lteVlDVlk3bVc4dUhZRFRTN295OFlMVTlIQzZPYVBm?=
 =?utf-8?B?dG5QbVBuaFJnTjEycjVaOFUzb1FTR2lQSzd6UzcwczFGdTlJeDBSenUydnJH?=
 =?utf-8?B?MkYzaHBQY1lid3hQRmJ0VFZST1RHaS9yNWdXVGQ0YW5IaHd5T2NXZEVLbmxL?=
 =?utf-8?B?ZStLdHBLb0kzU29CTTQwR1V5SEk4U1pleGFLbTFlR1BSRnluV1RlNHZ6VkQv?=
 =?utf-8?B?eFQwYzFzdUFUcmlFU2I1M3RYUnkvejJJVnE2bXdtSElUNTRaRVNscVZrbUt2?=
 =?utf-8?B?SUp0ejljR3JwM3ZCeEtmMFVkK3JDUFFNWkVUOW9Ddm1RSGNrb1AwNGwyNWRk?=
 =?utf-8?B?N1VFemRMWWlEeXl2aFNxaTF4aXJsaS9DdEhZQ3dzSFN1MkFKbXp2NkhrUzZu?=
 =?utf-8?B?MStPdTB0TWNJZ1N0MGVwNm1DT0xaQVVGUlpaL1BRLzZwZm9LNnlsQXBOSWps?=
 =?utf-8?B?NVRqR053UStYbUIzVCtIYTBTZGJ4bVorMWR3TGlYeHdJYXErNjIxUWpTY2dC?=
 =?utf-8?B?Yy85bUZWdnpWd1QrZ0V2cXBYTXg4U3FjdGJLeHEvVDdVUFdNbS9aaGdmVWM5?=
 =?utf-8?B?c3lyQXdHdFk0WW5UVWJTelM3NnpmNzc0WHpKUU85TW1RK05XUnU4Z1hLUDBB?=
 =?utf-8?B?WEM1TVNYd0YzU3dJVU5WZXpVQ0U2TWcrN3Q0RERZREwxdHpLQStVLzhuMFZX?=
 =?utf-8?Q?k97m/2wdzBQ7rxWwRRvxo3cCc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adf1514b-e54a-411b-c7cf-08dcac16e1a1
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 19:29:05.5539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BLc0Q+Y0PyoSNa2nV1UxscFRFdZ82jS8JGGFGeHjw6gXc2KMXARQah9B9flRZ6H8++H49FRzEKtiuYqpWJsi+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6455
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721849352; x=1753385352;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=95HHNU4HcD+7eaZ4Sz5IYbFDIzH0cpOYa05qxzDPCo8=;
 b=j/sAsdj7wwWto0hJOt9OlKu4gLlL++ghG2a5X0xdyfNBnpAZZNn4KZRZ
 oPBJuO7v2XzDiA+CmDpGuREj/sR3w53WwvxKEyOnCFgICj7i9Xzi4kd+H
 EFuiVSxUEv2ZwFJAB3TH609yBAQM2ap8eoPKyNry69Qwmhp/h6U329YRa
 zxsMU3syQnpxj4KJQyf5C+Yb7M9hZKjdvDbv//COUaYgZ5NB65LhbdhqF
 FtRhnX1eHlYVmpV3KEk2OZ0ylgXuOIHFz7nPHmXHFZN+JkGjFhI/7tLep
 fUVD9kRbSxN4x8bljked659kHRHdOBzPyY8r5ItK1eiFXEVlWFdzL4qow
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j/sAsdj7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 12/13] iavf: refactor
 add/del FDIR filters
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-24 10:30 a.m., Simon Horman wrote:
> On Wed, Jul 24, 2024 at 10:14:19AM -0600, Ahmed Zaki wrote:
> 
> ...
> 
>>>> +/**
>>>> + * iavf_fdir_del_fltr - delete a flow director filter from the list
>>>> + * @adapter: pointer to the VF adapter structure
>>>> + * @loc: location to delete.
>>>> + *
>>>> + * Return: 0 on success or negative errno on failure.
>>>> + */
>>>> +int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
>>>> +{
>>>> +	struct iavf_fdir_fltr *fltr = NULL;
>>>> +	int err = 0;
>>>> +
>>>> +	spin_lock_bh(&adapter->fdir_fltr_lock);
>>>> +	fltr = iavf_find_fdir_fltr(adapter, loc);
>>>> +
>>>> +	if (fltr) {
>>>> +		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
>>>> +			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
>>>> +		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
>>>> +			list_del(&fltr->list);
>>>> +			kfree(fltr);
>>>> +			adapter->fdir_active_fltr--;
>>>> +			fltr = NULL;
>>>> +		} else {
>>>> +			err = -EBUSY;
>>>> +		}
>>>> +	} else if (adapter->fdir_active_fltr) {
>>>> +		err = -EINVAL;
>>>> +	}
>>>> +
>>>> +	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
>>>> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);
>>>
>>> It seems that prior to this change the condition and call to
>>> iavf_schedule_aq_request were not protected by fdir_fltr_lock, and now they
>>> are. If so, is this change intentional.
>>>
>>
>> yes it is, fltr is member of the list that should be protected by the
>> spinlock.
> 
> Thanks,
> 
> I would suggest moving this into a separate patch: changing locking is a
> bit different to refactoring.
> 
> Or, if not, at least mentioning it in the patch description.

I will mention it in the commit message. A separate patch is an overkill 
IMHO since the function location has changed and the patch would not be 
applied to previous versions.

Thanks,
Ahmed




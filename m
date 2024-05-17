Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E0B8C8DA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 23:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2793406F2;
	Fri, 17 May 2024 21:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tpTh5uT9RfQj; Fri, 17 May 2024 21:24:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 977574052D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715981042;
	bh=O79X+DtFDBe7sr1ixGn5yjShjEqdJDC2hj7W4qODpsA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hbYvkcLihhCncmihZWKGDWCmrbHcTRCfWEPmzNXym/wK3YfyvuyjlxFEqLqFPBo+p
	 z+YshoVhUo46z2M/JbbBWe2ksY+G0RfYsU49qIFZuGm2gsp5LDhoj7awpH6Ll1jCty
	 +oZl2QiIlc/Y7S9RG0U6ob1QRy7fxepWiLJqEHruVTIpZODqQPU5dDMFYWK03v/62B
	 Jq/qGV2Iwt9gooEYJidlUjCoTxMSH3+WzyAzLNGLrHu/nD1fhMZgZw63JRKaJxMGjq
	 pfG7dW1Ib2p3BAae2DKjigCI0mN9OYOUI5Fwf7BFppZZCQbS1Qmy9jqu9lyXiMzZZn
	 vlBh3wtJ+29ig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 977574052D;
	Fri, 17 May 2024 21:24:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 41F091BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 21:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C63140520
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 21:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UBlo1NluhZSc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 21:23:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8F92404E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8F92404E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8F92404E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 21:23:58 +0000 (UTC)
X-CSE-ConnectionGUID: 7KGJxkzlT86Ak4P/QsNhKg==
X-CSE-MsgGUID: YQ2qtEDIQQSaiTlDZrO+gA==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12304651"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12304651"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 14:23:57 -0700
X-CSE-ConnectionGUID: gkRmAS4RRWWkOP9FJJfruQ==
X-CSE-MsgGUID: uXzFYLVrRlWeWXe9Vhd12Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31928271"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 14:23:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 14:23:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 14:23:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 14:23:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvyXijKOx5WbvB3bDOm911s8z6+CrD3yth9pEqoPiOhbzxwJoJK3131tnzpkmhWp9qSvLwVTV/o3Ri3YKUSENnhro2Dvgnn+nrhLdV7fPobH8SAy1tKlcCLQ3zBqNfCnexyJFekGUR5cOljois4MwKvnKiuu3k4KrqgHk8dW+UKPwUEOpe5c+N5Xav8Zvpo5Ni0gHtvyTlY4KUGHNc35scu8AuMc/y9yprpJzKuGMz+j5WYaQZIh/XgZF7ussP87Gdpi+QjKSUBVHfZp8HCbmqsWdOhpn0hbd7SwWn4hJuggM9bECdmc6g/fnT51gCXSPtY19AHuNnMNA0eF8K/r1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O79X+DtFDBe7sr1ixGn5yjShjEqdJDC2hj7W4qODpsA=;
 b=frjE9sGTBQRDbC2wObvFsQi3Dq6/PRbSAnilsMLULNMPA/DF4vsO9m5sO4jXtJhkUR+Heenc1clN6pVhJPYBvyPVWbJnyAwf5X2dgGaFhMX1my/tOjvTrQYXoDAaKLL6IZsp7/sW/nTCBgsDXqOHZ22rmKISNm7iH4IxUv/hWlEEZWytIWfWyF13z8UifxWINevrKYhZcyJqr6KEVYfqZlWzpnSLHOQKVFMlwKiG4n4PxytY7sR9SR5wp7qhKjmllnwkSjejzj72pgdVb1GDN9/ZMovkXcuMqYEl4QNSjHpW3HHa1G9CNKbNVsv5fE7s8aXqtXJ4JdKTE41nHotkTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB7445.namprd11.prod.outlook.com (2603:10b6:510:26e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Fri, 17 May
 2024 21:23:54 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 21:23:54 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix integer overflow in
 ice_get_pfa_module_tlv
Thread-Index: AQHap9auYJqv3MmrQECOQisPMrHRfbGa/eGAgADxFXA=
Date: Fri, 17 May 2024 21:23:54 +0000
Message-ID: <CO1PR11MB508904D988E4315E64D19A31D6EE2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com>
 <2328f1fd-8967-4fa1-ac0f-8c800c4b8f48@molgen.mpg.de>
In-Reply-To: <2328f1fd-8967-4fa1-ac0f-8c800c4b8f48@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB7445:EE_
x-ms-office365-filtering-correlation-id: a626ccb8-0699-4cb7-d0b8-08dc76b7a7f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?VUtxV3R6WnFlQ3c0TnVRRTllK3ZDVk54ZWx4L0ExZHBibGJHa2gwV1I1N1Jl?=
 =?utf-8?B?T0VicTMyNDUyWDFPeU9hWUpiVTZPYXNQQ0NDK0VMbGJPbStuR3c4dU1XVVhJ?=
 =?utf-8?B?dENOSWkxNlRXYkZWV1Bib0xIU0FQR2VqM2Z4Z09JVmcvYkd4dDdEaC9zL0hY?=
 =?utf-8?B?OFNveE5vZHBvc0JGM0NidEZVY1dJbjY1T2RsdmNDcXN3dUc3NkhDVXJxb3FW?=
 =?utf-8?B?Sm1uTkx2VmRLS0VDMmVmR0gyaGdsczFGT2NMdkttcXVCN0IySVdiSFl1V0ZT?=
 =?utf-8?B?clNSbFE3SXd5elo4VEZLanB1MUJJdytwTEV5VUJwLzBWeEtwWkN6dDNzbEZV?=
 =?utf-8?B?dWNxd3pla3V5T3BLaUZzeEJzQzIyRVVURC8wMW5sYmZNLzZWS2k1clBma3ly?=
 =?utf-8?B?TW5HNDhGUWQwK2prU09obkhtZjJ0T2xTTUhHVWNEL3pVeVN1ZFJSMytaV3Vy?=
 =?utf-8?B?NHY1cXRaSGNCNEdCV1Y0QWlZdnFBRzZ3Tnc3dTJoRi9OZ1RzSUNrWk04ZXdi?=
 =?utf-8?B?Vy9SY1F4bUJYa0FPaitnVXgrM1JDbllOYnN1NE9EOC9yZEhRVEFRQnlFWnAy?=
 =?utf-8?B?czd3Z2JqbEZkK2VROWV0QVIxY0RKRjlmay91ZllKRXBjZ0UybDFrSXhnUkd4?=
 =?utf-8?B?WW45ejZJOGZhRkxEYUVKT2JYQUc4NzNDQmhXaVFPOWhVY0ZuQXJrTjhnQ2Ew?=
 =?utf-8?B?anFBU3hoQUREQzZFdHNXb05DSTRMcE5UZzkzQURXZjNiMUZMTU5vVXhZTXdN?=
 =?utf-8?B?b1UrTDdMSlp2b0tkdm1SRVE0MzlTdHdMbHR1MDF1V2dwWjlXNXNoQmsvdnRC?=
 =?utf-8?B?a2lEU1A0MUpaZFBQeUJTZG1YSW10ckdxSjFyN2ZWMGIwWnFDSFhMcEl3TFc5?=
 =?utf-8?B?RXFXOUhOeFgzbEMyVkhJMEEvR0xWM0pWS2V2MUt3TDVDdE5aanNvOVpiU0JF?=
 =?utf-8?B?ZVRQYi9paitnZkFTT3Q2T1V1L3dRYTlZYXN6UUROSzFwcmtSdm1DeFR5LzB4?=
 =?utf-8?B?ZXZHUEExeVBvdDltVG9kZ3NQenV5N2tRbTVQRnUweW9GaUswL2p4dmY4a2NM?=
 =?utf-8?B?Q2lxMitjMld4SHZlV3ZDd2RzYzdrMDVEbElVYWNwR0xNS0dDNDJtZjV0bHcv?=
 =?utf-8?B?VVNSaGZxemhEODl5dDZRU3ZCQkZQeTBIeThPRDMyb1N5MUtOZ3ZOSGh3Ri9a?=
 =?utf-8?B?SFJ0U2V0RGVLbnFDMXBlQ1FmVnZMUkhuSzNObjBNRzdyc0t4NElkWVhOVW9Y?=
 =?utf-8?B?VVpUTWdDbWhlTlRiOGIyeit1eGpqT1hjZ0llSkZscVhkVy9OZzFsRzRYU3ZM?=
 =?utf-8?B?UHJYZnRTcFVpQmd4eFZzVUZoaE5VRWRHdCtaMEs3OVdTQmt1TmdtLzNnbzZ6?=
 =?utf-8?B?Uk5tWGZ0ZS8wU3NMS1BiRWdjbFF4bnFISWtUSERBckpoSkNBYmVtQ3hZcDZw?=
 =?utf-8?B?SFZQRFNKYWhwZEhGMmNselV3T3Z0N0M5SmpwM0JvWWZ3aVFjR0gzcTVjUlBW?=
 =?utf-8?B?Ri8vQWx4R0EwZytKWFZsNUVvU2IwNGdSZS9EaGx3aHZGVXJ3eEFRV2NpbGhE?=
 =?utf-8?B?alA2c3ZVdUEvRUJlRCs2dm9STFBvQnJPS2Qra3FCWkl1Ty9DR0l1NjBjYXI0?=
 =?utf-8?B?ME9EbFpXamhZSGh5VXcvUUxhNUZsZlBJWkJHVElHNXcxbG5rdndXUkUwcyt0?=
 =?utf-8?B?YWhvZUVZZWVGdlhibDcvdFdGMUVtSEVySElyOEZRdGhJVEloeVVqbG1KR205?=
 =?utf-8?B?K3B6dlFoYS8rWGo3ZldKUnZaWUJLZlVVUzI2eHV4Z2RFa1pubzhLZVVGK0tJ?=
 =?utf-8?B?YkE0RG43ajd0ZHUyN3BJdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0dEZm9hZC9BWTBwVG5CUWM4QlVMV01uQ005bnVDLzljbUtZc3Jud2duZGRz?=
 =?utf-8?B?dXNVZlJMcUtoSk9iNnI3ODArNTR5dTMySDVyd2lUdlBFM0IzZDlKbEszZGtQ?=
 =?utf-8?B?UUxSS2JyQXJEUnQzZmFBWk9JT2lmMDFTUDVncGZkdEVPbW1FWXhNaU0wVGho?=
 =?utf-8?B?d1AxOXBnSE50bEZzM2JPSnNhYWlmYlpjbUNPbEs3NmFVOWpDNmJ6OFBlWUZv?=
 =?utf-8?B?NlNTR3lOVy82WlowK2NKVFMxekhaTGxpZzVlbHNxaTNlRS9TR2xBcmphc1pJ?=
 =?utf-8?B?ekZKbGRSZUo5bnVQdms3OVE4emhsd3NMTHBFWUJhUk5JLys5U0V4U0cveExr?=
 =?utf-8?B?V0haMTVnTWVDUGtwRmxqYWtTSlJKQ3VLL3dHQzZVaTA4TWlsQUxDUUREU09J?=
 =?utf-8?B?ZFVEMzU1L2YvTzl1VGg2SnJtZ2ZpNm5QbS9Fem1pZHZkdlVnejhtMEUrNTQ0?=
 =?utf-8?B?VUJiK1B2TGdZNXBDK0RiSGh4N0Q4b2QyMlR3Smd3dWJGbWRNQ2dic0ppRnhy?=
 =?utf-8?B?dUI2YWxUemJCSS9oMXdwSkh3dm9lcTQ0NGhCMjZYcXR4NVUwWVBUMHBPODNJ?=
 =?utf-8?B?cDFRQ3oxVXNaSndFQ1ZudHI0NHJPMmlJR1E3MStOYTA0TVoxcFo1bUVSalZH?=
 =?utf-8?B?UC9veXpFNlJDZkh6dks3bTd5U2RLemUxSU11RW1VQVdXSkt3RGUyUGJlTzRs?=
 =?utf-8?B?NmozNWx6b0loYUpvMHZ5WXlnbjhIQ01Rd3RQR0U5bm1pcnJaNkgzQWJvdFZn?=
 =?utf-8?B?THIvRHBLbTVwSjBwTFgwMjByK3hhYzkyVW5BYTd0UjlJUzRBRi9ZMU1XZGRC?=
 =?utf-8?B?Z0pMbWF3bDVxVGdkcUlvMzFDR2FMUk1xSmhjRDdwa0JsZFNuUEJDM0VDMmVP?=
 =?utf-8?B?cGJEbzRUaU5lMm0xMVBNa1RMRmNPU3BCYW00Uk1mNGhqc2EvWko0cUZyUUZv?=
 =?utf-8?B?ZkMrcWd0ZHhkSUpKbXpqekNuMFdWdGlYc0M1ZHZRWlJub3huRzhxRThNOGli?=
 =?utf-8?B?cEtnTUZFcjNJcWdtdGRNN2dQcTFrZ0NTNmJLOTB3Q0hJb1U2czE5UCs4U2ho?=
 =?utf-8?B?VGEvaXdVQU9nYVRzcUNTK1NuZVJQZDUydlREbDdYVjZlVEcyQW1tV1hoaUtM?=
 =?utf-8?B?TXo1WEc4alkrSXBuVmcwRk5kMk94d3FyNnZ2T2hmNWx4NXhhdGtERnNObG91?=
 =?utf-8?B?R096MStMWVc0UnkxMFpVdEVacm95TXFyd0llcGd1NFJucUltWFhLMnlxKytK?=
 =?utf-8?B?QkVTSzl4RHNqT2Y4NkxvODIwdmtrWm1wTXhXTGVpeXNjVU5Da2JPUWZjV1ZV?=
 =?utf-8?B?Qnhoank3cWJDVHRlZkxTMDg5NnlkTk5DWTk0aTJCbjE3d2Rib0J2VXUyckY1?=
 =?utf-8?B?c0RnZWFXZ0k3eHljSGJ0WGVCbVdiaDl3YnM4emdtVVJ4K0R2UzZtcGFocW13?=
 =?utf-8?B?Z0lvdzhVL1JoT1BBTFYzRW53ME82VUdnbFVvcjJJbnZYRTE3ZVpnTU9nTi9x?=
 =?utf-8?B?NWtnVk52QzIzY0h6blhnRkJaOWZQWWVEZzk2bmpMa2xpMG9oclFSVEpDSGF3?=
 =?utf-8?B?R1RNZkNEM1ZMTXltZ2lZenNXRmJlS20yTWdQS0E5M2F4cEJBNDdsUFRIZlN6?=
 =?utf-8?B?dWprRmtNUjJvaVF1SEFCNHNBajRzbTdXRWtzLzZkQ2dNNzkzQndZT0hMcHZ3?=
 =?utf-8?B?MmYwVjg1Vm82c3p0V1hYSkZ0Wm5ienoxaTJkZ0M1TE9NaHNwVHRSaFk3ZGtJ?=
 =?utf-8?B?RWtFOWRKdWVxQWRHdnRQS0tGTkkzOGEyVnFXVFVVSHczZGNDbGxXeVRISHlW?=
 =?utf-8?B?Y3NUQkpUODRZTXNUcGRwcXJuSHk2dG1Nb0RFZEx2S0ZvUjVjblVCRGxNMTZ3?=
 =?utf-8?B?TUxESEgxVkhaOE5BV0RIYXFUaGdjcFYxb2hXcmtmN0tTVkZjbTlHSU9zK0FY?=
 =?utf-8?B?bGhjTWNSeGkyeFo1cHZScFpjVGVkaUppakJsTVhmdlBIbzZSR28wK1RLRmdS?=
 =?utf-8?B?OGQwSjdyaERJdjU1eVo5d1VoVXA4ZU5jaXh5SDRUSVpMZzd3REk0cWg3c3Jq?=
 =?utf-8?B?UllZQ3MxMHNWOEI2cWJlalM0bGszSGRIV0d4MW1ZNDNka2ZBV2dkRVVXbkZX?=
 =?utf-8?Q?ppRdFptCQWAZrstHyIB8k+yJr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a626ccb8-0699-4cb7-d0b8-08dc76b7a7f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 21:23:54.8398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 67setwhKmmcDlaAhzfJSkVB4udQBfp6SRd2N29W19gUGDxOFGVfWSS2U39mgmHxN8IalSuzIsbGGw9g63rTGNYeZ1OuBQ1waZbP7xSk1LKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715981038; x=1747517038;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O79X+DtFDBe7sr1ixGn5yjShjEqdJDC2hj7W4qODpsA=;
 b=QXWD8GaPpMdB5mjS5nmMUv+HiyWObLDw1eiwqlvLfcgGGB51selHHx4O
 MQ5THWrrnAuvLSifkqoaQ+Vcj1bSD1VvmxKW+LuDtTGG3CoBHIoP9w+lE
 TfMQkLMkd9IZR2j6w69MrETWsNcUI3SxuqWgD8lNvfKdgRXCrZWZftCiX
 Nh50QuyVnDwdjJeLgd3dbjqKjqvtIl963L/u1jdfzI5mRrslbq6eF1JeH
 kndKBsDCUAapFi4M9dKdAEbi0r9OZp73FM5IbYQbx3EViEcuq1KbjekU4
 DqIprmpS0RRIIbb0XL3xEoPgiCOGCwfack0IRmoUBz+svhQqSYfTL/xPb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QXWD8GaP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix integer overflow in
 ice_get_pfa_module_tlv
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Greenwalt, Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAxNiwgMjAyNCAxMTo1
MiBQTQ0KPiBUbzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+
IENjOiBHcmVlbndhbHQsIFBhdWwgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT47IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5ldF0gaWNlOiBmaXggaW50ZWdlciBvdmVyZmxvdyBpbg0KPiBpY2VfZ2V0
X3BmYV9tb2R1bGVfdGx2DQo+IA0KPiBEZWFyIFBhdWwsIGRlYXIgSmFjb2IsDQo+IA0KPiANCj4g
QW0gMTYuMDUuMjQgdW0gMjM6MTggc2NocmllYiBKYWNvYiBLZWxsZXI6DQo+ID4gRnJvbTogUGF1
bCBHcmVlbndhbHQgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT4NCj4gPg0KPiA+IEl0J3MgcG9z
c2libGUgdGhhdCBhbiBOVk0gd2l0aCBhbiBpbnZhbGlkIHRsdl9sZW4gY291bGQgY2F1c2UgYW4g
aW50ZWdlcg0KPiA+IG92ZXJmbG93IG9mIG5leHRfdGx2IHdoaWNoIGNhbiByZXN1bHQgYW4gaW5m
aW5pdGUgbG9vcC4NCj4gPg0KPiA+IEZpeCB0aGlzIGlzc3VlIGJ5IGNoYW5naW5nIG5leHRfdGx2
IGZyb20gdTE2IHRvIHUzMiB0byBwcmV2ZW50IG92ZXJmbG93Lg0KPiANCj4gV2h5IGlzIDMyLWJp
dCBlbm91Z2g/DQo+IA0KDQpUaGUgVExWIHNpemUgaXMgMTZiaXQsIHNvIHdlJ2QgbmVlZCB0byBo
YXZlIG1vcmUgdGhhbiAyXjE2IFRMVnMgdG8gb3ZlcmZsb3cgYSAzMiBiaXQgbGVuZ3RoLiBJbiBw
YXJ0aWN1bGFyIHRoZSBOVk1zIHdoaWNoIHRoaXMgZml4ZXMgd2VyZSByZXBvcnRpbmcgYW4gaW5j
b3JyZWN0IFRMViBsZW5ndGggb2YgMHhGRkZGLCB3aGljaCBjYXVzZWQgdXMgdG8gb3ZlcmZsb3cg
dGhlIHNpemUuIFRoaXMgcmVzdWx0ZWQgaW4gdGhlIGRyaXZlciBpbmNvcnJlY3RseSBsb29waW5n
IG92ZXIgYW5kIG92ZXIgaW4gc3VjaCBhIHdheSB0aGF0IGl0IG5ldmVyIGV4aXRlZCB0aGUgVExW
IGxvb3AuIFRoaXMgaXMgYSBidWdneSBOVk0sIGFuZCB0aGUgZ29hbCBoZXJlIGlzIHRvIHNpbXBs
eSBwcmV2ZW50IHRoZSBkcml2ZXIgZnJvbSBpbmZpbml0ZWx5IGxvb3BpbmcsIGFzIHRoaXMgY2F1
c2VzIGRldmxpbmsgZGV2IGluZm8gdG8gbG9ja3VwIGFuZCBwcmV2ZW50cyBkcml2ZXIgcmVtb3Zh
bCBvciBhbnkgb3RoZXIgZm9ybSBvZiByZWNvdmVyeS4NCg0KSSBzdXBwb3NlIGFuIGFsdGVybmF0
aXZlIGZpeCB3b3VsZCBiZSB0byB1c2Ugc29tZXRoaW5nIGxpa2UgdGhlIG92ZXJmbG93LmggaGVs
cGVycyB3aGljaCBzYXR1cmF0ZSBpbnN0ZWFkIG9mIG92ZXJmbG93aW5nLCBidXQgdGhvc2UgYXJl
IGFsbCBzaXplX3QgYmFzZWQuDQoNCj4gPiBBbHNvIGNoZWNrIHRoYXQgdGx2X2xlbiBpcyB2YWxp
ZCBhbmQgbGVzcyB0aGFuIHBmYV9sZW4uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIEdy
ZWVud2FsdCA8cGF1bC5ncmVlbndhbHRAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEph
Y29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYyB8IDggKysrKysrLS0NCj4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYw0K
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmMNCj4gPiBpbmRleCA4
NGVhYjkyZGMwM2MuLjllNThkMzE5MzU1ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX252bS5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9udm0uYw0KPiA+IEBAIC00NDEsNyArNDQxLDcgQEAgaWNlX2dldF9w
ZmFfbW9kdWxlX3RsdihzdHJ1Y3QgaWNlX2h3ICpodywgdTE2DQo+ICptb2R1bGVfdGx2LCB1MTYg
Km1vZHVsZV90bHZfbGVuLA0KPiA+ICAgCQkgICAgICAgdTE2IG1vZHVsZV90eXBlKQ0KPiA+ICAg
ew0KPiA+ICAgCXUxNiBwZmFfbGVuLCBwZmFfcHRyOw0KPiANCj4gQnkgdGhlIHdheSwgaXMgcGZh
X3B0ciBhbiBhY3R1YWwgcG9pbnRlciBhZGRyZXNzPw0KPiANCg0KSXRzIGFuIG9mZnNldCBpbnRv
IHRoZSBTaGFkb3cgUkFNLiBUaGUgdGVybWlub2xvZ3kgdXNlZCBieSBib3RoIHRoZSBkYXRhc2hl
ZXQgYW5kIHRoZSBOVk0gZG9jdW1lbnRhdGlvbiBpcyBhIHBvaW50ZXI6IHdlIHJlYWQgZnJvbSB0
aGUgU2hhZG93IFJBTSAgdGhlIElDRV9TUl9QRkFfUFRSLCB3aGljaCBwb2ludHMgdXMgdG8gd2hl
cmUgdGhlIFBGQSBzdGFydHMuIEl0cyBub3QgYSBwb2ludGVyIGluIHRoZSBrZXJuZWwgb3IgQyB0
ZWNobmljYWwgc2Vuc2UuDQoNCj4gPiAtCXUxNiBuZXh0X3RsdjsNCj4gPiArCXUzMiBuZXh0X3Rs
djsNCj4gPiAgIAlpbnQgc3RhdHVzOw0KPiA+DQo+ID4gICAJc3RhdHVzID0gaWNlX3JlYWRfc3Jf
d29yZChodywgSUNFX1NSX1BGQV9QVFIsICZwZmFfcHRyKTsNCj4gPiBAQCAtNDU4LDcgKzQ1OCw3
IEBAIGljZV9nZXRfcGZhX21vZHVsZV90bHYoc3RydWN0IGljZV9odyAqaHcsIHUxNg0KPiAqbW9k
dWxlX3RsdiwgdTE2ICptb2R1bGVfdGx2X2xlbiwNCj4gPiAgIAkgKiBvZiBUTFZzIHRvIGZpbmQg
dGhlIHJlcXVlc3RlZCBvbmUuDQo+ID4gICAJICovDQo+ID4gICAJbmV4dF90bHYgPSBwZmFfcHRy
ICsgMTsNCj4gPiAtCXdoaWxlIChuZXh0X3RsdiA8IHBmYV9wdHIgKyBwZmFfbGVuKSB7DQo+ID4g
Kwl3aGlsZSAobmV4dF90bHYgPCAoKHUzMilwZmFfcHRyICsgcGZhX2xlbikpIHsNCj4gPiAgIAkJ
dTE2IHRsdl9zdWJfbW9kdWxlX3R5cGU7DQo+ID4gICAJCXUxNiB0bHZfbGVuOw0KPiA+DQo+ID4g
QEAgLTQ3NCw2ICs0NzQsMTAgQEAgaWNlX2dldF9wZmFfbW9kdWxlX3RsdihzdHJ1Y3QgaWNlX2h3
ICpodywgdTE2DQo+ICptb2R1bGVfdGx2LCB1MTYgKm1vZHVsZV90bHZfbGVuLA0KPiA+ICAgCQkJ
aWNlX2RlYnVnKGh3LCBJQ0VfREJHX0lOSVQsICJGYWlsZWQgdG8gcmVhZCBUTFYNCj4gbGVuZ3Ro
LlxuIik7DQo+ID4gICAJCQlicmVhazsNCj4gPiAgIAkJfQ0KPiA+ICsJCWlmICh0bHZfbGVuID4g
cGZhX2xlbikgew0KPiA+ICsJCQlpY2VfZGVidWcoaHcsIElDRV9EQkdfSU5JVCwgIkludmFsaWQg
VExWIGxlbmd0aC5cbiIpOw0KPiANCj4gUGxlYXNlIHByaW50IGJvdGggdmFsdWVzLiBTaG91bGQg
dGhpcyBiZSBhdCBsZWFzdCBhIHdhcm5pbmcsIGlmIGl04oCZcyBub3QNCj4gYW4gZXhwZWN0ZWQg
c2l0dWF0aW9uPw0KDQpJIGNhbiBjaGFuZ2UgdGhpcy4gSXRzIHVuZXhwZWN0ZWQgYXMgaXQgaXMg
Y2F1c2VkIGJ5IGEgbWlzY29uZmlndXJlZCBOVk0uIFN0cmljdGx5IHNwZWFraW5nIEkgdGhpbmsg
dGhpcyBjaGVjayBpdHNlbGYgaXMgc3VmZmljaWVudCBzaW5jZSB0aGUgUEZBIGxlbmd0aCBjYW50
IGJlIGdyZWF0ZXIgdGhhbiAxNmJpdHMuIENoYW5naW5nIHRoZSBvdGhlciB2YWx1ZXMgdG8gMzIg
Yml0IGVuc3VyZXMgdGhhdCB0aG9zZSBkb24ndCBvdmVyZmxvdyBhbmQgaW5jb3JyZWN0bHkgY29t
cGFyZSB0cnVlIGFzIHdlbGwuIFRoZSBvcmlnaW5hbCBmaXggd2FzIGRldmVsb3BlZCBieSBQYXVs
IEdyZWVud2FsdCwgc28gaGUgbWlnaHQgaGF2ZSBzb21lIGNvbnRleHQgSSBkb24ndC4NCg0KPiAN
Cj4gPiArCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwkJfQ0KPiA+ICAgCQlpZiAodGx2X3N1Yl9t
b2R1bGVfdHlwZSA9PSBtb2R1bGVfdHlwZSkgew0KPiA+ICAgCQkJaWYgKHRsdl9sZW4pIHsNCj4g
PiAgIAkJCQkqbW9kdWxlX3RsdiA9IG5leHRfdGx2Ow0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywN
Cj4gDQo+IFBhdWwNCg==

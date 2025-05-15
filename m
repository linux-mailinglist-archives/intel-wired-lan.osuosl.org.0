Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54833AB7CAF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 06:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB5D541547;
	Thu, 15 May 2025 04:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NANwVlRVFQ55; Thu, 15 May 2025 04:39:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D35F241525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747283971;
	bh=ED4emRdUg+cXU6dWhKZQurgOO7qZg9TPm6K7Fc86SrA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pDPwudXnKRHV2b0z/im01exG+c3imlri9fEpW4w7UYmF9aArnZ8vhw2FY0c8BS/AV
	 GUtvPI0t6qIPTUyR1JrDLqGCPM+521vUHMUpHwhcMdsBexmtZm9Cw7b3gz3jf1GyUe
	 GLdF/YsbsjmB2UqJiL3cIV1ZvLvogVnNBVViqereutHQgujIVnsJAVxNBkpnXJpsN7
	 uAQ86F6TOSuh/O8GnKqdHO1l/fQJW+8L564SNoZbhCmBfAb38jhH9RDipmp19yj26q
	 IxOHoCpkZ6IAGJDHKrT1ShhLpTlWTftTp8zn7ArFVcWARzDypzdHyt0rSmaQYdMfTj
	 tDv8KUsdoJ+qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D35F241525;
	Thu, 15 May 2025 04:39:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6959C153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 04:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A75A610D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 04:39:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-heRzUwUzdA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 04:39:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5ABF46105F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ABF46105F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5ABF46105F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 04:39:28 +0000 (UTC)
X-CSE-ConnectionGUID: Sob27iI0Ts+OdBTJgVO1EQ==
X-CSE-MsgGUID: xVPSmH9kRu6eC614oA7Brg==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="51844750"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="51844750"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 21:39:28 -0700
X-CSE-ConnectionGUID: WC1oxWNjTF+AuaznMSFTkA==
X-CSE-MsgGUID: klqBjN0pQ2CsPUbvkbyJ7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142263962"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 21:39:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 21:39:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 21:39:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 21:39:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mohCWXw4nimCVcxbRMnGRuP37UjwiGCT4HQRuCry9aQzjWq+Ov+BBa0bTTtsp5rTLeGN7GmEfq53Ar+9bK+AiJIezNzBdhtYAow9U63xAp797ItPNp9YCsfui7LCOxbakdgpfFmrE758DNoBs+x68Nb/Rk+ihiJj5LAbJTZ6RbaULP2L6bL4DQyGEbNGY///KwmfsCNPYS1cbLLO+/HOraCVaOuHu0Y2UP3x3I/CYuvkyelfPxzr8ahCjw1dgx5EAD9Fcdh3BjzXK/xw+zNfFvvUpnQP2lNq1B5y/OhRYlSitliuKxX1K30S9pPv2oHcp7jAbgxKOIHMzwyKWojfXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ED4emRdUg+cXU6dWhKZQurgOO7qZg9TPm6K7Fc86SrA=;
 b=gGJHRRqOVOobB76RwzYtuiXJck8/he5Io42KkNNty+IfwzXdFUGXmP1fZYCmvk+lUP/e8O1uUWEQEW5KnCy5FTxFz6T4AzLysOgPSMYicNyqBJ6f1wzd6CUkHJJXjhIcE7SW7ZEQoMCgxBfU6fqSHsiSBDQAhqiRCjKPFa4UvTHeNpcl//M8R8BIuvB6Ph6BVjIUl67G21jVoz5SYizXnSQGcNJ5pmNWhL8w+JzOo7nwJYLYtPDxjZhV1OGSq9ArNE3aO/K1WLkqZYZDuTkwznvzC6FxbtV7WNpCu22wMGj7MROXjITtHVJ/zJZiYHZeCbwqLr3wcZjRl3cHZlchTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DM3PPFE50071912.namprd11.prod.outlook.com (2603:10b6:f:fc00::f57)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Thu, 15 May
 2025 04:39:25 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8722.027; Thu, 15 May 2025
 04:39:25 +0000
Message-ID: <03216908-6675-4487-a7e1-4a42d169c401@intel.com>
Date: Thu, 15 May 2025 07:39:18 +0300
User-Agent: Mozilla Thunderbird
To: Vlad URSU <vlad@ursu.me>, Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <23bb365c-9d96-487f-84cc-2ca1235a97bb@ursu.me>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <23bb365c-9d96-487f-84cc-2ca1235a97bb@ursu.me>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DM3PPFE50071912:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dd59dc6-2d1d-4ad4-1778-08dd936a7810
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXZGbWlFSG9ZaFlEVnlLNldQVW15MmIyL3BlQWphNlZNY0JrMmlFdzN1WXNj?=
 =?utf-8?B?aVhCckxKSGd6M2FRelJHODhKZnMxUCtvWGVDVS8vUGFjRFRpVUV6RDR1QjV5?=
 =?utf-8?B?QWduU2U4UmtZaVI3MTNxZ0E5RVNEVkEvNWhQSno2R2pmTHluY0V6RXFzTk83?=
 =?utf-8?B?VnQ0T3hCNzBjLzZwYW0xN0k0Vk1GdUNZSmcrbWhpZTFxZUVJaTZOc0VDRnJ1?=
 =?utf-8?B?Uml1MlhGNlRhcU9jTkVFTG9oL0tyN3dSVjNYZFhCYUlwejFmcW5rRk42T0Z6?=
 =?utf-8?B?SXFkVXErR0xrYTRQUWVIU2RFSjFSbmxUWGxUTmx3eXlGZmQ2eG1GdVF6MDNI?=
 =?utf-8?B?TWlMUWRLUG56dEdVNEJJQ0RUdS9DcEYzNXZ3RmVUa1plK0s3dHJWbG1sdUZt?=
 =?utf-8?B?M0pNclBTK2xPb3BwZjZOZHdxalZjTE0yRG5KQlZTeWt6d3lXUU5ibzQzcXJ0?=
 =?utf-8?B?amNkYkxENkxvd2JiemN3ZDRCNjR0U2FlUWFJWUtjenphT2craTdtZ2dNMTZI?=
 =?utf-8?B?c0JsSnVUYkRQTDlOV1dRYmNyRURzRzlEcGJva2Vwd0s5Y1p5VXBNNUpXeUdY?=
 =?utf-8?B?UkdyWjFMbTAvdzY0VEVNekhBZTNzSWNQZzNHRVJBUjBlOHlYWDRkN1BFTVVI?=
 =?utf-8?B?V3hLQUFsWHFGYWlwb0l2SVd6QmhPK1NwUDF2TnV1MHVrcDgrYzhWYUtER3p4?=
 =?utf-8?B?b1VyUnRWcTgzVlhIS3ppZCsyQktmM3Rib3QyaEk2a2xBN0c2bDVBUnpVdFNY?=
 =?utf-8?B?UUFDeXgyODFpNUtwT24vMGZUMThWYWFmbzdoTXhxb2Zic21PeWtidk9nZ09h?=
 =?utf-8?B?emVseS91OGtlWG5XdzI0cTdWQ0xRQzR3ekxWaGpTR3V2TlViaEZOaEV5UW0y?=
 =?utf-8?B?d0Q0dnp5a0VpcGVnNUR1YjBDSUE3NFd3ZzZSWkkrQ25tMDhMKzhyQnpqbXhh?=
 =?utf-8?B?LzhaR1dyS0VQMkZPLzNHWS9MK0FCTmhCb2c5c2VleFZGcmpXTkhSMmRLaDMr?=
 =?utf-8?B?UDVmL21DeE5XSW1ucnpLUmw5ZFV4bFNSU2FleWFtREs1VkRBVTFpOHlPbzBR?=
 =?utf-8?B?T2JmZ1RyS3ErYlB0aXg4Q2F2UitXRCswRWxPaFNsbCsyWEpDbTFDaHU0RkFn?=
 =?utf-8?B?RUJJYzZ1RDBPWEVobVpMYnJaeEcrTHk2b0tFTHVpZVNYMWUzTlNXUFZCRjgr?=
 =?utf-8?B?ZDFtNGdOMExPcXdZM3N6OE5SRnpGQW1MZVczN1p4VllOVTRERVVRelpvcllr?=
 =?utf-8?B?V3U3YS80MkN3S0pPQlFrYTJkbFEwYWZGRFdhMko0Zk52R3VRUXlUT0x4VnNW?=
 =?utf-8?B?SDlxS1ZZZ3hwWkI3VjFzSC9GSnZXM3dsWmQ0L3ZPcGtpNlZmalhkRVdCNFV4?=
 =?utf-8?B?T1pCN1lnWjFocXQxMHY0YjJMSVE5SFFORWhIUDFzTENxRjlMZnZ3Zk1HV1FZ?=
 =?utf-8?B?VktZVHEzWEphdDVpN3VLcE1sV0NWL2JGQ2JJZlZuejdvYnJFWGpOWWFnWWp3?=
 =?utf-8?B?eGlKS0kyV0taeHpkaUZaY082OTZrTTVyMWpXWjVZQUtldXh6RDF3WHhVV2U3?=
 =?utf-8?B?YnJPSHpRNk5jZ0o4VU5VYkRHdXp0OWZyR3BnVEJ1VlJxQ1UxMzdHaGZzU0xG?=
 =?utf-8?B?S0t5bWZRczUwaHZjM3RKR2FDYURZSDNTelJydlpvckc1UEhFcE9VRzJOeUhG?=
 =?utf-8?B?OW0rZHRqS0FjalFPVFFoSThscHFYMnpSZ0JodFpwOWh0STR5WkREcFRaTjVU?=
 =?utf-8?B?Rk5lT2ZKWDZublF3Sjg1RXlsM0l6eTFoOXYvL3RUQ3VyQ2szWm9SOERRbHVB?=
 =?utf-8?Q?u8WmF59JUVyNG/MQ2Nw78vLQ5dLC6E2mLJjWU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjNjKzhJT3NMN2ozZEMxUU0xeVVkUWVPZVU1WWNJdFRoK2pTQUJHVmozaWpI?=
 =?utf-8?B?Zkttb25KRTNGeVdZT3l0ZTVTVDl3blpZS1dndlBjK1JnOElBdTBUbU0yNzRI?=
 =?utf-8?B?OStwSUgrNXU3Y1hPaDE1UU02Rm1Sd1NUNitvZlpJODduM1BRY0doY3F4S1lB?=
 =?utf-8?B?WXRzcEZCTG9XWFdDNnlodE1Gc29QTFdBT0FJdFBOdjVsWWpnNjkyZFNhMzFo?=
 =?utf-8?B?eVJLaHNydVpCNmdOWG9WbDFmNW52S2FHSTEzVHNzZCsyRFA3TkM5T2d1TjRZ?=
 =?utf-8?B?bWI2c0F6b0FrVzdSeVpjRlcyMythOTVpQ2Y3VWtxRWVLK3ZjdXpDNmxqUTVJ?=
 =?utf-8?B?bnozQ0lSeE5ySm1yNjZqY3NVK29nVDY0dzkwYmNPZXE2cU9jWlY4bnE5cVJV?=
 =?utf-8?B?OWN0RHNCcStZL2tTVGd4am5Ba09Hb1JMSVBLcTJIWW1XZUIwTUEvNUZ5TFVm?=
 =?utf-8?B?TEJyTjFoZnkxQ2NqYThyZVVnNmxWMXpnWUJNakQ0NHpjTGJ4c3pBaWpoY3pk?=
 =?utf-8?B?WU4xTTY1RHJEc2ZKdytMbWhtRDBTdmZqQktMcy92UjdGTkNEbWRrRklHU1lZ?=
 =?utf-8?B?eS9vYUgzSFIzVlRXK0VTeEczUTBFdFNmTTRQZ3ZJM1BUendDY1h5NHIxT01X?=
 =?utf-8?B?dlFwQmpnVDhZRnFSVERWMisycjdndXlISnJGd1NPVFpkVWZEa200NVIxL0Jv?=
 =?utf-8?B?L1YzSTIvdW1FOFpBS3Fmc0JWMUZYdUQrcm5VRk1WSVNTUUdnOUhTTzlUaUU4?=
 =?utf-8?B?RVpZSGV3NDdOMlA1NmwyTWpydmRZc0t5bjE4TURaUytsbWhhREdPWnNyTFp4?=
 =?utf-8?B?eDhzU0FGRUFYYXdwSGZKU2FwalY5WlZuOGxXa05zcjEyam1tYXBDbGVZQjJi?=
 =?utf-8?B?elV0SndrVkdNYmg0bTVKOWlhVUNOQUFTNS9XWnFtOG5WL3JvMHBSaVNudzZS?=
 =?utf-8?B?d0oyUWZLSEtCT2FSdFlIbnhXdE42WXRmek43MTZ6cnE1dGk2bjRhaDI4bVRu?=
 =?utf-8?B?eHBVMkRpK3NOZThVK256TXE2Y1o5R2lFUDkvMXlrWWJKZE5aWTloaXVXRjZw?=
 =?utf-8?B?eUJpZFYyajdJZzluM0pzS3hET2JkVDczMmtKZGlCUFBZNXY5SXhhTUhmUnNj?=
 =?utf-8?B?bktWMVFRTU5vdmNHK2NmVTV0ZHBpVlBPTDdCbFhIdUhsWXJsSnNIVUcwZnhR?=
 =?utf-8?B?blRQdW95VVFqZTh6YVB1ZHZvaXBhbDFscXBmWmRlelZlYzIvMzdwV09xTk1V?=
 =?utf-8?B?aHNtS2x0TUVyM1JUY0dKdk4vRy9ZaUlqUUZpWmVCU053YUY5bEpIUkluenVa?=
 =?utf-8?B?dWVMWllBenFrMGNldlAvRmYwTnUyTVRYU1hVdEIwRlNiYnZ5Z0xKVUY3RHg0?=
 =?utf-8?B?ODg4blRZK29LK013NDVSejdLcTl1WS9adnFMcE44NDVsVkRLdkF3SnRza3RW?=
 =?utf-8?B?Y1k2eEtIanlvTVh0NUlLbXA0R0lWTEJqRFFoNkRwNzBhS3pWSFlpTWFrRTJH?=
 =?utf-8?B?ck5zQkZiTno4QTF4V0QyeHlZOElIemxUYktwdkErdTJWNUtOSVlZaFZEeS96?=
 =?utf-8?B?OE5nOEJKQ3lLQ1ZwRi9sM29CZmZTU0tOUmpHQW1xL0dpcDJNZzdIRk1PL1R5?=
 =?utf-8?B?RXNvMFY4b3NjbldWOE5GUEpNTkZIS0Q1b2tIeTg0U0tOZXJRdTR6cDQvUERV?=
 =?utf-8?B?WmZtTGp1RVZWVmNrM0ZrUmJpNUxiUWNUYWRsQkhsRERxYnBQeTdxT2JvYjZw?=
 =?utf-8?B?Rk5OUCtvdDlvSFF4RkJEUXphS2hYaVRNbVdZN1Q4TW1Lb1orRTdjOXBwd1Ez?=
 =?utf-8?B?eklBZE9laGFlS3diT1ZheEJia0daRWlPZ0I5TXZyV0xUeXNqalN2c2hGS29M?=
 =?utf-8?B?Mm95ZUNvQnhrSlNxZ1psd2pUZUlYdjIxTVA5bnBDS2k5a1EwNWhENXpqZno3?=
 =?utf-8?B?djJPVzJEWmpPSklYYkdlcVlqRnlTM3B5OGpDZmp4bzByRGw0OGNlbTNlb04v?=
 =?utf-8?B?dnVtS3BVSkdaMFVaeGpoNk9YQ0xIZU41aXF6TURZUFVNL1gvZisyWVFCbFMr?=
 =?utf-8?B?Q2Z2a25tZDV2R20wZldUaW5DTE1ldUs1Wmxja1Z5cDFEL29wTFMvcDlqd3hG?=
 =?utf-8?B?dHdMZmo5OUZJd0YvckdMTEplR2pRaTBxWkltVFQ1b1FyYUdIRXcybkFpbUZT?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd59dc6-2d1d-4ad4-1778-08dd936a7810
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2025 04:39:24.9604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BGz9PivqBJiu0z5+F7p9pxlcKhCf3UiTfVqkxT90p7qMMX+/jg+Pu6koo3+RmTe77U2QZ/yqS9a3mlHQupnFT9r33/BA719nqzvMeCcNya4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE50071912
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747283969; x=1778819969;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RbHssT6mnKqjMtPIcCOKhUuXBK3mKV0DfcNdVlaSKUk=;
 b=F0S4L3ElStF39wz0i9e4tudJYZY9GjJKWF/HOWHvmmgpnNETPtg6ONat
 +3LceqcfkfFmQ82dpTmxYQA5wt0PsjsW+a4AXsYwsJx4l0uw8BQFKSieh
 9GXd6chFHgbZVWuB7SzHDBR6YAwAcE8uqFLhgFu7HvYvIol5Q1f3HgJnS
 FHBb68WL2W6zoofZoGvv/pTBHmY8Hmu/KMB+hv3SF5ob1S9TyCEQaIg4k
 Lv7mG/grgMxKd3uOlzj7rzJYkpXdKFFDhcNSu2sAnr69mAxVmi+1jfl0H
 Hkje55x+9ereoc8/Yh5B0x4UWvtY2BJxWFjgSn2Rf7k7j2vH2sy+Kr6F5
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F0S4L3El
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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



On 5/12/2025 8:25 PM, Vlad URSU wrote:
> On 22.04.2025 10:43, Jacek Kowalski wrote:
>> Some Dell Tiger Lake systems have incorrect NVM checksum. These also
>> have a bitmask that indicates correct checksum set to "invalid".
>>
>> Because it is impossible to determine whether the NVM write would finish
>> correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi? 
>> id=213667)
>> it makes sense to skip the validation completely under these conditions.
>>
>> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
>> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM 
>> checksum")
>> Cc: stable@vger.kernel.org
>> ---
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/ 
>> net/ethernet/intel/e1000e/ich8lan.c
>> index 364378133526..df4e7d781cb1 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -4274,6 +4274,8 @@ static s32 
>> e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
>>               ret_val = e1000e_update_nvm_checksum(hw);
>>               if (ret_val)
>>                   return ret_val;
>> +        } else if (hw->mac.type == e1000_pch_tgp) {
>> +            return 0;
>>           }
>>       }
>>
> 
> This patch doesn't work for me on an Optiplex 5090 Micro (i5-10500T). I 
> did some debugging and the platform is recognized as Tiger Lake, by the 
> driver, but the checksum valid bit is set even though the checksum is 
> not valid.
> 
> The network controller works fine if I patch out the validation in 
> netdev.c. The checksum word at address 0x7e read using ethtool is 0xffff.
> 
> I'm also a bit confused about why the driver reports the mac type as 
> e1000_pch_tgp even though i5-10500T should be Comet Lake?

The device is being recognized by the device ID. Probably the device you 
have on your system is TGP.

Since the checksum word is 0xFFFF which is peculiar, can you dump the 
whole NVM and share with us?

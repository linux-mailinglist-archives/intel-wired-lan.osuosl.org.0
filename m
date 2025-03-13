Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB03A605A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 00:39:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 367CC6081F;
	Thu, 13 Mar 2025 23:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zgilWSzTtegs; Thu, 13 Mar 2025 23:39:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC76B607E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741909145;
	bh=DjhCXPF9cTmeO7lM0zhuhowoW/5x+pMA833HSqs/3jM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yHuuK9CBudTtcFzVfRCBWpcmN4LvR+wJ6a+vVVcWM7lepn5i8guehAusXDP57jma3
	 IzSkMxw+hkOY/tZbfTLuFLRNIZfLyU9v8PVD7TTZ4kogHOJvCHuQR3iXrhHo2NcdFu
	 gZIMkjBvfcnATuiu5MVnTNCEc1Fbfs7sBpIN+77EpsfvVv/Q5iZT7lbGRRxfieQ593
	 ISuhUvJfn5haAm39apMIkSz68S9Qo/oibozZi3zjBeTdar3yl3+AosbR5CjJLEDtwU
	 1Yg4HpeB0h7tlevHUe6z7/TlBwbBAja1tIC8ajfGOJYAO330B/U5QAwOhUbUc3cs/J
	 qBzbHo7/CeV6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC76B607E0;
	Thu, 13 Mar 2025 23:39:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AD6B8EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 23:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90F8E60750
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 23:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 26CkoqlZp7SU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 23:39:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sridhar.samudrala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0383607E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0383607E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0383607E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 23:39:01 +0000 (UTC)
X-CSE-ConnectionGUID: Ehdd6JzURte9dSKUQr7z9A==
X-CSE-MsgGUID: WlwjyNymRve3SLkQZ6+weg==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="46949433"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="46949433"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 16:38:52 -0700
X-CSE-ConnectionGUID: oVnNrnSzQ9iTExPnquCzEg==
X-CSE-MsgGUID: 0Uu7tgd/S92Lzd8NEtHyXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="121057433"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2025 16:38:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Mar 2025 16:38:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 16:38:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 16:38:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GOgE+KH3h6R8h0g4sdCYcMV7G2+OGT227vnXNdmLfHvWxmYINpBFKt+J4KPocj8iA+dD+2UwTaq6kjqCnla6dbzPb0IRZMKFrom+WtC5x3bRfm8FXserVGLabVKbzZ6oK9UoELjzxHaeG8R4CCeeMrPftaDB1nUcq1CioOn1vfDopSR2wjXbHc524QHs8xPEZcK1Lh33bsmIwBxwluTZtHgBhaR0ovn1Tzayb+nk7b3vpSEXeu/FyElz7nHVPZbi/5K/JvKZzbEzUlgz7xx4aklJ3+KY/VMJEJiST0WZCCPpFRu4eJq6wqUBhzaktYYhuyeOa2vc9c8fTxvmicr6Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DjhCXPF9cTmeO7lM0zhuhowoW/5x+pMA833HSqs/3jM=;
 b=hF+UxO/To7y51SOfHtm6m2qfS2bj6VMAsapqHeGCY9gzaptmFnT4C2ja1e+lqopQjX92ua1jOhMybeH/LKt5El8dT5aTnkh4PkpA+hhSBRaygO7bPV4Sy7cclh9hgtCvAHSEXxEXnTVQ9SFDo09Tfzfjrl28B+rH/HPdvLJxJWE1jI5j24XRAVqDOkI0XfEwCq4GDuGNQv/m7pxeWWXCPEtZt4ubk/tJswZdkSzPwkJxDS96xdGq1Pz98vxNxojNEwi4VLw1PvnSbwITJwVxLNgqu6dUZHuT0fKQbVw87F0LARaGU6yhUAd3epGNL0Ns70UxQGuTU7UtSIiagYZdvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by PH8PR11MB6707.namprd11.prod.outlook.com (2603:10b6:510:1c6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 23:38:43 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::9251:427c:2735:9fd3]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::9251:427c:2735:9fd3%3]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 23:38:43 +0000
Message-ID: <07e75573-9fd0-4de1-ac44-1f6a5461a6b8@intel.com>
Date: Thu, 13 Mar 2025 16:38:39 -0700
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, "Ertman, David M"
 <david.m.ertman@intel.com>, Jakub Kicinski <kuba@kernel.org>
CC: "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>, "jgg@nvidia.com"
 <jgg@nvidia.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20250225050428.2166-1-tatyana.e.nikolova@intel.com>
 <20250225050428.2166-2-tatyana.e.nikolova@intel.com>
 <20250225075530.GD53094@unreal>
 <IA1PR11MB61944C74491DECA111E84021DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250226185022.GM53094@unreal>
 <IA1PR11MB6194C8F265D13FE65EA006C2DDC22@IA1PR11MB6194.namprd11.prod.outlook.com>
 <20250302082623.GN53094@unreal>
Content-Language: en-US
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20250302082623.GN53094@unreal>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0140.namprd04.prod.outlook.com
 (2603:10b6:303:84::25) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|PH8PR11MB6707:EE_
X-MS-Office365-Filtering-Correlation-Id: 1093d170-471f-4842-5c48-08dd628830a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c3o0cnJ6bUNkdzFoR1R0ZUtXL3NLSThsK0pvQk9hdmhnbXBTSVNVcndtQjgx?=
 =?utf-8?B?SFpQOGZEejJubUJnUFFrbmhEUUFGSzJyNS9VcWNoeklSQUZ4eW03TGxTRUpB?=
 =?utf-8?B?S0kvc0l5VUEwdmN0ZWJHLzVSZU1ZSEl1WXdYZ3o0WDc3VGlvRkd3YXBaQjJq?=
 =?utf-8?B?THVRUmFtL1I5TFBsQkV6QzBSOCtSbDlPYzJEVXR5eE42ZEZVbnlpWHcrblJ5?=
 =?utf-8?B?dmhKU3BnOElXM2xFSUxCRXB1S1JVMkNqWGlPODIzbWtHc2hhMXR2ZURWVEVG?=
 =?utf-8?B?dmxyWFU0MTJzcXplU2ZqaGk1eE0zQzhuUE9UUklHNXJSU21HZmtGN0M1dEdz?=
 =?utf-8?B?aUNhV1QrdDg0RUFaeElyeWp4R2FYQklLZmV3SENRMkRNMmc2VXNyR3V2UmZB?=
 =?utf-8?B?Wk84Z1BvM1NETmVkNUVpdFhmU1k3R0QyeC84MjFRZU8zL3JUclVGYXk0WHNJ?=
 =?utf-8?B?bWxRa3k1aThxb3Nld01qRnMwVnVqRUNwcmZXQm11UTVqMStVYXdWMFg4ZGho?=
 =?utf-8?B?UldtaTFHaW54MVhLSi9IRkZzb1ZqL2NrZWt4MTltV3RUdnJTbGRQNWRsT0FF?=
 =?utf-8?B?SmdPZ2Jud3I4TEpPdkxiSGdRZ2tKN28zSDBSM0t2L3JNdUdrbHZ6b3hYekNQ?=
 =?utf-8?B?NVBBbE91L25BejJoRk1GV3pCT0prbHlzUEcvTldja0ZTTUdqTWxvS05ZUy8v?=
 =?utf-8?B?U2RRNGFqbnFQZWpMTjRJQ1ZSRHJ5R0NpamRhRG1RVFZWV0ovbm9kd1JNT2hk?=
 =?utf-8?B?QTZ5WEs0U0lSWDdLL2FRODN1Ym1ibFdUNUhFUzdmWGdmQ2RDMnIvbWtTZzcz?=
 =?utf-8?B?NWhibkNRUU15UG1YOUZ0V3ZsdVlVZ2svRWoyQkhXam02c1M1R3NQeEJJMXR4?=
 =?utf-8?B?NzU1K25zWEUyZ3VjOFJjK0ZtSHdXcS9OMzd6d1dWYjdFRkVpRXRUTDV4TTJO?=
 =?utf-8?B?d2hGYlRZUVE0Y1V0WUxQbTRzUUsxdk9EZEdLeE5xTjR2TS9TN3dXc0xSYnBy?=
 =?utf-8?B?Q3MxZ0FxN04vV0NlQVVUckV0cVgrQTNjNzZNNVcwK21IRFU4bDRmbWUrNzEy?=
 =?utf-8?B?VE03MG1URTFRSlRhWkxFL1hVdlBaNzM5T2lpRHB1SVRBZklMdEorWkJWYnFU?=
 =?utf-8?B?ZStKWjJabWxaNm11SjVHMDd3TmJqMm1manRmTFlwUXVBdmlCbFZJdjlxaEZD?=
 =?utf-8?B?ZzQrcUNXb20yMzRTWlJRRktzak1WSzNoUmVZY2ZXdDZtRXUydWQrOTZRa1ZD?=
 =?utf-8?B?cUl6Tzl6emNxMVAzNC9Oam9TdXhTUUpxNEFVeHVleEcvN0x1TnBHZ1VzVVlL?=
 =?utf-8?B?Vkh1UlB0UzZJR1ZQdHhWQjB0WVZ4SFhLUVNCU01POGQxVVJQQVBpSXhPZHZM?=
 =?utf-8?B?QW8zcVY2eU5QM3JOSWh0dkJxR0hwVm1NQTUwYWErRXZQWnVxVy9BSzVJN0xj?=
 =?utf-8?B?eTNPR2xKc3h6ZGVkVGdMZ0Z1eFpkRjVSZk43MHpQU0c3NENnN1FUcG9hcWQ5?=
 =?utf-8?B?SThFM1hnZ3JqdTRrK0V1cTFNK3pPTlZhUmFtR281eUdXOUxxdGxCNCtuazlv?=
 =?utf-8?B?UWt6c3RtZFBIN3lMVDI0V295OEs4d0NYbTM4L3E2Q2R4WU0zQ2FtVkNma2VJ?=
 =?utf-8?B?VStjbnAyMSt0ZGx2TUFzRFFLK3hxZUVzTklUcGVLYm94VTJhR1ZvSkpzK2J4?=
 =?utf-8?B?RjN4NWFDK09nYnYyOFB5bG5tWkJrekE4cGVJLzAwMmJQSC8rNXVwZm9UU3k5?=
 =?utf-8?B?VHlsVENpWXRoczd6aWR3aEhQRnJLTjVvempvYWhub0M1eDBDOW1NOFhqajZH?=
 =?utf-8?B?ZUY0L0RXdW5xNGh1UHA4OHM0cEE4aVhEaXVoVzJuZ2xOYnloQUdLYW9BVmpl?=
 =?utf-8?Q?gCCLAqcyw19Qp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmNwemZRckhmR3ZLclRSaWdzYXdtMGxMcWxPNjgwTEF2TjdSdkIzaXpHVXhl?=
 =?utf-8?B?cWxZWXJHWnFQNTBxNmF1QjFRNldHV0JOTjgwdXBVblp5TjhkMFBYaDhMWVJI?=
 =?utf-8?B?UklQdHlMRWd3K2VvYnlBVkorVmpZWXBYUXJGRWJqYkZaTm5IVHo4TGJaUTVJ?=
 =?utf-8?B?SGZGVlRGRDFnbk9KOU8raENBcExSSGw1ZHBXZlovQ1M5cFNrVFhwUlFGRTVn?=
 =?utf-8?B?TlZNc0FnVUVKSUtpQ0VKRk00bjFXbGV6YVF1clltUmxiaElRaFkwUmpWOU9U?=
 =?utf-8?B?OG9zN3dwViswajNZTWxscWJnaFRLeitFcnBLVUJRa3cwbElpM1JmakVERk4z?=
 =?utf-8?B?ZGx4eGNkSGdyYzNUV3pldm0xb0FLV1JVbjNUWmQ3KzdiTCtvTXRhMVlyYzd6?=
 =?utf-8?B?MVJacFlZT2ZHSEFlTDdXMVJHZWR6dlJmMkxzaDJNYlU0Tm9VaXlGbC9HRmww?=
 =?utf-8?B?bVJ6MEU3bzFiU1ZhMk5McVNSRDlUWUpqR1NLaHkvNHNMMDdobENrK29mU0Rz?=
 =?utf-8?B?dkRneWZaWkFGYlBiODdCVmo0NWI1VjFZazRTUUtHVXBhSjdWN0ZpZjBnTlJ2?=
 =?utf-8?B?Y0hnRkswMVc0cFVNWUpCU1VJUllwZHRaL3phWGV5WDU5blNEQ0I5bU9wODcz?=
 =?utf-8?B?bmQyMmh5STRXTUV2QTVDSWFPa2hoNElFcGx6ZXFNY0E4ZERmcjdMbW4wT1JB?=
 =?utf-8?B?N01TQlBtMnpGOUZTU01mRHExd0xNWXc1YldiYUFhUXpKdCtkTWdZWmVSakVN?=
 =?utf-8?B?WVFPd1ZYcHFqYTVVQ2xzQ3FVcURucXBJdXcraE4vUHpzTFo1SlgxQU9mVXh2?=
 =?utf-8?B?U05lMjB2RU5iMzdRaUdTS0FJTXhPb3o3UnVWYWRFSXlMRGFOUEZWdlVDd1pO?=
 =?utf-8?B?UEdqUUl4MnNjalZVK1Y0NzEyMXgzNG5pWFYxWmdiWTV0V29VbTJyQjJEQWFG?=
 =?utf-8?B?UzhNU0x6aEVrSG9yRVNRbkpkR0RYTVE2MkdMaEE5WHRhN293WmVwTmJ3T2hq?=
 =?utf-8?B?djFIdTlPd25rSHh4RUJOOEVYSDFuY3I1OXF2bVlVVUx1OWdwVjlqY1ZMSWox?=
 =?utf-8?B?ZWY4WTNrQXpqWTBvZERNb1cxNlhwUHF6L0FXMTdZRDRsR0x6NzVpNmpJVnJE?=
 =?utf-8?B?QXVEM0h0cTQ4ZHhXcXo0UG9tNWJJVllqVFpXeE5CUisxL0VQUlZuOHRlOHoz?=
 =?utf-8?B?VkMwQ0dKVDhKZGV6MnZtQlc1dVFxR1krNXY0UmhwZzF2OXpGVFB2VVdoQUFH?=
 =?utf-8?B?YVdaZVkza1AwM0NkZklJcFNnRXRWOWtwU0MwTHl6ZzRiU2FQdUs3ek9XeUVw?=
 =?utf-8?B?UzdvUXdhR3NzUEFJcFhSTDJiVjQxZUF2OXRMOHM4TmgzcEwxd05VZExvNlVE?=
 =?utf-8?B?NkxqV1hJYnVPd05reXdJbXpwVkl4WE52dXlDVXdKUGZWNC9zSERBVVFNRWsy?=
 =?utf-8?B?L0tmRXdNNWU4SDNOeXZEZVkvRVpXTGlYaEhaOU5vekFQUDJrYnY5VjI4U0Nw?=
 =?utf-8?B?bFpQUWxhYnlVd3hrY3ptU2FJUy9iQUdwdUsxTkhRK0NPMHBnMnJqejdhWVpE?=
 =?utf-8?B?NXBHVjVGNUtPdmlGaVFLemxXYWQwYzFpREdEZVZMT0N1NkJ6YWFWZUtuWTFs?=
 =?utf-8?B?Q3FBQXFYR0dDL3VTVno0T2lZckZ1QXd2ejlOVXZTdEpLWDUxZWt6c2JpMmJD?=
 =?utf-8?B?QTA1SVkycUt1MHVYdDI4VjBTeDZlcEFKdGdiK2VjUVdteTdJdEdWbkVhVWhq?=
 =?utf-8?B?UGRTOHV1QkZzL1Bta2pmdHVWMGpHUzE3Mk1NZzRBNTVrT3RUR1d1cmhCaUV5?=
 =?utf-8?B?eUtRYkJ1R1plOVNuOEVEWHdXajl5Mk1aNkVWVVhUd1R1QzcybWV4NUdzOXFo?=
 =?utf-8?B?cENYb2pPRlpFWnFhNjNrc05nNTdLa05pTjU0cEttZFlOY3pRSk5PVnJZV2Qz?=
 =?utf-8?B?eWVjNENPSkFoQjkxWEV5WnlpZnJCQkwwUzNvZFRjN0ZWb2xscStMUVkyYVVR?=
 =?utf-8?B?dE44WnByeU9NTEFZZGlZdHE4K3dUbFBoKzB1MkQyMmZxcDBHa2Q0K1BDL2xG?=
 =?utf-8?B?ZEVDUVc2WElYbzdrMml6UlVuaUNodGhHbUtVSWg1WjJuUWhiUUJDZEFRYlJO?=
 =?utf-8?B?T1hlSElJVTVXbjhhNGtOaVhYMDI0dTBXUlUwQzREUENqeDE0NzgvZXUzcUp3?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1093d170-471f-4842-5c48-08dd628830a4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 23:38:42.9850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ga0yeQ8XPwLsu80ClQveUvaT3+RZzxNv2OQSePFTl38jiOAt+dp1HcBA40wcx+wpOXFEyxZLdboerkbmeeRFty8Rm6oGpI8RZOWUYoLQabw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741909142; x=1773445142;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0d7W2wyQELGveJVFxDKCkEE9IaRIG/vCLUeIEnjHG3w=;
 b=DtEMV0GzMUTFZCSSyjhas8BMAklTsh4I3MVMs5Sz49qAUH+PXIh0k0VS
 FnOFFUb7ZCGI4w+4ctrSKRS/6NVWFyCov2LIdG77+ygE9geU6IvYp/S98
 8IaIrQy9OEFpiHG8bDEqSF5zEV7LgYrmXLJN5zNFHXjk0o2E9f48bzi7E
 WkpRj7ZmGAmhfYyV5Mqb8yMr5NIncZxREAHDhCco+vmjGN3F4+QroOq2L
 9dZgK/jcgVuzZzmg6NHhuVDe8+L7JUe/7YgDorHhjmLj1IPUWJGuqgKUo
 0sqBKbYcZ640FghBQ5dwhC5zlggwRRX0nGuDLqILAav+DoFchXpoGSj3n
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DtEMV0Gz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v4 1/1] iidc/ice/irdma: Update IDC
 to support multiple consumers
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



On 3/2/2025 12:26 AM, Leon Romanovsky wrote:
> On Wed, Feb 26, 2025 at 11:01:52PM +0000, Ertman, David M wrote:
>>
>>
>>> -----Original Message-----
>>> From: Leon Romanovsky <leon@kernel.org>
>>> Sent: Wednesday, February 26, 2025 10:50 AM
>>> To: Ertman, David M <david.m.ertman@intel.com>
>>> Cc: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>; jgg@nvidia.com;
>>> intel-wired-lan@lists.osuosl.org; linux-rdma@vger.kernel.org;
>>> netdev@vger.kernel.org
>>> Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support multiple
>>> consumers
>>>
>>> On Wed, Feb 26, 2025 at 05:36:44PM +0000, Ertman, David M wrote:
>>>>> -----Original Message-----
>>>>> From: Leon Romanovsky <leon@kernel.org>
>>>>> Sent: Monday, February 24, 2025 11:56 PM
>>>>> To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
>>>>> Cc: jgg@nvidia.com; intel-wired-lan@lists.osuosl.org; linux-
>>>>> rdma@vger.kernel.org; netdev@vger.kernel.org; Ertman, David M
>>>>> <david.m.ertman@intel.com>
>>>>> Subject: Re: [iwl-next v4 1/1] iidc/ice/irdma: Update IDC to support
>>> multiple
>>>>> consumers
>>>>>
>>>>> On Mon, Feb 24, 2025 at 11:04:28PM -0600, Tatyana Nikolova wrote:
>>>>>> From: Dave Ertman <david.m.ertman@intel.com>
>>>>>>
>>>>>> To support RDMA for E2000 product, the idpf driver will use the IDC
>>>>>> interface with the irdma auxiliary driver, thus becoming a second
>>>>>> consumer of it. This requires the IDC be updated to support multiple
>>>>>> consumers. The use of exported symbols no longer makes sense
>>> because it
>>>>>> will require all core drivers (ice/idpf) that can interface with irdma
>>>>>> auxiliary driver to be loaded even if hardware is not present for those
>>>>>> drivers.
>>>>>
>>>>> In auxiliary bus world, the code drivers (ice/idpf) need to created
>>>>> auxiliary devices only if specific device present. That auxiliary device
>>>>> will trigger the load of specific module (irdma in our case).
>>>>>
>>>>> EXPORT_SYMBOL won't trigger load of irdma driver, but the opposite is
>>>>> true, load of irdma will trigger load of ice/idpf drivers (depends on
>>>>> their exported symbol).
>>>>>
>>>>>>
>>>>>> To address this, implement an ops struct that will be universal set of
>>>>>> naked function pointers that will be populated by each core driver for
>>>>>> the irdma auxiliary driver to call.
>>>>>
>>>>> No, we worked very hard to make proper HW discovery and driver
>>> autoload,
>>>>> let's not return back. For now, it is no-go.
>>>>
>>>> Hi Leon,
>>>>
>>>> I am a little confused about what the problem here is.  The main issue I pull
>>>> from your response is: Removing exported symbols will stop ice/idpf from
>>>> autoloading when irdma loads.  Is this correct or did I miss your point?
>>>
>>> It is one of the main points.
>>>
>>>>
>>>> But, if there is an ice or idpf supported device present in the system, the
>>>> appropriate driver will have already been loaded anyway (and gone
>>> through its
>>>> probe flow to create auxiliary devices).  If it is not loaded, then the system
>>> owner
>>>> has either unloaded it manually or blacklisted it.  This would not cause an
>>> issue
>>>> anyway, since irdma and ice/idpf can load in any order.
>>>
>>> There are two assumptions above, which both not true.
>>> 1. Users never issue "modprobe irdma" command alone and always will call
>>> to whole chain "modprobe ice ..." before.
>>> 2. You open-code module subsystem properly with reference counters,
>>> ownership and locks to protect from function pointers to be set/clear
>>> dynamically.
>>
>> Ah, I see your reasoning now.  Our goal was to make the two modules independent,
>> with no prescribed load order mandated, and utilize the auxiliary bus and device subsystem
>> to handle load order and unload of one or the other module.  The auxiliary device only has
>> the lifespan of the core PCI driver, so if the core driver unloads, then the auxiliary device gets
>> destroyed, and the associated link based off it will be gone.  We wanted to be able to unload
>> and reload either of the modules (core or irdma) and have the interaction be able to restart with a
>> new probe.  All our inter-driver function calls are protected by device lock on the auxiliary
>> device for the duration of the call.
> 
> Yes, you are trying to return to pre-aux era.


The main motivation to go with callbacks to the parent driver instead of 
using exported symbols is to allow loading only the parent driver 
required for a particular deployment. irdma is a common rdma auxilary 
driver that supports multiple parent pci drivers(ice, idpf, i40e, iavf). 
If we use exported symbols, all these modules will get loaded even on a 
system with only idpf device.

The documentation for auxiliary bus
	https://docs.kernel.org/driver-api/auxiliary_bus.html
shows an example on how shared data/callbacks can be used to establish 
connection with the parent.

Auxiliary devices are created and registered by a subsystem-level core 
device that needs to break up its functionality into smaller fragments. 
One way to extend the scope of an auxiliary_device is to encapsulate it 
within a domain-specific structure defined by the parent device. This 
structure contains the auxiliary_device and any associated shared 
data/callbacks needed to establish the connection with the parent.

An example is:

  struct foo {
       struct auxiliary_device auxdev;
       void (*connect)(struct auxiliary_device *auxdev);
       void (*disconnect)(struct auxiliary_device *auxdev);
       void *data;
};

This example clearly shows that it is OK to use callbacks from the aux 
driver. The aux driver is dependent on the parent driver and the parent 
driver will guarantee that it will not get unloaded until all the 
auxiliary devices are destroyed.

Hopefully you will understand our motivation of going with this design 
and not force us to go with a solution that is not optimal.

Thanks
Sridhar


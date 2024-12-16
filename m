Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 708089F3877
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 19:11:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F30C80D70;
	Mon, 16 Dec 2024 18:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bXalK7YIValX; Mon, 16 Dec 2024 18:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03AC180DB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734372683;
	bh=McHbLMoFx/mWEr53cg7kgJ0M3fZedGtEMppPYBkXS/4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JZmvRiQA1P/ld7yaQ+bCJvNj4uvXjsm4vkno5iCSHeI7fZzL2DbhnI9DbM70tCKU2
	 PZ7v4mRXeOLNY8aPqzKv9OQE2SIMiHybDM7UJpaUVz9JQEZk4+0iwH8MUjpgG0QzRS
	 Rop/HZuycL812ebzZtlRRkI99ecOS1fTyUMbGmA63Pr3g4F1QGCaLo9DO0kuk4RNzp
	 bvdiC6/YoxomRLEVxZ86ppn1xQk1FudHowO+l5YXXMn4xHXKqNwWNIBTLeGBH6lI0N
	 6SNfjhol8baSChiJuSu9Q8C+wKLtygxCCc23K4He+iRkJfM5gB9zu/HimmP+7k1s2q
	 iVi5cmZzPRa2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03AC180DB0;
	Mon, 16 Dec 2024 18:11:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B8332E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 18:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A576F403C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 18:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YHpSXqeF2L6B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 18:11:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55FE9403B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55FE9403B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55FE9403B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 18:11:19 +0000 (UTC)
X-CSE-ConnectionGUID: 00rEwOEGTgqnXKWYaGQUXQ==
X-CSE-MsgGUID: fLvAaSUGSYuj1Hon+XSK9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34928700"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="34928700"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 10:11:18 -0800
X-CSE-ConnectionGUID: x8qOKcr+ShO8hU55+hNxnA==
X-CSE-MsgGUID: 5fAoq3SmSAWYYanB1/oiAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="97178596"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 10:11:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 10:11:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 10:11:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 10:11:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X5AjLTIq9n3O54rT1SV6mS8e56JBphChilvr6ftvHDqMxAibY+1lmtYagb2sF9JdjhT4OKLhoI6+U4H4DPPYCT4BQN6q1iWqdAOOrPi0Kgp91/2sfDr58RMkOyJ4dP9CfYyb4MjkWzOH7XucKOLdL6x5gwyBfbyzJbebpdE348xg2qCAek8E3j2QiHOsukg57iaT8py02Uf3EDjl4t+xd+u/kUTyi42N8z3yqRcccvdejDpScxzm1036PqPuUOqrYfoqr3PQP+SGUMCSJ04asawFZwdu/XJ6egVo+9KjrRJoHozEdVPVhtgVxmxyHrEkQF72XQw2JtBt9ZFSekauJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=McHbLMoFx/mWEr53cg7kgJ0M3fZedGtEMppPYBkXS/4=;
 b=niJZlipgP/baIJoAKyjZbvFz866P4KXID40AAXIZMmQNtq7QrgKpt/4rigt9mf27kuD+dWLbC7pMMopw/RVR/pU7OT1siJs2HbUOavX4+4Mce/gyhKjuz3yMNL2oEut29P/v1pE2d+JA+RvLPMdegk2B8Z6KIVI0o4rmuQfp0mM84YnbYOpxNSn4qRxwZbfotNPN+RJZQPehSgnlThpvz1h+WCaUxsCuf4I96g67qiSAeg++JdRUsUCWj76stEa5eJ69uMuu/MvAANARKkTAfwc5GXIHG7DPc8ornDBYai6IWWPz73D6WQxUw+Tv9IWBMa+xPn6S8wAeTLXbOAfm0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.20; Mon, 16 Dec
 2024 18:11:09 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 18:11:09 +0000
Message-ID: <b81501de-7dd3-4808-920e-14b2cc817038@intel.com>
Date: Mon, 16 Dec 2024 19:10:44 +0100
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>
CC: Brian Vazquez <brianvv.kernel@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, David Decotigny <decot@google.com>,
 "Vivek Kumar" <vivekmr@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <emil.s.tantilov@intel.com>, Marco Leogrande <leogrande@google.com>, "Manoj
 Vishwanathan" <manojvishy@google.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Pavan Kumar Linga <pavan.kumar.linga@intel.com>
References: <20241216162735.2047544-1-brianvv@google.com>
 <20241216162735.2047544-3-brianvv@google.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20241216162735.2047544-3-brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR03CA0049.eurprd03.prod.outlook.com
 (2603:10a6:803:50::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH3PR11MB8384:EE_
X-MS-Office365-Filtering-Correlation-Id: b76c1ebc-16fb-41a1-17ca-08dd1dfd03f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0ZhT09XRmhTTXY4aG1iOVNiaXdTTXpSbUM4ajM2V0xDNWtXWmgwcUIya29N?=
 =?utf-8?B?NmlFblM2T2VIQ1hlcDBQY0U1eEp5ZkRJeG1YYXBwSFA5RHR4ZWlMZHU1RWs5?=
 =?utf-8?B?NXZ1VDBiY2RKaVhPM2VkZUM0ZCtOUjZuMkVYVUw2c25OR3k2YS9VRXIwUUZk?=
 =?utf-8?B?STh6Tk80Mk9nZWJKV1pMNmZqa3NuL2Z5RkhWKy9QR0V3a0k1QVNxbmVoTG40?=
 =?utf-8?B?Um9tRkJUQlBSWFQzMTl4UE5jNUtsL0FaS2hBZDhRMVg5YTBKVmFzcXdoT3Zw?=
 =?utf-8?B?VjFqejA1UmhrRjhDMUV1ZXlXb3FHUm5DMEM2ZDVsZVZpOXNZcmlXZ1RoNUVh?=
 =?utf-8?B?ZGpITTlIam1mQ3MyWFhXanlrZTBBNGh4NjNsZnpveHlKdlhqR3hGclN0YnNn?=
 =?utf-8?B?U3hzKzJ4aHJlNVhnWDZCQU5aYjB6NmtXOGZTVzhsL053MHVIQWpncytXUlg2?=
 =?utf-8?B?dUtaYzRhMHRjNitSZlhmS2owOVdEM2VxaFBqTEFvVGxxSGVDRFI0Y2RvQisv?=
 =?utf-8?B?OCtSclVPUmViSXQ1ZG5oY0VDNkIwcWhFUkVBeXJ1SWRYNWJJaFlRb3lFWmM0?=
 =?utf-8?B?VmZHTWloczZEOUZSRGJraWIzMDY1SXhweEN2MFdxVXJVdWpxYTRNb1N5SkRk?=
 =?utf-8?B?cXFSN09UQUw4WXVUWGdxTWFXdVNLUG5VUWdkVEZDV3dkYkdSclJEVGxwcU51?=
 =?utf-8?B?SS8wTEJnL0NFTUNiaytNR0QrTWk0aGZyMU5DMU9YSmQ0RGZvV29xSkNLZXBP?=
 =?utf-8?B?QUxJWDQ1bVowSm9NOWVQQzZSUm8zRGM5T0JyaVpqZml1b3BaNnJkckhEa09F?=
 =?utf-8?B?VENuYkkrREJycmxPdnNmVWYrL0gzckNXdy9DTXlUUytidFdTeS82MzBLYmVn?=
 =?utf-8?B?VDI5bExmdjJKUlVPSlpWZWpqMEhiSjJ3SWM4MHdXaFFGYXZYd2JKM08yK3VH?=
 =?utf-8?B?Rk1hV2tiRjlMa2JyZWo5VHVMUDlsTzRQRlh2NjhjVVJnTTFkRTFRWkNTZ2pG?=
 =?utf-8?B?VWVWL2N5bVlrd3pGY1hnL1NhTlBUZWsrN01TVzBGVi8xbVJwT1gvMUVQNnU0?=
 =?utf-8?B?TllrUythUEFRSEk1bUtZa3NiNmliZkRhYXNNNEFzSjgxN244cDdGbFRERlgw?=
 =?utf-8?B?QTNhZG5sUkVqKzQ2UzR5MDhYZnpPcGsvaUt5SWs2M28wTFlWbU0xWGdJTzgz?=
 =?utf-8?B?ZEFnNkZYUk1BaTUwREcyUDlaekVSekorNzRnYmFKQlpBOE9LYTQwemxnKzEx?=
 =?utf-8?B?NkMzQU51UDFOTFRSc0hhTW1QWWZKZzM0YmxuWVpkYnNIUU93NnZPSXFVTGZK?=
 =?utf-8?B?R1hTMktUTHo1NzRaekM3ZSs4UzhZRHVvdldFdjY3RVVTZ2JlYitEZU1Manky?=
 =?utf-8?B?T1BrWDArbWh2YkNMcCtmZ2pGZkUrR1kzYUlzeENYWjJKREE2YlRXbWt2aHFZ?=
 =?utf-8?B?YmtOYUhVWm5RdVVaejZzVmFoNUNBTDR4MzA2TDBoUDdodGdJTkNlaUgyU29N?=
 =?utf-8?B?L0RCTkdnWkUycnZZaW8xb3J4ZXh0Um9HZ1VXVDBZbVk1VDR1eWtyZzQvQjRs?=
 =?utf-8?B?cnNjMGJPRW84akNZT3ZwdjZYeDJmMnlrVDFJNnRlNWxwaENYSlNyZ3ptYm9m?=
 =?utf-8?B?K2ZXRmJUclBGMStkcDZiV2F3d1JGR0IwM2tQVGI2N0VVdmJEVms3d1BEM3Zr?=
 =?utf-8?B?THhSYzdJMDNodFhOSUR0K1hYTTFwQTB2ZTFhMUgvRkRhQWQ2TXdLRGpjUmNy?=
 =?utf-8?B?QnFFcXZ3ZTd4MzI0Q3NWVnZTWmZOZEVzOTJWTCtpeTRHSThLVUFGZWtOcmJN?=
 =?utf-8?B?ZUYxSHR5dUpLRmd6d2IzdDZiYWhvYU0rVnpjVEx5RXhVMXNOTkVVWkt1aGFT?=
 =?utf-8?Q?KyHJk03S8lb0h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2Z4aSsvVlRrbFZuRWtIc1dHVEh3MVo4R1FxWEtlMXBUWFUrdyt6bWVtbWFk?=
 =?utf-8?B?Y1NGRW1mckpXWFBJV2o4RGtBUHFmbDk4MUZoM1dzSEd0R3BnVE0xUkZab3RQ?=
 =?utf-8?B?VmNVcEZZT2gwSjlwTGkxVjgzZVNwWlA3TlFzWTFXL0w3VzdjMDIwWTYzNGt5?=
 =?utf-8?B?MjRMQjY1bHJzQTRZOUtBVitTSnp4eUpYWHB6OU1NVjlIc3daMVhTWkZyZTlZ?=
 =?utf-8?B?TjFBT040MUNOaUlSWmJDaE9Mb3JNaDVyM0lIQWNZNGwwbHN5WG5GS3o2YXRY?=
 =?utf-8?B?aGhuZU9rZ1F1ZnV5Z2FSa0hveUhDNVVzQ3Q2S2ZJMGlLVm9yNWk0SWNMNDZY?=
 =?utf-8?B?cVdTN01vRDJUS0lYZ01qazFrTUZiQ3BRTFcybW1ReW9GS2RhaDJRY1RJdkJn?=
 =?utf-8?B?M0t0OU1TYmZTVkZsMjRVd01ZK1lPNU9aUnhjR2l5eHhOb28yb2R2bWxMVUhk?=
 =?utf-8?B?aW5FMzhuTWZtWXFWRWNJM1VKYWp3eGlaN3RmUXRxem45b21uWlVlK2V6YkQ5?=
 =?utf-8?B?V2hEdjA2NGF2VXRHQ1Qvbks3UWora1VnamNBSW1qZFJFMlA3K1NYOWp3Wklo?=
 =?utf-8?B?U1h6d3VwWHQ4aHRsTzNOSUJYZHQrTEladTM2ZllBR1htK3Q2d2JKUWJxZ0VI?=
 =?utf-8?B?QUgvaXNGWVcxaWp0amlHTlNlRWpkUUljdktQVStURjFNeVlwdnVJb2VacTl6?=
 =?utf-8?B?Z1A4V2FacUVZRERBeWhuVS9ZYjJ4OC8xVVBRZUp6clB0YmREVndkb3JXZVQx?=
 =?utf-8?B?UC9vd05HYlM5cnNNaU9QOXhhdjVwbmxhbUJmMFpWMzJXUkVQNVN1VW5ZdUdx?=
 =?utf-8?B?V3lyN01sS1dGZXAyOFFkcVhXUUFmZlJDNU1JKzRYRTJEUWdRUEZlQXhZTG16?=
 =?utf-8?B?MGwwNjhJQVBZUHQ5M3V4dkI3SFMzWU1LQkRLd2UyMmpZL0NGL0luWEtwZDlQ?=
 =?utf-8?B?UFE5UjNocTRxSUM3VFlhSzF2NWp2RUVTN1hmVHhseHFiUTBnYUd2N3hwWElC?=
 =?utf-8?B?Z0RCaWc5NFhpbnZyTTFaRUFndmxwaE1PeDY3NnBMcVM5bUR3VnI5OWd0WThn?=
 =?utf-8?B?Y21qYk9icVdkVnVNeWxaOFdPbEgyTmhmT25Ic0tBZVBhUlAzWGNwd0doUTBO?=
 =?utf-8?B?SXR1MFg4d0ZPRzVoOXNFcUlveFIxOWthZlZMNVByTVZ6T2ZXWjE2MzVMdzVN?=
 =?utf-8?B?RUE3eUNUTmM1ajVJQ1ZkKzhVNCtRT2hQKzh2NWVoUm1Uc0NZVXJyRmJzZ1Zt?=
 =?utf-8?B?SDFMWUROaVgwMjZFbDBLSGF0NWVoK1k0UkVpQVc1bUsyTDFPSE1qejg5RG5t?=
 =?utf-8?B?UVBsaUU1Vk03bW9UQ0JXa2Y5cWZJMnhYSDNQb1l3YU9EdDhUSmpYa2w0QTVC?=
 =?utf-8?B?aDVoNkxRUkRKR0RLajFhUERMSitKYXpHMU9EU2dQSTFzNnk1eVFmSmpXQXpF?=
 =?utf-8?B?OGZuV0pZb1dzT01pejNFK2lYSDhNTlRRQzR6enBwbW9RdnVFRVpvaHM0bU1y?=
 =?utf-8?B?YnVsVldvb1JMUGpoRmZtaTVoQmRjaGJzeHhWVE1JdkxVSVA2VFpmRGxoYU5E?=
 =?utf-8?B?VjJLeUxzYTRWaWxkY01VTGlNREduaHMwZjZHN2lIQ3A3NWp4NXN5UWZUa21x?=
 =?utf-8?B?VVl3SytGU3Z3ajRkNHJUNkJQZ0xIcjlZZmg3NWFwcFdaN01NdDVwMFBHZ2ZR?=
 =?utf-8?B?V1dEd0x3TmdqSXdjcDJQSlFtVHl4dzV5T3hCSXlaakNtZDJ2MGJyKzNHRG5k?=
 =?utf-8?B?VGpScm5pU05VbDFQUy9PQXhzOHRQdE5SMVFBdEpBaW1kS3M3bVd6ckJOa3Iy?=
 =?utf-8?B?dHZOd0tIcWdtZ0NsMXNPNkZIOUkxOEk0MVFnVUlJU2J0NjIwc2JTTXdkUkZH?=
 =?utf-8?B?NVZTbGtDaXdGdWVHMXdsN2JxTS9UZ1dRNDBYWmlLUEQxR2EyajFZL2RoeXFu?=
 =?utf-8?B?aGZmR3hrT1FZRFFqQUhnYWxuOGx0TVRGT0FPVGdYR2QxT0dhVFErbjdxVjJz?=
 =?utf-8?B?YnhpZjdlbk5PWWNrWllHNUNyTmZFK0p2dld5VUVkY25xOGhzMXZJdUxuelE1?=
 =?utf-8?B?Wkl4TVYzUlNiK1RlNW5oN0hWQnY3Nmt2MDZnaE9mV2hhR2NrNEo2L1NGTVVo?=
 =?utf-8?B?U3JwRVJISzFaQXgycGhzcEFGVE9pVFo3T3NWUVJwWkZKeW1kSXZ2WnlzbWtY?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b76c1ebc-16fb-41a1-17ca-08dd1dfd03f5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 18:11:08.9546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8WotC8I1bHxuyoYW2+83VAXSCfC8mj7DuyCX7Lm0slDb10RI12ixiomZegAn6fgXj1SqF317OhkXBFiZSMmCg5rk2NrDzRjYQt+SQd59QAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734372679; x=1765908679;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IUmTpvOhP2dHTLSduyLntuS7Wc71tVVIsRo/V5zpQpE=;
 b=iMaV8wvcX2Qdwhtb2ntXyq6BJHmwKhG5OjLct6Lh7Y9iVLD2THkfDLfn
 M1X0PuurV8BM9L4y2NdG/Ie2pvtzKEcr9hWQdBkJod3BzxAYhHujXF7QM
 nHQwjHwVauQ7nV/wWVyVZ7MiociHUf5b+6YKV67IsIgkIi8hoSvMGXIk8
 tkQU/4/suDwqZPgyw2vu4YzqgceNOlFdBwDQ/lBwKjJXia91RU/YFgnYN
 aAcIdmNEep+L6l/XeCOCG2DmG/WNR8uKCaNnf3gEMX3DK4SFQkuV6A4aI
 yR/kAY5ABu9Z90bruGC2SZRbYvGOd5T9YxPIK/+5iicnyaLsJadt4PCCt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iMaV8wvc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next PATCH v4 2/3] idpf: convert
 workqueues to unbound
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

From: Brian Vazquez <brianvv@google.com>
Date: Mon, 16 Dec 2024 16:27:34 +0000

> From: Marco Leogrande <leogrande@google.com>
> 
> When a workqueue is created with `WQ_UNBOUND`, its work items are
> served by special worker-pools, whose host workers are not bound to
> any specific CPU. In the default configuration (i.e. when
> `queue_delayed_work` and friends do not specify which CPU to run the
> work item on), `WQ_UNBOUND` allows the work item to be executed on any
> CPU in the same node of the CPU it was enqueued on. While this
> solution potentially sacrifices locality, it avoids contention with
> other processes that might dominate the CPU time of the processor the
> work item was scheduled on.
> 
> This is not just a theoretical problem: in a particular scenario
> misconfigured process was hogging most of the time from CPU0, leaving
> less than 0.5% of its CPU time to the kworker. The IDPF workqueues
> that were using the kworker on CPU0 suffered large completion delays
> as a result, causing performance degradation, timeouts and eventual
> system crash.

Wasn't this inspired by [0]?

[0]
https://lore.kernel.org/netdev/20241126035849.6441-11-milena.olech@intel.com

Thanks,
Olek

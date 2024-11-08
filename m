Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 415689C1CD3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 13:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50FA361215;
	Fri,  8 Nov 2024 12:20:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QaKUsPIyOglz; Fri,  8 Nov 2024 12:20:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6D1B61212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731068450;
	bh=TuUJIUHbDxksyJk+rwVeubQBu6oimFr5DTZCS79xwC8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HXoFSGjRg7f/4dbB/y0WhIWjmDRi+0uUrOowcuQGwEAsaWlGKSl+57SvsWIXHKKUm
	 VwGM4MDMKXVI3Zz+R/JVcnFNphUPQXCSbWoiwU16ZhDq0TiT5ku07J6OhCv5oEOduO
	 662/kQaaWbjuibbFc9BnAge7dW4I01AXXthCqUFME1LCCZbaEifMWra5Ri96Qz98ha
	 vLQD4nyFyP2cY67V4UJdDWEiw0RqKM5kWtxKeSlsFTSlWh4HnXmhn1KnNQgJqi8wYp
	 zirCJh6QXAm+bY1itp+OABE3duO1jB41ikAuJLEbGP2Efh85C8DVVXSY/9+wEh3Nr2
	 nlgyJm/F5nQBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6D1B61212;
	Fri,  8 Nov 2024 12:20:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D1C32D90
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 12:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96A566120D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 12:20:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SMa5sb7Y_lMI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 12:20:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B25CE6121C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B25CE6121C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B25CE6121C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 12:20:42 +0000 (UTC)
X-CSE-ConnectionGUID: 1uBjdKABReGuI9DcavVbyw==
X-CSE-MsgGUID: 9+uyvaVjTSe8UKDfzxn7wQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41561242"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="41561242"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 04:20:38 -0800
X-CSE-ConnectionGUID: dKujOtieTaWMysMk2wLlDQ==
X-CSE-MsgGUID: 1u26pcjRSfy4ZydeFagV/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="85866160"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 04:20:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 04:20:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 04:20:38 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 04:20:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zNVzp1Qgia1Khxd6O1b93WF5pkTwVXhAzyjd91fyG7+EJaKU/FPm+yEF2YKubrYoBqtLB40Zidja2w8sLq8LiOZJMjV3KKG+7tHddu/BnL7Ve3RXpb/fOy2jw2Aq9jPzT4iaccL8M/uJY0Ibj19NJUCOBf9QcbZ1cZVO2vNq48cXPOMTgkXjrvxZUru3iYOlZ3Bl9EV94xVvtPs4fkczLH72gwQ0a3/piN5u0GR+tI/WGyq63jfAm2fcPFzqlu50gug9gXZqJsEuAI6wBHu2f/gSWEQrH28ftd9ok3ThIlC9V6jtHNTja0i3yXARNSQQPZKGcKeLT3jSwWhC7XwP5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TuUJIUHbDxksyJk+rwVeubQBu6oimFr5DTZCS79xwC8=;
 b=fhj3sjw2My0YE1Zo5e333vxuOHWUATwuXHmGu48qklo0V0X2HYOIgU2mUCfI8jeomx4jFX2bY1XhH8Y6IQZJCSPquctKnBb6UZaVP7maLlbX81WvzVV0FqWKSZnUUwSMS8UkVXDcCojXNyTfRDiq0wMntMEnuyohRZxxnW4zAHnn5OryhZpl521ly4/XANudDHfEBuHx/83hnmDxQ4KVIR90NB3LL7T6it0e72RszUzCIUQNq3H1+/+aIdquwfanaGd/gTthgn8etIitLMcpSvnZdh09GAuc5hInOcPcRQ6k6E3+dWLkYz7x3v9qoGm19EMc0U/3H2c/cugGeiqsoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.22; Fri, 8 Nov
 2024 12:20:35 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 12:20:35 +0000
Message-ID: <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
Date: Fri, 8 Nov 2024 13:20:28 +0100
User-Agent: Mozilla Thunderbird
To: Wander Lairson Costa <wander@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>
CC: <tglx@linutronix.de>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Simon Horman
 <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "open
 list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT" <linux-rt-devel@lists.linux.dev>
References: <20241106111427.7272-1-wander@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241106111427.7272-1-wander@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0016.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::26) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|LV8PR11MB8678:EE_
X-MS-Office365-Filtering-Correlation-Id: 2216c904-ee66-4058-075d-08dcffefbf7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFMzQjE3Zk55Mzl4SmFyWUlZSUJNQ0VpS3RXNG1sQVZKVHpicmNuUXdvdit1?=
 =?utf-8?B?cDJQdVpJRmN4VEIzRGt4Z2hkNXNEUmZOd2VVRmg4Z0puM3JQdlhHZ3JTbnFE?=
 =?utf-8?B?L3U0ZUFzRnVuV0NaUHRBcmxKdFcxcnY4OGpUSGtucWNudVZnRUV4RTkrQUow?=
 =?utf-8?B?dG53ellEanlublpRejZydUxybzVqcjRNVHo5MkNJWXEwa3ZJK0hPUGFpQW9R?=
 =?utf-8?B?aDIrQ21PVWlIeDBLcnZKRWp4TUZCaWtlenhSdXZ2TXp0Vkhsb2doYlhtd2dP?=
 =?utf-8?B?WDdpaUhMUWxRT0UwRmllN1luazI1cjBSMjRMZjUrREdFbUxtckU4dlVMSnFo?=
 =?utf-8?B?dVpWMkUzOWJ4QVVHK0tjc2tOa21laFN3UlZESTh0U1NDVEJCZEZ1am1wVnYv?=
 =?utf-8?B?SllEdE1aSU9PN09aMnlyYStIU1FPRG9EcW5SODhFbDV5M2pqOXN5cEI0K2Fq?=
 =?utf-8?B?RWUraWtsa1AyellNMXA5NXMvVStMRmI3VS9lTG1EWWFXclllRkhObFB6azFE?=
 =?utf-8?B?NEhkb0NsYVg0YXhjRXNjMTNodDBqbTVobHI4NVkvZkdiQTRjZ0dGYzFWZElL?=
 =?utf-8?B?RzhCZWt3QnNJa1pWaUo1VTF4WTVkb0ZiWm1FRmlJQWtlVk80MUtBRkQ5V2Jn?=
 =?utf-8?B?VkZMU2JkN2d5SDBPR3hsREZVVVRndis3eXNMT2g1Y2dubytPeDdVeE0yWW9Q?=
 =?utf-8?B?U2w5S0RFaTNoZDVRNVFIWnU2RjVhTVczcFJTWWhvcE5zazhGeFhDdmJTNC95?=
 =?utf-8?B?Mmc4Z2w2OXFmWlgzeG1YTytuUTV6MC9YbG42eTNsQS9XK2F5Tm5SYVRVaFJt?=
 =?utf-8?B?bnJwZmVoRGhObHhTc3JLZzB6S3dCT1o5Zml0c1E4bFB4K0V2dWd1ZlhGRyt3?=
 =?utf-8?B?WElDeDJBMXVaeThSVThaa3cweSs5c3lHZlZpZVNpKzh5RDl6TlJUK2FBaWRH?=
 =?utf-8?B?ekl1cjI2QUhQVmVPVzROZnRuSmp5WENON1JFQ1VRTWQza0RsWGJqUDJpZG1k?=
 =?utf-8?B?cFR0RlZreG4yS2pmVVRZRDJMQnVPbFVlNXZZd0ZjaXY5SjJDVjJxNVIvR3M2?=
 =?utf-8?B?cmZpOUFvYlJVUWpSSEdJTDRneEVrWmZMUjQ3TGFqMHI2NWtRMEJvSjM4TWZC?=
 =?utf-8?B?MjVZQXh5TGQrSGM2NkxIV0creVUvOWxnaTUvMzk4UlY3TXg2LzVUdXQ2Ly9j?=
 =?utf-8?B?Tmx4dFVTWjN3b29OUmEyVWR3c1cya1Qva1ZwMlFGK1UzQWZZQ3FIalQyVUd3?=
 =?utf-8?B?WlNlaTZReDRFYSttVVVGZ1hDS044YzFtY3hrczhYZHA0ajBtbUlYYkE5MjVR?=
 =?utf-8?B?cTF0TjgzMWpCM1ZlK09ZVmJPUTQ2dUxjaFdjV0d3aFFxNy9nVERxSVp2aWNI?=
 =?utf-8?B?OEdqTHZwKzN0alJ0NWJTbjQ0eXV6VWdUYzlTd3dlK21KWmxrUS9KZ3lvclpq?=
 =?utf-8?B?TkM3TlJIbERyODNHQlY4a0hESEFtM3ZvS25KYTNYNy9vVTRWb0I0Q1BCazRY?=
 =?utf-8?B?ZXdUclRiSFJSVmxUNE9DbFRsZ052MmpnY2dYaFVseHB6eS9JYWxxU2p6VnNR?=
 =?utf-8?B?eXZXVlA0Y2J6c200Mlpmb1c0R3d3cTd5VFIrM29ZNlFxZmR0dFNkanhqcXM2?=
 =?utf-8?B?d1VMTGdJaVVlMENHM2pVbWo3M0FnVStrU2x5aXJGZTEwY1h6ZG44ME00YVZC?=
 =?utf-8?B?YzBFYU1JdXdzdjBNa0orMFVUN3pCNTFTUE1GRWdzVk4zSFgyd1E1TncvUmRn?=
 =?utf-8?Q?c+rgKqFcWmsmg1zzz8okLlhY5w2nm4m9G6cwA2T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WitsMjAzcHpoeHR1dnpmZG9MSTVpcWtPaHF6c1d3ZHpwdmpxRkM2NldTQlBW?=
 =?utf-8?B?Q1V0MzZxVmVrQ0k5bGNpR2NWZ0VKWUpUYjZZRGhoQjNIeWhTVXdvVWVXdmlj?=
 =?utf-8?B?WUQ2UnRhNWpQUWRrcUJmczlhMkVSelZvb2UvY1VTVDI4QTllV2IxV294b2gx?=
 =?utf-8?B?RldUa2c4cGNvNWE5V1ZUUWtmTnlwSTZsMlNJUjc2eVRLVC9ZWEVmK3VRR3pt?=
 =?utf-8?B?OERiZXB0MlJhRTBpbHg2T0xKRWtPYThYa2ppNnZ4OXFMZjdFRnlvQ0dNbU9M?=
 =?utf-8?B?dGtGUXptWlQ2dlFQcE9JSno3VTV4RHAvLzNqc0p4YlZPZURSRmVMWW1meEtr?=
 =?utf-8?B?YnBjSk1SUGxINXlOcklhaCtiUGxuVWZ5aUlpMm1WSXVPOXVOR2ozSURkQ3hq?=
 =?utf-8?B?cjZnbHZKa2xsWVVuY2VHZEppbWF5SWFFL0l6d1dJQnpEeWRPWm83NStocDhQ?=
 =?utf-8?B?VzNhTmxJemZWS2ZvZGZGQlNJRGtCQnRUSWdKU0c3VlE5a3c5TzFzUzFPejJR?=
 =?utf-8?B?MldNK2xXU2k2c0J2Vml1eWkycDE4SkVxUGQ3ZFQyM3pWMVBQNk9Sa0NHcmx2?=
 =?utf-8?B?QTZYL09RRUhpbkhCY1FZdVV0b3E4WW8rUG9rVWZUNFRMSHdPVWZJTnZSK2Js?=
 =?utf-8?B?UTVrTkxBOGdMak1ZSjRVTU1iaGdPV3lCY1ZzdDRwYmxBRG5xTk85VHUxQWFj?=
 =?utf-8?B?U1JpSzd0R2hNTTdmcUEvQS83YnJLV0lGeSs4azY3VjRjc1NIZ3VrelZLd3py?=
 =?utf-8?B?ckh0eFU2cXoweFhVOC9pM0JKZy8zcVM3TEtkc2lLWkIva3VkZ09WWmFUT1Jh?=
 =?utf-8?B?ZlZSRWFoS1hrVlVWd3JraEhLSWZwdGU1dnppbEtWcTNidmljY3RnMm5mSmxL?=
 =?utf-8?B?clIwZHdjYnBHL3MwQUtxMTcwRUhaVzFONWFOdnZyUUZmZXhoWjhMK3JPV3BB?=
 =?utf-8?B?V1hFZ3BMalAxc21HTWoxc0t5OS9GaXdPMGRTZ3UzVzRCck5ibHl5aU1YNjVU?=
 =?utf-8?B?UlV3dlpRWkYxblZzZW9TR1FVM2N3K1dPNmt2UUl6a0ZlNGFYOTN0c3BPZTdN?=
 =?utf-8?B?YVR0ZDRrYjQ5TFdZYnB0eGdHRW1ObDg3bFB6UnE2L08rM1FDU0tJbGt3Z0kv?=
 =?utf-8?B?UzlIeVdkTmJXdms0anBEYy9MNFFicUljRkw3bjd6TTY2UDNZMWwzLzFTSTZS?=
 =?utf-8?B?Y2VKNXFQQmJlVDc4c0I2NS90aUtjWVhpRXM0MFpQT0VQOVNLZW9wbUpIOGR3?=
 =?utf-8?B?YWVRUm1BL0NHNjhPeDJZejN6eWw3Y0Y0amxFMHpLYW1aWG9qYVMrakpsMUFZ?=
 =?utf-8?B?YUZDQmx0ZEU4WmEvaC9uNVB3aVVXellldVgvTkdhMGFyRHdwb0U3Y0Q2a2pF?=
 =?utf-8?B?ZmUyNXNzcHRHTkpEZFZ5cXprTU55VHNCdC94bjk1SnJyNk5teHNlZm9adzBm?=
 =?utf-8?B?UVJqNk04a2dsK0FPZ0xsUjB5L3pMNCtPWUd2WEhzUCtBc29MbWVjcG10dk5T?=
 =?utf-8?B?dDNTVEY5ZS96enVENVZ2Q1EySUNnUGpqZG9uV0dDcEU2MEwzU3pyVUl4cklj?=
 =?utf-8?B?Uno5MXFmaUMzOG84UUV6QkhuUnNkU2VCTXFhS0J0djVDWUs5VTFDVDM4eXMz?=
 =?utf-8?B?MW1uZHhsSG1memczSHRrdFNhd05jTXJEdndMSXJ3VFhkODZhdVFROGRsME13?=
 =?utf-8?B?NE9udWdOYzVxN2w5WUVISEdXVnp6VnZvOVZHS2FwcXFmUFZIYWlRQjRzbVZL?=
 =?utf-8?B?RXR4cDlScmd4SCt5bTF1Wk52WWFZZXZVSzN5YlgrakUyL3NxZzBSTStidFVZ?=
 =?utf-8?B?SnZpR1UzTEU3cmQ5NmJwK3JjQnVscFFRLzFlV3lFWU03dkJPUjFUMkVGVWZp?=
 =?utf-8?B?aWZpdU9xb0tVQjBxNXRidUFjdHRNYjFvY0FhRHRKc1kvNUlncndES2s5Nnoz?=
 =?utf-8?B?ZUN5ZGFpVzk3QzliRndjRnJKU0thYWVzRVV0QURJdGdNYThPcU9sU1pQenJI?=
 =?utf-8?B?cWJIa0U2YnRYbWlLeXA0UmhSb3BMZGhybWZONnRkVWxrZzZBbXM4N0ZOQ0Fk?=
 =?utf-8?B?anVINWo3Y3hOOVRjaGQ3d2tEeER3SW9nTnpYTkZONW5HdThiYkRuTHRTZkdv?=
 =?utf-8?B?aFltd2JCM1VUN2ZxR01jaWFFMmoxN1dETjNGcDFaeWFrVFFCYURQMWdzb0xr?=
 =?utf-8?Q?UWpGvWLlAY66elZpcNbFBpI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2216c904-ee66-4058-075d-08dcffefbf7a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 12:20:35.6866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ba1Yr19PPxNW6GkzYdZ2FutE9qjR8Uv8edyfXu9bi8sGp2MTywMOibZvolanPbO/hoFs9ZITpRxlRStzUsdR3FrEBwa48m/RO+ohruXqzKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731068442; x=1762604442;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4CUknAsxXjhZ2A3UPDahtOmNZFCtlw5OvspFZSDdc8A=;
 b=mz8jM8uW0qTFIh2qyYefa68tKpnAfPLq/jYc+7aLJkAxLugo/ZRW4ag/
 pLNZL5OYvzMMD9V1HvCG7L8yWKdpvG2ccHF9VbjtT62e7OpzbzKF2ffYX
 9pQPkUcySHoT2J261kZfrDk0lHTntG96lHMqZUNW7wfSM7vCT3vTNsQvG
 w8TCR+r+IvfolSiLiIfvYQsWcCWpqw6bdWwIGoRaJF315owb8auAhf1Fy
 nh/Siz9fOyNvYMCx2Vgy0Zi+XtLOSTFKI5AsKE30bl3XIyyhVSrcf/d0l
 r2/0nNJ21gRu3X9vxhg3yQRSSR2JWYYy4lqbNzqYObVyiZ36gMTJ78eI4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mz8jM8uW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On 11/6/24 12:14, Wander Lairson Costa wrote:
> This reverts commit 338c4d3902feb5be49bfda530a72c7ab860e2c9f.
> 
> Sebastian noticed the ISR indirectly acquires spin_locks, which are
> sleeping locks under PREEMPT_RT, which leads to kernel splats.

I don't like to slow things down, but it would be great to have a Link:
to the report, and the (minified) splat attached.

> 
> Fixes: 338c4d3902feb ("igb: Disable threaded IRQ for igb_msix_other")
> Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> 
> ---
> 
> Changelog:
> 
> v2: Add the Fixes tag
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index b83df5f94b1f5..f1d0881687233 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -907,7 +907,7 @@ static int igb_request_msix(struct igb_adapter *adapter)
>   	int i, err = 0, vector = 0, free_vector = 0;
>   
>   	err = request_irq(adapter->msix_entries[vector].vector,
> -			  igb_msix_other, IRQF_NO_THREAD, netdev->name, adapter);
> +			  igb_msix_other, 0, netdev->name, adapter);
>   	if (err)
>   		goto err_out;
>   


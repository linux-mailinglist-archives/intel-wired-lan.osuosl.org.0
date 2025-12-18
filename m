Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E76FCCC294
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 15:04:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7454240540;
	Thu, 18 Dec 2025 14:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TxlpV2pCr_QJ; Thu, 18 Dec 2025 14:04:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0B1141047
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766066645;
	bh=lvWrKWRhPN1+Ocb5hqqpIq7iPk2uJ/iymRT5vQHCWLQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8ts4ercAhJhW29oXAZWXfYV+Mi54ffEpZ0iNMy923sWwkhxMpOMQ/IZIj1W1mdn5t
	 hUfiiV30cj4WxW0D2us8WhqZ7gfaOBWeHMgs/We3/GkKeHrue0DekOx8pgrpE1oeQK
	 wSbGYedUDp9fbWmz2bvI34By3j5oc8U6wV63ZouLa+O0KLEk7a+pVGrzaqMdRwy4rT
	 c9kIDARH0U8AMmvZFKHrynpNTuaNr85JE0VJNYgkPmsTeldl80ruo+5nDpdcB3qaj0
	 02QPWdnucdvh1BTqAs1YL899l9MUcypdln8CmEDJR7/k4dZX3KGoiLC7MX8YrlrqiC
	 DFkBS+0y/7zKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0B1141047;
	Thu, 18 Dec 2025 14:04:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB2BB361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 14:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1C2061170
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 14:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m_C5G_HMnWKm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 14:04:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC05D60C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC05D60C12
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC05D60C12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 14:04:03 +0000 (UTC)
X-CSE-ConnectionGUID: MQdCiHEwTKa6RvNRnOUJPw==
X-CSE-MsgGUID: mydKKvwVSMeFnO6Xsochng==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="78730761"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="78730761"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:04:03 -0800
X-CSE-ConnectionGUID: lVVP5kCkQW+mzdyf2zIDIw==
X-CSE-MsgGUID: wGH1ipowQpuCIzjTXURwDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="229283344"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:04:02 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 06:04:02 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 06:04:01 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 06:04:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OiV53URm7Odp8y8FEntmdHhjrzawRRuPI2g1JQDvtouY+yLoIHtyb808Jw3yBcehI+WImxS1GHvaH6DITmlSWZ0UAsiRqYBYypYuVAXBB/8wnO6O4zqgqTMHwrylBlyiHkJ5g86uoV+CuuFJ8ufTN49R/9+R5bVVmyd/cGa81hYDncqiWZwtz2bkTCtATqc18Co1MqSMrex418khS8t5RoqA8quULNZn2d94EIlS1ohuVjss4GXHdHzSQLuc1gJE22LdOi9Vql9ZBjXV22FXI/yuZMIYGbEkPsN0Yp5wFdFgINUazPA3PepHFEmTUxEdEUnUPW/H+0Qa3f1nhf5q8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lvWrKWRhPN1+Ocb5hqqpIq7iPk2uJ/iymRT5vQHCWLQ=;
 b=jVd3/mwwOEHjblWM2JlghLwgWzCTvFgq1ivoaRd68/Pz2ItJGDgcQXcM8VW/YcvTgrIA676M4aAvE4p6hC1catLp7goWrUpAAeD4GMkGm2UvlihMb6eeXk8edgYZbXpyZaFuEkUUPd97SF2c1N5jix2RQQP8XyqAFdZuTVKMy1nsqJveOpzsSxBdze5ThyxJ/ICSkmJYklSbtUGE7faY+5W+IrPMpSWt+iF3Suj+vg+d2lY9wxsxNOLn2NVMTUKAa7LJU46P4lgsv4uuMMGTZf4oScM45vjo5KT17j9YXVTvxxCdf8Ntq7c8CF+IE+UG8aIwfjzfCeHof+yO/2g9wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MN0PR11MB6110.namprd11.prod.outlook.com (2603:10b6:208:3ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 14:03:57 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 14:03:57 +0000
Message-ID: <73ab2fb8-6676-4d56-a512-24891191940a@intel.com>
Date: Thu, 18 Dec 2025 15:02:27 +0100
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>
CC: <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, YiFei Zhu <zhuyifei@google.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "David
 S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Jesper
 Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20251218022948.3288897-1-almasrymina@google.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251218022948.3288897-1-almasrymina@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0902CA0050.eurprd09.prod.outlook.com
 (2603:10a6:802:1::39) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MN0PR11MB6110:EE_
X-MS-Office365-Filtering-Correlation-Id: 30dd34e2-a410-49e1-345b-08de3e3e4950
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3hZTUd0bUkvZmhXVk43REJmSDl4VllxSXhOUkMxN29scXROMTJaY0lXMGd2?=
 =?utf-8?B?L1BneExoVEJndUVXeHpMQ2xBSE9YK1AwN1lEeGhQUzhqVmJFOWgxWk54WXU2?=
 =?utf-8?B?VTYzRExlM3FzcnhwbU9zRFNLK0VHK1cxYi9Uckw5QndMbUdWc2VNUll3ZEFn?=
 =?utf-8?B?a3BuRTI5TGtwaVlUenJwWDVLekhKUUYrSXAxTlVmc0JhUjhVTTRqb0llcVR0?=
 =?utf-8?B?K29YU0lOSlBLck1sS05WZ3J3TkFmbXRlOGtUSi9CZXF4QnFiWWtlam5DRHly?=
 =?utf-8?B?SEprSlczN005Sm41Szhrb1VSTFVlUjBRNStFLzdYUERZODE0dm83cE5maURP?=
 =?utf-8?B?UkJONWZXb2Z3VGhIOWZNbnZnMVZ0T3BNVTJWcWRlSFhwMFAzbmZZSEtrOXNF?=
 =?utf-8?B?VjFPQTRTcmlndWJZalNyNGxuVkRqODVpNkw5WFg4WjVJTmRPQVFVQzFKMmFT?=
 =?utf-8?B?L1RvaFlJY2J6OGRlSUdQbzJCUFk1dDYrYjNRSUFQSWpMcjNNVFBXTHpxYzhi?=
 =?utf-8?B?cCtRejd4SkhXR05iMk4yeDJXS0t5ck9lK2dPZi9DY0lwMDBDM0JXbnVWSzZ6?=
 =?utf-8?B?TXZoSmY2QU9XTGNDSGtOMzVsdW93aEhDUitYeDNTRjJUUDRNR1lOeHJ3eVFQ?=
 =?utf-8?B?dW5zRHJ3Ykd1M0Vqcm5OTTZEWkloT05BcGtHNzB3Z2FpcUZJdWlLakdxSEhi?=
 =?utf-8?B?VmlMdE03bGU5Ums2eHlURXpUaUExOTRjRm0vTEU4ZnZOSGlQMStHM29Najdj?=
 =?utf-8?B?RjN0a2ZaemlZM3pDNUNwRlIzY0x1dFh6NmQyanRWQlpoZjhmUDRDa1RVN040?=
 =?utf-8?B?SVljRkl2b21SckFrcHNoZ3ZmbVFoQzd0WnJiMUl1cERFc1hEVVByRXF6cFpl?=
 =?utf-8?B?OWthLzZXT29wdGh6N2I2M3pwUXBKTjU4WEZrcFYweXE2dGZBekdlVEhUWlRm?=
 =?utf-8?B?WWVyb0htSFFPM3owZFJLY2IwL3o2RWsreFljanVYaU4wUmlFRzZCNkNSMVdJ?=
 =?utf-8?B?YUJYTDlucmZ4dTVwRVVRRE1nU296S2U5KzhXZXlJRG1EWHlHbHhWLzJSMW0w?=
 =?utf-8?B?WEJPSGNUMnp3ZEZvSi9yZzhLY21iZlRobmJSbGp5UUFvbFlmWHRtUlBOQSt4?=
 =?utf-8?B?djVFVzVvSjVNSGJWSktuM3MwNXhpTk1uYkdBU3dIbXZ4bUpjRWxkODBiOHFW?=
 =?utf-8?B?bkNQZTlCbGdEWkxLK3htelpaS25WUHlnUHVpeTNyS0ZqbERBNnpOT2VaVW5Q?=
 =?utf-8?B?aVI1Z1kvV1VnUEFubm9MMExzMW5HdnFEQmg3UjVnNVV2TURqRlI1akFkcm8y?=
 =?utf-8?B?SkxkM2xZdzVpeHZ6SjRQa1hzbHJMKzJYeEh2cHA0SVBVS1QrYzRXUFdXOElt?=
 =?utf-8?B?b3gvTmkvRnhGMCtVb0hid1Zjd1lIYlAyN0hPamdtaVo1N0ZuUUREQ0xiOGt0?=
 =?utf-8?B?RXQ2SzhMQTQvWHJtZEVHQnBkVHg1OXgrOWFoQmFReis5K21BaThpTzRrLy9Q?=
 =?utf-8?B?OGFHOHZBL1BCWkFZSmMweUc1Rzdha2E3ZE83ZDFKNWsxQmpoN3g4NHFWczFr?=
 =?utf-8?B?Z3VRWUNTVFhjdHU0T0NpeGxjYVdlT04vMnBSL2xTYi9TMUt6MHVML1kwdGVM?=
 =?utf-8?B?YWZxZzJJNlVINEsrSTlnRUl5enRHbHdvek5ZdjZIem1ZRHZORDEwWDhhb2sx?=
 =?utf-8?B?dkd0bEhMTFIvQzRXWHFlSWM4MHUzamw4elN2bTdHdVBraTdDbkJzVVhGRkVS?=
 =?utf-8?B?emlIaHlLeGtRTkE4cUxHd0wzMTZLbGpXVUpPQzJWVlJNOHdxZVp6eWJjYXhL?=
 =?utf-8?B?T0Z1eWtRTUlEMDhzK2RnWkE1NFpEN2ZaekoxaXJ3aHZIVjRwa3ZFQjc0S1Y5?=
 =?utf-8?B?ektWMjBZeHViVnZUc0ttdktDZ1ByY1ErVjhtdEF0ZXpESFdFSFZRR2kvRTg5?=
 =?utf-8?B?cWV0UHNDaThscFZtSkc3bkthdk53VEJZSmMwVVY2NWwxS3JFK3I3cFk4SVFZ?=
 =?utf-8?B?K1hjTUNRdnJ3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1ZlZU1GRzJyVzY5SkNRR3Nra0ZNWWk5SmpCTmg2ajMzVVJMOHBBQ0hqNWI4?=
 =?utf-8?B?QmdydjVPS1dLN0k3VHcwZkJTallYN2Q0ZnVBWTVtS1FFbG9uQWdkQzNiOVBJ?=
 =?utf-8?B?bzVjd1lwaE9qdjdLM0t3eU1YLzUyaTluOEtqQ1dpeDVCMHhXVFJaN1VnNUhp?=
 =?utf-8?B?ZGliZVJDQ3JUZ1NKZXluN1hXY3BYcXhoTzVWZURMbThsdlJwdDRjN0xzT05Q?=
 =?utf-8?B?OVlOcmM3eUtsUU5EN3g1OE82YjNnbEV1b3V0S2Z2djdwT2xBOGZTZ2VGUWwy?=
 =?utf-8?B?c0xpTm4wZ1RqSzVNRkdES1N4a2dRZEcyYVJtMWh1bityeGJLb0g5ZklGWERC?=
 =?utf-8?B?WjlHNU1OOForTjV1ZFpwQll5L2ZoR1J4WnJCM3FXeG9EM3VTc3VIK2d3U2NJ?=
 =?utf-8?B?R3BSQ3pFRU5nWkdrV21VRVFUWjJSekM1Mi8rcnZ4YmRlSDdjQVp1ZWtzNU84?=
 =?utf-8?B?TGNQRklUUTJVc2UzTmhVa3pOWmMwdW1ZaUpLbTNxL1NzR01IMXVWQjFtQjdy?=
 =?utf-8?B?OCtHVGgzZnkxU0xDdzR6RW9NbkpOVTFmOEdabmVXeFFOakk5UkNMeDhaSTV5?=
 =?utf-8?B?Z0pKUEx3RDAzaFNhSHVBNUtpeXAwZERGYWpDRTJIS0w5Q2FKL3JyZzlMUVpS?=
 =?utf-8?B?YjRhYkh1aUttUFE5RnEvVm5yZU1ZQWNiNTdBYkJBTG9XSnJDR29tcERndTkv?=
 =?utf-8?B?NG5rNmdiYnQ0SUdIcnlNNE44WlVlVTBLMVM0OGRsOGpEb3JXbEZZcFA2WWdK?=
 =?utf-8?B?bXI3dXBKU2RyaDl4YUtBbHdaS3J1VmhyaFE0aDN1ZysreFlVcENYSEtqWkpU?=
 =?utf-8?B?dmRYZmNHWEdpREl2S3J0QTVKYjhEMzY3MDNzbzhGM25KNjNMVHRqbk5UMFFX?=
 =?utf-8?B?VE9jaXllRFhWMTUxOHFwcVdUbGw1TEFKZVZyTnEwUXlTdGNvVHdjTDBDYnVh?=
 =?utf-8?B?NzFNaGlpanRpNGQyeWlIcjRwYnBRaTUyMkNydDRVZTRDcHhoRnRTOStTVjdU?=
 =?utf-8?B?aWswVVA3MW9rNzBMSlRnQS9ydldXa210a2FRWE9OZTlDUzFWOFJyMVR3NDl1?=
 =?utf-8?B?NUJjU29XWnQ3Sisva3lKUnk4ZG9wS2FhbEJQeE13cFVtYzRGUjhKZnpibFRF?=
 =?utf-8?B?WE54M3N2dHdRQ1VKYXNCNXBSK1Jsdk9pK0xzNTE5Szc2NEI0RU5Ib1NxTlMw?=
 =?utf-8?B?em1sSjc3OS93enlOUkpvTi9QckU2VzF4TGZXY09hM0xlNkdEcnErdFdvME5F?=
 =?utf-8?B?aHZZRjZ3RyswVkJDQnphVEpEeUhhK09aZTZjQ1hKNzRidjMvM0hKVUtPUGJQ?=
 =?utf-8?B?Wkp4ay9lM3ROV2JON21oVFVRWHYwS1FGUkxJL3ZQME95Vlhad2huZGFYL0hh?=
 =?utf-8?B?N2lja1R4WU80QmsyazhKK3pjSXMzbUFNVndaRXE0bVpSSmlKbUlZUk1FNkR5?=
 =?utf-8?B?SmhibmVxMVFranpIZTZ6Z3I1L1kzL0JXRWVzRmloS0NzRU1lU2tDL2cvYnFu?=
 =?utf-8?B?K1I2OGVhMHp5K0FNTWZFejFQUDdDRnhFMUlYOG1DL3k3bnZlZTI0dHVGOXcx?=
 =?utf-8?B?YVlrVzNJWTc0b3JISmRJUVRicHZHaFZYZHR1Zk5QZWt2dFM1c1RzanYvZ281?=
 =?utf-8?B?dlZTRTNzS01QQ0JBMmRPUVVuZi9QQ3BFd0dOOGVMNFF2TXM5Zjc0cVBsSDZC?=
 =?utf-8?B?SUppcEh2MUVwOVJraWtiV1NCa1ByaE9tTVB2cGdxMDJnV055WGR4MzRIQmRM?=
 =?utf-8?B?cG5qODNzRmYvUDNmV1BNTHNEVmpQOGcvcmhydzNTamF6NEhlcnBNT0wxTU9l?=
 =?utf-8?B?UVFrampKVVYyZStMQ1dQWUtSUU5kUkRuSWFLb3lRVy9CUzFFOVZwWCt5NVVx?=
 =?utf-8?B?Y3dqMUREUzRpWEpHMERLVFZDaEdOUmxqYmI5NnBxaDR4QXlVU2ttR21PdTFQ?=
 =?utf-8?B?anFuRTZGQzI2VDRXTEVrSDFyek0zUTYyeFRSeFVlSmdpWENJa2dHTThNK3Bv?=
 =?utf-8?B?RmRCdU1iNnVGSHZQOUx2ZngvL3k3QjdHY3g2NVFvK0Jack9SakZVbFdaUU1G?=
 =?utf-8?B?bnFWYnFDb3RFcDZvb1hCNUN0c2FVcXF5VTQ2WlFEOWErYkVBSEZMaHdyVndm?=
 =?utf-8?B?VzZNc3pMK0xJd2EzbkJmUEt6a05NeWtVQ3BTMmgzQWhrbjNHMVJKUk5xamJS?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30dd34e2-a410-49e1-345b-08de3e3e4950
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 14:03:57.4201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: URpwtPsQNNIFqqzf/SJXfFjx6u3r3x+Lf2XT/onV9ZfuZxiExjoDnHJZTdNQrZbFzQs7ShDNWTHuzhLJmOBIbgHTIfRXin+E3Dz4KfdYmGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6110
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766066643; x=1797602643;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LV2eLoESOOmegas+t1xBZcLRzjwa3hEznoWRaoJYusI=;
 b=VUZdywPmCMaKqTt/Pz4qSjJWnqYudCpYqm6QaYFEm40ey+5VnA/mzKZi
 sqFBOoLcFBIg4uS9Sv4jjS+BrvmuuZBuR0yUNMpJQNpAetR6spirdyrvL
 yYmOVQJxutAjdOWOiTVeNc2PnFNgTw6fnyUEbOyIu0n6HqFBlLXGJ2ZiT
 rXFBJBlfTVk6wDLFp/N2MteVrQo08+ROE1QNTZlkDny0frP2W6t5SKgXW
 +3yNiJ4pQD7LrX8TK/foUw+cHST6NTKtq+p8webmVpa0Td80DWMIksnQB
 zOnbm+RDZ1Pb41wdztYtRCqRBCOJgrXlEMT7KZJpg3xFJQLEZkYgFTZ9T
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VUZdywPm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] idpf: export RX hardware
 timestamping information to XDP
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

From: Mina Almasry <almasrymina@google.com>
Date: Thu, 18 Dec 2025 02:29:36 +0000

> From: YiFei Zhu <zhuyifei@google.com>
> 
> The logic is similar to idpf_rx_hwtstamp, but the data is exported
> as a BPF kfunc instead of appended to an skb.
> 
> A idpf_queue_has(PTP, rxq) condition is added to check the queue
> supports PTP similar to idpf_rx_process_skb_fields.

Much better now, one nit below.

> 
> Cc: intel-wired-lan@lists.osuosl.org
> 
> Signed-off-by: YiFei Zhu <zhuyifei@google.com>
> Signed-off-by: Mina Almasry <almasrymina@google.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> ---
> 
> v2: https://lore.kernel.org/netdev/20251122140839.3922015-1-almasrymina@google.com/
> - Fixed alphabetical ordering
> - Use the xdp desc type instead of virtchnl one (required some added
>   helpers)
> 
> ---
>  drivers/net/ethernet/intel/idpf/xdp.c | 29 +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/idpf/xdp.h | 17 ++++++++++++++++
>  2 files changed, 46 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
> index 958d16f87424..7744d6898f74 100644
> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> @@ -2,6 +2,7 @@
>  /* Copyright (C) 2025 Intel Corporation */
>  
>  #include "idpf.h"
> +#include "idpf_ptp.h"
>  #include "idpf_virtchnl.h"
>  #include "xdp.h"
>  #include "xsk.h"
> @@ -391,8 +392,36 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
>  				    pt);
>  }
>  
> +static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
> +{
> +	const struct libeth_xdp_buff *xdp = (typeof(xdp))ctx;
> +	struct idpf_xdp_rx_desc desc __uninitialized;
> +	const struct idpf_rx_queue *rxq;
> +	u64 cached_time, ts_ns;
> +	u32 ts_high;
> +
> +	idpf_xdp_get_qw1(&desc, xdp->desc);
> +	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
> +
> +	if (!idpf_queue_has(PTP, rxq))
> +		return -ENODATA;

I think this could be optimized a little bit by reodering,

	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);

	if (!idpf_queue_has(PTP, rxq))
		return -ENODATA;

	idpf_xdp_get_qw1(&desc, xdp->desc);

to not read the desc if the Rx queue doesn't have the PTP bit set.
Apart from this, LGTM.

> +	if (!(idpf_xdp_rx_ts_low(&desc) & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
> +		return -ENODATA;
> +
> +	cached_time = READ_ONCE(rxq->cached_phc_time);
> +
> +	idpf_xdp_get_qw3(&desc, xdp->desc);
> +
> +	ts_high = idpf_xdp_rx_ts_high(&desc);
> +	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
> +
> +	*timestamp = ts_ns;
> +	return 0;
> +}
> +
>  static const struct xdp_metadata_ops idpf_xdpmo = {
>  	.xmo_rx_hash		= idpf_xdpmo_rx_hash,
> +	.xmo_rx_timestamp	= idpf_xdpmo_rx_timestamp,
>  };
Thanks,
Olek

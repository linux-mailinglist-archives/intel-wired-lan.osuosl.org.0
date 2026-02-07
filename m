Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAwgKNKOhmlTOwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 02:01:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E0310464A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 02:01:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EED636082D;
	Sat,  7 Feb 2026 01:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZihU4SAZOmY; Sat,  7 Feb 2026 01:01:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 657FA60B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770426062;
	bh=c47h9zjpj7TM44+dlvNk94Jcgv2sXQcOvl0floiHvqo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dTxvTgRy5Q4bky7mpbFa+vN9J9TmrfC87dfR1nMUxwgiuD4xfKWIMQRwAYAVIFqrl
	 4n+n7him1+2iof6d6aw2uIme//MaK/DY/96UQjFLH0YSPK4caKt5h1RJS73O2WTk7B
	 FJPChqZUFy+Ch9oULK47UUOoz/uXqV8gNZYlCmhpLSgaEoUFIVEQcT4W4P+rjoRav0
	 kE/4s5bpZFzT1bxZsa8goA82j61/RleeV5Zsp0Kv10IMChaiWUA9tdLLKrktaOIoKg
	 sQR+7s05Tm3xsnKhE3Esp6Ch5Dgym4JcfcmJYalcZ7E6wJ1mXcikC3aPiTR1uhj6eT
	 SEJ/u8ChZfLCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 657FA60B30;
	Sat,  7 Feb 2026 01:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 290AA173
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 01:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2681D41BAF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 01:01:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ck7shBOMs9Kl for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Feb 2026 01:01:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D5E041BBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D5E041BBB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D5E041BBB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 01:00:59 +0000 (UTC)
X-CSE-ConnectionGUID: KeC6VWarR9KTJpTryZNA8Q==
X-CSE-MsgGUID: AbyKf0KFR2m/vnwnqE24/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="82748966"
X-IronPort-AV: E=Sophos;i="6.21,277,1763452800"; d="scan'208";a="82748966"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 17:00:58 -0800
X-CSE-ConnectionGUID: 6BML5N4oRYmORowST0ricA==
X-CSE-MsgGUID: qRrBtP0AROqyUVQfe/+07g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,277,1763452800"; d="scan'208";a="210309576"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 17:00:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 17:00:56 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 17:00:56 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 17:00:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KQl4uCBKy1D2p6VNB0TPJXoUp/aiwAXUrVOawmpjntdTh2uZEfdWfG0n1Qynp8PoVNUSEjdgz6I4OdlpGwDXEv0SzAOyQqbnJ8h5G79jlEVdAWESXJO0Esu7ZLcra37y/XwvqcTXiBl1hVEaop+C9P2qx7qMF7bd74SvNG6k2bSX6SfWD+s7QNMxeGwrHd/DYumyc2gSHUNqzROF6ArJFDTNWKwtT2gAmH+2ikHwRtyETRHDj3k1OLmqrRWhs6H7P4mbetOCacVqYZxannJQ/d5p/yg9HlKChez8yNhc8AR0+Tuers8jE587x3WZKcAV7X6OxVDLX2RVYiBuUFTLSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c47h9zjpj7TM44+dlvNk94Jcgv2sXQcOvl0floiHvqo=;
 b=Z+aYePHxNSoshcLcCxtFI1M3stGZ9LOMmODMqQIS3xJiwHORzNMEAkY10V5ih7pWVdORCW1hrZ9QLpM/sfINjNXXJPdjNhnVnvRfjVpc8BqPFxNLivXKlhqFvhazcvAwUdojOpOgW+EO2hdLCpUQCQAPStZliHs2mEsostzvucVShZNsd/k4R0sv8XfRJxs4w8+TPI1z3dHBcF/6+EToQony7G5WveUipx5f6YWvwRo4d2I7lHR4gB8EMsseOfgas5iMCo9CQVmXrKCvqm0qIsF/u+h2Y053Y05LeXj+CoYoCQnSSZd/i0x8JtfeKwBnF/AttNIcVisJg9hQfI0New==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 SA3PR11MB7534.namprd11.prod.outlook.com (2603:10b6:806:305::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Sat, 7 Feb
 2026 01:00:53 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.013; Sat, 7 Feb 2026
 01:00:53 +0000
Message-ID: <3ff86f0d-4f22-4afa-b84e-3dbc6e9910d7@intel.com>
Date: Fri, 6 Feb 2026 17:00:51 -0800
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Stanislav
 Fomichev" <sdf@fomichev.me>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <d60cc9fd-70af-40ea-9023-78bbbf91766f@intel.com>
 <20260206100426.106082-1-poros@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260206100426.106082-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0325.namprd04.prod.outlook.com
 (2603:10b6:303:82::30) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|SA3PR11MB7534:EE_
X-MS-Office365-Filtering-Correlation-Id: 811b8aaf-e1ec-4855-70d1-08de65e457c3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGhyR0JwWnRKZStoTExQTjZRTW5pc21zYlJJSDVmb0twN3ZIUWJzLytqd3dD?=
 =?utf-8?B?VEpSVjBTZk9LVGFYNC9qVU14Y0RkVW55czVRNlFxSU1Ia1kxWTBHOG9Cd2dP?=
 =?utf-8?B?UDM4L3dDcWFoMytuT0EzN3l3c3B6dlg0c2tCMVhkczE1bG1hR3ZwMlpVZ1dr?=
 =?utf-8?B?Y21HbHFoYjQwb0FpbWZuRnRTeHFLYm8wMmpwNkFLWlNLTTlRUHVuSVJKNkYy?=
 =?utf-8?B?Z2hZQWx3R21Bay9oZ2V3MG04MGl0YmVNNWVpUW05VXQrcnJaSVJJQUIwcExF?=
 =?utf-8?B?RmRtN1Qza1FhNzFlQncyaXRGVDl3ZGFKMWd0TFp6WlIvR080aDVuYlBTYUV5?=
 =?utf-8?B?UnB4S2poZTV1RStML1RDQ3RWUVh2VnBhaWRvbmpBSEJva1hnRTR6N1FNWXNv?=
 =?utf-8?B?SE9LaG9DNXlnZzNwTHE4a1laZ2FyRlFaamFSdzd3REYzazkyTzZoMGZTbWM2?=
 =?utf-8?B?d0tMVEkvOEpBVDNOQjIwWEJzWUZTU1g5RU0yWTRZVXJ4UFk1M3lyYWlIdTYz?=
 =?utf-8?B?UmE5N3dxbWJveENJVURjdTVWNnVHWGJTMXRpV0NjRWFhNWFoNnpJSUFqNXZJ?=
 =?utf-8?B?dk5Wa3phSE1ORjdlMlY0NTN0QkRoelFhTGIzSHVpUTZ5ekVnRHJnN29IOWVL?=
 =?utf-8?B?NEVWVS84Y2VTbjRCRzFhV3hOejlydkFvWjBXb2s4MDVWcDRGeFpvRzhjTzZX?=
 =?utf-8?B?aGVCbHlrZWJGYzRTK0hpYzBZSEM3bVdxeE9LeUV4SDJ6c3AwSHB5cHRuSUI5?=
 =?utf-8?B?aTkraXlSUmIwanprRkJmdTl3OFk1YkxSc0h6UzlxZTNmSnUrekNLK2JtWEl5?=
 =?utf-8?B?WEVrU2JLbjhnWWJPWUY0TXJLWGlsSjZZc0xlaTcrQzhFdkxCYk1JUHBLNFV0?=
 =?utf-8?B?SW93dmpZeDlYWjRrZmtEak1kam5zU0ZNaWpHUU9BTHVTNlFHMmN2b0lTQUZk?=
 =?utf-8?B?S0UycHJqdytNeVNTaFVKTVkzUUZIVUZBNDhCUE5RMmQvS1QvSi9POFMxZ2tx?=
 =?utf-8?B?WXlmTUs5MytFOU9DaHhmNnMzY0ZaQ08yYUN4VXp2U0VxWUlaV0FIUlAxTS9W?=
 =?utf-8?B?Y3BXNEZQakM0cUlYejc1bSt1S1M2RVpjVUdLdWpOUjMvREhxZ0RQQ2J4NXVS?=
 =?utf-8?B?SUoxVzhzaGJqVWNNZ25pVVhac2NwWjRXS0NvMjhqRDQwZWJObjVIcnpoTWxa?=
 =?utf-8?B?dGhwdGpnd3h2a3J6YS9oUVd4MVNkV1d1N1YzdTgvd3JCeUd3RU9BakE4SGxa?=
 =?utf-8?B?Z21oVjNaUFozaldONllDUE43Z1A4TUVvbmVjYWlyMzlwemZiTjNXaDA2MFBJ?=
 =?utf-8?B?SFRMNjNqSFQ3bDV5OTBLWkMxeVl5QmJNNEtZZk1nTjdUZVhNRldjb0tDSTJr?=
 =?utf-8?B?ZTUzUHc0ajZwL1k1TVJHcHJMQmZKVEUzcE1BcDRhM0k5MW5oaXREdk9CVU42?=
 =?utf-8?B?bklsRmtlbWE2Y294Ulc5c0Q2QjNrUkV5SUNnaVh4SzJ1MWFQQzhSZVNlc3d5?=
 =?utf-8?B?anpyOXNoTjAyS2oxYUtXYmVvV2xZOWN4VVpnRkNKSFdWNmRaRVl3YmRia2Vu?=
 =?utf-8?B?bkdMZVMxaU12cUxHSGpqYVQ2OTU4ZjNnSjJkTWFQTTFiTHh1ZjJMUmplYURG?=
 =?utf-8?B?ZkFCKzJ6djU1cjZVSUR2QzdBZlFnbHJiK0ZNdGo0dFl2SmxWd002YXljSzRC?=
 =?utf-8?B?aVNlN2N3eGxoVmJzK0RqWnRCK2M4WG9sdTlUeTRuRFBieXBvLzlDYm5lVWE1?=
 =?utf-8?B?K2hiZUFseVIzZFJDelh3cWhzZlBmQXdmK2N5WFg3c1N3cG5iTmJZSUYvZklm?=
 =?utf-8?B?SGM5aHNRaUpsdkVCRm8vdWxBdkdYVW1VeVZHVE9mb3pJcTZhcW4xd1dDODRI?=
 =?utf-8?B?ZkJKTllrMCtYRG9zOEowNDNMcWJGWXMxcXhxUVJVZURjUS9zWmZwSGhON1ds?=
 =?utf-8?B?dkJnQ0JnS2NPcW1RWVMvZUVvSW12TDdDVFhwUVlzWkxqZ2hQVmhtdHVHdmxK?=
 =?utf-8?B?T0ZRazVyV2tER25zQkJzbnRDMm1GMmNlRUVCUUJXeHRqeS8xUHBVS2RaQmlo?=
 =?utf-8?B?ZUVYSzBMQW9CSGVmMmJOQ2Y4cnVUaVZIKzdDOUswcUhTZHp0UWRySGhKZ2c0?=
 =?utf-8?Q?0VaQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3NIVXRwY3FTa1p6aFBNMTdYdkNpeVQydVVaOXZwMit4dFB2K1pxS0IyZFRy?=
 =?utf-8?B?c3ltSXhHZ2kzd0RXU1lhdC9TL1VKSmNtNmJabWtSN0hQa2Zlanp6Y1V3T28y?=
 =?utf-8?B?NExuOEx6TFdELzJlV3hKRks3QjI3Uys2dEtIZkpjYmw3YzB0cWhybWZhK0px?=
 =?utf-8?B?aENQNDZIbUMwWU55R0dVSXhYWmRuNDV0bUlhcE0vU29yeHQ0NCtwMnRRU0tH?=
 =?utf-8?B?M2czdHQzTTRGNU1lZ1k2elFyTVJuTnpxSVVRaFJ3SGxNSHBlTllZUlNqVWpW?=
 =?utf-8?B?dXI2ZnNucDg5TzY5KzR1aTZSbEZTTlpSbGNrVXJKczV2bGoveWpXVnBIOW85?=
 =?utf-8?B?alpneU8ranFIcWJIbWMvS01nZzA1YjRIbTFUV0NhUS80VjBLeFpaV1FqMjdW?=
 =?utf-8?B?SkpkbWorWTlFVTBYaFFvbk1LYXpqS1BwVGNLQ25nT2MwSUZSTkJ0NmhTd1hu?=
 =?utf-8?B?bVQ5dTFUbUtnSHVwRmNWSkxFVkxtRldGRUo4QUtmWHJVZkF5STZsSEtNRWtz?=
 =?utf-8?B?VGM3Umg0RHhQOHlXTUcwWFBZRUVRaTZnVWRobjBHaE92bTNkUTA4ZDlydmlx?=
 =?utf-8?B?VmI4L2I4bGFUd3gzNmN0OXU0cUxHU25HM2dHSGUzSUYrbFUyTkV2a0dXclNL?=
 =?utf-8?B?ZEhZSG52bmdWaUNsYnUrTVNBVVNZOTNYVjcyWkxpbit4RkJ5amsrTHNUSllO?=
 =?utf-8?B?ZkpubnJDWFkvUXF4djhkR0JaWDRSTXBDa0RpTjJyNEw3dFBPWm9tRFFDMDZ2?=
 =?utf-8?B?cndQUUVNcDZnbTlWUFdkZGRiRGZMbXh3Vkh3aWhOSXo2bFZRNUJaR3RGbTJC?=
 =?utf-8?B?Nk9lRWYrT0huTzQxK1FhQ1JIVExzU3RhWGtWMDZPNzZ2V3BIVlV1SElaOHpa?=
 =?utf-8?B?R1dDYzQraFVLYUtPQ1p4aVVFTXYvN2FEdDc3dVFqWXNNcUpLNnpkVnFYNWI1?=
 =?utf-8?B?VGxMYXFQaGxQNlllb1RqdHdwQ2tLVEhlYjJUVWZNcVNLVU5SaXRTcXpzOWhs?=
 =?utf-8?B?TEhDQjE0Z0NqRmVuMXBWczZwNTFpYjY1TWFWVzAvcUh3UVpkTElCTWdBQWN2?=
 =?utf-8?B?Q3dSL1VWOTB0eitHcGtwUm4wWFZGdUZ2aHladjk0QlZwcXRYNHhpQ05LMFhV?=
 =?utf-8?B?UHdaSWFTbjVOVm45dmRWUDhvaVpkdWU2b3BmVVJjV0RGOGZkaTU3QjlSOGFh?=
 =?utf-8?B?R3NpaG1WT3FKS1liTVdONGhyaldnMVUvR0d6bzBOclpSR0xML1JzWEIyQ28v?=
 =?utf-8?B?Vk9XOHRBcGdiMHZuMHMwMlA2Ty9VODVud3diRlBhcUQwMzFGOUZPcXVKSGx1?=
 =?utf-8?B?UjhpcmF5VTU5cm9HaUFSeTZ6SWJjeXNpT3FlWXpVY3RjRkloRzZRSXF2TXBO?=
 =?utf-8?B?YWpyYlQ0SGdNeHFHMTR4YThBUk42NjdLeUdBTDEwbDAyVTQ5azVTd2QzVXV1?=
 =?utf-8?B?ZG1TWHA5S0I4Yk5Nc3lZOUNtMHJFa0cvVVZwanNZSlR1a0h2bjFOSFRWRnJn?=
 =?utf-8?B?SFQxQnN2eFM3ZExWcmxNamNZWTBDanEyT3padlFRU1JJNWJsOSt0Q3RJMkhq?=
 =?utf-8?B?U1hOeWRlZldvTHAyc09oQ2hSTUJBdi9YUUR2Q2xUckdEWWNna0lYaWQ0eEpN?=
 =?utf-8?B?b2ZaeXhQbGJJSzh2MlQzZUJzY1FNNTdRZVR6cTJqcXA4a3pRRzZPOUhSNWkv?=
 =?utf-8?B?SFFOeFdLQ0oxTGYzcUJWb3BHaXJZaktXZ2NneGdJUkd0MU9FaEJDV21UNkxi?=
 =?utf-8?B?azZMaXJydjkxL01HR216aHF6SUJNUDVDcHdqTXAvNlBnamh4Q1pXUCtHQ2Fo?=
 =?utf-8?B?dWVHd1ZKQWNoeElEZEU3SGVCZW5rTkMrcmpMRy9nOTcrYlNuSDl0bVpkSEQ5?=
 =?utf-8?B?elU0NlBlSHlsY2VYNUZKeFR5Q0Z6cEs0YmhWeklNc3dFMEFZaTg1WGE4UGFn?=
 =?utf-8?B?aitDM1lDWjNjYk1xY2N1QmJTOTRONHpPSFhVRkdRSUJQcHdUSFUweDRoRUFB?=
 =?utf-8?B?K00wMGZVTTJCS0g5VkJVT2RzVCt6dFFhRWZ1NWZlN1hZaFcybnZxUWFUOVVY?=
 =?utf-8?B?RHc1ZWR1QjRobDZ0TWFqU0hRTy9NREdDeDhPckx6N3IyQU1UejgycWQ1TTEw?=
 =?utf-8?B?WnhNeGJoc0pob3NZZXZLK1F1NmVCMUxZWG5ubTRDOHJwTWJDMHk3UkV3djRX?=
 =?utf-8?B?aHNSQjdFSFNGbXRjbGRVT2hndFhnQnkrb2hJcUJXUjVIUlpQazhNNDBuSzN4?=
 =?utf-8?B?YlZGR1Z2WFhJOFl3S1BuN0JwdTBEYTMvczdEMWU4anlpZVJHeHlLOWdJZHNP?=
 =?utf-8?B?bVJub3pPWS9NYVh3WUZTYXB5MWJla3JqVEFTekZzWStxWW1JRXV3UT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 811b8aaf-e1ec-4855-70d1-08de65e457c3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2026 01:00:53.4387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IogKN3axBLGmiuvtTgGDmWHHaTxzB4EwIzCeY0HgH+poBLf8odTTmHl9Z9SbNucCu9k2A4NDHJdr10qcykjMltrRdLiiD/j5EeF6+RqCHbQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7534
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770426061; x=1801962061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NmWJOE+R5LW8YRiKSzRpc6yagKGMeSWZHnq54XdzZFw=;
 b=Czqvg8dmg0VI7gSuXqw6Xy/jK67yyJZENHeyubWUvLEiif1n9oAMmrsf
 qY+rsFxTdYVwOm4crxK3/om3LJfvo+NOK5kFd7DyH6kXpnVos87HDryo3
 gpkUWKPdwKG59TN3GHfFiJs7M6Hd1w3RUBQS+y8iIoE+crbv2eZwXu3Fs
 +nc50VIOR2Hyouv014qxFgUw9VoxX/d5AQV8lBL7xjLCTmd3qSe1ya3nN
 f1cypau7YfRS1Hc7ZL86DHMXl58hz/wTGF1pi1JsChajAfMTxRSCvKh9V
 RrAVdioa+jLEq4BlzmujqUZD5DN46egHREBRuy52Pkzzn8l768CWs+qIY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Czqvg8dm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.852];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 87E0310464A
X-Rspamd-Action: no action



On 2/6/2026 2:04 AM, Petr Oros wrote:
> description...
> 
> Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---

Code changes look correct to me. Description obviously needs to get 
written, but...

I loaded both the net as of ee9241524b46 ("amd-xgbe: do not select 
NET_SELFTESTS when INET is disabled") and tested it with and without 
this fix applied.

Before the fix, changing MTU till timeout after a few seconds with the 
complaint, after which the reset will happen and MTU will be applied 
late (the timeout in the wait event prevents a permanent deadlock). With 
the fix the command completes quickly with no errors and the MTU change 
applies immediately.

Tested-by: Jacob Keller <jacob.e.keller@intel.com>

Additionally, for a version with a proper commit message, please feel 
free to add:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks for working on this, Petr!

Regards,
Jake

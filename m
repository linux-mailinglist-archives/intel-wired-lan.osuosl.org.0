Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB46BAF7D91
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 18:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8DC883ACF;
	Thu,  3 Jul 2025 16:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BNii4BBqdi-t; Thu,  3 Jul 2025 16:17:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB69783A9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751559436;
	bh=OFnJ4xDNIeLTwpfN1tyEwfrY8g+/IA1K0V/PywxoVB8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4hl97FBoAE3PLDitodAci8y6KV2z1d7vY8aT1shvgKx3qbE27kCrjvcVjdrfUJ7Ex
	 zjjdV9dhZY8fekCgOG7jBuf0nW8T9RIehIMV9h63l9xdCSQjvIlxIfpzQS93H5iWN+
	 th3lnM7P96j77V6s4qWKMcD/I7ovwAcOUUY1GVZiTFDhYb9wJ0rHj97GUwaMaDgxbL
	 L7uUPZmSYyCXuS7KYNc9J3WCjjtjVHtMnp4hmlGwYGo6O8nmXoFi5mgrzRqT0d1QoF
	 RweqM8tpp0nwnQYc/K5D+Pxip14syw6Nv/secLfsqdaUQ1OXI1DQkWrjtpIJJPDbk+
	 AuYiX6dhXOM2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB69783A9F;
	Thu,  3 Jul 2025 16:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CD8915F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 16:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EC304091A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 16:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mdS920Qznd3i for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 16:17:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E03B407D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E03B407D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E03B407D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 16:17:14 +0000 (UTC)
X-CSE-ConnectionGUID: TpdWr5StSeypNWR92BdkHg==
X-CSE-MsgGUID: C4GtXgLkT36ghExqvx68ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53761870"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; 
 d="asc'?scan'208";a="53761870"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 09:17:09 -0700
X-CSE-ConnectionGUID: IlhmQMmtQ9+TpiwGBKCNNw==
X-CSE-MsgGUID: Hn9uywn8Q7+Dd4OexuE1/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; 
 d="asc'?scan'208";a="158451773"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 09:17:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 09:17:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 09:17:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.55) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 09:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ge7pbHiYp2mLtaEiisAehFKK9mJ4hDJtQS7ciAQgQhBBRZaOtA7ySK9/uDUVUOzbRfMvM5LS7xxviVYZ6Kb0kuYwozHoUflzXHMyAvETPdpNShhRzSZZjqF31hwpxp7oKYE2aEPI8vmzLHJ5xbTcneZ+yH5fxml7nOVtc8XmxkBwYeuwN8+5uJ/rhhd9PPrAmg3eVoyPtBtAT+rvJHMu332MlR/pllBJN8bkvx8SRpbFXWOEaE5IWzZLJeZmXwydUNr3/21bpthsGuwo+HJ8qHxZL2vnZSHYjGUOyVtEpMHb7Lt+RwWdyMSOOdTgr8BUhZ5t+1Hn98NhxmDSOr4KSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OFnJ4xDNIeLTwpfN1tyEwfrY8g+/IA1K0V/PywxoVB8=;
 b=mPgZn9P8H4buKpdo55N3IMSguDKuswpNsv9u1iVgnV7SjgiqZm+kmz4D/tE1mR5CivuMLghCIkEC+mLqzN6+JxgF6ZLUBvzqSiukQUZSBehOPmDCDfShPxakR+Upz6oZeffAeONn0bVwAbCJHQDuilYD6nVtKgszwAsKjH7oxR7Jf0kUxqAj/gWFsqmH7TsYuq7Yu0i/wX80AfNPnmlykk/wBvtBfNMX+f1BMnZAtH3gZ57KYMgQdX/2N3QFsOIkpIGuMqxCqMQoHBhhqNrdp8nDEmPJarpPFWQGuJOREwT3ItEHpSwXlS/plmTp/ey72vLucheDJ7bXdIfzHWT6TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS4PPF31CEE2CEC.namprd11.prod.outlook.com (2603:10b6:f:fc02::1c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Thu, 3 Jul
 2025 16:16:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8901.018; Thu, 3 Jul 2025
 16:16:37 +0000
Message-ID: <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
Date: Thu, 3 Jul 2025 09:16:35 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Kb6VR6XvaViEgP5r65MWu09B"
X-ClientProxiedBy: MW4PR04CA0195.namprd04.prod.outlook.com
 (2603:10b6:303:86::20) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS4PPF31CEE2CEC:EE_
X-MS-Office365-Filtering-Correlation-Id: 05a78196-9eeb-4aa8-c891-08ddba4cfc39
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UnFBNlF0MklqMmZ3MTFRK1Q4RysyTll2ZXl1ZEVzMmEvNTcxd1JQQmNIYmFZ?=
 =?utf-8?B?aE9UK1ZVNWlZdzhNTUs3ckpJV1IvSUV0OVpzRytkWWxYdmFUbVpsV00wMTJ1?=
 =?utf-8?B?RlZZb2llQ2FNaHFkb0x4a1lGNUF1WHVrMUFFQ1Fqby83Y040UGJwY0o3SmhS?=
 =?utf-8?B?QlJJWFBmek1uTVpVbDhTN0k1QU4xYjRMR05EY1owNnhEc3paMFRlb2dXVVA5?=
 =?utf-8?B?QjU4RDkxdkJTOTFwZWoxandiK3BLVS9iUFZFQWdxWDl6M1BybC93SXdhUTB0?=
 =?utf-8?B?NFFwTUtmVEhRdy9mTk51Q2xTUTlpR3JVYmxFZG95L2JZaUVKRWljbWNaQW0x?=
 =?utf-8?B?M280Y09GQ1h1YjVrUUVLTStDTjJnakluZllwaHVmeUNxcHRmWk4wVVFCRW1a?=
 =?utf-8?B?QVR3MS82UUhEUzlVblArM0s4Z2x5ZFZCTE54cGx2dkZ5d2o1cUtmZTJFNmZR?=
 =?utf-8?B?NGJOcU9WRXVFbW44SUdBOEZwZk5Wa0k4UGdOclpvdExCd0hMbVhzTUl3bDBp?=
 =?utf-8?B?R1FKQ0xlUnYzK1N4bUowN0JkT1d0SXI1eU9NRkNyL2IxWi9UODFxQzk3Vnox?=
 =?utf-8?B?anYzMUZKcG5lRjdQaHkxYVFwUXVtdFZpVDNqcmZxVnU4NndEWmhlc0thVU91?=
 =?utf-8?B?MzN3S2Q2YnFYZ1NtamQwanNLbVIvYTM0SGxQTXNSaGZySUpUb0d6b1BVMjhN?=
 =?utf-8?B?S3UzT28yZml6dHJHbWpBNUVSRjRhS2ZIbGdVdzBsTjgzVXl2YlcwcWRZaURU?=
 =?utf-8?B?UlFCc3JIV3lVRkcyT1FmRWJxSkpPaXc2TEswMjdjYlhka2I3dnNrdnFxYy9n?=
 =?utf-8?B?Q2JxVitOTVc5REl3MU5OZVNvL2tjVDREY3h0a3BLTUsxbEs3V1liYWFkU1Y2?=
 =?utf-8?B?cHBWdWllSDc0cFhMMkJSVzdSVVdRcGpXc2xtSjBaclJpQUM4aXZBeStmYXVM?=
 =?utf-8?B?Mys1U1J4WFAweVFSKzhaNW9ia3pmdEoyVGFSZE9TYjJRSGhOSzlhN29PVVB2?=
 =?utf-8?B?WGVDN2NidjNhUTZTM1lkTEtVbkRZR1NuZUoxSmFMQmRqbzRpSDZudkFJWTZq?=
 =?utf-8?B?Rm5pd2ZHY0p5WEpNck9RdktEZlgvL1R2SHJubTZ6QktzRFFjb05naU4xVy81?=
 =?utf-8?B?eUV2eS9wMThZd2lUVXBvOTVlb0ZUK25xeDhLS3VJVjhjRXhDTU5RS1p0MVZR?=
 =?utf-8?B?NUYydk0xbDNld29sRlAvVitOcGxvK3B4ZGVKdkhGa2lmR0tLMXZBM05Wa05p?=
 =?utf-8?B?T2RWRHFsaWtVUGg3ZFZsQ0JYMk82NG05a0x6Q2ZyNVdyZ2lueHJvaDFkbUNu?=
 =?utf-8?B?K2FqREt4TzNwdHI0dDdlamtDdkhuZWR6clZSUzdXeHl3R29ER1JoOWszYnlO?=
 =?utf-8?B?U3UrWjFmeEtLbmM1L2xvb1JoZzlLMjEyV3FhemJuWHd1bGZBT0ZzS3QxeERn?=
 =?utf-8?B?N2xoRWlCUlMxdXFhTW5DNG1vV1BRSmgyMlpiamo4OG9uM3VLeVRRNS9mWVNy?=
 =?utf-8?B?akRhY1Urek5weFRDY01LMTZUT1VadGg0c21iZEJoa1AwZ296eXpsa1NIbjA4?=
 =?utf-8?B?U2ZCbDBvME42MWwyZ2pobTVKS1lQd052ZGh1UVRiTkVxOFlWQ1VvL2JSSTdR?=
 =?utf-8?B?eEFHNUxFZkFkSDBaY1FEZHdKd2pZeW1KT0JyTnphc2d4TXRxRUk0d2dLeml4?=
 =?utf-8?B?UUdOZDZDYXJ3Q1RWbE5JMlVGWmVLSWFVczN1QUUyZ2hFWW9QMDhZc3ZqOGpa?=
 =?utf-8?B?b09DZkxDdDZKeHBjeW1qaWJWZnZRWGU1dlI5ZHZ2NzBLWUNEUEpBTlNNdk43?=
 =?utf-8?B?WkFObVZpUm90bG8zZWY4dGtTMEZzQ2NHdDNvQXZ0QUZuZml0UU13blZvYlZI?=
 =?utf-8?B?TExZa05qWFZxbjRpaUJIeCtEYW85TVFId0UzbS8wdGQxRE03YTBCMG1HQVRk?=
 =?utf-8?Q?WnhdOl1BHio=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWhTNStZTHZ3ZGxqeDdlWHkzZVJtZU9TRi8wUmh4WXNXUEh6Z1l3TjhzdEI0?=
 =?utf-8?B?K2xSY0FkVGF2R2pPZmo0ZGRMelcyYUZTemlrWXNvZGtOcllKbG51aW44TGV5?=
 =?utf-8?B?dHpJN3gzZ3lvOTJzVXZHL1BmWlE2d0VYeElsYVFydjZKZWs2RU44RXMvNTNa?=
 =?utf-8?B?WUxEYWJqS0VtWUw1U0tRU25JQTZWaElvNzVTY0VCbnVYR293SzJ0d3FMS0c2?=
 =?utf-8?B?aVFNSjdjYmRPY0xkYXVlSjk0Uktqa09JeGxhQzJNTGRMTUt2R1JvazJPMFlW?=
 =?utf-8?B?S0JzbDIrTWtKZU5iR1dwajdsUzJWWnBkbUh0QllMNFEyVnhmV0NSU1lpRUhq?=
 =?utf-8?B?a0xxU2tqbk44dnFPN1NhaTNjbDF4azBmbEtmWVJDYVN4WktnUlZqZ1pGRjRU?=
 =?utf-8?B?TVBzVXhpMER0Q0JDdTFDWmVjOXFkU0pHakZLN0FPV2VNdTAwTTZad3BZZmZ2?=
 =?utf-8?B?ajl4S1pXL0Rxb0hYQVBHZVJTSnhycHA3eExpYUE0SmNMcTVHd1BsWDBjQ3F0?=
 =?utf-8?B?VW5nZnY5UEw4ekRYUHVnV1dWYWJuQlZnN0c4ZXI3WGQxbVliK2tvYjVxc3kz?=
 =?utf-8?B?RTFHV3Z3MG05VHFmYjRtWnB1eFJybVJWYXN3ODQyMmNRWjY0YTZ0MVZGdDZk?=
 =?utf-8?B?MGNhU0ttV1E2NFU5V2dMa015N21EOWMyeHRhMlFVVERaK2tDaERCT25sVUIx?=
 =?utf-8?B?QlliRGpnWW1Nd3QwR0hSLzl3TzluWVB6a3FSWkd5WVByMENZYmMrOFZUeTU0?=
 =?utf-8?B?T1lNWExpenAzOHppRmREZEhFa255cmw0RVV1ZmZIdktLYXR2Qm1HaUI2Mm93?=
 =?utf-8?B?ZUlhc2FwdWlxeVo2MEFrSEcyT2VUMXVtd2M5M2hZdEIwWVk3RndNR1pvVkJK?=
 =?utf-8?B?WXd0dWhlSlBzRk42Y1dDby8rK1lTdG5wdTZ1ejgyZndOK1ZFZGFKUlg3VDdl?=
 =?utf-8?B?eVlqcjJoQXdicUs2eFNkR2UwZGpYU2dhc1prTzRsOWN0emJjUVVMN1VNN1hV?=
 =?utf-8?B?U1A4dldRNXZSYnlaYnVRSjdlMFVPL2pudkFidW5GN0Rhd0oxT0F2SEdsRzcv?=
 =?utf-8?B?UzJWTDRkRkVKMWJ0eUk3ak83SzJ5MjdaR0hhTkFTbGtrUTdRSEx6dU53N2lp?=
 =?utf-8?B?eVE3Nkx2eDY3RG54Q1psSVcyVkNadXZ5aGZWZnRmOEN1SG9CbzZtK3kwRnNZ?=
 =?utf-8?B?QTRtRTVQYXBpZE9XT2NjZmJoNG96eS84d2NuZ1JHZTNQK1JadlFGQ2l2NHhS?=
 =?utf-8?B?QzB4UndsdTNadnBPUkNWR2tkWlVIL1ExUFR1K3R4VWRaemd0QkpXdlVKd215?=
 =?utf-8?B?VXhYVzdvUzdjRUJEVlE4RjlKbDFFbU5lWVcyT0FsckpvSGlKRFloWVFEd3NI?=
 =?utf-8?B?VlNUN2Q2UVdEY0xYa2haaVFqNHdkOWllTGNNSU9aY2Y3bmYzYnlvSVNTaExY?=
 =?utf-8?B?dDh4TFFIM3N4ZWlGbXVNZ3pKWHJNeVlYNVZHTHEzUUhwQlhTYzdFLzVSS3o3?=
 =?utf-8?B?eHlMa0ZtQVRSczBkdkNWa0k4S0NVTkJ2L1Nrb2RGdGlCeFU0Y01nWWxNbHJR?=
 =?utf-8?B?UEtscTA1R05BTXZobXBRZTZvenhjTEtQdUFpNmhpRUExeFphQ1o1OFBWTm5C?=
 =?utf-8?B?d3owUkNuOUdocy9tc3h3RkpQSXBtY2owZnhFRHhEZ0ZwdzhUWGRtMXdGVGdG?=
 =?utf-8?B?aE83MStjQlVmVHVydFlDMUNpVytXNkRQcE1tVlpaNks1WmdxNzVBMStxanJZ?=
 =?utf-8?B?M0tGZnJRSDlqa3h0dVdxd1daNkhyN3N1N0QxYzVLV0hSeWdrOFM5UXlNU1Jo?=
 =?utf-8?B?YzlueE1wRWxsaXhrT0xIVFJKaGFsM3ljTzJPbnU0OWwzaU4xQndoRWY2MXl3?=
 =?utf-8?B?VGdQcHdpQVJTNW12amkyODRvaUtYRXpnRmRXWmF6QWVZbGlwRVNvcjJEOGhP?=
 =?utf-8?B?bXkyRGNwWldFaUN6dEVSbnBaT2lYS1ZSZ24wZFRpT3ZITEpSTHFmVWY1THc5?=
 =?utf-8?B?M3hVdnhmOEkzaS9rTW96UzZCMHVXVi9tM2s2RmJoWXNWS3M5Y1Rlekd5V3lS?=
 =?utf-8?B?c1YvQmI2dTFGL2s1OHFTY2lQeTJHY2FmYStqWEZuRlgrejJZUUJ6WjR4UXoz?=
 =?utf-8?B?d1RxZFA4ejZzTlBMSHNhL2FRa1VxS0FjNFpGVytnZ2RaNGg0cUxHZ0NtZzFZ?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05a78196-9eeb-4aa8-c891-08ddba4cfc39
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 16:16:37.0322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3Kagsf1rPYSq0UcVytxjkWwpz2IqEPGjyxrAVcPjbpopAIM1ltx29F0pgvCk4ct1CirD4UQT0y/Y89RqtD3NVWDTPXhI5PQ0zLrUjN9o7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF31CEE2CEC
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751559435; x=1783095435;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=1m8TZvc9I68yCEeq4p8USO6W8peKUTC6oJhJDh5nn40=;
 b=i3df/OmU8l2RPpSzj61TTrJEbxQYT0grGRhETpA4SuyBS1VnWqh5nkbw
 yrl1bUUHKxb+XaS+dUKNKZINMltDEAOBBrHutue5KXn6b9U+Et0laeDxf
 6LPfYN44uMCAjPCZi/hDml9GXCuWbABdxPxcjKQRq6MDtAaDQOvhxQysZ
 AyY3B32lKmK1mqp4iKnTSSj/RN8gBnhuvXd3I2wcXIFanmLdIeEu2WHq2
 w9b9PcD3f3ffKEYcQaUOPmGAp3u9D6L8HGUYQ9rg5uDq7vrP7VrTtq7c9
 Gq6j9kBeDi50dNtqFmwCjMt7zX0dAFcrXRAZrxMRRTf/oEfnqfJ9HLkLw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i3df/OmU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------Kb6VR6XvaViEgP5r65MWu09B
Content-Type: multipart/mixed; boundary="------------ctG0z3E80XMgw9bCUUG1oNCT";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
In-Reply-To: <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>

--------------ctG0z3E80XMgw9bCUUG1oNCT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/2/2025 11:46 PM, Jaroslav Pulchart wrote:
>>
>> On 7/2/2025 2:48 AM, Jaroslav Pulchart wrote:
>>>>
>>>> On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
>>>>>> On 6/30/2025 2:56 PM, Jacob Keller wrote:
>>>>>>> Unfortunately it looks like the fix I mentioned has landed in 6.1=
4, so
>>>>>>> its not a fix for your issue (since you mentioned 6.14 has failed=

>>>>>>> testing in your system)
>>>>>>>
>>>>>>> $ git describe --first-parent --contains --match=3Dv* --exclude=3D=
*rc*
>>>>>>> 743bbd93cf29f653fae0e1416a31f03231689911
>>>>>>> v6.14~251^2~15^2~2
>>>>>>>
>>>>>>> I don't see any other relevant changes since v6.14. I can try to =
see if
>>>>>>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test=

>>>>>>> systems here.
>>>>>>
>>>>>> On my system I see this at boot after loading the ice module from
>>>>>>
>>>>>> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3D=
iec>
>>>>>>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ic=
e]
>>>>>> func:ice_get_irq_res
>>>>>>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:5=
65 [ice] func:ice_init_arfs
>>>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:39=
7 [ice] func:ice_vsi_alloc_ring_stats
>>>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:41=
6 [ice] func:ice_vsi_alloc_ring_stats
>>>>>>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:13=
98 [ice] func:ice_vsi_alloc_rings
>>>>>>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:14=
22 [ice] func:ice_vsi_alloc_rings
>>>>>>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:1=
09 [ice] func:ice_vsi_alloc_q_vector
>>>>>>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:=
40 [ice] func:ice_fwlog_alloc_ring_buffs
>>>>>>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:4=
93 [ice] func:ice_setup_rx_ring
>>>>>>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:6=
80 [ice] func:ice_alloc_mapped_page
>>>>>>
>>>>>> Its about 1GB for the mapped pages. I don't see any increase momen=
t to
>>>>>> moment. I've started an iperf session to simulate some traffic, an=
d I'll
>>>>>> leave this running to see if anything changes overnight.
>>>>>>
>>>>>> Is there anything else that you can share about the traffic setup =
or
>>>>>> otherwise that I could look into?  Your system seems to use ~2.5 x=
 the
>>>>>> buffer size as mine, but that might just be a smaller number of CP=
Us.
>>>>>>
>>>>>> Hopefully I'll get some more results overnight.
>>>>>
>>>>> The traffic is random production workloads from VMs, using standard=

>>>>> Linux or OVS bridges. There is no specific pattern to it. I haven=E2=
=80=99t
>>>>> had any luck reproducing (or was not patient enough) this with iper=
f3
>>>>> myself. The two active (UP) interfaces are in an LACP bonding setup=
=2E
>>>>> Here are our ethtool settings for the two member ports (em1 and p3p=
1)
>>>>>
>>>>
>>>> I had iperf3 running overnight and the memory usage for
>>>> ice_alloc_mapped_pages is constant here. Mine was direct connections=

>>>> without bridge or bonding. From your description I assume there's no=
 XDP
>>>> happening either.
>>>
>>> Yes, no XDP in use.
>>>
>>> BTW the allocinfo after 6days uptime:
>>> # uptime ; sort -g /proc/allocinfo| tail -n 15
>>>  11:46:44 up 6 days,  2:18,  1 user,  load average: 9.24, 11.33, 15.0=
7
>>>    102489024   533797 fs/dcache.c:1681 func:__d_alloc
>>>    106229760    25935 mm/shmem.c:1854 func:shmem_alloc_folio
>>>    117118192   103097 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_ino=
de
>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_=
alloc_page
>>>    162783232     7656 mm/slub.c:2452 func:alloc_slab_page
>>>    189906944    46364 mm/memory.c:1056 func:folio_prealloc
>>>    499384320   121920 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>    625876992    54186 mm/slub.c:2450 func:alloc_slab_page
>>>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio=
_pmd
>>>   1014710272   247732 mm/filemap.c:1978 func:__filemap_get_folio
>>>   1056710656   257986 mm/memory.c:1054 func:folio_prealloc
>>>   1279262720      610 mm/khugepaged.c:1084 func:alloc_charge_folio
>>>   1334530048   325763 mm/readahead.c:186 func:ractl_alloc_folio
>>>   3341238272   412215 drivers/net/ethernet/intel/ice/ice_txrx.c:681
>>> [ice] func:ice_alloc_mapped_page
>>>
>> I have a suspicion that the issue is related to the updating of
>> page_count in ice_get_rx_pgcnt(). The i40e driver has a very similar
>> logic for page reuse but doesn't do this. It also has a counter to tra=
ck
>> failure to re-use the Rx pages.
>>
>> Commit 11c4aa074d54 ("ice: gather page_count()'s of each frag right
>> before XDP prog call") changed the logic to update page_count of the R=
x
>> page just prior to the XDP call instead of at the point where we get t=
he
>> page from ice_get_rx_buf(). I think this change was originally
>> introduced while we were trying out an experimental refactor of the
>> hotpath to handle fragments differently, which no longer happens since=

>> 743bbd93cf29 ("ice: put Rx buffers after being done with current
>> frame"), which ironically was part of this very same series..
>>
>> I think this updating of page count is accidentally causing us to
>> miscount when we could perform page-reuse, and ultimately causes us to=

>> leak the page somehow. I'm still investigating, but I think this might=

>> trigger if somehow the page pgcnt - pagecnt_bias becomes >1, we don't
>> reuse the page.
>>
>> The i40e driver stores the page count in i40e_get_rx_buffer, and I thi=
nk
>> our updating it later can somehow get things out-of-sync.
>>
>> Do you know if your traffic pattern happens to send fragmented frames?=
 I
>=20
> Hmm, I check the
> * node_netstat_Ip_Frag* metrics and they are empty(do-not-exists),
> * shortly run "tcpdump -n -i any 'ip[6:2] & 0x3fff !=3D 0'" and nothing=
 was found
> looks to me like there is no fragmentation.
>=20

Good to rule it out at least.

>> think iperf doesn't do that, which might be part of whats causing this=

>> issue. I'm going to try to see if I can generate such fragmentation to=

>> confirm. Is your MTU kept at the default ethernet size?
>=20
> Our MTU size is set to 9000 everywhere.
>=20

Ok. I am re-trying with MTU 9000 and using some traffic generated by wrk
now. I do see much larger memory use (~2GB) when using MTU 9000, so that
tracks with what your system shows. Currently its fluctuating between
1.9 and 2G. I'll leave this going for a couple of days while on vacation
and see if anything pops up.

Thanks,
Jake

--------------ctG0z3E80XMgw9bCUUG1oNCT--

--------------Kb6VR6XvaViEgP5r65MWu09B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGas4wUDAAAAAAAKCRBqll0+bw8o6Pnk
AQD7qm4AWCnaP0EJza7YIzWYzXlF8IPwd423BpXBoNXwFgEAx5gHXQRoW1OwF0uFUz61cLF4Y1vV
5SdIC7yYr/xm2w8=
=XVf4
-----END PGP SIGNATURE-----

--------------Kb6VR6XvaViEgP5r65MWu09B--

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB839B026EC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Jul 2025 00:30:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B21181F25;
	Fri, 11 Jul 2025 22:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A41MC_czIqaU; Fri, 11 Jul 2025 22:30:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3489581A92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752273026;
	bh=+E8fOlXjNXzuqC+Q4e0DxpuBbUlE0wPFJ0QLNo8MM14=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OPNFkrQLJPghcLGTqLAsX+8WppXv/RftptvOw2yaeISi7j6gSrhItP70HfAlHwt/C
	 95FB0DJ3HhwSWaE7onRn/AS9fiPQUW2MIG98koOUpIdO5EwbcnYIhrefOIPePTGuof
	 HVcoGzN6SFjkcCbso2E0nCkhBZmRKYqv+u6BTcS5FdAaPrTMrHFip0N1iT6BF5RRSc
	 8lIvBoQXeBZPfPcZOJj5U5dCZzpxX5pR+ZZVZ5pCKxY0f7QNVH9qGsZ8niMEcgcfeF
	 pxk/Sya/hxqJj5S8v7Wgp+epboobMexVEWPb4+SxpDJgc4SRW4OQmsx5rC9NNNmsne
	 ADq7qfF3og7Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3489581A92;
	Fri, 11 Jul 2025 22:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C7E6106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 22:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E12740394
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 22:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcGO2T0j9kX0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 22:30:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 266804038E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 266804038E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 266804038E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 22:30:22 +0000 (UTC)
X-CSE-ConnectionGUID: SWpImvuHROGlQi4qcMhx4A==
X-CSE-MsgGUID: jJcMG7wVR9+c3yIQ0sR56w==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54431665"
X-IronPort-AV: E=Sophos;i="6.16,304,1744095600"; 
 d="asc'?scan'208";a="54431665"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 15:30:22 -0700
X-CSE-ConnectionGUID: ST/G3sYASRGIeNeS8dPyjw==
X-CSE-MsgGUID: eOt++cVRR+ujFfEws/28mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,304,1744095600"; 
 d="asc'?scan'208";a="160486474"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 15:30:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 15:30:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 15:30:20 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.89)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 15:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JMxdjhi8tv4pvYAl0ns9jU4TlmMMuvajJo7R68KF+M8Hu7O9dVEh1AciB37ZesQ06m6KSSFcCGUFuqiQ4jL0xF4f4DyE+9OdFJnpbv2quS403l1icHnXesT6M33B7Xg5+5mH6W37A/A/iTRTKmtRVdHzGaGqMGXow0LafNn57Lyx3ftlgmSv9+5eguEiSdtar6msj4yMwocBP2ZGxZxwnrsFqi3Lwu+DkTAMAIqZFWux81PcvIdtZeSUZgo5xkd55wMk8IvZE7t0hcmOpFwYpEdTQMz2YqVtypELlcFXXDbWrcHdWQbVUpMvtKg4l0THiBDkRPg5imNzNpY3C8+hZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+E8fOlXjNXzuqC+Q4e0DxpuBbUlE0wPFJ0QLNo8MM14=;
 b=mGR0KNceV0a8jaPYyvUO2EIAnVKYLIHB30tkoNooRWA6QLDLXWa9CsKpep43bJ8EPGLFebpnkdq8hCa/0ZkJ8arF1qZZw6XYdYbkeyxnAF0tJYV8vVgb+hwsXP0L5EuNYMGlGYs9SIizPzDCAq9U+Z2SOPkUSBOhII/aLhRYBwRthq5kwPTYYMrr4S1vTW3KLAyoYoqEuVGsyMnuB8xN5UNEQX21FdV3t23aGYoh7hSUwJXCyB9AzpuRZXnXV7kUx4RHVmpAuUVlRDd4SoxNsHsP2rGTLmKvSa9GBJilpxGf9YBTgex0hKP4uFeVhzDzl+P7HFjGNPXLmkqE1AyjQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5014.namprd11.prod.outlook.com (2603:10b6:510:31::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Fri, 11 Jul
 2025 22:30:17 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 22:30:17 +0000
Message-ID: <217bfb43-0c16-499d-b3da-aad22209fea1@intel.com>
Date: Fri, 11 Jul 2025 15:30:15 -0700
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
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
 <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
 <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
 <7518e246-40ff-4399-9aae-57a5158061c3@intel.com>
 <CAK8fFZ47qh=ezYwQ5hRPxmwidOkTj_ueQsKz9G7erp0RPtaQ3Q@mail.gmail.com>
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
In-Reply-To: <CAK8fFZ47qh=ezYwQ5hRPxmwidOkTj_ueQsKz9G7erp0RPtaQ3Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2P0GVJuxDQxFGnnDrKTVSIa0"
X-ClientProxiedBy: MW4PR04CA0290.namprd04.prod.outlook.com
 (2603:10b6:303:89::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5014:EE_
X-MS-Office365-Filtering-Correlation-Id: cd1fc62b-7467-4678-293d-08ddc0ca833a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1BqeTBaN2pXT3dBU0psNHFCWElKc1cyU1FtMVlLbjRLOGtKR1E2U0RxYjVv?=
 =?utf-8?B?cHFRSzUrTGYxenNacXEwa1FvWjdlK09GMTFSejh3K1pxcFZxTnJYeDV0Zk9J?=
 =?utf-8?B?NFpsWXl1NURtWXp2eWNrdTRZK2NTenNjN0ZQcm5XR1hIOVJTT1ZEV2hLSUkw?=
 =?utf-8?B?V2J5QzZzM1lkbnE0TkN5ZUpDYlVNdmY1M29LZnpDUXBteU9SSVBPQ1cyZmlJ?=
 =?utf-8?B?ZnpncTNuWWlOTjBmbXNvOEJ5ODRNUDIveEM4ZWhRSWxCYnN3RW9TWDlZeDZX?=
 =?utf-8?B?a296bFV1aUJmRnlxT3ZpQjlVcHhCWEZ2azNZT1JWUmJBbGs5dVo5N0FKdjB3?=
 =?utf-8?B?QzIyNyttVWpjQ0NFYkUrUDQ0Q0cwekNsUDE4MzdlYjRBbk95NWZVek4yK3Fu?=
 =?utf-8?B?dVVnWGZiNUdxNFpCdTFYUlEvelBFTjZHT1E4RWhWcmxzaVNXSll2UE9yd2Ra?=
 =?utf-8?B?anBLOUhDQkhQUm0vaC9KUTE0UjRGdDFQUjIwTU9CbE5VZU4wcTA5YWpXeEVC?=
 =?utf-8?B?eG9JNEkxM1BWVTdqUU5ZT3htNU1EVmEwU2JTZ2tzaDI2VG5DS0MvVXUzejRM?=
 =?utf-8?B?REFjNjcrL1VIbWl2aDZDQkcyUWI5ckNoQW1PZURDcXJSb0VxV3U0aG45YzE1?=
 =?utf-8?B?SHRZS3IyWlpqZVZIcmdtMmUrWmc2NTFwZ0U3aGNLMlMvakVPNlRjNkZ0VlhX?=
 =?utf-8?B?bW13aHI5Y0ZJTnEwYjgrL2habDZlcFQ0SWlGaG9WdDhNaGhYWUNLdzZvbERY?=
 =?utf-8?B?RUlvaWx2ZHVUSVhXemNIWmcxY2NicWN4cW5EZkFaOEFqSFMvaTlWTUpRZi9E?=
 =?utf-8?B?alV5dFJDbUlxWFlNbDNEVVRzc1ZUekNRS3l0U2lna1Zta0VrckE2d2xIeS9v?=
 =?utf-8?B?SW5TYjNsL0RCUGQyQVoxU3FKL08xMnNmczhmQmU3T3J6TWpZaDZsS015eDJL?=
 =?utf-8?B?L2hWRzlHUGY4aWdRY3d5eGNLTzVVZk5rRE1FYUIzRk1sc1ErTVJEVkNpcE1F?=
 =?utf-8?B?YUVrSUJLZm1BWGNYc2NVcllPRzMxMlZ4OC83NVM3bW0wdTc4KzJ5d0Rrbmox?=
 =?utf-8?B?MmxHY05DMGtzUVRKU3htR0VGeE5sbEpNU1ltUUxhUnl5UjNnNVViODBlVzR5?=
 =?utf-8?B?bnVUd3dwdzNZRllIanQ2bmpEZ0Fqdk9HckFnbzZCRXEyN2gzaG5NV0RhZURO?=
 =?utf-8?B?aWFpM0pBUUFuZDhEOGdyVWVJQ01HalIzOXdMWmRmTkRwMTdPVXc2cHhwZjRS?=
 =?utf-8?B?Z2ZDbGMrdFVyQVU1YUs4LzVGaFEwWjU2eVptcW1PbEp3VVJvcjJxaEREcWpR?=
 =?utf-8?B?VE1reDN1dUh4SDBXS1o4aUUvcGJhRXgwUjRRQmxJZWZTOFpmZUxrblczTWRi?=
 =?utf-8?B?SUttZkM2eFFweWVKNHlXZlJzUXhJRnVBK3NNM3ZMbzFMSW8wb0V5ZjBtWmsw?=
 =?utf-8?B?c1JhQVQveFhOWUVQSU9EY1I2U3hDSEVKOC9EZ2ZhU0d6Vm5uMGFvRk10MldE?=
 =?utf-8?B?WlU5UkhJV2Jnek1lZGpJWEFCZWljUEdubTdZRWh2Q1NSZnVJcy94UnFsV3Yr?=
 =?utf-8?B?a080TjNSOUlhaWNjZGlLWUkwTTNDYTYySXI4N3FZZnA4ZUpvTnNOSTVadFpZ?=
 =?utf-8?B?MjRkSU9TamN2WndMYWtiTnZKbXhhdElBRmgycTRQQmdIeTAwTW9qa1FCUG5v?=
 =?utf-8?B?c05sVHkzeEJHajBmWmJuOXpETWNGYnVkdlhHS1JDSHhWckRaaHQ2bFg4UHpO?=
 =?utf-8?B?SnprM3ZqWFBVZ1FkT1JRVnVuWTdjY01oaEVCOVM2aVh6ZWwrcFQrQmZtS0Z1?=
 =?utf-8?B?VnZGQTV3aXBYd3NPTkFqd0Y5elptSzhadkRZOTJCeTNQUHNuK1VBYkEzeWRa?=
 =?utf-8?B?SEM1MnV5b2hXVzA3bm9mUnZqeENSbjlRNEZGL3R4R2tZTjRaVWVJNjROVDV0?=
 =?utf-8?Q?AVhsIpDU2EkyBeTGbtEQgZncdnm5gQ5Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajBxSStlNjljQUtUdWo5MUhHSlNrVFBVREREaHdmNi9jU2VtNlZkd3lYUDN5?=
 =?utf-8?B?QWs1U0pnamtCbVJOZ3A4SmVta3Q4WnpKc04vWGhRQlU5cE1CU2lodGs4S1Z0?=
 =?utf-8?B?MWp5T0tCSmtMWTlvNHp0L2ZCSkxOb09LcnVCNHVSamJxZ0xBV2dVWHdnak1T?=
 =?utf-8?B?VkJFRDM2NUtFZ3dJQlhLRWRNZXVZM3VxYTVZUTRHRTBacVN0dVJhcCtXWUhG?=
 =?utf-8?B?WnJZSjVtZTk2WExKTlJKZXZPZFordlhCc3FMMTM1cWEzSjh1TGUzRTVQTTZv?=
 =?utf-8?B?LzQ1Q09zaXhRNDhlanhaRDhnOTJvdHYwZE1scmw1WU5EczhiTkxjRTdKOWdu?=
 =?utf-8?B?eHJoc2s1OWhWd21qY2E1TmFMZkNacE1XYStqbkF2MjRpK3NRVDBNMlFhZVdu?=
 =?utf-8?B?dmR0M0V0YTJrRDhJU2tvd3lJeTE2cVVKK1Jma3JMUklCOFRZc1ZCRXgzb2Z1?=
 =?utf-8?B?Tk9HUVpmN055djI1ZlpmVHBlRzU5a25uZFU2dk9FQy9MN293QVZNUTE1TFdw?=
 =?utf-8?B?dEpVeVlka0VtazBudWhTbDE1Sy9ZSm1Wa3ZSVk9GeS9mUjdnMy9qQi9vdE1Q?=
 =?utf-8?B?eVhvbm1aQ3A0cW9mZWdtZzgwRzR4OTU2ZFYrNGVqU0I5SnlPTXF5cFBTYmdT?=
 =?utf-8?B?MHMvb3M1UjMzVjhNZ1hYUUZHTTdvUTJxSnBRRzArb2x4Uk1hQ2lJcng3N2pG?=
 =?utf-8?B?NHlNNkk5SXRkbXFkRTJmcFE4S0E4aWlMYWtlVXJwNGpNaFdUL3RyMERvS0tm?=
 =?utf-8?B?RGNTVi9IQXJTOU9hQmoxbCt4QjltSGluck5QeEpySjB3dFA5MjlxTjIxVjY3?=
 =?utf-8?B?SHduWE9pN3RYbVBxMmE0ejJZNkovdkYyb3ZBUVVnaW1Ka01VZDdLM25BU0N4?=
 =?utf-8?B?TUVNY2RrYzEveXNHc0x1YU9pK3pFRmx5RVRmalZaUmRXMmxDRTU4elIyckFF?=
 =?utf-8?B?QXpGQnhxeUhIS2o3QmVBWnpwWldjeFV4SGlzaHBxZ3oxK3IvQTFUa3JWMEI4?=
 =?utf-8?B?NjlrZEpMV2U4M2pnZHFXWjhXNVRQZ1RSeHZqR2VueEN4WU4zZ0hGSjNRQ0tM?=
 =?utf-8?B?RDFKaW0zSVR3VXRPOFFNcjY1MnVjcUl4RGRVcThHcDJjelpMVHdDcWpuVUFX?=
 =?utf-8?B?cGI4ODRHRjFqdkIxZlJHK094TVBnMmd1N3IwYzJFL2ZwV2o5N05zSkhqcm5R?=
 =?utf-8?B?ekU5bGsrZnZIdVo3SlRMQlhtMk85ZkRzUGRFZHA0QzFRdVEvMUl0VCswSHpG?=
 =?utf-8?B?aGVFY1J0eTV2dDRiT09Vb1ZzVlNxVENWK25xWXpCSGxPaDF0TzBFdlNtbGh0?=
 =?utf-8?B?UlFYTCtjblMvV0NwUTlOa1Z6aTd0NVFiUkYzUi9jU3JUZ3F6MFFkczVFWTBu?=
 =?utf-8?B?S0hOdFhKdjBWMzZtaFoyRU1oOFZXcGs1eVRMcjY3QWpzMWN2SjkxS3o2TFNF?=
 =?utf-8?B?bmdMNnl6Wkk4aFo5ajhUSGVhVVozU0NTQ21ZV1VMMFdTMDc2cWFyQ29KSFkv?=
 =?utf-8?B?Y0FDNzR5b1lSQTVnVGRIRk1udmJRN0Z4RTdaZVRmK0dPY1Y5UURyVnlzSzlL?=
 =?utf-8?B?cmE1VWtOOHVud3RiMkhFcktKQVIzL1FOYXl5dU1tWGtuTXhEb2RhWE9obUQ4?=
 =?utf-8?B?aTN4ay9JUDdZYzdEVlh3U2tzREZ4ZWtMVGdJS2o2dElONEd0bmdWMDZjc09K?=
 =?utf-8?B?N08vTDBmWGc5T1lCbEljQkZMVW94Wmp0bjVVeDE4cGo3eFVaWmVSUWRrSFFt?=
 =?utf-8?B?RU5YTGsyVDJMT2w1QWh1U0E2NGxjOGtDbytlcVFUdkcwWVEreWxGajNORmty?=
 =?utf-8?B?eks2bjREOW1NOWpuNVJQVHdzZUhhQVN2RFVmTnNCdEZJQTRPMmFnWHhuL2Na?=
 =?utf-8?B?V29YNlo4T3VmRmR5UW5nbU95Ynd1QWlzU2EydndzWjdMODByVHI0cURLdkh6?=
 =?utf-8?B?d0RUT3UrVjd1TS9jOHRySHJNaWQ1RzN4Rmo0ZFQ0V1pKd3d5UUI2NWVDcVk4?=
 =?utf-8?B?WVRvMXA1UlVRcjFzTzgxWFJmS3Jqam52ZVhwTGFSTW9SK0lDc2puKy9mcFFV?=
 =?utf-8?B?M1pHeDNoaVdkdHNrV2ltcW5XM2QwUXFISE8yelRIM0V4dUlhc1Jla2tHbmRo?=
 =?utf-8?B?NkpxbjdJOVJiQVBPMVJESmxVYnRJYkxjWmxYeEZIQi9BbjZiaGVjYVlLbXpL?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd1fc62b-7467-4678-293d-08ddc0ca833a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 22:30:17.8020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MQCCVvF6t3RqTexoqHMMLh85VItCwTaEazfyYlnoYxEkoxvgQ/IJ1CfJ8K8S1GovFdtl5UJsxP75FdXzfeTsvVX4Dv1S09pTe3HtpCplZQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5014
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752273023; x=1783809023;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=+E8fOlXjNXzuqC+Q4e0DxpuBbUlE0wPFJ0QLNo8MM14=;
 b=QNTDIJXmxnR6IYzauGVlDr2mAQ+RvQf1Nvehi1unI2xjgC7R4fp8wGOh
 sfMIP9T3DRiKmI3RH2582mfkBq/ZqIA4teM0o51opTihq2EG91hgowmx1
 z4+0FvPCmmZMB1KEwPqrjk+1NGc2B4lfD3aWL3JlqkVWNh3Y06d8P9hp9
 XmOPF0JH2fqTqM2ouv2dUzqdQp8/Th4PzLqY0bDeoELTuXw04Bvxh4vPG
 KXzZ4xKyFKcqXF1WFJTI+fgbJ36qTXAiynfr7P+iM5aBaw8IvJAd4kS/z
 otoHTSLg67cysoB+I2RlgfBVOrSIZfrjoxy9vnl8Oz1yu3a/IlB2RW7z3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QNTDIJXm
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

--------------2P0GVJuxDQxFGnnDrKTVSIa0
Content-Type: multipart/mixed; boundary="------------YgUURNpTYQfyHe5u6T4XnFrM";
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
Message-ID: <217bfb43-0c16-499d-b3da-aad22209fea1@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
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
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
 <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
 <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
 <7518e246-40ff-4399-9aae-57a5158061c3@intel.com>
 <CAK8fFZ47qh=ezYwQ5hRPxmwidOkTj_ueQsKz9G7erp0RPtaQ3Q@mail.gmail.com>
In-Reply-To: <CAK8fFZ47qh=ezYwQ5hRPxmwidOkTj_ueQsKz9G7erp0RPtaQ3Q@mail.gmail.com>

--------------YgUURNpTYQfyHe5u6T4XnFrM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/11/2025 11:16 AM, Jaroslav Pulchart wrote:
>>
>>
>>
>> On 7/9/2025 2:04 PM, Jaroslav Pulchart wrote:
>>>>
>>>>
>>>> On 7/8/2025 5:50 PM, Jacob Keller wrote:
>>>>>
>>>>>
>>>>> On 7/7/2025 3:03 PM, Jacob Keller wrote:
>>>>>> Bad news: my hypothesis was incorrect.
>>>>>>
>>>>>> Good news: I can immediately see the problem if I set MTU to 9K an=
d
>>>>>> start an iperf3 session and just watch the count of allocations fr=
om
>>>>>> ice_alloc_mapped_pages(). It goes up consistently, so I can quickl=
y tell
>>>>>> if a change is helping.
>>>>>>
>>>>>> I ported the stats from i40e for tracking the page allocations, an=
d I
>>>>>> can see that we're allocating new pages despite not actually perfo=
rming
>>>>>> releases.
>>>>>>
>>>>>> I don't yet have a good understanding of what causes this, and the=
 logic
>>>>>> in ice is pretty hard to track...
>>>>>>
>>>>>> I'm going to try the page pool patches myself to see if this test =
bed
>>>>>> triggers the same problems. Unfortunately I think I need someone e=
lse
>>>>>> with more experience with the hotpath code to help figure out what=
s
>>>>>> going wrong here...
>>>>>
>>>>> I believe I have isolated this and figured out the issue: With 9K M=
TU,
>>>>> sometimes the hardware posts a multi-buffer frame with an extra
>>>>> descriptor that has a size of 0 bytes with no data in it. When this=

>>>>> happens, our logic for tracking buffers fails to free this buffer. =
We
>>>>> then later overwrite the page because we failed to either free or r=
e-use
>>>>> the page, and our overwriting logic doesn't verify this.
>>>>>
>>>>> I will have a fix with a more detailed description posted tomorrow.=

>>>>
>>>> @Jaroslav, I've posted a fix which I believe should resolve your iss=
ue:
>>>>
>>>> https://lore.kernel.org/intel-wired-lan/20250709-jk-ice-fix-rx-mem-l=
eak-v1-1-cfdd7eeea905@intel.com/T/#u
>>>>
>>>> I am reasonably confident it should resolve the issue you reported. =
If
>>>> possible, it would be appreciated if you could test it and report ba=
ck
>>>> to confirm.
>>>
>>> @Jacob that=E2=80=99s excellent news!
>>>
>>> I=E2=80=99ve built and installed 6.15.5 with your patch on one of our=
 servers
>>> (strange that I had to disable CONFIG_MEM_ALLOC_PROFILING with this
>>> patch or the kernel wouldn=E2=80=99t boot) and started a VM running o=
ur
>>> production traffic. I=E2=80=99ll let it run for a day-two, observe th=
e memory
>>> utilization per NUMA node and report back.
>>
>> Great! A bit odd you had to disable CONFIG_MEM_ALLOC_PROFILING. I didn=
't
>> have trouble on my kernel with it enabled.
>=20
> Status update after ~45h of uptime. So far so good, I do not see
> continuous memory consumption increase on home numa nodes like before.
> See attached "status_before_after_45h_uptime.png" comparison.

Great news! Would you like your "Tested-by" being added to the commit
message when we submit the fix to netdev?

--------------YgUURNpTYQfyHe5u6T4XnFrM--

--------------2P0GVJuxDQxFGnnDrKTVSIa0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaHGQeAUDAAAAAAAKCRBqll0+bw8o6ODH
AQCtjhdBuOCpdiD+BZ1Xy75MSrgS2bQ5SAvrQzM+O019fgEAqCsUBNIq3/07vZrv/N1pNRYnaNpf
UR10LlPI0iD/TAc=
=PIUy
-----END PGP SIGNATURE-----

--------------2P0GVJuxDQxFGnnDrKTVSIa0--

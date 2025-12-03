Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4102FCA1CD3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 23:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED14360662;
	Wed,  3 Dec 2025 22:17:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HmuEa3A2C3od; Wed,  3 Dec 2025 22:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5827B6136C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764800256;
	bh=hpiBknbY/CsfTcOVFQZ9KTp5Id24MJyGC4Dn9qHeZOE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1BrWfIwrbSkOvYPotuBFjambqALr+/XD8Ymf9PtLQk3uvA3XCG8USvg1HPeiewIy6
	 RZV7fWMyi7REg5olz2DRJ9Gk3OwgqwCPCv91cChlGmQ69VtC1ZnFTc4ryI3IdoTWEU
	 /Ft7hhGkvTBMP8XsN5609BihNZIj7fx0PhgP+jWYlEM2OQrdTd9vgIrk84qV2zpQ8/
	 srTDbExNDHhHbuEKQRFajQIQwAK5uPQ3VbmI3qUt9e1MsVbP8AeE9fFF1ZcnTGmPob
	 /ZqNdEiE5cvzoBLDiPM0KxzDf+FpZF4wsNFYHHPhLDgtcWY4no2lROPdiCzq/CE0/S
	 5zfWp41uSCFnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5827B6136C;
	Wed,  3 Dec 2025 22:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 01EC8D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC9CB82531
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FQxW9vkiooiR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 22:17:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD34A82532
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD34A82532
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD34A82532
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:17:33 +0000 (UTC)
X-CSE-ConnectionGUID: qf2G6v0FS9u77l8i+Y75Ig==
X-CSE-MsgGUID: Syeo0hq7RUCCKd05yoPiSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77432037"
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; 
 d="asc'?scan'208";a="77432037"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 14:17:33 -0800
X-CSE-ConnectionGUID: I+n03FS0TIecL6WhrJnzuA==
X-CSE-MsgGUID: 3amLU760TSWtRTVoCkK4dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; 
 d="asc'?scan'208";a="218159685"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 14:17:33 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 14:17:32 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 14:17:32 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 14:17:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FZ5JYmx3fsDS8i6V9u7CDjgeku+PtXRCq40AHlJ/JcoHYWtCULTutnr27V3GC77WvAGjxoCAqsjCXC3mVkey6sNgiJSrjgFFdLM19FBXuxk8z7ZOmur56re1D3KBe4GJlwXDcM+2wSXbfsxLV/CbXnBV8a90dhmc2mJD7pe3O1sO5v4BFT26/qZ9w2FTYZjQIfbcwstswqnu9LS2ODyRkXLRmoK3nVESR2l4SzUG+AF7RkUi6PM9vW2q/iZjuWbzPdYEnmdLDDYr/CA4UT5/TtIJJ6EBoqSBLR4aaZgh5D4p2gjczHopbZOG53nhPHOHbgTMOsc9bDuUNhRqnzUEUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hpiBknbY/CsfTcOVFQZ9KTp5Id24MJyGC4Dn9qHeZOE=;
 b=F3RzBU59USWhfQw3W5bTHLIapJ2/9hKWo6ktWzjX5eLvaMfz4xj6FLnXxTGMtJTRqomAupCGpqLLsRN1syBLkjcYfCRF+TaD5Ruhah0vkp3RWDh7zbBEwATkQBVJcGpk/FPf0fACAHxsoXh/3rMzbzn8EpvM49WtbjmKq+hqEdnZFusug6uKB/aLTz6rZMiOTbL632IrrUbL1yg5zjGs3bbExbobcQpKebJaEfMlrzcDwCNgdbP+yWzSlup2LNfqOx7uPJsVaW75UyRzSwJVz0Vpj2maAh3A2qREHu3VozV9nnjUtIgwDuY+y8MoB8gg1RvWKJakLxgqEtZvZtA/Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8589.namprd11.prod.outlook.com (2603:10b6:610:1ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 22:17:30 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 22:17:30 +0000
Message-ID: <e3110f85-290c-47f1-800a-9430afed5abc@intel.com>
Date: Wed, 3 Dec 2025 14:17:28 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-5-6e8b0cea75cc@intel.com>
 <aSWCQQsd-_cIKucF@horms.kernel.org>
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
In-Reply-To: <aSWCQQsd-_cIKucF@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U4Oky1rYS0kjHbi6LCwgC330"
X-ClientProxiedBy: MW4P223CA0029.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8589:EE_
X-MS-Office365-Filtering-Correlation-Id: ab591f7f-35ee-44c6-94b8-08de32b9bfaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTFjRnJ1ZDdGdG55YTVDQ1ZYVU5WOWtEajhNOG52NkZwTFVnMFhsNW9XY0Zz?=
 =?utf-8?B?T0l5SEpkTXY2eHBtQXdnMnliRGc1TTJJQkh4UHdQVTVsMlJZUk5uWFBRMHRp?=
 =?utf-8?B?QTlIMHlUZlViNkhDbXltRHJzWk1qc3c0eS9qcEF4aGp5QTVtMUhnTitmS1Jh?=
 =?utf-8?B?eWRyZHFwSmc5NEdHZHRJb2hUN051UkdkR3RMWUJqUkl2WU9XNFhROGJTZUlm?=
 =?utf-8?B?RnZabzVDbWpsdU1QZERIUVZtRklsRnROeVdScEpTMVUwdm96UllQdlhKUDlR?=
 =?utf-8?B?TGx6alQ1Mjg0TURKK3RRSkpRNEIwRDQraEZ6R1hPalRZMDdUbVdLVWt5NHk4?=
 =?utf-8?B?WVhyd09wdmUvTXN1UmtHdW5GWUIrekplUzAxVHY0a2dkT2k1Ynl4RGxiNDJ5?=
 =?utf-8?B?czRmYW94cVh0YU03VjRJRGFocUJOc0hYNUdnK2U4NHFzeE9UUkxxYThiU3Ex?=
 =?utf-8?B?T2ZUSFQwVU5oekNxTFpxd3QyK2NaZHF6c0p3MDFBa0pRNnQvSnc1WlR6aFJD?=
 =?utf-8?B?Tlc0YVJnOHoxalhYbm1DNWZnb2EramU0QS8vZDNZbFc4K0E1K2xIRU1NTXJY?=
 =?utf-8?B?U1RBTEMxc0gzaFdzVDhrT080blBRQjJWNkZEeHR3ZXVJNlNJTHpqc1BjWHg2?=
 =?utf-8?B?L055VDg4Qm41T1MwUTBGbVZPS2tRVEdwajJ1NG9LYjVGMU40UlhZalYvYVhi?=
 =?utf-8?B?L1ZKN2Fnbk53dnNBVTJscUUxM1VJaDFTTTNEekZ0L2F3VmFMdEM4QVhGNk5s?=
 =?utf-8?B?Z0U1YlhjK1kzakphcVRROWlab1hFaXZOL1cvQ0ZjVk1YRHFFeldUN1o0eWh2?=
 =?utf-8?B?V0RvUjd5SDI4SE1nWW84MzhlL3Zpd3daSTgzZld5aTBTTVFTbEZtc0JETkdh?=
 =?utf-8?B?VGUxZkVCVUQ5UnVrK1NqZ1h5REhsM0t0RlZZZzl1b2hRMFVlcUNRRzlLc1Jn?=
 =?utf-8?B?eUxqNENlQVFycEFoUTJtb3BXeldsS0Q3Q3YxWnVzcmliVVJTYW1hbW5Dclo0?=
 =?utf-8?B?cXFBREhIWjlGSVpDZGZwbDRQQThONnFhaDVWVHB2SFREMVk5eTVXVXRuOXBn?=
 =?utf-8?B?dWtTL3R6S3pvTUxyUUg1ZjRQMDhZb0dPZzB6TjQ1OHRjQTMrT09VcUV5UUs2?=
 =?utf-8?B?U0FJZDJCaHJyYzluK0x3SzVEUm5Fa1ZMUStINWx2V3p4UXV2R3VVa1hrKzlr?=
 =?utf-8?B?ZUY3ekpJZ3JyeHVGaktRMU5CYmNYcUpqTW9kYWFVOEtJY245NUwrQkRDMW03?=
 =?utf-8?B?dWszVzh3Wng2SVk0cThPbmpmdkYyUjcrZU12dE5LVjRQMWJJeDNRYUtJeitv?=
 =?utf-8?B?eFdoOUthZ1RKTU93eUVuSG14dm10ZzBLSUZvc1RxRFc3Y3JLcHZXU1FaUzl1?=
 =?utf-8?B?SW5lQVRKZjZXN3BmSENsQllLVUdvYWpRTWZ6L0ZnSjdqQk1jUE5KTDJqV0pO?=
 =?utf-8?B?RjlOVllic1pacWd2bWpadHhsaERVYXFMTTlKTkNqU2tOVkw1cTQ2SVZpNGlr?=
 =?utf-8?B?bTd4citOenlDWVVvZy93OXRpWkhRY2F4WVJDNEtmb2Q3TkVza21ZZVB4ODZH?=
 =?utf-8?B?NXpvbUxjeXRBdHVhS1ovb1FWdy9jdW9mVmZlaE9lUzhaSytpSkw0a0VEMTVS?=
 =?utf-8?B?T1FuSmFBbzZ0UUlGUm5RYXlIMU9pR05leDdnNUxVdW9sZndaWWNhTEVib2NU?=
 =?utf-8?B?aDNmeEtVRnIzYytmWmsrcUQ5U2VHZEFBMytEcEtGQnEyUEdRb3F2L0JsTFpB?=
 =?utf-8?B?VEhtYXR0YW52NkM2dUZnL2FSbXZsdU5rS2pwcUx6ZFhlaWYxZ1FvWU5FZ3dE?=
 =?utf-8?B?NXY2ZDYxNitOSUN0cTgwZW5yZmRsWC9jTjg1b3h0UzBPSENnNTJzaWdIYXpr?=
 =?utf-8?B?N3FEV2FpK2pPZXNTTStnYWhGZkh0eERuQTlsMk9YUEtpSGxqdEtXWjB2ck5s?=
 =?utf-8?Q?FOIVXNuQBP00Adbs0Sycqv49rBBDG0Uv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzJ2Sk1kbDA5TW96Rm5sdDAwN2pyZlRVU29Ub2hFTnRkbFNnTGh2N1JpSzVR?=
 =?utf-8?B?eXpoNForTzlScVA5TmtEeXpWUDRSaVJIQno0QWdEMEZ2c2hSczdWdCtwdHNK?=
 =?utf-8?B?NGZxdFAvd2xnMnUwbEZPSHhpb2tSS0NaT3dLU1lHdlBtSHlWVzc2aHA3MGo3?=
 =?utf-8?B?Z0E0SGd2K3dzeFY2MFpRQmh5RUVmUkdpQWZzRGxjbnBlaXg1UytjMkl2Vkxm?=
 =?utf-8?B?dDFIdXlmdzRzU2xIVDhxK3hWREUrQzVkM2JOa3l5RHZtbCs0U05vMFlOQnZG?=
 =?utf-8?B?NEpIdGltUDRMNEV4NnZUdHoreVIxSXJNVllRTzVsVWdrU09YWlRtOUJ4MkFC?=
 =?utf-8?B?Q29heUQ4eFVPWk1QUUFDMU5tbmdlempMRE9pSDlzYlpyS20yd1JnNGpYNDd0?=
 =?utf-8?B?S0Q4am9LSWpnUlBabElWcGl2aFVuYks0YkZEYnlTSnRYMGR6WEorQ0hFbkZk?=
 =?utf-8?B?VlU4c2JMYndrOUJCVUJzclE3a1lxV1Y5a3ZqaFJVWmJoeUk5aEs1dXNoZ1Z1?=
 =?utf-8?B?WVd6ODN0RTNHUENWcTZseFBEM0ZSWWxTUFFwL2pHcmp5SzQyQ1ZiUUE1RGhE?=
 =?utf-8?B?ZHd2a1dWd2NvRS9LT2ZFRkJMNk5KclhiWjF4L0RtQnpOUkdOTHJXSTZRalRQ?=
 =?utf-8?B?YitoaldVcno0Z08zek5vUFpzbTRxMDluekxmdElwSTJHNHEzMHpkZEJqRnNY?=
 =?utf-8?B?blBVVkQ3SFZhNzRmSWlEbDkrWTYxZ2hKa2pZL1RKYlppSS9KdGZYaUR2NHVY?=
 =?utf-8?B?bklCV2Z4enFDUWhvQUpreXp6ZkxrbDFNeVh4WENiSlFsLzFtQ1hLUEtSUkRx?=
 =?utf-8?B?cWtZSTV0d1FmWEhURzJRQlF4UWZaQ0ZPR3Z2OGVEeU9mOEx0ZjY0NjRNc3Fy?=
 =?utf-8?B?QzdkUzFQSk1XVHNrbmdPZnZzcGNsVldHckFvOHVQZEMzVzBVYUlwUFh4Mzhy?=
 =?utf-8?B?MStTLzd0OFM1Q001OTBaS1RQcTlMRGt4TTYzcEtBcVhVRVMxQ0FBWTNtTGhS?=
 =?utf-8?B?WmRLUk9aUkNOZkZsTC9BUG9FbjhkdDEzM2RXaStUcHFiWmdjUTAwSmxjRTd1?=
 =?utf-8?B?OWRoSnRFWVB5OVNtcXN1d3Jtc1lKRStiaUNlTm5YaDZqWkN2Y2tJY3FsMUNK?=
 =?utf-8?B?dmRqeGJIVlRkd0E5RkNpYlRYRCt0aVpyZjdYK3hOL2o4ek83WWQ2K1NxQ1Vk?=
 =?utf-8?B?aGVQTmdiUVNiK0x4a3U4SXZTVDBtWlAzWGtjbGxOM0NZNm1FWkMrREhKMlZC?=
 =?utf-8?B?bUJRZTUwdkVDNFJHbWJuV1FqdHNWNUJsQjZxQXNXVFVxN091SW13bUJaakl0?=
 =?utf-8?B?bFJ3YlVFZXhHY2dJckVVVzdpMTB4aGhPR1hYV3c5VlE1aTVoN1VWL3F6TDhq?=
 =?utf-8?B?YStMVVk4cUc3aE1tMWs1aHcrR2hFdE9vdE1qYS9BU0N1Qys3aVhhN0pISnNB?=
 =?utf-8?B?Wld0VkxudDJZczV6ZkhINWx6K0Y1RlEzakNqc1ZJQkRIYU5UenVDRE52bmFS?=
 =?utf-8?B?cUl0b0hHWkpaRnlXWUZRSjcvaFNDS2ljT1AxSlBPRTl5aFdVOE9vQmNobnNH?=
 =?utf-8?B?LzJucldZUnVUeU50dzZEREM0Qno4WEtjT091dERNSnVNaUI0WG9OTnpLOStw?=
 =?utf-8?B?WlpUejlNS2pRdW5RRGFzZEx3Q01Ja3VJYkllYytySFFVbU9IRUdteldIVWk3?=
 =?utf-8?B?aTgrQ0VHcVdGVVFBS2lyc2ZUQzhSbDhia1FUL2lGNW5Wd3hlRDZPS0IrVTho?=
 =?utf-8?B?L2x2V29tNjVHR1RuNE1mYVhCOC9rRWlGTktZeE1WK092TzZIaXJpZVVvcVRX?=
 =?utf-8?B?ZEdjWUtjdFJ5R2ZxK3pjWVh5N3pESFlIdzBGcmdGS08xTnJKczNJeWtISEhS?=
 =?utf-8?B?NWF0bDRId1FzbFVrTXAvMlVwcGR3TXAzNnJFb2JYMys1aFJqeVlBdTNLUGhl?=
 =?utf-8?B?bkJCUnllVjZ5RXdpUTZROWNFbHhMZHo5ZHd2SkNqYVdRbkRPVkQ4OVMrUVhX?=
 =?utf-8?B?SGxrQlpYWkoxUS96YytYWGR4NFdhNi9LcWJJeUdvUHNqMHBqeU9LNURBbjVz?=
 =?utf-8?B?RGVUUVc0a0hTMytCN2ExOTRhUXAzSVBBVDF6eUpYdnF0R3VxMUdOdW1VZ2p4?=
 =?utf-8?B?UlMxbCs0OHhwS3drOWtqODZjM21nVUdkRVVNNURYL2pUK0pLa3RCdVhscW9T?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab591f7f-35ee-44c6-94b8-08de32b9bfaa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 22:17:30.2077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TckpS7F1H+o3fInSxmRzf4vkUUG/l/KhozDWWpS5f1GiW3c1RQwOKkj7kMuy8GVI4uKyJbMhum+LoRQozbr6x0enGK8KGD5/9GLMzRf9Ces=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764800254; x=1796336254;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=hpiBknbY/CsfTcOVFQZ9KTp5Id24MJyGC4Dn9qHeZOE=;
 b=nwp1GrTXBHEadrRV6fkeqgOWnz39NFLFo6Fq/PQtGcsBkeogldmXGuNd
 U0o1vC616OWcqHHkNTNhS0sJzsNcrpWiyFP+NTV8OC1q/0oivoVJ+pUB/
 clfKnfNzaKdMc2aXfbmgFnZif9+4GyYBw9Z18EaUPjGKt9RvdOKYGSF5N
 Y59yCijOtFXKj5f2qSUimIjDcUKjJ/2c42spOyeHtge6l+kVJ1rmGF3oc
 Rw1F3UYvBptKhD25PgrQuYp41PupxA7C9jWZYNASMbtFIEetVZvBSn5uI
 DDWTdm0PjliIEuso6xKPI23azs08Qwp0vHzrwDmy6B5EBn3idimdJ//ut
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nwp1GrTX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: shorten ring
 stat names and add accessors
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

--------------U4Oky1rYS0kjHbi6LCwgC330
Content-Type: multipart/mixed; boundary="------------umK26AVUEoLbmFREWKj7w3rX";
 protected-headers="v1"
Message-ID: <e3110f85-290c-47f1-800a-9430afed5abc@intel.com>
Date: Wed, 3 Dec 2025 14:17:28 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v4 5/6] ice: shorten ring stat names and add
 accessors
To: Simon Horman <horms@kernel.org>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-5-6e8b0cea75cc@intel.com>
 <aSWCQQsd-_cIKucF@horms.kernel.org>
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
In-Reply-To: <aSWCQQsd-_cIKucF@horms.kernel.org>

--------------umK26AVUEoLbmFREWKj7w3rX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/25/2025 2:17 AM, Simon Horman wrote:
> On Thu, Nov 20, 2025 at 12:20:45PM -0800, Jacob Keller wrote:
>> The ice Tx/Rx hotpath has a few statistics counters for tracking unexp=
ected
>> events. These values are stored as u64 but are not accumulated using t=
he
>> u64_stats API. This could result in load/tear stores on some architect=
ures.
>> Even some 64-bit architectures could have issues since the fields are =
not
>> read or written using ACCESS_ONCE or READ_ONCE.
>>
>> A following change is going to refactor the stats accumulator code to =
use
>> the u64_stats API for all of these stats, and to use u64_stats_read an=
d
>> u64_stats_inc properly to prevent load/store tears on all architecture=
s.
>>
>> Using u64_stats_inc and the syncp pointer is slightly verbose and woul=
d be
>> duplicated in a number of places in the Tx and Rx hot path. Add access=
or
>> macros for the cases where only a single stat value is touched at once=
=2E To
>> keep lines short, also shorten the stats names and convert ice_txq_sta=
ts
>> and ice_rxq_stats to struct_group.
>>
>> This will ease the transition to properly using the u64_stats API in t=
he
>> following change.
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> I had to read this and the next patch a few times to understand what wa=
s
> going on. In the end, the key for me understanding this patch is "...
> accessor macros for the cases where only a single stat value is touched=
 at
> once.". Especially the "once" bit.
>=20

I'm a little unhappy with needing access macros like this because its
yet another "driver specific wrapper".. but I couldn't come up with
something better..

> In the context of the following patch I think this change makes sense.
> And I appreciate that keeping lines short also makes sense. So no
> objections to the direction you've taken here. But I might not have
> thought to use struct_group for this myself.
>=20

Right. The main issue I had was all the places where we increment one
stat we'd end up needing *at least* 3 lines. And trying to split or
refactor all of those updates seemed like it would be problematic.

I liked the use of struct_group since it lets us keep size information
and logical separation without needing to add the extra layer of
indirection in the accesses.

> Reviewed-by: Simon Horman <horms@kernel.org>


--------------umK26AVUEoLbmFREWKj7w3rX--

--------------U4Oky1rYS0kjHbi6LCwgC330
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTC2+AUDAAAAAAAKCRBqll0+bw8o6P/k
AP9jXk/u9I7yHKgtGMx9OHT4sz0Uzo+Wkr/EGCNIhe9toAEAmSc0xMDG5pHA8XPlDpnHBulC8dtQ
VAaJTpYCYTQo+w8=
=xGYv
-----END PGP SIGNATURE-----

--------------U4Oky1rYS0kjHbi6LCwgC330--

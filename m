Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE31CA1CB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 23:14:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C867960662;
	Wed,  3 Dec 2025 22:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQd_c-9uJ1VD; Wed,  3 Dec 2025 22:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C747616D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764800085;
	bh=2YjAR7UHEVO3wTPHWOGI2GAuQeaLHJ22fM+y29rE6h0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gdKWCE7Pu31JDyCXdvjr06D8rrkzXtQXDGLUYxQBaPecOB0yfIEyPVU/hO3rT+zje
	 tvkp105FKvsY6FPBLPNLprQHxrFMDSaK0wHSNkYPvM7Wi1XY0wzqlhq0b1Ucr978cc
	 nk2FPqmtELlc4bRoOqCiz2gzql5dIsyykJwThevTlVHU9/XHAMcqD1B02180DrKtDl
	 c0TopNKOZ6onkWCYXgJzUHl510ndzcy3sdOOcpkyLXtjr7MM7EsrkHgsuuK7UdgF+F
	 PLrZFD1cwokHrx9aDOF/abk5d2I1Q9vkzOur/vGz3717VKcwl0mreoa0gIzEzmKoSk
	 rCd5fCoDSRq4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C747616D4;
	Wed,  3 Dec 2025 22:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DEE7FE7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C521040459
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o_G1mXH7QxhB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 22:14:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8CF8402B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8CF8402B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8CF8402B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 22:14:42 +0000 (UTC)
X-CSE-ConnectionGUID: 9hPNPqOCRO2ytHh60tO9eQ==
X-CSE-MsgGUID: 2VtwVmcjSQ2HIVtrceeldg==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66000088"
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; 
 d="asc'?scan'208";a="66000088"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 14:14:42 -0800
X-CSE-ConnectionGUID: 7K9Dpn24Rzyo7eb7t6uFJw==
X-CSE-MsgGUID: 8R76FcatQNegO52iMg9BBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,247,1758610800"; 
 d="asc'?scan'208";a="193880046"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 14:14:42 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 14:14:41 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 14:14:41 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 14:14:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pYWMFHpx37vm3Q7g49Y1hJxdER+vJ3bqoEIX4hXEzaBtmIcqQ/yQl9nFyngJp8UCjPQfFEsI1qcPxqIroNiqG7Hh8B3L9gOAemY1hZCzuby++YlDrOSa+5Sp51881ahaglnC5DsEeQAs3Pi3MvVexRNgphjqgbmZv1nPs8PAzmbUNihAFNfRu/YNkG0vurOLV4V/Q/6UnGATlE4JWa23tW2UHuMl0YhLfv7MVIU4cO/Eer1GUiEMadCLG4XKQqHBbOQ+UIBKF1wcxc6+2qsDLbzUccaNNnq22sbAmbUTu6gOpBRNhi1iWeGRoqbt+ISv6XNimfKcCUvIcFHEA8OwdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2YjAR7UHEVO3wTPHWOGI2GAuQeaLHJ22fM+y29rE6h0=;
 b=DynX3nOgycksqc1APufNxTEnWWGAOiaHOu3IIYdAniYdc2wyE3BO4uRp+nN1Ff3CBoJH0FGVmCAyNEIberFN83J88mHlXV5zmfpKzoGX/lus4hbMRhDDM42Vxwwp3dTAvKAFc8yYJFns7ulNzX5EKzj1jwTvx9J2+BgTFdEbFm6fMFxeZMq+H5OWZ2IBjy6u1fE7sF+LRf0Z3TB0Apgw8YlEq80gC7xmlIBv780IlsIGJrTpPmV58SH0X1Kt/07X/ZjzrRj0VGVtSuaoq9JT0kUuArG187eM5gCShblfrL7KUYeGuoK2jjkRajjqzAOXXOFyBvYz1gToZ6dxE6zavw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8589.namprd11.prod.outlook.com (2603:10b6:610:1ad::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 22:14:38 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 22:14:38 +0000
Message-ID: <8311f3ef-7ead-47ce-9a41-4280a0c9fdda@intel.com>
Date: Wed, 3 Dec 2025 14:14:37 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-3-6e8b0cea75cc@intel.com>
 <aSWB_yLwW-DKvuc_@horms.kernel.org>
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
In-Reply-To: <aSWB_yLwW-DKvuc_@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7yQhgNLQ2Eeige10roRGzLKS"
X-ClientProxiedBy: MW4PR04CA0227.namprd04.prod.outlook.com
 (2603:10b6:303:87::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8589:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d8e68f0-44f3-48bf-21a5-08de32b95947
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmdzWkVLeFAwdXJlNkZ0VkZXMmFVQ3ZZMDNsajArZDZ1eHkzYjI4bXZEV3VN?=
 =?utf-8?B?K2lOejJLT0l3VmcvZVhDUUprK1hGYWJYanVPcE8yYzhtNUVHNS9pRFZmczNv?=
 =?utf-8?B?UHJEdkFKNGdPQmkwOWhkS2ExZ2UxclY1M1RpdjFXVWNvNUpLZXhIUmpnTGI2?=
 =?utf-8?B?T1hiNEhTNVl4S0MzcEdJRXdiSUNCVkRjOTNYTjFLNmpQNEx0VGo5NUtqTXV0?=
 =?utf-8?B?T1N3bUtPNVNUMUJjZENLOVNvd2ZQYk94Yi90UWdGRko0RlRPQXFYdWNnTFpx?=
 =?utf-8?B?RlZ2ZHJ3WjNBTjJiakFvWUY2bWsycDNwU1RHSVhtcHkxZXFuaGI3T3ExTGFN?=
 =?utf-8?B?aGR2T05TVW5zRklmMGZwZ2N1Kzg1RW82OWtaU1NGUlZ6cjNZWG05cXdVTHJp?=
 =?utf-8?B?MUxjR2JvZ1pBb3ppWXYrK2o0MXJzVXZiUllVLzJaeVJNemNReTlieU5jRGZI?=
 =?utf-8?B?V3lNRnErVEtIKzNlaFhCQTlTb3ljalBqT2daSWNvTldKdCtEdnJ0RXFHN1ls?=
 =?utf-8?B?K01xM0NUSFZLYlA3bFFHVzRGS1dGV0FVQlo0bmp0bGg0SFBRVkFUelQwU0Vs?=
 =?utf-8?B?eXl6TXJ3RWFkUVltWlM2THdNYXB3L1dKeHdza1NSbzhsZ2N3V2NEcTFpcFJZ?=
 =?utf-8?B?OU5ySXBhaVVkY3R4WlhTYmRaSjgvQ05ZUFZtMVZETkNHa1Z0TzBidlJ0OG1w?=
 =?utf-8?B?TWFzS2s4MmoyYXdSSXVFTlMwMml5NGdaeGE5L01nNUZIQmJRekUxdlpYazd6?=
 =?utf-8?B?SnFjMTFpL01DQmw0c0l1N3dhSDNOalhGOXo2SDY4K09uUkZaNWNUMk1lT0l3?=
 =?utf-8?B?NTBObFdSajJLcXd6cWhTUTlhSjFkdEdhdTQ3M3hlL2gwWktpcUdCVG1hZGRP?=
 =?utf-8?B?VGJLaHVSOTZ4VnllVE02QU9hVy9vZUdjT1N5WHdKNkllMUM4QkRHTkl6c0xY?=
 =?utf-8?B?cGR6NGUwVEZZN3BaN3dlSGQwcGo1cHF2dmlPV3RlbHE3aFRHVVlSTlpielV6?=
 =?utf-8?B?NXphcDVhak0yRTdIUFY0VFNLK0NBZFYzVitkcCtVTFU5MW9Ud0ozR1R0WnJO?=
 =?utf-8?B?ODhJYU9DdXVZd0VWaE1yZ1NibUppTlk3RFBHVTlNRkFKbzVzb2MzK3NKdFFS?=
 =?utf-8?B?SEhsUDhMSnZlOHoyL3NlY2FCUDBNcnVacWY4MnJnQ25UN1kzMEViaHFCZmx1?=
 =?utf-8?B?c2l2OWwyNUVmVHlVTTZzNTdOUkJKR1h5c2NLR0pobkZ3L0FYMmNhYVUxOGJs?=
 =?utf-8?B?YTR2TGg4MjUvUjNJM2FNV3pvNjlJVFFpU1JxRWdmckQ3SVVaOWlvR2wxUEdZ?=
 =?utf-8?B?Sm5pdUlRaU5vUnp2TnJwY2NEMWxXRnFMRXVDdm5Qc0g0d2huelcwZUR6RktQ?=
 =?utf-8?B?Uzd0b0xXakJ5RDh6VkhFQzFVaHNLUkNJRzA1RVV1MWwwNWdxRGE3Y2F3cStS?=
 =?utf-8?B?MXFobTQ4V3Bna0lZLytkd0Z0T29mWDdBMG85RXFRa1JUQTN3MFRSR2RyRk9y?=
 =?utf-8?B?KzRMTk9jN3lSeDlCTDdTc2RiTjFrWTRqUGpLb1UxYjBMM2Rzay96eFV1L20x?=
 =?utf-8?B?d0xYUDdZR1Vub0JyYUJpc1VIMm1jUnVMcktkeWFzRVlpUTcyYjBCb2dFR1FX?=
 =?utf-8?B?a1M1M0VibFhkWFlYUzltb051NkErYTlmaEhrRUFnbjVBL0VValg0SkdZaCs3?=
 =?utf-8?B?ekZ6NVBNZmtuMTdGaU5wMGdhNitMQWFlam5rMldUV0h2SDEvdHpFUzJrSUZM?=
 =?utf-8?B?VnNlQW16eHBQazFuYmo1SFRpWWsySVNYS1U3dVBiY3dVYlR0cnprZlQ4V0Rh?=
 =?utf-8?B?VEpLWnVSY2FneEt2RjZ0aUJkYTVjN3I5NklTdU9mL0I0a1IvdHE5K24rb21j?=
 =?utf-8?B?cDRjeFA3cC9zanVnS2tCTktsN3FDQThRU3BCbkd6NVg1eTM1ejIzM1FacGpO?=
 =?utf-8?Q?spUn49GO/8rm8FUPDyYRDfbpLxavLbXe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUxFSXhiMHc1dHBVcDhrckZ5MHpmZ0RGTUZCWWc1d1BncisvdjRMZk9Zb3FY?=
 =?utf-8?B?UVhudlJlc1NxTy9yZE1NOVUyOXRwTlYzYndMU3RlbjNsU01UYXJ6djRYQ2t1?=
 =?utf-8?B?T09SckFmQTNzdFNDMGtCKytMZ2ttZzU0WS9zejlPUlA0SFNqREc2Z2JEcEVG?=
 =?utf-8?B?Tm5aNzY4QkFVL0k2TkdlWWZ3d1JCYVBqL3ZFdXcyZnZHMEtSMlZyWUlZZlYx?=
 =?utf-8?B?UEVMb0VudWsxSUlvcVM2eVduTXpSUitGVzRHbUM3d0dOODBOL1hvRW5CdUpk?=
 =?utf-8?B?UkJ6RjlOU1BsMnJZaEFxdFF1U0prQVFOSXd4WE5udlF3cUlydWVmSS9CTGFH?=
 =?utf-8?B?QVNJY081ZXp1NU9taGJUSFRPaHVQV2puak1hd0QxWUx4YTBtS2VHSm5sRFU3?=
 =?utf-8?B?VkFUM2hwdTQ4Qy9mWitNR2gyOURDZm5uUXFpMWQ5L05ndFN3aEpGTHYvQUdi?=
 =?utf-8?B?ZUtsWFdqb3RXTlZIMk01eTVXT3Z4dERoaHlESitvR1ZwOURZVkxkOHVVYnZw?=
 =?utf-8?B?d0JidmFHOEQvbUdjaUFtZkhwZHJNbnovckN4QVZ3L2tRQjhlZmoydTU0YmND?=
 =?utf-8?B?dFZzbW1NQmNqUFhRNGxrcEtXOFdBZ3UrZjhxaDJmcHlrM1QwZ0QwQVN0MkZP?=
 =?utf-8?B?dmhhRUgzbGdxWHVUeDJ2bEM5cnJ3MWFQNkVzMWt6b013K2Z1Um5BemROMFlz?=
 =?utf-8?B?VC9EcnI3MEl2RzdmTFA1TUJjOVdGUmllWk9VQTlOWDc0WkUrbENpN2x6UHFY?=
 =?utf-8?B?QlZyNW5IbGRBeHdiUFptT2NQbHRkVE9Ldyswck5zU3FHMENyY3ZzR3pSTXVJ?=
 =?utf-8?B?YU1PbjQwK0xoemtWcTBUZ0pIQVZjbkZ4aVJaYk9iTjFlRHd2dTd2eGFLRE9B?=
 =?utf-8?B?ZUVnVEdLaTFBb0FIbG16M3BLcWU2bitIUGlXZ1hDa3J2azFNM2JjalNyL1RH?=
 =?utf-8?B?OUxpMEtzRWx1TFhCZDVzTjEvMVZDNGh5R0RDM2pDSWR3V3Zyd3lvakJnUVVS?=
 =?utf-8?B?YUdLeUFGTTZ0WGlBcktyeW5XWDdnM3o2MGpnMXdBQ1ppM2srN0FkUGhMS2Jk?=
 =?utf-8?B?YURkY2Z4cFVkWnVUSDhSZGxFbC9YMEhWanN1eE9mWTVtbWVCdFdXQkd5UWgy?=
 =?utf-8?B?VnFTbkxEZDVkVTErSDFkYzBZeVhhdWpFSFM0a0pPOEphQlorNXhxN1BoTVl2?=
 =?utf-8?B?d25aK1pzNWl5b01IZmtlY1dZS2lnZ2lGc01XenU2UzZleVhBQk5LOUg2enJY?=
 =?utf-8?B?V28yenRXcWNBcEhBWUIra0p5RTNDVnRIRlBDcUdPWis1S0RMeUVXcGgxOWRr?=
 =?utf-8?B?ZVBuRjQ5cUJZU1FIajZZNE9pVWk1OEFMVFdlb2NnVEFSNnk2OHJaSzg5eENi?=
 =?utf-8?B?ZnVIL0xib0lBV0VoQlozZXVzZ1hSdVFRMVg3cFdGWlZiQjZLV1o5c3pnYlMr?=
 =?utf-8?B?VGNjdGRKQm1MRmpzVnVDVk5xcFY4QUcyV0p0ZFR0ejVqS1EyNnpiYUVKTWRF?=
 =?utf-8?B?WFkrbGNOWStod1JWbFlDeVpJcTFBRXNDNHNPL1I0MW1kRVFpQWVyR2JWMzFQ?=
 =?utf-8?B?MnNKRGV1bGRnRWVXRlJja2dXRXMya2ZQRXBVU3dBa255U3dmeUJCbUlaWXAy?=
 =?utf-8?B?cGw0akpaY2VBSXFhaS9BSkl3RnVoMW9jLzc3U3lGTTZITjFFQ1hQMXhFeHNj?=
 =?utf-8?B?aWovWUVvdXFrbVlwU0FVNVpiZDVPT0lDbzhWK2V4VG4rK1YxQXBXRFNCd00r?=
 =?utf-8?B?SmtYd0NUdE02UnFZdU1UdDM2QkZiVUE3YmtWUGlUd2ZCMWFNbkFDQVlOdEg0?=
 =?utf-8?B?UHFVekRSUjZvaHNxZEFvK053TVo1ZkorNEpTNWRVVU4xTjIybUNwd1lLZHpz?=
 =?utf-8?B?YXNBTkNOdDZha1hFUW9TTEd4d2hyUTlqanAxOTNDOU1VSXl2UDEzK0YwWW12?=
 =?utf-8?B?ek5TcnZ5OEhhMlovSW52S0hiSVFvcVFLL3VmYWdobVpyVWlCN2xhY1hsQitp?=
 =?utf-8?B?NDQ2eEFlVkp3SW0xa1NOTUE0WEQ3NzNjNWNaMEVVT1MyZ1NIM0tNZzh3Y1Bv?=
 =?utf-8?B?OSttWGxiNlpVckt0Tms5OTZFUUhlNHZkNS9Ud2grOUYveXdpQjZyYjFMMHpx?=
 =?utf-8?B?MVZSV1lDSmFUN3RKUDJFSVRnc1N1V1JQS0I0WVVZbzJXSG9qM256dU9VcnlV?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d8e68f0-44f3-48bf-21a5-08de32b95947
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 22:14:38.7121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ICVueE8hzGosoUAx7PLqGyTPYonuyvBOR72qLdfWc32c0s3RiYPNfxWbztcwALhV+mYrRPjYptM6FI7ocOcqdGjanwxXXGLFGe19vkAuxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764800083; x=1796336083;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=2YjAR7UHEVO3wTPHWOGI2GAuQeaLHJ22fM+y29rE6h0=;
 b=kPYFYFRYr5yjwVlNYIMiHY/tS75ZXRXRAoWknDYQf2CjyLAsZ2JNUf1W
 L8qHNeYhCXa4VIoZNXXfQnmNB35SQfE7axUsS7XV1oBhLyIK5q2Y80Ldq
 75FXRP4OiFWM0tE5/CN7rrHkdjKyWjB3TipGZahM0T/xFqu5oSAy+LWzy
 +Xg2cHdDXpBKVXdeAUjHLMWbpQLop7Jx6GHgCF9qcP5zHwMeL91785572
 v8CdjXRyB95g1gbMZ0lCllc2qcO+ZngOeQsyR+ygW36MTgx302qvwiKSo
 n4BQY4g52oWftffvbvPAJFN/iX8P71bV7vEDDvXthViuMDBw5otm81DuN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kPYFYFRY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: remove
 ice_q_stats struct and use struct_group
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

--------------7yQhgNLQ2Eeige10roRGzLKS
Content-Type: multipart/mixed; boundary="------------uBAccQIA4nqvgFdrUUUSaS8v";
 protected-headers="v1"
Message-ID: <8311f3ef-7ead-47ce-9a41-4280a0c9fdda@intel.com>
Date: Wed, 3 Dec 2025 14:14:37 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v4 3/6] ice: remove ice_q_stats struct and use
 struct_group
To: Simon Horman <horms@kernel.org>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-3-6e8b0cea75cc@intel.com>
 <aSWB_yLwW-DKvuc_@horms.kernel.org>
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
In-Reply-To: <aSWB_yLwW-DKvuc_@horms.kernel.org>

--------------uBAccQIA4nqvgFdrUUUSaS8v
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/25/2025 2:16 AM, Simon Horman wrote:
> On Thu, Nov 20, 2025 at 12:20:43PM -0800, Jacob Keller wrote:
>> The ice_qp_reset_stats function resets the stats for all rings on a VS=
I. It
>> currently behaves differently for Tx and Rx rings. For Rx rings, it on=
ly
>> clears the rx_stats which do not include the pkt and byte counts. For =
Tx
>> rings and XDP rings, it clears only the pkt and byte counts.
>>
>> We could add extra memset calls to cover both the stats and relevant
>> tx/rx stats fields. Instead, lets convert stats into a struct_group wh=
ich
>> contains both the pkts and bytes fields as well as the Tx or Rx stats,=
 and
>> remove the ice_q_stats structure entirely.
>>
>> The only remaining user of ice_q_stats is the ice_q_stats_len function=
 in
>> ice_ethtool.c, which just counts the number of fields. Replace this wi=
th a
>> simple multiplication by 2. I find this to be simpler to reason about =
than
>> relying on knowing the layout of the ice_q_stats structure.
>>
>> Now that the stats field of the ice_ring_stats covers all of the stati=
stic
>> values, the ice_qp_reset_stats function will properly zero out all of =
the
>> fields.
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> I agree this is both more consistent and cleaner.
>=20
> I do feel there might be a yet cleaner way to handle things
> in place of multiplication by 2. But I can't think of such
> a way at this time.
>=20

I agree as well. Potentially some structure layouts would allow us to
get the total amount of stats, or we could count the number of Tx and Rx
queues separately.. The driver has some effort to allow varying number
of Tx/Rx queues in some places, but then lacks proper support for that
in others. In particular, the maximum number of both is always the same,
hence the multiply by 2 here.

> Reviewed-by: Simon Horman <horms@kernel.org>


--------------uBAccQIA4nqvgFdrUUUSaS8v--

--------------7yQhgNLQ2Eeige10roRGzLKS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTC2TQUDAAAAAAAKCRBqll0+bw8o6Aqd
AP9Q8TwrPHzSEGWiuLWOZc9vI05lLN98R6H8Yo3fijRMAQEAlSrdVVfcCtxqrFy5nkX/vtioklI9
S1pWPlvx6vFPBAg=
=HNlz
-----END PGP SIGNATURE-----

--------------7yQhgNLQ2Eeige10roRGzLKS--

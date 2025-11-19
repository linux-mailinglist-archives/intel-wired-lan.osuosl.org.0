Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C46AEC6F5ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 15:43:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BAFD607CB;
	Wed, 19 Nov 2025 14:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WHLKE3v0WgMV; Wed, 19 Nov 2025 14:43:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8182C607CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763563406;
	bh=53IHfkvFyEEW1tKbpPHTPlceQN+/LyPT86hphlp7l9U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ErOX5P9DYT1km04RPt68b+oFHMjDXGLuC9g8uWOoaK8NfjO8Trx2RcM+m+4g4rd/U
	 ea4YJ1wE5MXERGaXE0Gv4gQrrmEAFRk3ke7yS7pqqZ3UpNYBplWpb/cHIvDqEAIBjp
	 xX3tARs2eSTPGrmeWpsE9l+UjxqSfh3Gf4s+4vuZDp8fxKSIOGtuXjslB8Z6/kcK/z
	 e1cbeS7XeZ5TMyPzlpSan0FX1v6+nnhURSkGDhkI7+rlcy0o01iI1oDp/1MJ1HXKsu
	 c1fK1JQgqFl43WZ0lwas69x8gQXeJJYyXHSsFL4LR4mi2osiN7Rf+Au1rXXakKxn8V
	 LXDzPvuU2Bnwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8182C607CC;
	Wed, 19 Nov 2025 14:43:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B80F37F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 14:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F17D981289
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 14:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPzRbYw8LG5A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 14:43:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1BE8581287
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BE8581287
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BE8581287
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 14:43:23 +0000 (UTC)
X-CSE-ConnectionGUID: /zYah6wbT8aw1AGiQE/H2g==
X-CSE-MsgGUID: ReBD0cp7Qg6AKXUwhhIBzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="64612870"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="64612870"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:43:23 -0800
X-CSE-ConnectionGUID: GyZM/m9pRoiwxfPhv+MWZQ==
X-CSE-MsgGUID: J4xkNOGYS/C0TOsU3oVW/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190336363"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:43:23 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 06:43:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 06:43:21 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 06:43:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XtDJyXS8LAwIuKpH6a5k7NTcCMfD4QPuxKoLEbI9yZ3f1ec0BwvbpwUUsYqn2sb239LgZIU4LzwLbAWKTHMGmBkevEwoUyvW12qvyv9e5M/hh4oAiPemPEsEcHsk6RYgy+1y9wexusQ61BLagbUgB91PXmRU6yZqQ8A8a6wHFhO4Lh+ST7avoibh9JbqzXRAnJohmtGSgQy3WwkdB9FkIHfDKxtCBH6xv/JXl0dvVpNUexL3iJj9xOfIHnOfO7trs44YO0AssHXkzFlueMINSDYnnTMBnmQlfN5QWt5tJkB7lTJ0jIJLbppzGtkTwTXjlMEu3ZpqfbsGwkoWsDSdkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=53IHfkvFyEEW1tKbpPHTPlceQN+/LyPT86hphlp7l9U=;
 b=NFY6i1DHegSJhkjTEnoviPJakPDV9SL7y29A8878kQRROR2MNQ5GB7lv88NqFlMt4+l09nqd5e72Zt5lG+SmNg/m+nGQL4jMWXjxyH7sJuOR/vpzEAWShyxf8c/yT0pm1wCAddFPcuYXQzL3zDCdlcHV0u1hIPVq1EjfubDzpXWY1GekhTAlnhwh8QJacrl7DEMRFvMi0JCe06Kw8qcEUxuVE3Fg+futGRib40si/85OTBOWi3ZaV57ylJoYmIebavOSQvpbUd1+ltNihPTkQDK/7xMh3F5Gi693bNGc91NJKMTlfz5mFN55F66bXyWAaJ4uHRm7Q4DAPgI4ptG32g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DM3PPF97A7CBDC1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 14:43:19 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 14:43:19 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: ixgbevf_q_vector
 clean up
Thread-Index: AQHcTnJcxuhtcfgrCUSJQ66ZMQIIWrTkkjIAgBWWbSA=
Date: Wed, 19 Nov 2025 14:43:19 +0000
Message-ID: <IA3PR11MB898596D771CBBF6DB9A83A2A8FD7A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20251105122147.12159-1-natalia.wochtman@intel.com>
 <075eca67-e99d-4aa6-bb04-e5146e019913@intel.com>
In-Reply-To: <075eca67-e99d-4aa6-bb04-e5146e019913@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DM3PPF97A7CBDC1:EE_
x-ms-office365-filtering-correlation-id: bfc6813c-dbab-4420-706e-08de2779fb29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZW5nWnk1K0tmakFlaVNRaUQzRmpDOWtJYThwK0EycXZwNGZ3bXR6RnViTnVI?=
 =?utf-8?B?amRuRUFkalI2UDYrOU9jeDQvZHhIYmZEZmE1NWRGNDBlNlNXMy9KemdpNEE1?=
 =?utf-8?B?ajlFdXBXRGFxSzJENUN5eXR1Z2JBTldVdCtOZnp4cW1uZUNsRUIxTnNHSUhN?=
 =?utf-8?B?MlVJUm53WkUwYURPQmw2SXU3Z2Z1VFNyWk9vRGFlTGdkc3F4YXVPZDlEWmJY?=
 =?utf-8?B?TGd4eHlnRDNlNUI1QlBVcDRrRDhrZjVqQ1huZTdiS1VDU21tU2xsdndpeXEx?=
 =?utf-8?B?SWNtRHFYTjM5MmdzUE1XWitPZjBjcjRYdHprL2FaaWlnOWxlcFM3MWcwYWtt?=
 =?utf-8?B?Z1VNdkRTdjJ4WWhDcFNZSVdSSXpKN2hLTUdwbUIwd3ZxaW1JbjdGTEcvQmJE?=
 =?utf-8?B?dGxNWFljNk9Td3ZxcEtRRytCNzNyUWFZNk1jSlJXaEFUUitFQyt6T0wvcEt0?=
 =?utf-8?B?RlJxNkRvRUVvLzltWmNkYStjajVjb1djc3orMy9oYWNscXdWZ05pV29rc0ky?=
 =?utf-8?B?QmJZQ2VGbjR5NGtOQWVxMEEyYVhuak5FVHprZXVQYWNzMnUweXJNekJobHZB?=
 =?utf-8?B?K1p1YmZ5NGVhZmxJc0txRExRUVpmNlRuQ2hWRlRPclpBaGFjeVpHc2NyZ1Rt?=
 =?utf-8?B?L3dJVGtrYU5mRnhtRzRxRW9vVytBaGx0RlpBT0xiZjdYTFd1cTNqMnp2cEt2?=
 =?utf-8?B?SEQwc3pCYUY4WjRLT1ZQMVVQb3k1WWYyVG5jbG85bXVJemE5VElKeVpJTm54?=
 =?utf-8?B?ZTl5WHFtWU9ZR05Mb2s1WTVIaEFueUIxVCtxZGRyM3JoNURRb3RqRXBicTMy?=
 =?utf-8?B?eHZkV0Ryc2dlM2tGZENUTFh1eFVSUlpPcm5TSTVNVWRtaStRSm9BdjVyNXgv?=
 =?utf-8?B?Zi9WUTUrZnVocnU0TmRmN1R3Q1NiQUgvTEl0ZzRPNjRhWFFRQ3U0Z3MyZmt2?=
 =?utf-8?B?OTJneHc0dTBmVU41Y0IvejRubzc4U2FQZ1p3ckNxdk03NVpZNUUyckFFWEM5?=
 =?utf-8?B?MnZ4S1gzU3RnQ0J5QzdLMEJqejd4L1RkaXZPMDFXQ1M5Vk1hSTBOZXl5Vkpu?=
 =?utf-8?B?MlJyM040RkNlZXhUcHZRQVJsMWx0bGlMNEhYTngzbTRxeUxTZDFPVFFXZnBW?=
 =?utf-8?B?UGZxbTI1ZTNOOVlXdmVBaUxLMnBTTHBad1hJczhaeTd6cmUzZVJMTjh6M3dD?=
 =?utf-8?B?OWNLZFRLNnRWbDRBR1NXSmIrL0VtdkV2bG5vT1pPeVNEQkNQeFFtUlRGaUI1?=
 =?utf-8?B?c045WUpncyt5NDFDRTBUS3FHdnFHSlpGS3Y0Mkp1SmQxRktQUHVtYy9PRStt?=
 =?utf-8?B?NDFYVjFueDBjNjJvWGRqZ05DM3ZVMzVTWUpHeEFUSmtNaDVVcHI5TzR3NXd6?=
 =?utf-8?B?ZGF5Z2dhWlY0TkdYcWJ6bklEczJhcnVSZ3Z4TnQ4T0g0SnNmYlZHLzhac3Mv?=
 =?utf-8?B?ZWVRMFRRb2htUHdIR1ZKMnd5Z051UUdEWnkvSHIyc3BFVzBxaHAwTDl4L21H?=
 =?utf-8?B?Q3pHVmFwcGFCVzRTR2YzaFQrVWs2aFMxb21wSXBWQUYrZlpESHNNWHNqTzdz?=
 =?utf-8?B?RHZaUlhOb0NRdENxeWdsTXFGV3lpV2VSV2lVZVZBYXRsYlFlM05WaW03N2Yv?=
 =?utf-8?B?ZVZnb1JYelU1ejF0ejNXQ1NEdmhTakdQWitrQ2ZIWm9aeXNlV0szUjJoT1Bj?=
 =?utf-8?B?ZTBxdFdaQmJIeDc2YVlMY3lOQ3ByMzdZUXRCNzN6cFlHN3V5ZHUyT0lpMzFs?=
 =?utf-8?B?N1ZaNWVjQzhoL1NtY3BzZGdIV3lHNHgwU3lCZkd5SEprREt2UkpmSFFYMlk3?=
 =?utf-8?B?N2d2TkN3UE9Rd01raHpBTTE5aHJ1WWE5ci8yTWlYemY0SEZTc0swM3JXRklx?=
 =?utf-8?B?cWxyejJIMFV0Y2grM3pEa2FaY0loa1hVbHBkL3JiYzdCQkxYZW40RDh6eVAz?=
 =?utf-8?B?dGlRM0NnclQ0TWVtOWhFSHEzMm9HUmg0UW1zVnBMVjJRbDFvRkorMU9hY3dz?=
 =?utf-8?B?dS9mbTZtRDRRL2U1bmxJdmIvWDVZVXZteEhFRGNDTCsxa3ZIRWlZTFNnaGVS?=
 =?utf-8?Q?u61Y1d?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWhxVVFYWWs4L0p2WFg3T3htRWd0WkdnK3lOZkpnblQ3SGlSN0xTemFEbkZY?=
 =?utf-8?B?SEl0MUFlajNvT0NWRldPUFc4Zmc5eHRyVDdOcG10UGVEci95d0ZkRUlZaXZT?=
 =?utf-8?B?NUdVcmlFOVk0TXdzSHpEMmRKSS9mVUNaZlMxZGJWUjRHMlhHTVJ2TGVQV210?=
 =?utf-8?B?Uys5cG04TE4rdlJQSW1MYkoyZVZYWVBjOTFFR1lTelNVMjFCM1VQd3hDQ0cz?=
 =?utf-8?B?ZmtWQW1LUkdZMjRQUGI3VTdxRGpidnJ4ckJId0VxZGpnQ1phV2thNFUrSFNh?=
 =?utf-8?B?Rmw2NTY5M092M0VHdi9QOCtvK3J0YlhqN2FUWWlQaXBRSTdHRUVlSXlLM3No?=
 =?utf-8?B?cDJwdUxQRHgxa3labHhzZ09zMEFxdm1IU1I0eTM2enNEZ0JkL2FPRjNicmRt?=
 =?utf-8?B?ZWFuNmpUVU5qWlRsU3kzSTNoTWlKVnFRcjdkeGpoK3kyNEN2b2NMVGFXeUsv?=
 =?utf-8?B?ZWMreUljUmVJTFlQR1VmSHpLc0RFY3J2YUtJOVpHZ1lxeTcydjdjdlN0VVhh?=
 =?utf-8?B?TXRHWkl1d1FJRjlUa1BJY1NYM2xxN1NuUW56Tk1DNXJ4YytlNEhlYW00RFhW?=
 =?utf-8?B?bjk5ZmtNYngxNkNmUm53VEVGRDcvcXdCZFNRazdwdVU4cHJYT056dS9xQlYy?=
 =?utf-8?B?Rys4SUwvTU9acDk3a1NUd3IvZHJOS1JTUno2RUxsTVBmOHRIM2ZsdVNlZXJF?=
 =?utf-8?B?azdmWHMwUWlLRklIdXhueXd1QTQ0ZXNmM1V4a0Fia3drYzluYk15dlRwb1Vy?=
 =?utf-8?B?R29oQWtPMlZnSjR4eXp4TXd0RHIzakFwMWFQMUlwNXh4VTl2bnhmYVZlTHBa?=
 =?utf-8?B?bHdKZFdDUHF2VXFSSk1NaVEyUk5obldEN1piUS9UR3ovTEJYcjA2a0MwYVFm?=
 =?utf-8?B?R04wak9tTFRiRVhBOGh0VDkwTm5hY0dTa29qUWxicnY3RzB5bEJVclhPRDF0?=
 =?utf-8?B?ODhacHJaY09QRFNuWThueWRUeEk1R1ZveUN6L1Q4VGEwRTdmMm43dXg1MDVh?=
 =?utf-8?B?V05ocTY1VmpOeWZINkJMZ3BkenhQdnZvbnlIcVNoamxhSjF1VVgxZTRScnVW?=
 =?utf-8?B?WWRMZzAzQXEyNVkwTjNnTS9BTUVtejdMald4azdaYkNmZ1JubFRqZ1QxSnh3?=
 =?utf-8?B?aklPbEwwUXZxbmpGSk8wamV0ekFCenViV0k4ZkpFSWpnejIvbEQ5V2N0K1Bu?=
 =?utf-8?B?MVdvM1VYbm5nWTFKNS9XVWgrL01ydFhHUnU3M2pML0NRYk5CaStxUlhDWk5X?=
 =?utf-8?B?V01iUUcrU1pMNi9raXByWG1LVEQ5VmdvR2JPNDhjZ3ZrcGI2Y0NGYS9ZdGJM?=
 =?utf-8?B?cE1iV0Y5bGhiZlE2L05rOEcwRTZyZmhZQWtSejc2ai92TGZ1Z1d4R1B2U2xi?=
 =?utf-8?B?dFUwNEJ5STV4d3JwZzVEUGNuV2g0T2lwdWdjam03Y1VmMjlsY1hCS0l3TytT?=
 =?utf-8?B?QlI2dXV0Z2lTNENrdEVJakNaVWRSTElqQm1KWTZJelFHMmZPaGh2c3VmNTho?=
 =?utf-8?B?S2JLS0FtbGlmR1kwNkRGWUxjQXdvZzNUeDZqZXR0aTNNNXBvelFZRUtIRkFt?=
 =?utf-8?B?UU1PaFVySzVXSFlkcE1zYnBwa0JrQVgyWm9VK2RDd010OGI3UkQzZ1MxYXp6?=
 =?utf-8?B?SGFlTkFTaDJ0bFJXOFlRNVd5MkFScCs5UENuUnFaRTV3SjVMbUt1dGVuNjVn?=
 =?utf-8?B?YmlDOWdKQlRDU0dTVUQ0MjFqRER4UEd1RFQ3UHA1aDdWdHNjN2IvMkRkeW9j?=
 =?utf-8?B?aWJ3aEF0U3kwa1ZlNjBORE84UDVkeWRYL2daV1F2c3E2MkFZeVorNnBQcGxx?=
 =?utf-8?B?cHlxMnUxbXdJekc0YTRWeXd2b0tvbm1JWmV2LzNpV2JWTzhLSHdOb3Fla1lS?=
 =?utf-8?B?cEUrcGg2UlhMOFBMdndUNnZDeDJpdW9wNGVBZjlKYUZudExkZUx4ZkRVbi9u?=
 =?utf-8?B?VEE3MTZpdHNmSWZQbnRBZTd2Z05MUDlyS29td0N5SmpHaGorWUgxZ0lCcHQr?=
 =?utf-8?B?MHdoNnNMQWo5YkVBemMxT3Z5RnJSNDZVTERjMCtEdFBLKzBaT2lYMkxCZmhY?=
 =?utf-8?B?U3NTMnlDRkFIR04xS3NFU21USTZYVDEyVXJCc0tsdy85MFB4cHljcXRSa3VF?=
 =?utf-8?B?ZWNOZlRzRWVhMlNXTllaS3drc0c3VW9BUGRoOVNUb3QyREhQUE9sSVRKeDhk?=
 =?utf-8?B?aEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc6813c-dbab-4420-706e-08de2779fb29
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 14:43:19.1351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NeAAiRimGwXHW29R90jhEZEJYm/vJG6SnUixkpM/f+4hFwlG8eLe6MBcS7G9RDIZ5wdbH2OqAXfYS/b8hflG1E6Gj8YeD/YvW3GM8HjWq64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF97A7CBDC1
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763563404; x=1795099404;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=53IHfkvFyEEW1tKbpPHTPlceQN+/LyPT86hphlp7l9U=;
 b=jz5H+fz0XXm/WS8GpIqg1TjomxuHBMlQNFv+S0s0FhXzGmjJWgLYUW/9
 ZpfaeiCikSInyGuiIiLrUqlG3HUDGIUViBNIV+gwiSWUdExaze5A6HaPl
 5m6d6/XxWjqvX9v51NmWdpyqBggFB/80+tFNrzsjm0JkOXSJM3KvIvDPK
 SAYYe2zBMrnTtTy8nnc/x7xTuKq/j2eoSCOGP7Q8pPBIhNAjUsdJE9nkV
 XPNdZ8f84tWELanSxcxj1Cc/u75OP32k7CijmGLBjTNcVtysxgM5+wdIS
 kyFt7X8dDJOmpeO/EgEG9jOE6xqsjW7sZ11IO2QOeMnaP3GqdeAicwrOp
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jz5H+fz0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: ixgbevf_q_vector
 clean up
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKYWNvYiBL
ZWxsZXINCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciA1LCAyMDI1IDEwOjAzIFBNDQo+IFRv
OiBXb2NodG1hbiwgTmF0YWxpYSA8bmF0YWxpYS53b2NodG1hbkBpbnRlbC5jb20+OyBpbnRlbC13
aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5v
cmc7IEZpamFsa293c2tpLCBNYWNpZWoNCj4gPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+
OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
TG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYxXSBpeGdi
ZXZmOiBpeGdiZXZmX3FfdmVjdG9yDQo+IGNsZWFuIHVwDQo+IA0KPiANCj4gDQo+IE9uIDExLzUv
MjAyNSA0OjIxIEFNLCBOYXRhbGlhIFdvY2h0bWFuIHdyb3RlOg0KPiA+IEZsZXggYXJyYXkgc2hv
dWxkIGJlIGF0IHRoZSBlbmQgb2YgdGhlIHN0cnVjdHVyZSBhbmQgdXNlIFtdIHN5bnRheA0KPiA+
DQo+ID4gUmVtb3ZlIHVudXNlZCBmaWVsZHMgb2YgaXhnYmV2Zl9xX3ZlY3Rvci4NCj4gPiBUaGV5
IGFyZW4ndCB1c2VkIHNpbmNlIGJ1c3kgcG9sbCB3YXMgbW92ZWQgdG8gY29yZSBjb2RlIGluIGNv
bW1pdA0KPiA+IDUwOGFhYzZkZWUwMiAoIml4Z2JldmY6IGdldCByaWQgb2YgY3VzdG9tIGJ1c3kg
cG9sbGluZyBjb2RlIikuDQo+ID4NCj4gPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIg
TG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBOYXRhbGlhIFdvY2h0bWFuIDxuYXRhbGlhLndvY2h0bWFuQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9peGdiZXZmLmggfCAx
OCArLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxNyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZXZmL2l4Z2JldmYuaA0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmV2Zi9peGdiZXZmLmgNCj4gPiBpbmRleCAwMzkxODc2MDdlOTguLjUxNmE2ZmRk
MjNkMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZm
L2l4Z2JldmYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYv
aXhnYmV2Zi5oDQo+ID4gQEAgLTI0MSwyMyArMjQxLDcgQEAgc3RydWN0IGl4Z2JldmZfcV92ZWN0
b3Igew0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50
ZWwuY29tPg0KDQoNCg==

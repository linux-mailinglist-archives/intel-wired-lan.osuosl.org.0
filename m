Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AABE7C2F9AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:27:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C68F04047E;
	Tue,  4 Nov 2025 07:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kPD8bbKCK5oi; Tue,  4 Nov 2025 07:27:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4175040471
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762241248;
	bh=9xCZnofhIdZZL22KFBxNSQbNbaRTV5cU3FXAlwsD/DA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q0Wd9xXR3j3q+KCXI2kW4g1Szk/jF+3iNUwNYSwMfsuOmzhWy80T2eHCHcuNbRZyL
	 o2nI83M1e3g7r55eAtNUY8so2Gewl0EFFI8tDRbk0WmOjIKXyrEdXgM25STGpTNV1n
	 t+ghpeywwQ6OQtqkYaG5lwMpKqreXgCQNLXmPv3Fa+Ehec3vaXX1Wyrvu6JqgPGsY+
	 dh3ESmJzhGQ3bBs7KQQJbDCe6T/6Scdeu+kkinKRMHDzswd3DRnWY3pGepm8fdNyE2
	 T0Z7wdziOELBnq8SAwj9aOYG/8HLZPd3bCv/pE7HM1eunq6YllvwAruqSw61T7KQl7
	 LfZRUsTivwO7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4175040471;
	Tue,  4 Nov 2025 07:27:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 63B03222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5198460EE3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OAX1F0GMU2l8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:27:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 49EBD60EE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49EBD60EE2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49EBD60EE2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:27:25 +0000 (UTC)
X-CSE-ConnectionGUID: GoAHkgPoQ/KNlqOupez8wg==
X-CSE-MsgGUID: Zybb+BdQQv2ME3LvGKEjOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="66941738"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="66941738"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:27:24 -0800
X-CSE-ConnectionGUID: B4173/9KR6i+BYeV66+3Ww==
X-CSE-MsgGUID: K/MMv2DNQVabRsme+7M38w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="186944366"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:27:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:27:24 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:27:24 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:27:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iXEvhADXaseztNhB2/mGEOTogtoq5NRarecJYZebxD/Q5FfVTP+fYy1vHiTLUvSi/zTi9IpVuIv9MMu/y0B2VcuooRdnwhNiXpGdA/tJ8oahWpjaWeCsKULVW/buoM3e+nbTsUTrlBjhPb1vPyyErXCISpCxjPxGpVJa2bMVa1ziUshYCfn1Imkxnp7jI5dBjFbBGUg9PP9HNUgUWViJy+6pT5KDxldw5w2VK04M8c0cPkJskf4PUTiw20TKxv4bsx1Vms6mC93zZK6dIYlnzv2yYSJ85JDXOLxiuK2qHh3LPvMlUmpP1YCV0uSAxPY8/ek9Q1Zyx/gT+4uWjo+BCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xCZnofhIdZZL22KFBxNSQbNbaRTV5cU3FXAlwsD/DA=;
 b=wo5h9OB9l8SyXiXnGxL866KBXUOo+M/Nq9orUu9GwxMDG6SiM661XRrSc0RJJE575vVdEGYXYR6Z9p6woSHeNkoVd8WO/SiIq7cDIqTdlv+pWuyK5PKImqx/CB1RRSmUigxymHhlcgn5pgEZt+hr1kr6VugO+G4tX/QpxhOiBRzIAIBinzc5w/le2A8BpPy5uXL1KFkX7JST+KOD/CakAshvUjbwSfxINu9gPmrpLhqoNN6pd2AyipCdobXIZWy70PPAAdwxWqyRqQbFy/gYbMjz6HyvJpmM9HpcJ4RlExdoBH044+wJzcVov2WBOZS7A5yv8Wgq6lm5kI+Wnyjmzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:27:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:27:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 0/9] ice: properly use u64_stats API for all
 ring stats
Thread-Index: AQHcTSdksqCyJ5s+ZUedFn5EOqjj9bTiHkYg
Date: Tue, 4 Nov 2025 07:27:17 +0000
Message-ID: <IA3PR11MB8986AB2DBE26AD6A7E3362A2E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: d87a6482-1937-4624-6e98-08de1b73955e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cEdpRk5veThPbFgyWlB6bVNYbkt3clFVU1l6VG5TZHNIcHJHVTlseHcxUWFX?=
 =?utf-8?B?bmk0RVZoWFpLbVQrbGtjbjVMWGM1QzhFN0gyZHh5V2pGc29CK085QlpNd2Yy?=
 =?utf-8?B?MEMxb0Rab3QwUUtPQkFBR1BpcVNVajJQVHV4ZnZsWVRIaDdaa2JqVW1IRWU3?=
 =?utf-8?B?bTJteE5jWmd2SDk0TnNEVnpNM0l4bTF5R3dJbHR4Qm93NDcvei9uczlxZy94?=
 =?utf-8?B?MHU2NzFhbGdLeWhNbFQrZEFHbzFYT1phdEpKNVRXd3ZoZGNkaVFtRkk5TDV5?=
 =?utf-8?B?OUpTVFg4LzNYYy9RNXN5QXArd2JoSnUzVDJwTEJ1bGdZQWxhc0kyNGhZaFhN?=
 =?utf-8?B?N2Q1MzBrREVhaWFoQTQ0b1F1K1NLZW55VWI3b1VEQnlsRmNXMVFtTE1FMnBx?=
 =?utf-8?B?WlIxbm0yMVBmNEQyUE1EK1lvU3haVWZqakdaUnpyZDV3ejRWUE42S29mVkoz?=
 =?utf-8?B?OVFJTzRCMzlObGR0VXBTc1RpcDBKTTl4ZDNvS2tNeDJ1KzZKMkFtOWl5TWR2?=
 =?utf-8?B?bURuc2dsa2xxWC9pNFJHZXRMREF2MjBkT0FKVHdURkRGbHBvbDZxTGJVZEd5?=
 =?utf-8?B?UkRlT2wwOW5kNko4VFFVdGU0VXNpeWNGMWZCTHpBTGdzL0JOd2xpUHJzWDVq?=
 =?utf-8?B?TXJrUDZvSzRwTlFINjE4a05FSmdxSDY4K0JOSXE5WXVNOEt2Nnpjb3dMUi9y?=
 =?utf-8?B?RkxHQmtSQmRPMlROUk0rOU15bm1nL2ZobGJpZDNKNm5Va3hkZ3RYRGpqODNn?=
 =?utf-8?B?N3hvdDFydXRaTVd1ZFkxalZxTkIxMHNoOVVBR0RNbm1tajRnODFiUjZtTis0?=
 =?utf-8?B?QWoxRURQNVJPTk5nRStROHZVaWxTeHkzcDlqZTFkeTdRQXNsRFMwN25XQlp3?=
 =?utf-8?B?TktVdSt1U0JiY3RMM3BqUGV6RFUrR2ZkdFFZTlFKWnpZaVpXYVhJb2FMbllh?=
 =?utf-8?B?VVQxVHEwc0Z0aUQwcVlRZGwyT0RveXZ5a1dMZWRHVUU0VWYzaXFwOURjbGF0?=
 =?utf-8?B?b1QxQldwbmhnMStaU3gwT2JXL1JLajdMQU8zL0V0MW13T3ZWSGlVVGNEUlFN?=
 =?utf-8?B?MkduWXh3SHBkMmxmVlFtZndOOTdsS2dkOTJsbWZSUUYzZ3EvV0hyWitLT2ZQ?=
 =?utf-8?B?MnNCdUM0anVnYktEUzBiRkpFM0NlcHRBd2xKbzdmWTJGcG81ZmRPOCszVFFE?=
 =?utf-8?B?NXdWbzVTaFVvaU9RcUdPV0JqaENuRWRuU3hFazBHVWpxQndNK21Md3pXblRN?=
 =?utf-8?B?SWIyZ2JpVThqdUFVOFB3NkoyOHM2cldKZHlIeG5JZ0xWMUh2dVFHQUpLMy9o?=
 =?utf-8?B?dElIUXo3MnI5UHEyWURtZDdVVHF3M2RiQmhwbzlMOEJUNlIzK2JadlprL2xo?=
 =?utf-8?B?VDRqeHFENTZveG4wUk5KaktFWU8veUlYcjlOQmQwZWY5WkoxTWJ4aGJHUVRI?=
 =?utf-8?B?L2FLWmxXcGI2QjdqSmFtbzRFY3BFZEhDb09vK3J5Ky9YNlFlNVA5ZDdLREdY?=
 =?utf-8?B?ZXZXYzVFNkxxUHpudW5iWEFjdzh0M3MyeVZWUHIzWE5UZS9UaTRNV1oxbnl6?=
 =?utf-8?B?ZWJLalcrQmlISkhKWTNjTms4aVBCZE8rUkt4Z2FRcWNBamJsYkxlenJuSjMv?=
 =?utf-8?B?eGF0bGlRcUd4RTBVV0JSUDE5NFpvZDl1aWRhUDZCcEdobk8vNm1GWlcxa0dH?=
 =?utf-8?B?cWd4NjdhUkdTSjE2Vnp1R2FDeGJnUUdHbWpOZUJrWGpDM1UxUmEzcGZzNy9Z?=
 =?utf-8?B?TmFrVjl0NUl2amRuUGNrK0R3ZVBWMldTSU95VUx4OFROVGhES3EzaXhWWWxR?=
 =?utf-8?B?TGE3aGM2eXJWa2ZlbTV0SGdoR1ZYMXMxVFdQeTJVWEFlUWwzcTJtTzRaWjh2?=
 =?utf-8?B?c1JNTWU4ZU9VaDVMM2x4YjhnME92dTl1cmYvQ2VmUU9ucE5LZ3k0OUZrM1RT?=
 =?utf-8?B?SndwcStTODFkVmozbHJYRW1jZThJbGtUMVFoWEM2UU04S0xseU9WNGJLWGta?=
 =?utf-8?B?MDlFQmJmN24zZDNnUUJEaUZhZitqWkZPS0pabnBWb0V4V2U4ZlpxSGRiTDhz?=
 =?utf-8?Q?wSnGCd?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkw0Wkdod1NLNTcxa01pUFFyMkN0VWJxdnJkWHZzVTlUMmdoNkIwRGh3TFlx?=
 =?utf-8?B?S3YwTjJxWk9sNGVlWlFDbFpROVJXMyt6L0lrbnBhVHhsbHlTQTVuQzdGR0U3?=
 =?utf-8?B?ckRsQ2NMZk5YQzVwYUcvdGtVSG9lUnZEQnRuaVl1QTNoWmN1L2NtZ2NaRWZj?=
 =?utf-8?B?RkFsQURBQXcwbEtmSFFTbzYyZnU4d01GZFBDaTIzeXV0SElDTmFCRFhTbXRq?=
 =?utf-8?B?c2d3OVc3UkdBeG1DVlN0a0x4VkhXcTBWK3lnbW5rZ05yOHJEZDFmSzhyMURM?=
 =?utf-8?B?c3lHSWtVeGRDZ0Ewbk9DNS9ZUE0rUGRGYmNsalJhY0NOOC9rSW91RUdha2RK?=
 =?utf-8?B?eDVDYXAraXJ6WXBtYmRKK244WFUrUGZTODNySWZVU21La3BVSGRLY05Kc29u?=
 =?utf-8?B?VlN0MlFqSkRXVmZYbFFHazUzTjJDVkp6MVNncXRHdjBydHNRSVM0SHFsWE5L?=
 =?utf-8?B?bmdaRkg1Mk11enpnaVZJd0gwdjRQY3MwcndQa0poM0tQRDByeUljMHd1K1hz?=
 =?utf-8?B?MDhwRXI2OWhsVEt6V1kxZ1BFWGV3MXkxYWJ6SkZNNnJZSWFCQnFtV1RZeXJP?=
 =?utf-8?B?MUE4ZDE0YndXMU12bDM1bEd0dXozUWFLNVpiMUYwclpJWFFIRkNKeCtibWhj?=
 =?utf-8?B?dW9XRXVVQXR4ZUZQNHRCeXFNeVJwK2tEREhpcFQ1eFNhMG5sYWsvVXJzL1Fo?=
 =?utf-8?B?TUx0Y3NSdUZIMVV2U0RJSW9UY2dONENhT2V3S0pnSlQ0S3RyVU5vUW94aHJU?=
 =?utf-8?B?akVuMGVTQXhlc3JCazBkbDNCMUtoQ0M2dENHRW5tZk9LQ0Z1bk1VNnZNVENq?=
 =?utf-8?B?enFQNHN6NmUvVGpNN3N1czhqUFM1cC9FbUVPSklybUxtcnVrQ0J3YjdBckpF?=
 =?utf-8?B?b2N3dGtLbzhjaXZkejFCdk4veGJROTI5TlNtdWpLQzZxa0diaHd5MWJDMFlR?=
 =?utf-8?B?bFhkSzluRnpEdGVlYmNydHc0WmcxZ2hONUtuSDZ4OWxPMC9KNWlOcHdNajhG?=
 =?utf-8?B?bHF1cE5VWlgxVzVkcGNNZ2h3L2Q0cmZHVThWbUZZTEl1MWQ4TW1ZMHRXVEox?=
 =?utf-8?B?Y1dqcUhSVituTTFFc0lvcTNZRlRkazJMMmpBWmRiRW1KL2h0Z3lyQTBvdFJl?=
 =?utf-8?B?dDBNTm5pWjliNDEzVHhmZG9TdVcyTzRhVXRCU3dPRE1Vd0VnbnZJQVhpdHA5?=
 =?utf-8?B?V0lzalRzY3pkL09sMXJqR0Y1NFo4RGFXWXNUeEJObkNJVlVWYmM4TFd2dXdx?=
 =?utf-8?B?WHBVUklBVUEySDBteDh0cHhiZ3RkQllaQ3JFZnU1NmhLQVNsSjNBOGYrL21u?=
 =?utf-8?B?a2JjRTBEVDdxcmtwWllpb3BJUWpMdmVUbTYxdzh0ckYwZDdUdHdUc3RjWEta?=
 =?utf-8?B?VHRWWFd6aGtGbkloRDR6cTh0Rjl5dUUxaTQrYTFMZFQvbHBxVi85SmRiOGhp?=
 =?utf-8?B?aTdObkRCb0JFMjgwYndzdkpLMXhtSWp2SmVKOHJHRU9TKzBqbXpWS2VDK2NI?=
 =?utf-8?B?WkkzOVVNRDc1em9odVJFNW9WMkxzTWxpQ1pjK21hZVgxbmRhVnR1TkhYMVAw?=
 =?utf-8?B?Wjl3Sm5PdEw0L1JoL3BxeDBkd1pMaUNBOFVFWGFYUjhRNjlycGhRZFZPeWVM?=
 =?utf-8?B?K1M1Uk10NGlSaGppd1ZRaWNua2JxSC9NSWloTzdhLzBiQ3RmYVBpY1NTdGVG?=
 =?utf-8?B?ek5RVStUVzNabVRFMEF0ZkZVVDNWNkFZRkRwVFJTcmFSRVdDMmpFaGZsc3dz?=
 =?utf-8?B?RXZTYkNtTDVYN0pnVzBoU1Vkdm4rRFlOZFg4YVlUQ2pnbjNwWThNL2d0VWRh?=
 =?utf-8?B?ZWVaSlFqa2tFL3BqM3lEYzdRSy9ENGxBNzl4WmlLUWhtM083bGdnQnRyUkJm?=
 =?utf-8?B?a2hQOE0zeFlaTTRIc241S1dyYytSMXc4Vlc3bnpVTXRtYXp5QnNGL1NCZURM?=
 =?utf-8?B?UC9oZHZ1UEVnbjI4VE9jVVFEOWhCTGVsQ2hVM1BQaWxDdXV1MGJoUHdNd2tW?=
 =?utf-8?B?dTkyQjRWWlhzWnRwMHRrS0lxOHNDZGRzclorNk9qMTEyeThJR09vbTZyZmpG?=
 =?utf-8?B?dUMyRFEwcmhzdStHVHlaOHhKUjZXVVhZUEhVcXE1YlFjYUtTQnZEZmo2N29o?=
 =?utf-8?B?WTNGS1ZtRjk0cGh5ODhsUEhwM1JTM01Wc29iNFlWckpOZzl5ektyV3k4NVR4?=
 =?utf-8?B?c1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d87a6482-1937-4624-6e98-08de1b73955e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:27:17.3972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v4uYzzQaAmY/2vcyVgobSU6LW2M1vPEQcRdbx/ADYjIxOnO+yIr5VfVKdOqAbACbExH1EmtHtocAdJJBIC7BYXCnCdnAC5NZGV/oNu/KzZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762241245; x=1793777245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xCZnofhIdZZL22KFBxNSQbNbaRTV5cU3FXAlwsD/DA=;
 b=Yqe0z8y4ieR1J0SUUc0KV7BsJ1oTiFmT09Ej6enNwYF9wAPaO/eUEKcg
 znmGPeOVUFqkYCl3FHnbKFuosS6d7fbeiuIYMG11EywB5fenpc5c32mqY
 gRQzWW4g57jQawdqt+WyJ1Vahw+TMeZtl6256J67n0fZtUQxomlHG1w+k
 mX3dF1+y8b2qOU4SHEH6Kswsw1aKzK6AhmcMB/WcsfydFPrzwq2MRTH/V
 6YSQg4XoOEsMc95zGNJ9LaD8lVNrhuhLJdR8qAlzs/rNcYPpaOaUdrdeK
 wX4cCWqt4K0EIrvttruDsHimAjYXn3IULglKR+eK1HUUGokIQTdKV9uA2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yqe0z8y4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/9] ice: properly use
 u64_stats API for all ring stats
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCAwLzldIGljZTogcHJvcGVybHkgdXNlIHU2
NF9zdGF0cyBBUEkgZm9yIGFsbA0KPiByaW5nIHN0YXRzDQo+IA0KPiBUaGUgaWNlIGRyaXZlciBo
YXMgbXVsdGlwbGUgdTY0IHZhbHVlcyBzdG9yZWQgaW4gdGhlIHJpbmcgc3RydWN0dXJlcw0KPiBm
b3IgZWFjaCBxdWV1ZSB1c2VkIGZvciBzdGF0aXN0aWNzLiBUaGVzZSBhcmUgYWNjdW11bGF0ZWQg
aW4NCj4gaWNlX3VwZGF0ZV92c2lfc3RhdHMoKS4gVGhlIHBhY2tldCBhbmQgYnl0ZSB2YWx1ZXMg
YXJlIHJlYWQgdXNpbmcgdGhlDQo+IHU2NF9zdGF0cyBBUEkgZnJvbSA8bGludXgvdTY0X3N0YXRz
X3N5bmMuaD4uDQo+IA0KPiBTZXZlcmFsIG5vbi1zdGFuZGFyZCBjb3VudGVycyBhcmUgYWxzbyBh
Y2N1bXVsYXRlZCBpbiB0aGUgc2FtZQ0KPiBmdW5jdGlvbiwgYnV0IGRvIG5vdCB1c2UgdGhlIHU2
NF9zdGF0cyBBUEkuIFRoaXMgY291bGQgcmVzdWx0IGluDQo+IGxvYWQvc3RvcmUgdGVhcnMgb24g
MzItYml0IGFyY2hpdGVjdHVyZXMuIEZ1cnRoZXIsIHNpbmNlIGNvbW1pdA0KPiAzMTY1ODBiNjlk
MGEgKCJ1NjRfc3RhdHM6DQo+IHByb3ZpZGUgdTY0X3N0YXRzX3QgdHlwZSIpLCB0aGUgdTY0IHN0
YXRzIEFQSSBoYXMgaGFkIHU2NF9zdGF0c190IGFuZA0KPiBhY2Nlc3MgZnVuY3Rpb25zIHdoaWNo
IGNvbnZlcnQgdG8gbG9jYWw2NF90IG9uIDY0LWJpdCBhcmNoaXRlY3R1cmVzLg0KPiANCj4gVGhl
IGljZSBkcml2ZXIgZG9lc24ndCB1c2UgdTY0X3N0YXRzX3QgYW5kIHRoZXNlIGFjY2VzcyBmdW5j
dGlvbnMuDQo+IFRodXMgZXZlbiBvbiA2NC1iaXQgYXJjaGl0ZWN0dXJlcyBpdCBjb3VsZCByZWFk
IGluY29uc2lzdGVudCB2YWx1ZXMuDQo+IFRoaXMgc2VyaWVzIHJlZmFjdG9ycyB0aGUgaWNlIGRy
aXZlciB0byB1c2UgdGhlIHVwZGF0ZWQgQVBJLiBBbG9uZyB0aGUNCj4gd2F5IEkgbm90aWNlZCBz
ZXZlcmFsIG90aGVyIGlzc3VlcyBhbmQgaW5jb25zaXN0ZW5jaWVzIHdoaWNoIEkgaGF2ZQ0KPiBj
bGVhbmVkIHVwLCBzdW1tYXJpemVkIGJlbG93Lg0KPiANCj4gKikgVGhlIGRyaXZlciBuZXZlciBj
YWxsZWQgdTY0X3N0YXRzX2luaXQsIGxlYXZpbmcgdGhlIHN5bmNwDQo+IGltcHJvcGVybHkNCj4g
ICAgaW5pdGlhbGl6ZWQuIFNpbmNlIHRoZSBmaWVsZCBpcyBwYXJ0IG9mIGEga3phbGxvYyBibG9j
aywgdGhpcyBvbmx5DQo+ICAgIGltcGFjdHMgMzItYml0IHN5c3RlbnMgd2l0aCBDT05GSUdfTE9D
S0RFUCBlbmFibGVkLg0KPiANCuKAnHN5c3RlbnPigJ0g4oaSIOKAnHN5c3RlbXPigJ0NCg0KQmVz
dCByZWdhcmRzLCBBbGV4DQoNCi4uLg0KDQo+IC0tDQo+IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPg0KDQo=

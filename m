Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 234FAB0EF6B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A695580E80;
	Wed, 23 Jul 2025 10:11:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3I7eKq6sqlaJ; Wed, 23 Jul 2025 10:11:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB5FB80E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753265471;
	bh=miZn/Ati0A3I48XmZJulhsst6aR3wWoyrCg5LAUq1IY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3tcY8ea6mqrdSN9kCXJK39wynKhOsE7TTNaT7sdSbhrw9KpnpblfiZlyJqQ2SDjfl
	 rwWqvlmeRAKTeN9UAak0AFVA7Fb1awo+IPmxkSOpw350xpdRy2F1lwX+g/by61rlqv
	 ef274jcD22syOHUveefa6WaUOngXwHG9F5ewjQGwtSjtRUFaI/mEg5iV/agoJFDvSc
	 t0ZEtCQ8D2IyGxRtorpisD41DjNlxaOS0Efo1bJC7laqnmzDrJ1d4CvzXgTUHqYlrw
	 6neGhJT+pE6T5LvWndFSCWE8fcEglpdfMnT4/OLF5+SHzdjAjbmGiP7MbvOHaiJABB
	 AwZjTVbvBY7hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB5FB80E81;
	Wed, 23 Jul 2025 10:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EB4EDA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1C69407F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:11:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f92E7qY7U35w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:11:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E4F2407D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E4F2407D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E4F2407D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:11:09 +0000 (UTC)
X-CSE-ConnectionGUID: Oe+hbo6XRgysL7WR8CYAiQ==
X-CSE-MsgGUID: 2KY65EYpRJ+fMgD/egLm4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="80989778"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="80989778"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:11:09 -0700
X-CSE-ConnectionGUID: cGjuzhDLR1iWl6aP/Gtylw==
X-CSE-MsgGUID: JMzWV6rMTCmlhPatdF8JFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="159803711"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:11:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:11:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:11:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:11:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jMj/unHa3Gb8K0WcfM+2fYXhCeTOWhL8mNiKMSevgS1B+4VKoq8NjWTv3yagpuvfFWe7OHtra7IFVorE5TN5LHdxem++DRU/kKQFgLeRp37XJCVsAoh8iK15xx/4A7TeZusoW31yMF9uA0wrFZ4mXLb1yGABh38BqBwPCVlBCch/wUGUBYFhdN0X9EPIczbV1XN2/mb4ZtueNjrkFY7V7wY4NfWSEulC8NBZhoIxOtB/RKRZVDXauld7jmCjeeQAlWzp8hS9pWVPObMJHvOoRY+XWrVG9oLIJtzADtOe/TkQgepsvD5sNFQLXngcLnWF0kcgIFaTUvRLHwgsgaUo/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=miZn/Ati0A3I48XmZJulhsst6aR3wWoyrCg5LAUq1IY=;
 b=HiS9TDQkYxXfcEknTsNPmMv6iI0rsoc2Q6ybkfLdOz41rpeNRNbyCnY5x6JRPJ3Dn12YqU41WK7eX2o5kCZPtGWYuvpSsuBp8jdvAH1oH8vkRyui4F3cE4ldnHacarzdcv5zVF0uqOHGg91c/j8DAOigAEnlU4hzF//p8KIKUPKaFGD1A8zXAWzPYzNGs+qdZIWn2Akm3NS9wX9sSjZn+XE8yAv+JFKMYKPgYXs5hLiqnG9cpthN7b7fgSTgvSn/hcAbZdwXoXxw3UPVukgZ5Myfw1ZE9JbMKydTvmI7s4DDG+Px+HXMkHkOd4vEOkD9RiSa+mDtj/mm4vYKcoI2cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF409BB8CE8.namprd11.prod.outlook.com (2603:10b6:f:fc02::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Wed, 23 Jul
 2025 10:10:38 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:10:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ixgbe: drop
 unnecessary casts to u16 / int
Thread-Index: AQHb+6+hvQpvsxfyJE6shbPf2+xpj7Q/fJ+Q
Date: Wed, 23 Jul 2025 10:10:38 +0000
Message-ID: <IA3PR11MB89861CD793372D790961D65AE55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
In-Reply-To: <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF409BB8CE8:EE_
x-ms-office365-filtering-correlation-id: 90afe162-aa6c-4e1b-a882-08ddc9d12c3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SWFEYjNVVkFQTVJMVkZMcWN1eFd1Yi93aTFFMkVCZ0NOL2QvNERMRGo2aDMz?=
 =?utf-8?B?NTJIU2Z1VmhaYllmMnJsd2dQRmNsMnhCMHVOMWluR3pmZWZOQjhvRTFSRXpj?=
 =?utf-8?B?MWp2MFF5R0Vib25tOVIvUVExNWZoRm9YWUpJMlNuTjhDTFg5c1MvUXZycmtV?=
 =?utf-8?B?LzNOcERsK0lPOGJXYkRORG8xekVXWnJMYnEyUHNydlBoZDduQ204N3RqbHV2?=
 =?utf-8?B?UTEzb3JiWjVzbGpaOWw3TUVCZmg4VU55SXgzQ2xuaVZ4R00wOUZSZXB4Rjk4?=
 =?utf-8?B?TVF6TXkyZjBzMndaWDF2bk5NalUrcnBxWkRXTlREcFZkZ201aXRnMitPUy9i?=
 =?utf-8?B?RDJNVGRlVWFHV1ZVSjJqZk9UYjNqbHJRU294YXRzL1B0Z0I5S2pOYUV6cVd1?=
 =?utf-8?B?aHBRMmxscmNjV1RNYmpGT0N6Y1p0cEtUYUszNTdmSlJWekpTRlROd1NTMHhR?=
 =?utf-8?B?eTBQaGF4S0NGcmgvRG9MRzJ1Z2lMTHFTbUxIclllT1lCVWFxbWhTUDJ1TjZS?=
 =?utf-8?B?NW9PbDVITm5KbzFGKzFPczJkWGRCQ2lTUTRaRGVBSXBGZUFzZ0czb2VWbSty?=
 =?utf-8?B?L2tlWkgyaWZXdHJTZXdQcE9qSkJWUzV0QVJoMDBramVZS1dPd2xVZm1xdUN1?=
 =?utf-8?B?VVF1VmxtMWVDS2dkVTJYcVJXMTEyY3ZDbEhkNDRaMm5va2tvc1JQdnAramlC?=
 =?utf-8?B?ZER3cnBTSlBBeU5SMk9FRktLQWxZcEgvZmNzejR2UXo0b09WSENuUkZQdGJU?=
 =?utf-8?B?RURwTEdtUUZFckd0VlVsMm5hQVBQL1RKK1R3V25HV3RlT2JHU05RYUV6WnJG?=
 =?utf-8?B?T2M1WGRIcm9qb0R5SnNiN0k0SDZoYnhvWld5REdlRFdobzV0QlRkU2VseFlK?=
 =?utf-8?B?TGZrc1BiLzBYSzJPajRzM0FrU2M2ZnpnQksycWdXeVN0NnptRXAxUWFzSHpj?=
 =?utf-8?B?TWhZSnlkRm8va1RMbHRaSVN2d1Q0ZHBOeXhQeGNob0FWS2xwYlpyV3U3cjBa?=
 =?utf-8?B?d3FmYTRWTXQzalJkSE5ua3JwdXNtMFJnNjVvVWVCaXJuN1JkN3g3Y1BFcC80?=
 =?utf-8?B?L1g1Sk5kQ2VSRXhaMjROelF1Y2c2VzJQK3VEZzlVY1Nrb3hSL0dMN2kwQkpx?=
 =?utf-8?B?VXRoWnpoQ1VsMDVHVFB4ZFY2U2dHdUM0Tkw1bk9kaCtqbStWV1E5RmRKMTk0?=
 =?utf-8?B?VURpc29pQTBQZXdGdVFOdDBIV0J4bE1BK29EUmlWUnl0dkxpa3U5VzZuSjVH?=
 =?utf-8?B?RnpYVWZ3L0VXRXIzRnlZSEMwWEU3Yi8vTWxJUjJ1ZENrZ0JWeU1WUjIvS0NZ?=
 =?utf-8?B?cEFZK1NhMzBGRm1TcHk2MkVFYU9wM2VNdmpIc0NaRjErWUhiWjlnV3oxM0Fp?=
 =?utf-8?B?S2RtVXRFV0VQZmJyRzZ2c3JHR2FhWmdrS3UwQ094VHo0Tkx1RmVSak0zV1BW?=
 =?utf-8?B?cEwrMWgxbTFYTzJEdkl5NlpSNXFiakZ1V3VPVE9aL3JFQ2xKdE1oVEdac3pC?=
 =?utf-8?B?K1krZ3d4MHl5ZEt3VGpaTjVTeThYclRYVEprdnYrTkQxSnVTUEd0MEJmclNR?=
 =?utf-8?B?Y0dCd09iY2dlR1BJdEt3VzIrMHFzT0hlMVRpblpNRUEyL3JnenBrV095K2F5?=
 =?utf-8?B?SVZjTHQrSlJ4dEJGczN2bDl2S3NUTzkyRUQxS0drL2FucVJJU0tWQXhsRlZy?=
 =?utf-8?B?aVhnSEJpNW1UNEdsNGxQYXF2RFNJSWY0bEN3SWRnQmNKdXhWWmw0czZISlp5?=
 =?utf-8?B?R0lQOEpDM3FkZzUvV0k0ZlJrQzd3ZzVZWnVaeWhOMHIzbmkvSEZydmNnWGhY?=
 =?utf-8?B?Wlk5MS9DRWsxaUx0UDhvdFJqR1hYeGxadVp0ZHFQZmVWMVgwRHJxa0dCYWts?=
 =?utf-8?B?NlBENm1GTlJPSkF4YlhRd2ZQQlZCQWNlUXRRa3hja25ucU1sOEtNWFA3Yml3?=
 =?utf-8?B?UkY0NE1JU3ZRNWFKYkhCeHFrMGV1SHBmR3BjOWo0R1pYMXZVUzAxMUlmOWJz?=
 =?utf-8?Q?xCmOulYcp5KgtnZoJCzBjKXyrSrrjs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXdLMGljVm1KY1JTR2tWY05CVHdRQ0doaE5CMkEwU0NRSTVOUlFTVmUzRUhY?=
 =?utf-8?B?VVQveHNPNCtIN1Bwcm5OQVZDT1VEdk05KzhCOUZvVmlCa0toNHJ0VTQyVEsv?=
 =?utf-8?B?Q3d2ajRVbFYrVlFIbU03ZEw1dEQwMEtuVnYvSUlpZ1pDT2lHY2c5QXJyUlQ3?=
 =?utf-8?B?TzFCUDJaczZHQ0ptS2hWNU1ISFhKeTh4b2VwZ0xEL3JwbXoyZUlpTktncW1J?=
 =?utf-8?B?ZTIrWCtNbHRiTEZPaElZODNuUGtTZ3JDaDlMT2d3dlFQVXQ5VFp5eXhGMGt4?=
 =?utf-8?B?aTdubEk1QWlPRXhKRWlWaXNkcDBuRlg2Q3F3TTBPdjZuQ1hjdjFZcW1kZExn?=
 =?utf-8?B?ZnFJVlJibWtaOExBRStQTkgzY3FsTEM1YWpsTmFlendyMmFWMVVjalhRSWVU?=
 =?utf-8?B?aHNDUVh1ZXdDcHN4b1VQUFJrSGk1ODhKNGxYb1lGb3dZVDZnSnZobUx4clBs?=
 =?utf-8?B?TVpWM1l1SzVJWGJncFFrNFlQM21lZEk4WHVVejhmSDRPWXpIeW9GUS9URlF2?=
 =?utf-8?B?MFk3bGQrQWNTZU1Nd3E4SEpZTzRMYmppOUZMUEV3NVZXc0Mwai9yS0hlSU4y?=
 =?utf-8?B?MTRySWFsSHk5ZTB1ZHRtYlVoQ3E3aXRBckhmbUMvc0puMXpoSjQrM0NRQkRQ?=
 =?utf-8?B?VnFKdWltZm1zWXYwcUpCNHUwVDZuZStSb0pVRWFqOGphT1dNejZNWjJDdUVt?=
 =?utf-8?B?T3I1eldFemd6SDBYLzFBMS9XdVorcGlnWitIcEhXdE9YeEg4WU84RWhqemt1?=
 =?utf-8?B?K3Y1OElwZ21OSzlmRUpvNnV6UnM2UE5jM0pHQTF4cTdIejk2K0VnSTZRQkxP?=
 =?utf-8?B?N0c5VyttbzFjQnRDdGtHOGJtRlJ2UlFWUUpvUThZOC9EWjFadDdubVV6TVhz?=
 =?utf-8?B?OWszMlRkTzBkU3BXZ29ZMTRvT3p2UUdhMTMwQ3hhNk1hMjh3UmZMaWF6RUFK?=
 =?utf-8?B?MmZSWXQ0ZjFXQkxKVy90WTc0OEczRmM2TE9mUGhwUlFhMUY2ZzZSdHBUZ2JQ?=
 =?utf-8?B?blJCQTI0ZlNKdlJJNGtGb3kxbm1pQkx4by9CeWV4Q1UxYXliL0w4MzZFUU5H?=
 =?utf-8?B?ZjJwSVloNmlRTkdQK05pbzRUOXYya3VIVzJ3dFlzYWpNSGFQUStXTEdHTm4z?=
 =?utf-8?B?aVZHaFFxZFVVeHhqSWkwNEVWc0htVGlZdU9iTUltQVg4a29QS3hNNHMxZnIz?=
 =?utf-8?B?Zy83UFN2SFZROEMwSG9nOGUyMC82cldzTUVkbktNOVFUTzhiMHFwZGtOLzMv?=
 =?utf-8?B?enpLRXZkOW9YS3gxV1o5WlB3QWhxcWhzTXNvTVM0R1BFUmQyLzQvUEVDMWVY?=
 =?utf-8?B?WVFtUStZL1gzbWxmZUF1RjFESEU3alJXYWhYeVlkZHd5WDRBUklxbEpwRlZO?=
 =?utf-8?B?SmNIemZzaTBJYURkYld1TitTc3h1TlcvRXBGNm1meGdPejFwQmIxVlJON3BD?=
 =?utf-8?B?eld6TWNPTzc4M0REdEkvWFdPUWN3bi8wYlo0N1V3b0VyTG5rTFUzSXY4dzgy?=
 =?utf-8?B?RldjTTB0RGNnMmVLaE9GcGVrKzRzcklaWmdpRm5VaWNqdFU1c2xDK01LQ3Jx?=
 =?utf-8?B?b2VhblhRejlnT09zdzl4b0xlMSticncwQ2dGT2k0TG5tNHpuTXU4SHRTelRz?=
 =?utf-8?B?Ky9WM2NzT0w0OE9hQmdsRkZSS1ZmR0ZQVVRSQXdqUnBUYVVwWHl5VVBzUVJy?=
 =?utf-8?B?VkRtcWhOSFA1ejRkbnl5T0dsUGhKYTFSK01jcE1VcHN0a1BQVW9ZWjBXWnJm?=
 =?utf-8?B?cjRmME1vemtQallJemhSN0o3ZCtzVmF0cnRDZGh4NFVONDhQRThOVUhZUjFt?=
 =?utf-8?B?SytBd3VDVUN2RXVZLzhjejNWLzROd1F3QU5IcjFzMnlmQUlFS3ZJT01UNUhT?=
 =?utf-8?B?b2ZQUytwTXhVaWZyRDVPdEdVRFEzSHJFanB0bllCTlBGT01WYThLMGlrMEpp?=
 =?utf-8?B?a1hyNUp0NW1jVDAyUnphQW1wWTdnOVBmVk1GaGJDWVNVc1dHSjBwL1RFUUow?=
 =?utf-8?B?NmU2UDUveTlPRUkzMCtIS3VXbFJScEVDUjcxdGpqK1lmVmdYQmw2LzZVMGVL?=
 =?utf-8?B?N0hKVEwwdnZyUmlWejhKREVMUHpMaUl6TE5YdmtOVGR3UHcvZFpOM3kyeTJq?=
 =?utf-8?B?L1FMdEF6QzBUdHhVci8wOGtkLzFvY2xQbllieHFzNEd0RUo3R1pvVk91dEMx?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90afe162-aa6c-4e1b-a882-08ddc9d12c3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:10:38.3788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JfSnkV9d3CkNGm9vjjYPXVlgMG4M/H3RpkAH9mBbGpxatB4EJaf8Swy3yQAPUn0OmiQRvSlh/ZMsflDYY0Arg7vmuV+bs96Q8/HU34G+1z8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF409BB8CE8
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753265469; x=1784801469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=miZn/Ati0A3I48XmZJulhsst6aR3wWoyrCg5LAUq1IY=;
 b=NerRKGgC4j4FryCSNos1ZEu0k3ITgbDTN/6ZyVxBUeHgUi/9yH0bbvTI
 3FCxeuyX1OM+NKa3/ILtYLvAVq/QcYMVV8us2TGuogeDnGYh+LbCut238
 Howh6NYBmi2+35D4DxKlfLqlHmzuyEWMHCNdFgcRGnJNlFfbJ11bLawGQ
 kXmpiny92mmgGT8HoZOG4AoNT6hZmWucPCi4p6Gt9vE6mUI6TOMHo1q6f
 piCo2CDVONO3xOlt4oHrsFp54Ld0GnNZwf0J3LTJ/lIt0XbV/AHwpxv/n
 V3fyLiH9XqMXzMLPU2M77ZxAlDNJc8f95YaQLyKcSFnIYIjw9WTXxgbh5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NerRKGgC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ixgbe: drop
 unnecessary casts to u16 / int
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
ZWsgS293YWxza2kNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDIzLCAyMDI1IDEwOjU2IEFNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3
IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjMgNS81XSBpeGdiZTogZHJv
cA0KPiB1bm5lY2Vzc2FyeSBjYXN0cyB0byB1MTYgLyBpbnQNCj4gDQo+IFJlbW92ZSB1bm5lY2Vz
c2FyeSBjYXN0cyBvZiBjb25zdGFudCB2YWx1ZXMgdG8gdTE2Lg0KPiBDJ3MgaW50ZWdlciBwcm9t
b3Rpb24gcnVsZXMgbWFrZSB0aGVtIGludHMgbm8gbWF0dGVyIHdoYXQuDQo+IA0KPiBBZGRpdGlv
bmFsbHkgZHJvcCBjYXN0IGZyb20gdTE2IHRvIGludCBpbiByZXR1cm4gc3RhdGVtZW50cy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEphY2VrIEtvd2Fsc2tpIDxqYWNla0BqYWNla2suaW5mbz4NCj4g
U3VnZ2VzdGVkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQpSZXZpZXdlZC1i
eTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMg
fCA0ICsrLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1NDAu
YyAgIHwgNCArKy0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94
NTUwLmMgICB8IDQgKystLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV9jb21tb24uYw0KPiBpbmRleCA0ZmYxOTQyNmFiNzQuLjNlYTY3NjVmOWM1ZCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29t
bW9uLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29t
bW9uLmMNCj4gQEAgLTE3MzksOSArMTczOSw5IEBAIGludCBpeGdiZV9jYWxjX2VlcHJvbV9jaGVj
a3N1bV9nZW5lcmljKHN0cnVjdA0KPiBpeGdiZV9odyAqaHcpDQo+ICAJCX0NCj4gIAl9DQo+IA0K
PiAtCWNoZWNrc3VtID0gKHUxNilJWEdCRV9FRVBST01fU1VNIC0gY2hlY2tzdW07DQo+ICsJY2hl
Y2tzdW0gPSBJWEdCRV9FRVBST01fU1VNIC0gY2hlY2tzdW07DQo+IA0KPiAtCXJldHVybiAoaW50
KWNoZWNrc3VtOw0KPiArCXJldHVybiBjaGVja3N1bTsNCj4gIH0NCj4gDQo+ICAvKioNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1NDAuYw0K
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1NDAuYw0KPiBpbmRl
eCBjMjM1M2FlZDAxMjAuLmU2N2UyZmViMDQ1YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU0MC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1NDAuYw0KPiBAQCAtMzczLDkgKzM3Myw5IEBAIHN0
YXRpYyBpbnQgaXhnYmVfY2FsY19lZXByb21fY2hlY2tzdW1fWDU0MChzdHJ1Y3QNCj4gaXhnYmVf
aHcgKmh3KQ0KPiAgCQl9DQo+ICAJfQ0KPiANCj4gLQljaGVja3N1bSA9ICh1MTYpSVhHQkVfRUVQ
Uk9NX1NVTSAtIGNoZWNrc3VtOw0KPiArCWNoZWNrc3VtID0gSVhHQkVfRUVQUk9NX1NVTSAtIGNo
ZWNrc3VtOw0KPiANCj4gLQlyZXR1cm4gKGludCljaGVja3N1bTsNCj4gKwlyZXR1cm4gY2hlY2tz
dW07DQo+ICB9DQo+IA0KPiAgLyoqDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV94NTUwLmMNCj4gaW5kZXggYmZhNjQ3MDg2YzcwLi42NTBjM2U1MjJjM2Ug
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3g1
NTAuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUw
LmMNCj4gQEAgLTEwNjAsOSArMTA2MCw5IEBAIHN0YXRpYyBpbnQgaXhnYmVfY2FsY19jaGVja3N1
bV9YNTUwKHN0cnVjdA0KPiBpeGdiZV9odyAqaHcsIHUxNiAqYnVmZmVyLA0KPiAgCQkJcmV0dXJu
IHN0YXR1czsNCj4gIAl9DQo+IA0KPiAtCWNoZWNrc3VtID0gKHUxNilJWEdCRV9FRVBST01fU1VN
IC0gY2hlY2tzdW07DQo+ICsJY2hlY2tzdW0gPSBJWEdCRV9FRVBST01fU1VNIC0gY2hlY2tzdW07
DQo+IA0KPiAtCXJldHVybiAoaW50KWNoZWNrc3VtOw0KPiArCXJldHVybiBjaGVja3N1bTsNCj4g
IH0NCj4gDQo+ICAvKiogaXhnYmVfY2FsY19lZXByb21fY2hlY2tzdW1fWDU1MCAtIENhbGN1bGF0
ZXMgYW5kIHJldHVybnMgdGhlDQo+IGNoZWNrc3VtDQo+IC0tDQo+IDIuNDcuMg0KDQo=

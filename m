Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA7BCCB7D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 11:51:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB02261160;
	Thu, 18 Dec 2025 10:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZVgiDgGEVGdM; Thu, 18 Dec 2025 10:51:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A37761166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766055090;
	bh=eJH13BefmLGbF7Vi9wmCEsqztkyybDhIVwUU8xzijZ4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bZbEYfJ/0fMo62kHNasBw6lHcVFaV4SPRvp47RlmkASexaMLf59+XlQ5CRP3u8+aZ
	 KCpd9hucjmbK8O0fp2xez3lcrfeS+HYuCxahou6LU4Tc+y3/Cxnry3TxNiJHqjLIbP
	 HtASiz2mxVYrJSx+x6PG/QzdF2Dl/XSTwSyKbyXOzOozYESNHUHUv3P728btltpwaC
	 FXWb3maUvSUuRbHN2VmxvAVnH64TpvhRkiXY/e3QZiwkS1F3s3mEHLkAaci7RS5siB
	 7r8tD2bH4z9DWKrjkdUwGJFCUUhtWXrKGtN0R/Q6bcYWxreTElDxrpCWcTlCFbVUUM
	 LZYHeCKNUtU3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A37761166;
	Thu, 18 Dec 2025 10:51:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 324D41A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3696404B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:51:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mqCy7W19Dbsr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 10:51:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE440404B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE440404B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE440404B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 10:51:27 +0000 (UTC)
X-CSE-ConnectionGUID: trKI3TEZS1a6bND0o4AUPQ==
X-CSE-MsgGUID: DZWeTcKXQKat5ctoIl2C9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67002264"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="67002264"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:51:27 -0800
X-CSE-ConnectionGUID: BjoNORf1Q1256Gl/Fxl1Ug==
X-CSE-MsgGUID: RBkoUMiRR3a3mexmaOBVAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="235980918"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 02:51:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:51:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 02:51:25 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.61) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 02:51:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RuLVSWlDBrv0TI6NzAPoaccwXZKhGVafw+kLYecQxDaVvKza/GuQ6y9Aiwrks5tUgHzP7yO6of/n+Wc0k1oHihU7NKVJbhvdewskNEoYIP3mLMBt2A4IkJBNJwCzVF/ldy6dt6XukD8a2IjBXuv9ocPS6WoY78fQ30Dx5exYXOvP+mc6aBWEflJopcn9UMv5rQ1hd9ePIlP/xdB92puL+3cagtRmSXpCAW2ERPMdbrWlG7eWKDlBskPACIuxjHZi5aROe1NvyQR3GU/SUdihKQSQeelltDiTuP0RrzcMU66Kd78Rl627Gw5y1t0Sz0V/bsSYKQ5ni8TQ5lBvy1uMVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eJH13BefmLGbF7Vi9wmCEsqztkyybDhIVwUU8xzijZ4=;
 b=TQiQstj0t83orG3q9UO5pS0ADDxv2Phg3gjQqSEVf3SMKF4iu3htikcIdKhP3qLCvcBT0cYTAfZz/AVQGd5NXVpPbO40dzA21S9iUsVMyMrjtRaR1LOZUBLrciy3AMrE+6CTrpR/8ENBu3GgKqLTSZUy1Qfx+4e3k9XnTb55yDE7okrFUkyV399cPltUl7TMQRs6fJ7rytBIRp2C4MkyUAiKKWdTuQNKvkWiQVd1pp2bVmenNGAGxxZ5z5qnE1W2O/J8GvN5dWe2umIFZWS5FrpleQwHBslqpyQVAtQJFignWZLtaEYCyweAWeJYtprz15Sv253368DKElvlqOKMpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.7; Thu, 18 Dec
 2025 10:51:23 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 10:51:23 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: shorten ring stat
 names and add accessors
Thread-Index: AQHcWltQC2um6cnu2UyG6hCcONC7G7UnJ0qQ
Date: Thu, 18 Dec 2025 10:51:23 +0000
Message-ID: <IA1PR11MB6241A9A14CB97263C43565008BA8A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
 <20251120-jk-refactor-queue-stats-v4-5-6e8b0cea75cc@intel.com>
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-5-6e8b0cea75cc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6196:EE_
x-ms-office365-filtering-correlation-id: b8534a70-9ee5-494b-7a15-08de3e2362ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Ull0WFZ6VmcvdTcwMnpkTk1VcTVxWkRaS0hQMVhWckk1d2ZnZGIxbmE0MElq?=
 =?utf-8?B?V29ndW1GREU4bERxSkNJS1l2dWxqYkNlLzRDUk5sVitUVlF1a3NkVWJSUlFI?=
 =?utf-8?B?enk3aVdseE55TFJjQ3pPM2RMUkhVTFNRU0JGV0NUWXI3cDhlR0tkOWNYSTdO?=
 =?utf-8?B?N3kwQWU1TzRYSzkwSTlhRGgxK3VxazNyaTBTSmpyVVVjL1lkNDlrb1JyTGtN?=
 =?utf-8?B?M3FxdFE3bTNBRkkwWjhHbEF3T2tBRjlhR3JaOGFVNEdFcW15NEs4RkpRajRB?=
 =?utf-8?B?eHRYcXMwRitoRjVDYlZOV050TG42VVdSY3dMcUdqZ2VtUU16eEFTUEY5V3FS?=
 =?utf-8?B?MGFqSUw1Y0kwS1c3U29RQkd5bzVYdGROcTFsMitnWk5NQld4ZlppSUN6NzJE?=
 =?utf-8?B?ZVNnTlA4MmJHdXhmd3VpOFBWWjUzSXhXa1BpZDNRRFdjcW83UVJkSVZwR1Br?=
 =?utf-8?B?M1JqaHFVRXdVT0ZGU21nRWpjZTNkajNYK0FzdE5vTHE1MjQ4K2Nvc2pNZHpV?=
 =?utf-8?B?SlBWcXVQejNoTlh0ZGI3NjFKMDNpVDVpTm9zTk5rWEFCaVUvSmVDaTFOODRy?=
 =?utf-8?B?bVhnYjJNalFGOXh0dEVQeEthOUk1TmVyQmp0R3FYU2Uza3d3UUlpY0kybkJ3?=
 =?utf-8?B?NEZPOTc4a2Rra1U4YkVkSVBuNHdIYk1GbkhWR3NrdnVSeUlWRDFpbTJEZ0xr?=
 =?utf-8?B?WkdmekNnSUprZms0VFkzUDFYdVlNZGhoK25kakk5MGkzL2l2RjA3dTVBaWxj?=
 =?utf-8?B?elRPY2diam5sMGt4QmRiZzlQTHQvWi80M0cyMTViTmRYTUNDdTRHbnlSQkM2?=
 =?utf-8?B?UjIvb3dEdUdyY2VyMTJaUnNWNmt4RUhyKzNIeERUS201VHZud0Q5NDJITWhZ?=
 =?utf-8?B?MStvcG5zYURnNzdjOEoxN3dwSXplWjdNVWIwa1lsUWV4RDlHcUJyZ3Ezd2pr?=
 =?utf-8?B?bmpHUU15WlFBTFFKd3lGci9WLzRQR3NjV3RkQ0NLVS9KakUwdVh4czhscXRQ?=
 =?utf-8?B?WFdGZ0VVTnBBU0E5NS94azFuRDNCSHpEWWZlL0o3eDF3TE9UUHRYYS95YUkx?=
 =?utf-8?B?b2plS2ptNzFza0JJSnRXa3R6bXNtMUJ2MUJUL1Y5SkNDaWlUcnl1SlZweDNK?=
 =?utf-8?B?dnpudE53L1FXWXBYY2orRDJOcW1XTWFYRklLMmNMRGFaSVpjcndqS3Z0Smgr?=
 =?utf-8?B?OElSRjFsMDhhSTdNSDNkU2lWTEdWTmRkSmc3bjNOWlVGZ253L0UxOCtKVnI5?=
 =?utf-8?B?b3p3aTE2Y2E3Nk43b0xHajhvTDhhKzdnREtXdkJITSt2d0dpZ0J0TDBOVkov?=
 =?utf-8?B?NGJqSHhZM3BKc3NwRloyZXdBM09TWHlqNXFzbDNuTWgrSzhQRmhZNjBPenZp?=
 =?utf-8?B?V1QyNlNaY0M3c1hCUWQxcmFjSTBsOHViOFZtM3YwUzBRNlNjaVdxMGVDZnNV?=
 =?utf-8?B?bTdJcFZZUGpBa2lsN2pPeUxpSHIrdEZzWGQ0V2dKQ3VUS0Q3bVJpL1g5SDlu?=
 =?utf-8?B?THlTbnNnYWNYOFR6eFV5ZVRIMnE1cktlZ0lxYUFjUEQzSDVLekE0cFlLM285?=
 =?utf-8?B?YS8wZjVyTmZUMkoxSkxsdnkwV0tWdGphWDdVbW5xMkU3UUJqRzZhVUlJbElY?=
 =?utf-8?B?Q05Xc0NmZEhaT0pESTNtTkloNUZ2ZEhVbSt0RnUyQ0FQSDdBTkhRMnpYYWt5?=
 =?utf-8?B?UW52TlRWWkVmK2JXTHJwTWlUYkh0S3JuUnZFT3gxYWJ0Y3BjQzVHdWRuT0dm?=
 =?utf-8?B?clJpV3FTUVVXdjZtdWYxL3RRbzQvZFBYUWE4Tnk5ZzNCTmMrZUdVdUFHbGcv?=
 =?utf-8?B?MHNISUFxbDZZYXlrdC9KR0FkWjY5YnZDU1VKcFVwZmhtMEdkSmtqdEZxYlpK?=
 =?utf-8?B?ZG1TeC9Tbkc4QmlFQ0Z3NFRJZHB4cWZUSU5RZGhyY3J0S0RFNVphTkZQSEdO?=
 =?utf-8?B?OVJtR2dvSjdQOWRRdEdxZUhVdDNpaDZHSFZQY2dJbHNMVWpjbFZ5RlZrYkdx?=
 =?utf-8?B?VXNpSjlTVVFVaFE0TDhySkpwZnJ4dXA3eHRXajNxMjlPV1hxSmJlMFNldm51?=
 =?utf-8?B?czZTQzdLZ3dTQ1A2bXNnU1EzTXVaTmlyandvUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFVMY21xQU9PNXlyenVMaGRwYm9tZWkyT3JpT3ovbVFydzBnQ2J4T1V5RDVz?=
 =?utf-8?B?MTVBSlVudlI2WmRmNHg3MldJOTVUaVROc250d3BzdEFjZ0VnRUdRR2R0cmN6?=
 =?utf-8?B?Z0V2YkVJaVJqZ0ZMdDRDcnduSjRkdFlJcVhHdFFvL0Z6aWNjcTU4cDRJb1RE?=
 =?utf-8?B?VlllYlFrUmlVT0lsTzEyRGVITEh3Z05TRGZqN0F3R1haQmhvOGZWa0pMUFI1?=
 =?utf-8?B?RldKRzYvQkFlSmtJWUIxRHJ4bzBHVlNCUGg5OUprYU53MDd0Rnh5VXE4U3h1?=
 =?utf-8?B?T0pPbVMyNmNhMDhIaE5aMzJuMGpkTXNYR0R5V1Jma2lGbTZ5RHB2LzVaa1Fs?=
 =?utf-8?B?NjV1akR1Ujd1RnZiRXN0SCtkWjl6MlU4N1J3QXg4bDR5YlNKZUpVNTl1bTJ4?=
 =?utf-8?B?YmlPcFlXbyttUWEwbEs1cWhpejVtc1doQy9LNXlUdkkzZmVrNVg4bU0vcURJ?=
 =?utf-8?B?NU1rV2NSNlVFYjEwT2J2RmcxTUVUNm4wSEZYZmZtQ0xjU1EyTlNTZGJWemc1?=
 =?utf-8?B?aVVpVlQ4a2JvK1IxTEZRYXlmY1VWckFrNURsVFRCOEcrNFRVTGt5cGV3b29q?=
 =?utf-8?B?eDhtVElLdFRZMllDTStyQm4rWFMzYnpoamsyV0pxdjBDV2swSFpFN0VNQ1ZQ?=
 =?utf-8?B?RmRnK3UrNktTZERZOUJmRmhpNHE2TVBIOXdXYjFWeUpOQUpKV2FHSC9BcSt4?=
 =?utf-8?B?bVJxcU1UNjNHbkhPMWlFVm55amFCWDdManVJWmNlZGxKSFA5Y3pzbWE5Ujcr?=
 =?utf-8?B?WU1VTXBpMWkyZkVJWFpwaENQSG94RitmZkVLZTRqa2tQUEJxdzl3YjNVeGl6?=
 =?utf-8?B?ZVpqUWlRZUJoaWFCRVoxWWZzZ0xMUWRvMEZzZHVqYVZTMm5VWFFHSzQyNVU3?=
 =?utf-8?B?M2UvMTVRMFB6MlhSSjFuREFjd0lWT1BMNnZIWCtIVnh5WnBLVVBVWFk5azJE?=
 =?utf-8?B?Q2FBeG5wTHY2WExzNisxVjA3eFBBbXczdGVJRTl1M3ZmUEZOemx0UGVMOFhC?=
 =?utf-8?B?SytrUHQyL2FVRjFENzN6WitmSG5IRnFXQ2gvd3NoSk5RSTJMWDlzNEl0ajNl?=
 =?utf-8?B?KzVEcVZiOWFQZktORXU3WGlHcDluazJvSGMvZE9GeUloYXJVYTVBMGxNNi85?=
 =?utf-8?B?dm1aODFJc0w2YVczWHk3ZU81RHVDVFFmV2taVEc3SUZPMk5OelI0K01uT2hJ?=
 =?utf-8?B?VXNjcWc4cGlzdXlqNzd3M2dabHRLeUV5MG40cHYvOVpSSkdFVTFlalJ0RVgv?=
 =?utf-8?B?Slh4Sm9jK0pTOXV5YXl0Yjdsc0QyOTk1WXhBUTAzOFdoMGVMc09PQ1QwaHg3?=
 =?utf-8?B?YktJWittZDMxeTQ0TlZ0SXN2Mm55STRTNzIyYmNsSDYrNE1tUTVtYTBtSUpn?=
 =?utf-8?B?RG11bm5qSTRSVitGekgraCtmbStiRG00V2NjTjhTdWloYTlyRHFNdjFsNWRs?=
 =?utf-8?B?aWsweGhhTVM2NjhabUxkZ3hGbjF2VHRBQ05wMWE3cXFFdFo5UXJvdVVGYTNZ?=
 =?utf-8?B?WkYvcUl0QVp3bkMzRXVKbGdFUGxaTUw1aVl3L2liNkN4WnZ3M1NIYytGdnFh?=
 =?utf-8?B?UXJxWnVjSFRGSUhycVZicVZyL3ZoNVV4dWxDRzRDYVpoZ1JzVDdEbENWVDFH?=
 =?utf-8?B?M0c3OWVXRW5ncVlpcXFVMFl3MTdwQnVpcTIwbnhoc0ZZcnJqTm5uZGovU0U5?=
 =?utf-8?B?dFNsdkRJYmtSWjVybVFrbzI2VWdqTFZKcm8wazVUNUFwWXRBTm5Ydm1UTjV4?=
 =?utf-8?B?dGxxd3dzM3gxYzdCYUp0dXo1TGxROC9tYkJvMW15NWROWU40QTh3TUREQkx5?=
 =?utf-8?B?Wm90MnFsaldSblFsajR3SXEybHhaN0NoWFhlSjliZS80MkhBOGdkeE9LNEVJ?=
 =?utf-8?B?M3B0WUY5aElkU0Z5WDFxa3BNNFpMUGE3cG8rWmF4MDN3Y0VpYjFibitMK3Ns?=
 =?utf-8?B?YUs5MnA2ODdoZmdyZVBCYnNSZjB6dFVMUkh4cURmQS9Pcm5hbEpKcTBYdTcx?=
 =?utf-8?B?YTRYNS9td2pYZGJiTHJxeGk0TGFXWGQxcjVvV1U5QlVUNXQ2R2FNMHFWRGZl?=
 =?utf-8?B?elJ6eWZPRFI2cUFUQ1M3MzBOUkxsVGd3SzYzSUtpNU4xWWdNTlRxc0pPZVJO?=
 =?utf-8?Q?sb1K8hTTez+ZvodifC83w8lXH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8534a70-9ee5-494b-7a15-08de3e2362ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 10:51:23.2417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WuzYf3ss/PY5ZEe4vPUFWGhVhK5oWqL3S12wEYIn1nHkyywcqQcNLaot1TR9VG2EvLSLw9MhJowyV0nqEi4D1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766055088; x=1797591088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eJH13BefmLGbF7Vi9wmCEsqztkyybDhIVwUU8xzijZ4=;
 b=D+K4Kxh18h37ygxlHLjGgCRfEBdhv8BMdNPY7jkWDpWIdY9o5f9YBbsY
 c5/I0BD+uP7kpBLEQdPdv0n1FbmRvCop++y87RSl7tb3G0Ij7K8cTJ9Lm
 n056iqDLCbk7ty4gxpm6Hewdpf3lKjEqGm8ySCI4NvF9U/958e4cB1VcK
 lrTuxxDM/N/ERTS76xN9jjNxBTtKrxPrjk83UUVd/Rs6RzIbcjk7RvwUF
 H/L7YlNexphLFxm65ZmGwHMnMDNr3BqktBZhzFE65WKAiskb+iLp4NaGD
 DWJX9UXF4L3EqtebKoYbMmaQ2VBkLd9q3TBvNgV6qMyqlYc8bXpTxbtFa
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D+K4Kxh1
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMjEgTm92ZW1iZXIgMjAyNSAwMTo1MQ0KPiBUbzogTG9rdGlvbm92LCBBbGVr
c2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRl
ciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+
OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBMb2t0aW9ub3Ys
IEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NCA1LzZdIGljZTogc2hvcnRlbiByaW5n
IHN0YXQgbmFtZXMgYW5kIGFkZCBhY2Nlc3NvcnMNCj4NCj4gVGhlIGljZSBUeC9SeCBob3RwYXRo
IGhhcyBhIGZldyBzdGF0aXN0aWNzIGNvdW50ZXJzIGZvciB0cmFja2luZyB1bmV4cGVjdGVkIGV2
ZW50cy4gVGhlc2UgdmFsdWVzIGFyZSBzdG9yZWQgYXMgdTY0IGJ1dCBhcmUgbm90IGFjY3VtdWxh
dGVkIHVzaW5nIHRoZSB1NjRfc3RhdHMgQVBJLiBUaGlzIGNvdWxkIHJlc3VsdCBpbiBsb2FkL3Rl
YXIgc3RvcmVzIG9uIHNvbWUgYXJjaGl0ZWN0dXJlcy4NCj4gRXZlbiBzb21lIDY0LWJpdCBhcmNo
aXRlY3R1cmVzIGNvdWxkIGhhdmUgaXNzdWVzIHNpbmNlIHRoZSBmaWVsZHMgYXJlIG5vdCByZWFk
IG9yIHdyaXR0ZW4gdXNpbmcgQUNDRVNTX09OQ0Ugb3IgUkVBRF9PTkNFLg0KPg0KPiBBIGZvbGxv
d2luZyBjaGFuZ2UgaXMgZ29pbmcgdG8gcmVmYWN0b3IgdGhlIHN0YXRzIGFjY3VtdWxhdG9yIGNv
ZGUgdG8gdXNlIHRoZSB1NjRfc3RhdHMgQVBJIGZvciBhbGwgb2YgdGhlc2Ugc3RhdHMsIGFuZCB0
byB1c2UgdTY0X3N0YXRzX3JlYWQgYW5kIHU2NF9zdGF0c19pbmMgcHJvcGVybHkgdG8gcHJldmVu
dCBsb2FkL3N0b3JlIHRlYXJzIG9uIGFsbCBhcmNoaXRlY3R1cmVzLg0KPg0KPiBVc2luZyB1NjRf
c3RhdHNfaW5jIGFuZCB0aGUgc3luY3AgcG9pbnRlciBpcyBzbGlnaHRseSB2ZXJib3NlIGFuZCB3
b3VsZCBiZSBkdXBsaWNhdGVkIGluIGEgbnVtYmVyIG9mIHBsYWNlcyBpbiB0aGUgVHggYW5kIFJ4
IGhvdCBwYXRoLiBBZGQgYWNjZXNzb3IgbWFjcm9zIGZvciB0aGUgY2FzZXMgd2hlcmUgb25seSBh
IHNpbmdsZSBzdGF0IHZhbHVlIGlzIHRvdWNoZWQgYXQgb25jZS4gVG8ga2VlcCBsaW5lcyBzaG9y
dCwgYWxzbyBzaG9ydGVuIHRoZSBzdGF0cyBuYW1lcyBhbmQgY29udmVydCBpY2VfdHhxX3N0YXRz
IGFuZCBpY2VfcnhxX3N0YXRzIHRvIHN0cnVjdF9ncm91cC4NCj4NCj4gVGhpcyB3aWxsIGVhc2Ug
dGhlIHRyYW5zaXRpb24gdG8gcHJvcGVybHkgdXNpbmcgdGhlIHU2NF9zdGF0cyBBUEkgaW4gdGhl
IGZvbGxvd2luZyBjaGFuZ2UuDQo+DQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92
IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2Ig
S2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaCAgICAgfCA1NSArKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4X2xpYi5o
IHwgIDIgKy0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgICAg
IHwgMTYgKysrKy0tLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4
LmMgICAgIHwgMTYgKysrKy0tLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eHJ4X2xpYi5jIHwgIDIgKy0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV94c2suYyAgICAgIHwgIDQgKy0NCj4gNiBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCsp
LCAzNSBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFA
aW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==

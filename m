Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE649B456D3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 13:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 319C340D11;
	Fri,  5 Sep 2025 11:49:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGU-tOg4DJ76; Fri,  5 Sep 2025 11:49:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E894140D12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757072951;
	bh=RRlFlvCUZHWBrFceVxbdJpoRgsC5XlwbevmRo3wnvSc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gQ7O942cClzf/doO+h6fTYoRY22jlLUnFJBp41Q1WlHQl0WFJunN+WHoQ8lB3JNqe
	 4Z2S7nYgykF8pXV9g2Fz3KlYjPvbfPsLJEUvI6FB+zTm8pJbEiR+EOjv3QbwgKOxQa
	 olLQrnc5G1IkcoO5G/jJYhr0z5yKyxzgnEGc4fGhFMQ3jJVwO2ZQD9IGX+9mMEGok3
	 1UNLc8VVClRpl6l3RzhMLnroTdNZZejw1gAgoSIjlhG2+lN+xoEXpj0BoccsobNeve
	 RoBkkglADJVuFXd45JAJOVm1se40/bptV86IfGRx2g2JDn7jMtvxeiYJp7ajrWdvl7
	 9GynSYqfsq+QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E894140D12;
	Fri,  5 Sep 2025 11:49:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A512F1E04
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B1E740D11
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:49:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j5J9fu7MdeQI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 11:49:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96D7340C48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96D7340C48
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96D7340C48
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:49:08 +0000 (UTC)
X-CSE-ConnectionGUID: ngJVHKyDROyyfN8w5cY+SQ==
X-CSE-MsgGUID: xHpRDV/JRKOjwhJpAqiQfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59489681"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59489681"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 04:49:08 -0700
X-CSE-ConnectionGUID: VJoVZggsSVy5l+2FN5POwg==
X-CSE-MsgGUID: AludtnJDT0GdVoj1ZJavig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="176244731"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 04:49:08 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 04:49:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 04:49:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 04:49:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dfN1aSLIIftR84pX1jvs7XM/MP+ZgVFeWPswwTsGHbt26Xav42GXYoKHPp6xjhRcJv6w2LHRLr1Ovz1R5lleqYFjkzC/MBYKwgmd/HazHexHRvH0IAJtnE50qSEWbDuQi12lBGhmpndyEgNG2jLFZPAr95Whemg0LjhA5IVlHdZpde+BQ+Ht6T0GhA+vl4nqoymoC9yDSQOAlrlpRVhbI/LAeM+G3XrayyN9hzGIVdooDgxmhFvm5TRFYa1q6GkubQGK44fAQyjRReogTgiQm8Q3fvs/KtKmKivNPTAOiAGF8iOzo1hztXcvvOD0Pji/vWVauKTxtA3o/pOeA0OyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RRlFlvCUZHWBrFceVxbdJpoRgsC5XlwbevmRo3wnvSc=;
 b=HyIFMu5u5rrpuFNqZxoCO3SfB3ghDQviXx7Bcg59JMMgZw6Zpw9YgHSnvDse/yE/Vao3EOJpov0gXjDsMQyBWx4fWwQnKOJa1VQD79Ui3hdk0OH4Okbat4R0wfSxoZKbT0alGzFGIizWsHNjKqNPDnOurqGdheRVc6Ems6i8z21cV530wTcz0iGTWJ2zzvcr56F3bIViU3k6eoT7xH3g3FI0fVbtRoiJzOVMkczj4tHYHrSvYNfs26VcR4GYEy+kUWhHfVbCQz3J2xt9bjoBp+32zN1CB1beaKgjO2oXuk32bxEPOEQRA+0ZesdvMAWOgwqfiya7Ef+d//+2EZqB4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB8111.namprd11.prod.outlook.com (2603:10b6:806:2e9::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Fri, 5 Sep
 2025 11:49:04 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Fri, 5 Sep 2025
 11:49:04 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
Thread-Index: AQHcF5gjp4TwrSG/ckyJ30oM6t4clLSEI4YA
Date: Fri, 5 Sep 2025 11:49:04 +0000
Message-ID: <IA1PR11MB62418D6573EBE73C3762C9B18B03A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
In-Reply-To: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB8111:EE_
x-ms-office365-filtering-correlation-id: 1d079d03-fd88-461e-d945-08ddec72368b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eUZaek53d0FyS1JsbVdaZG1HbnVsZWVkZHNlTXNhTTU0cmxFN0pYNVZnQkN6?=
 =?utf-8?B?WldpY2MwQzNZNGc1TjM5VS9XL2Z3ZDhmVXJrcTBtT2RUQXh4bzhOMDJSbXBE?=
 =?utf-8?B?YW5BQTJOcXBkcEZkV3JZbjViM2xLc3U5YXZjYlVFQ2pPVWh4VU5YanR0KzFX?=
 =?utf-8?B?WmlhSDBrRnJwMCtnRkRaWVRmU2Mzb21YWGVqTWdSM2ZRWENSdWI0amtUY01D?=
 =?utf-8?B?eStOZHRXNW1qK2t5RW9NLzduL3pWMWJvdTc5ZzEzTE96STMzamhVVGRUV2ZX?=
 =?utf-8?B?WjlPTy9CbGRYMnV0TWpXdjZ6WFpMbE5ZTzRYTTNHbmM1K0hyYWp5WG5Wb1Bt?=
 =?utf-8?B?SUYxY25YbE1RcG4wS2JIdnllT3llQ21HQW0yMzNuL0JGSEhlbmoyczY0RWNB?=
 =?utf-8?B?Yy9DRWFkYVJLckZ0aDJra1AraWY5Tm5CV0pueERTa1VGV1ExZmQ1V05xQ2FT?=
 =?utf-8?B?MXY0OWMrSy9RSE9TSVhGOVhtak5iZjk3Um81bC8va0d4VU9hcFljbUloMTNh?=
 =?utf-8?B?UGp0cGZkU0NPa1BtdGkrQnhPbUdsVGQ4RVVZbTN2cmxFdjUvNmd3dGZBRU5a?=
 =?utf-8?B?K2txbE11andVTm9iTUxRYkRkajBpTTc1bnRNdHJYWlo5QXJtZUlLTWRSL2tI?=
 =?utf-8?B?N3dUc1dRdmFTcnFTKzg3N3VVVjdWOEk5djlDNHNMWDJ0UnNwbGVsSWpPcS9x?=
 =?utf-8?B?M3BNMnFDQjJ5RS9Ib0NQeU1sZ252RGpwTDhRNnIvZy9JS3o1QzJYWkI4K0FI?=
 =?utf-8?B?eHQ4MW1QZWFGbHE0Z0YxTW5EVEFySm41Rk00TWQ2YnBlQ0FubGpnSFpIT01o?=
 =?utf-8?B?RUNVd3VFTkZSVGsveGVZN2lBbnZHWnB5VDI1SW53UFQ1TkQyalhEQjJscTJ2?=
 =?utf-8?B?LzZQRThiT2k1dGtJQWsvSzM0bVdSZ01YaWJDTTUwcXNtZFZXVGc1QmNPMFYw?=
 =?utf-8?B?eHQ3ZlBIOWRnU0hlRDh5Y1RrM3V2cjVrS1kzeHJrZjZmNjZmUGJTTW5Kc0xW?=
 =?utf-8?B?V0V2dXlxbHovSDYydHd5aG95WTRiOEtCZEpiK2lBcWRaRTY2VldiNWhIWS8w?=
 =?utf-8?B?bTJhdGNZSzFwMTFpbHB3SDMyK2gzUU5oMEJNOHlnNWh1NWdwdThzOUJaWCt6?=
 =?utf-8?B?N0ZhNzRTb3RuQklsN2FPcXkvRXNvN3VleDRiQ2tHK0xRenp6bU10endtUVdI?=
 =?utf-8?B?b3lkaTdIUDNXR014TXljL2ZYaE5qK1ZObUYxN0pJOEJNQkFNWlRrdFhOanBK?=
 =?utf-8?B?N2pwKzl1enJMM2VnTllISzVQUWpCSldpZFoyNGc5L28xZG4zbEVrMys5TDRN?=
 =?utf-8?B?S1FwSlBRaklUaFdrbmg0RndwYzJLVmhMZ3d4aUxKUjA2YjJMaVFQUGN0OGVz?=
 =?utf-8?B?QUNrS21nallkQk5GUVhzNWNmbGVWZVA5MnVQU21XTjFTMkR2NldFd0poSnkv?=
 =?utf-8?B?Nys0VkltaCtTUDNaaTE5L0dUdGRTWnBHNDdHWHJUZ29rdkJUc1drNWdXQkRU?=
 =?utf-8?B?aVJ4RHRVV1NMdVJOMmgyUVZCbDd3Z1UxeWNVTWtUMWtxUzAvb3lIT0dKdE14?=
 =?utf-8?B?cEZ2S2Y2WElyZjlyaTB0VGxvUVRFYW1sOHh5dURpTFFjS00yZk9NUHZBKzhK?=
 =?utf-8?B?WEJRdHJVWTZrSDlTUktvS2grbGZ1ck4xZDQ0cFRQUStGM0JaRVcxcU5COUdN?=
 =?utf-8?B?TFp5dERPY3IyZmhKZFNoTmpZSlF6V1JtSjl0TWZBYjVoeFRqUndaWnlYb3Jq?=
 =?utf-8?B?UDBwSWRrWFJnNlp1a3A5TmNPWExUWDdPK0x5Nk82M1RzanBBaS94QWp5dC9V?=
 =?utf-8?B?Q3I1NVBpSXE5UkJmRXM5a2VuM3lsMnFHS3EycGZrME8rR3JBd0x2aXRqUjRa?=
 =?utf-8?B?WjhxQW15TzRsQndkdGxoalQ5aG1LcUtjc0w3bU1KbCtmMnFVMGtPMm5EK0VZ?=
 =?utf-8?B?T055SlNuRUN0MDMxZjM3M0xpbG50VVNEdXlra3ozaysvaCtWeDdEQWdZWVBm?=
 =?utf-8?Q?ueVfxdWz5x2li5AqwVepWLNjhY11CM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDVKU2x6YXlwZVVXcFdQbERwT0hlbU1kZjYyT3ltUnQ3YmdjdXdhQklzU0Fl?=
 =?utf-8?B?clkwcFUvSzBXb1BUaVZiNWpRU0ZwV0xOWVYzdVVRazdaWks5VW13YzhLUUVN?=
 =?utf-8?B?a3d1WkkxckdlV2dyN09aRDdyVHFPSFBVRUNQTlJoTmhRd3ErNDRFSGxKRTEz?=
 =?utf-8?B?S1BzL1F1MTA1bUVYQVJ3c2VBRFlKTlNHTnRNdFFQelR6eXVFNDdEVkxad2Fw?=
 =?utf-8?B?YktCL21VaVN6RTBXUnlqVUpQUFBqQXM4ZndXY2VXLzhtcTE1dTVBNHYwMURT?=
 =?utf-8?B?d2c2dDVRQnczdXcyaEs5T2kzYW5UZmp3UlNQNlVrZ0FqQkxKb3Z5Sk1UV2sy?=
 =?utf-8?B?RDhvbndLaDVyVld6dGEvRG5Qbk9xVk1tYlB4TUFNbG53N0lBNFROTVhyWGVm?=
 =?utf-8?B?NWJHOVlhelAwTWxQZkxlK2hDcml2dXNhbURKeUxNcGZYM1dhWXdyc3psQU16?=
 =?utf-8?B?TU9mYURabHovUTAxVXZnSWduK09QUHJKVGh4MTI0NFdINSt2eUpaOFk3dmlP?=
 =?utf-8?B?WEtPbVcycExwdUt3bjZqL1lhL2NKbk41MDlYYjllVm5JbmlNKzZRcFJIMFN3?=
 =?utf-8?B?a0R2NjZFWFdzSG10VW1xeEtua0hnTXFwelNrVUFuQW9QRUJkaTRwL1REMXE2?=
 =?utf-8?B?QWczSXJtNWE2Q1FjTnFSMGZwOVBJS3RsNEdQbTVMVWIvR0dQNUVoWnlLYmhp?=
 =?utf-8?B?OUY4eG81MWQyanptU21SbjhhcnpCMkg4MkFLNVIyU0NlU3k1clpYM2ZzQVJZ?=
 =?utf-8?B?NVB6RGM4cDd4YURNTC96WlNhMURQai9yd0Y0TFkrWTE0ZkRHTXFPVUQ2RWs4?=
 =?utf-8?B?RzNyYmo2UnB6M08wZVFab1N6YlZqQUZJREw5TzdyOU5ROWJqNlJIVk01c0hX?=
 =?utf-8?B?Uk4xNnJGeUR3cWZJUHZOVEFHV1J5UHpyMENselRhRlovZEw4WWN3S2tjc0dy?=
 =?utf-8?B?dWV6eUt5ZGVCdTNwb3Flc1oyY09mVFpraDJHeGM3SXh6ODNIRWhZdlMrbWZC?=
 =?utf-8?B?Qmxlb3MySjZReVd6WWNkR2hmTzNxYVZMNHNXOVhzUlJRNUVVUzNzLzVHYjJC?=
 =?utf-8?B?YTBWU08zVWxxOEFyblJteklYcDJjc0QwWGxKdlZvS2ZSUmJKQ21sUGUyZjd4?=
 =?utf-8?B?NjREenZPZ2NVQUVCRnBkWVNVS1hXdUZ0VGg5RmNRL2pBd25CZTBqR0RabzBJ?=
 =?utf-8?B?WDFkZTBMQTM3RFlJVkYyMENTSDZRUGdlYlJGUGtjZm1scXJGcmNqSTlDa01X?=
 =?utf-8?B?RUhUcjQ1MFRjc3JDdVBQMUVDcUhMRmRVQStzM3EzdjFtWm4ycWNLTEpwdGdK?=
 =?utf-8?B?blYvM2pJQk02MHhOTWIzMEVwVmQ2U1NmUCtsRGdZdHlrVDdGaEY3RzNibXB3?=
 =?utf-8?B?Y2RObHR0eUxZY2hEVHhnS3RUcWIwMHR1cVBoR3d3ZW9oeGRYd1pncVQ4Sngr?=
 =?utf-8?B?dzBXd3hkeWJDeGIwc1lGbHMyR0pmb0swdm9IZ3ZMUnpkclVMS3g3azYycWZL?=
 =?utf-8?B?emdXbGFqZjYvaHBTbmpPWkhSTjIzdnlFdWhVZndZOU82NlZCaTZETGs3WDY0?=
 =?utf-8?B?dkR4QVV5U0x0SmZJWDFCN0doU2RmVnAySk5EUjF3eFhPYnRwTG40NkFyenM2?=
 =?utf-8?B?NHNyL2lyME50eU8wWDJsS1NtOEZlRG5aOENlb2k2TVVpV2RQZmF4MDMvWWNh?=
 =?utf-8?B?eDVyOGZ0ZlB2c3R6VWdERk9Cc2xrNkxscWdTc3RYbDVKWFBKR1g1THhCVFVV?=
 =?utf-8?B?THdqSXp0Y0NBTTMzd1Y4RCtnZENmazA1ODkvb3o0cEVCdDR1R0JYSml3WVg5?=
 =?utf-8?B?dFcwRjlLWVhqdGNTaHpseXpzcXI3T1FveVlGTURtMmFFcVRjVk9EUnVoY3VY?=
 =?utf-8?B?SWlZNDkyRXNFZG1zWnBSSGc3eWJ5YUdxNE1Oa1YyTVdnSS9hRkJLUjdTR1Bi?=
 =?utf-8?B?SklFcWxqNlFHNlNqMzIxbklURXRLbThMYktCaGxTOVlPVlQ3VHo3M2lYN014?=
 =?utf-8?B?dFJmbDd4UTF0cDNBYkR0MU94NGRoT0JoN2dwRWlGNDVua0hSSmZqalYzRito?=
 =?utf-8?B?R2xGR3NuTUtsYnBtREdsNWFQWE45by9wdXBaUzQ0aitxckRWVUt3cklCNHRO?=
 =?utf-8?Q?hYLwZx3KzAHsVGOi8NaeiKcn4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d079d03-fd88-461e-d945-08ddec72368b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 11:49:04.1059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZpazCIvv6zaerF47+Weh4uJneAnq/3mjnxLsqnYZWQSNeqpXsxaDKTqHj1qbaYl9tBXmNXuHZDpcsI3Vz1CWXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8111
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757072948; x=1788608948;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RRlFlvCUZHWBrFceVxbdJpoRgsC5XlwbevmRo3wnvSc=;
 b=CseCu2CRwT/el5Ktj2e44c1NNJDBm60wLDVv1jNVZY9w0bvOq1vX9k2b
 kfdlUgfHBcN7+75TT/nvMW3traME++abfUBJFsE3PsibEWJoslEBomudj
 k3hX/K/wf27jTChF4kaRgwBe9/jS/iJWYULZ5g8AJkNsptu0sK73WdLMr
 YNhcpKn4SIhPDKudOGknemLh9bC0at66bL0SsB9ExCO0q2glTl2vgO3Sy
 cK9cPFqDsKb1o4BDqxx93SFNvjrPWwjPm2eYDQIRbQMJ1MAt0cvjPHOI6
 7om8iFezD9pNJmK8lYSd1o3HsMEicxZYATi3yM+Hq0YaNfppMgkyGGG6X
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CseCu2CR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
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
ZXINCj4gU2VudDogMjggQXVndXN0IDIwMjUgMDI6NDgNCj4gVG86IEludGVsIFdpcmVkIExBTiA8
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IENjOiBL
ZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjNdIGk0MGU6IGZpeCBKdW1ibyBGcmFtZSBz
dXBwb3J0IGFmdGVyIGlQWEUgYm9vdA0KPg0KPiBUaGUgaTQwZSBoYXJkd2FyZSBoYXMgbXVsdGlw
bGUgaGFyZHdhcmUgc2V0dGluZ3Mgd2hpY2ggZGVmaW5lIHRoZSBNYXhpbXVtIEZyYW1lIFNpemUg
KE1GUykgb2YgdGhlIHBoeXNpY2FsIHBvcnQuIFRoZSBmaXJtd2FyZSBoYXMgYW4gQWRtaW5RIGNv
bW1hbmQNCigweDA2MDMpIHRvIGNvbmZpZ3VyZSB0aGUgTUZTLCBidXQgdGhlIGk0MGUgTGludXgg
ZHJpdmVyIG5ldmVyIGlzc3VlcyB0aGlzIGNvbW1hbmQuDQo+DQo+IEluIG1vc3QgY2FzZXMgdGhp
cyBpcyBubyBwcm9ibGVtLCBhcyB0aGUgTlZNIGRlZmF1bHQgdmFsdWUgaGFzIHRoZSBkZXZpY2Ug
Y29uZmlndXJlZCBmb3IgaXRzIG1heGltdW0gdmFsdWUgb2YgOTcyOC4gVW5mb3J0dW5hdGVseSwg
cmVjZW50IHZlcnNpb25zIG9mIHRoZSBpUFhFIGludGVseGwgZHJpdmVyIG5vdyBpc3N1ZSB0aGUg
MHgwNjAzIFNldCBNYWMgQ29uZmlnIGNvbW1hbmQsIG1vZGlmeWluZyB0aGUgTUZTIGFuZCByZWR1
Y2luZyBpdCBmcm9tIGl0cyBkZWZhdWx0IHZhbHVlIG9mIDk3MjguDQo+DQo+IFRoaXMgb2NjdXJy
ZWQgYXMgcGFydCBvZiBpUFhFIGNvbW1pdCA2ODcxYTdkZTcwNWIgKCJbaW50ZWx4bF0gVXNlIGFk
bWluIHF1ZXVlIHRvIHNldCBwb3J0IE1BQyBhZGRyZXNzIGFuZCBtYXhpbXVtIGZyYW1lIHNpemUi
KSwgYSBwcmVyZXF1aXNpdGUgY2hhbmdlIGZvciBzdXBwb3J0aW5nIHRoZSBFODAwIHNlcmllcyBo
YXJkd2FyZSBpbiBpUFhFLiBCb3RoIHRoZSBFNzAwIGFuZA0KPiBFODAwIGZpcm13YXJlIHN1cHBv
cnQgdGhlIEFkbWluUSBjb21tYW5kLCBhbmQgdGhlIGlQWEUgY29kZSBzaGFyZXMgbXVjaCBvZiB0
aGUgbG9naWMgYmV0d2VlbiB0aGUgdHdvIGRldmljZSBkcml2ZXJzLg0KPg0KPiBUaGUgaWNlIEU4
MDAgTGludXggZHJpdmVyIGFscmVhZHkgaXNzdWVzIHRoZSAweDA2MDMgU2V0IE1hYyBDb25maWcg
Y29tbWFuZCBlYXJseSBkdXJpbmcgcHJvYmUsIGFuZCBpcyB0aHVzIHVuYWZmZWN0ZWQgYnkgdGhl
IGlQWEUgY2hhbmdlLg0KPg0KPiBTaW5jZSBjb21taXQgM2EyYzZjZWQ5MGUxICgiaTQwZTogQWRk
IGEgY2hlY2sgdG8gc2VlIGlmIE1GUyBpcyBzZXQiKSwgdGhlIGk0MGUgZHJpdmVyIGRvZXMgY2hl
Y2sgdGhlIEk0MEVfUFJUR0xfU0FIIHJlZ2lzdGVyLCBidXQgaXQgb25seSBsb2dzIGEgd2Fybmlu
ZyBtZXNzYWdlIGlmIGl0cyB2YWx1ZSBpcyBiZWxvdyB0aGUgOTcyOCBkZWZhdWx0LiBUaGlzIHJl
Z2lzdGVyIGFsc28gb25seSBjb3ZlcnMgcmVjZWl2ZWQgcGFja2V0cyBhbmQgbm90IHRyYW5zbWl0
dGVkIHBhY2tldHMuIEEgd2FybmluZyBjYW4gaW5mb3JtIHN5c3RlbSBhZG1pbmlzdHJhdG9ycywg
YnV0IGRvZXMgbm90IGNvcnJlY3QgdGhlIGlzc3VlLiBObyBpbnRlcmFjdGlvbnMgZnJvbSB1c2Vy
c3BhY2UgY2F1c2UgdGhlIGRyaXZlciB0byB3cml0ZSB0byBQUlRHTF9TQUggb3IgaXNzdWUgdGhl
IDB4MDYwMyBBZG1pblEgY29tbWFuZC4gT25seSBhIEdMT0JSIHJlc2V0IHdpbGwgcmVzdG9yZSB0
aGUgdmFsdWUgdG8gaXRzIGRlZmF1bHQgdmFsdWUuIFRoZXJlIGlzIG5vIG9idmlvdXMgbWV0aG9k
IHRvIHRyaWdnZXIgYSBHTE9CUiByZXNldCBmcm9tIHVzZXIgc3BhY2UuDQo+DQo+IFRvIGZpeCB0
aGlzLCBpbnRyb2R1Y2UgdGhlIGk0MGVfYXFfc2V0X21hY19jb25maWcoKSBmdW5jdGlvbiwgc2lt
aWxhciB0byB0aGUgb25lIGZyb20gdGhlIGljZSBkcml2ZXIuIENhbGwgdGhpcyBkdXJpbmcgZWFy
bHkgcHJvYmUgdG8gZW5zdXJlIHRoYXQgdGhlIGRldmljZSBjb25maWd1cmF0aW9uIG1hdGNoZXMg
ZHJpdmVyIGV4cGVjdGF0aW9uLiBVbmxpa2UgRTgwMCwgdGhlIEU3MDAgZmlybXdhcmUgYWxzbyBo
YXMgYSBiaXQgdG8gY29udHJvbCB3aGV0aGVyIHRoZSBNQUMgc2hvdWxkIGFwcGVuZCBDUkMgZGF0
YS4NCj4gSXQgaXMgb24gYnkgZGVmYXVsdCwgYnV0IHNldHRpbmcgYSAwIHRvIHRoaXMgYml0IHdv
dWxkIGRpc2FibGUgQ1JDLiBUaGUgaTQwZSBpbXBsZW1lbnRhdGlvbiBtdXN0IHNldCB0aGlzIGJp
dCB0byBlbnN1cmUgQ1JDIHdpbGwgYmUgYXBwZW5kZWQgYnkgdGhlIE1BQy4NCj4NCj4gSW4gYWRk
aXRpb24gdG8gdGhlIEFRIGNvbW1hbmQsIGluc3RlYWQgb2YganVzdCBjaGVja2luZyB0aGUgSTQw
RV9QUlRHTF9TQUggcmVnaXN0ZXIsIHVwZGF0ZSBpdHMgdmFsdWUgdG8gdGhlIDk3MjggZGVmYXVs
dCBhbmQgd3JpdGUgaXQgYmFjay4gVGhpcyBlbnN1cmVzIHRoYXQgdGhlIGhhcmR3YXJlIGlzIGlu
IHRoZSBleHBlY3RlZCBzdGF0ZSwgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZSBpUFhFIChvciBh
bnkgb3RoZXIgZWFybHkgYm9vdCBkcml2ZXIpIGhhcyBtb2RpZmllZCB0aGlzIHN0YXRlLg0KPg0K
PiBUaGlzIGlzIGEgYmV0dGVyIHVzZXIgZXhwZXJpZW5jZSwgYXMgd2Ugbm93IGZpeCB0aGUgaXNz
dWVzIHdpdGggbGFyZ2VyIE1UVSBpbnN0ZWFkIG9mIG1lcmVseSB3YXJuaW5nLiBJdCBhbHNvIGFs
aWducyB3aXRoIHRoZSB3YXkgdGhlIGljZSBFODAwIHNlcmllcyBkcml2ZXIgd29ya3MuDQo+DQo+
IEEgZmluYWwgbm90ZTogVGhlIEZpeGVzIHRhZyBwcm92aWRlZCBoZXJlIGlzIG5vdCBzdHJpY3Rs
eSBhY2N1cmF0ZS4gVGhlIGlzc3VlIG9jY3VycyBhcyBhIHJlc3VsdCBvZiBhbiBleHRlcm5hbCBl
bnRpdHkgKHRoZSBpUFhFIGludGVseGwgZHJpdmVyKSwgYW5kIHRoaXMgaXMgbm90IGEgcmVncmVz
c2lvbiBzcGVjaWZpY2FsbHkgY2F1c2VkIGJ5IHRoZSBtZW50aW9uZWQgY2hhbmdlLg0KPiBIb3dl
dmVyLCBJIGJlbGlldmUgdGhlIG9yaWdpbmFsIGNoYW5nZSB0byBqdXN0IHdhcm4gYWJvdXQgUFJU
R0xfU0FIIGJlaW5nIHRvbyBsb3cgd2FzIGFuIGluc3VmZmljaWVudCBmaXguDQo+DQo+IEZpeGVz
OiAzYTJjNmNlZDkwZTEgKCJpNDBlOiBBZGQgYSBjaGVjayB0byBzZWUgaWYgTUZTIGlzIHNldCIp
DQo+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9pcHhlL2lweGUvY29tbWl0LzY4NzFhN2RlNzA1
YjZmNmE0MDQ2ZjBkMTlkYTliY2Q2ODljM2JjOGUNCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2Vs
bGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYzOg0K
PiAtIERvbid0IGRpc2FibGUgQ1JDLiBPdGhlcndpc2UsIFR4IHRyYWZmaWMgd2lsbCBub3QgYmUg
YWNjZXB0ZWQNCj4gIGFwcHJvcHJpYXRlbHkuDQo+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI1MDgxNS1qay1maXgtaTQwZS1pY2UtcHhlLTlrLW10dS12Mi0xLWNl
ODU3Y2RjNjQ4OEBpbnRlbC5jb20NCj4NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBSZXdyaXRlIGNv
bW1pdCBtZXNzYWdlIHdpdGggZmVlZGJhY2sgZnJvbSBQYXVsIE1lbnplbC4NCj4gLSBBZGQgbWlz
c2luZyBpbml0aWFsaXphdGlvbiBvZiBjbWQgdmlhIGxpYmllX2FxX3JhdygpLg0KPiAtIEZpeCB0
aGUgS2RvYyBjb21tZW50IGZvciBpNDBlX2FxX3NldF9tYWNfY29uZmlnKCkuDQo+IC0gTW92ZSBj
bGFyaWZpY2F0aW9uIG9mIHRoZSBGaXhlcyB0YWcgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLg0KPiAt
IExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA4MTQtamstZml4LWk0
MGUtaWNlLXB4ZS05ay1tdHUtdjEtMS1jMzkyNjI4N2ZiNzhAaW50ZWwuY29tDQo+IC0tLQ0KPiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2NtZC5oIHwgIDEgKyAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3Byb3RvdHlwZS5oICB8ICAyICsr
DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24uYyAgICAgfCAz
NCArKysrKysrKysrKysrKysrKysrKysrKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfbWFpbi5jICAgICAgIHwgMTcgKysrKysrKystLS0tDQo+IDQgZmlsZXMgY2hhbmdl
ZCwgNDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5p
dGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRl
bCkNCg==

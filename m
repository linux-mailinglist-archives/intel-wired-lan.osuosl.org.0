Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC87AA6205
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 19:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 639F8419B7;
	Thu,  1 May 2025 17:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ep-qAhx11A6B; Thu,  1 May 2025 17:05:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 759FD419BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746119120;
	bh=BrvBN8noqAS24dtsnhAnWra0L1ak6GCEwfFt1W1V6GQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V0yGcCFVhsN+AWUwlkm8B2SXqeHPf9R1Wba3ygX1m54bSP+xUOKaga5yQbPAM58A7
	 mhxeyQWhbxelArU0CKWdudfe3AFaUXHwLa7cw/k+wWiKKh3i7KaKUAlWBsB8XmdR9a
	 97fd5dAF8rx5OYwubq/W/R0b6Bq4PwQgh/LuiHBoasRfGrePEu0UkJTPKJHUPBLwlc
	 8rGDpMnFsYEuqU7a6L5LN11HlHFf1/pjjTNgdww4+JK5vqNgmA6eurrbNlYP3qlsO3
	 /8fKKitefTx8dPFJGu/zSCGKsDOveHx/GN9ZtNvl7QChCIIkLwKcNH6tSQpB8v+gzs
	 52IOR0TaK14vQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 759FD419BA;
	Thu,  1 May 2025 17:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36D8BE4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 17:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D006419B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 17:05:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xAENl65Hqn1q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 17:05:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F3BF416D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F3BF416D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F3BF416D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 17:05:18 +0000 (UTC)
X-CSE-ConnectionGUID: +VhFMYzPTZGfqLKXRjsarQ==
X-CSE-MsgGUID: 4YL7pFqBR92IVQCSvOyJ/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="59167077"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="59167077"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 10:05:18 -0700
X-CSE-ConnectionGUID: C9TX2aIlRniw5Fu0vtvgsA==
X-CSE-MsgGUID: Q1MZUHh5QNiG9YWWzUgwQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="165357308"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 10:05:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 10:05:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 10:05:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 10:05:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6FIuSUZtvE+d/PKk0cNHyyqH266UEVgk4ejeFWCCAAjiZCFjqLwzDmgPdgB8rdk8wGafriiirirUJetHDLE+fyogs67Sd82P0oOxazNlcsq9elvTewvu0WRDFb3Idtv502KheZJfUxtZoWG+oDZARJsvDeodJh+GgiAwCfuJzgsWYIK/MPIZEjuLPxDIOsUSLJws86THo02MALem6TmVUltuvWYNAD5qf4aNy2PLP3uTOaX9uImOe2s0G3lXQDoOu9+CFrmXP1abntI3VsHCwAjaeOTgAoGoGLIiYd53mf2yTYysKytgSrDSk8xBQoLaFpxbhVSsrfY67HcEGAcVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BrvBN8noqAS24dtsnhAnWra0L1ak6GCEwfFt1W1V6GQ=;
 b=MYeCJBmEzYssKO6A07Z9pYYMskK2lzDS2MaT+aBgbPxKZnxdrddrFXdXQ4f8gniiA2FFnqldS9Zp5RM6DAlrSH7F2Sev7Z+rvO0ehCpesjOnSenz9SgjpGVwcHhDlnriolb6i67ZICdCwYqbcvszA+nVJJb/W3MBUCOqZpu9JcUnSSajPzc+qiya7Y7qsB82Naigp8b7pP7IGZ0FyEUkwZctkDDkAi1EUR/e6jDGlWxG7hMQiiB12brYHQGVyxnC/Lo0aCLFL4xf0KHqbi2gjeEv++sUaWjQ6qICu7FMqQwfBCtF6MEZ5bDPVYd5m7Y6xzFjyhUvr9Dzugs2djs2KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7656.namprd11.prod.outlook.com (2603:10b6:806:320::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Thu, 1 May
 2025 17:05:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8699.019; Thu, 1 May 2025
 17:05:08 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, netdev
 <netdev@vger.kernel.org>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>
Thread-Topic: [PATCH v3 01/15] ice: move TSPLL functions to a separate file
Thread-Index: AQHbuiJ1zt2gpeQ2hUK+5oQHj9VkSLO+AZ2AgAAAUlA=
Date: Thu, 1 May 2025 17:05:08 +0000
Message-ID: <CO1PR11MB50894D00F52F81FC4B257007D6822@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
 <20250430-kk-tspll-improvements-alignment-v3-1-ab8472e86204@intel.com>
 <6539d296-7f3f-462c-bb30-895320bde855@intel.com>
In-Reply-To: <6539d296-7f3f-462c-bb30-895320bde855@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SA3PR11MB7656:EE_
x-ms-office365-filtering-correlation-id: 660cbb51-10c0-4250-f7c3-08dd88d253c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TGZtUjg1QlFScG91QWZZbkYzb2ZjV1VHelQvTUFaVUgxWGdoakdHNDEvZ3JL?=
 =?utf-8?B?L1hCd25ZYVhmSDEzcjl0cXBwM3hacGhYRG9QYnVMOGlGZXUzem4vQ2NTVFBw?=
 =?utf-8?B?d005emFZamFKQXVsRzJPaHQvMXRBUk1YK1VPTXBaTTVLNkFUSHpTMWlORXZo?=
 =?utf-8?B?YkJCMGQ2SGdiNldxV1IyNkF1eWFPTkRDVHkzVStORnRwWWJ0N1krOUI3VXhr?=
 =?utf-8?B?aUo2UDQwTkpheVJTMlhZUnhZdTZKaCtkQm4vdS9KVWljSlp4RmhkVTV6VDl6?=
 =?utf-8?B?YzFta2FvZkR4Z2dBY1RqclBjTmhOd1lPakdtVVJRTXVsdFpKekN6NkdURUJs?=
 =?utf-8?B?WU9uVWptdHdidkRxeEpOZHhKUHZGelNOYVo2OE9kekpjdW1jcTVGS05ETkI1?=
 =?utf-8?B?d0VjcytVN0VFLzNYaWFRTDdteUVBUTREcStDdXBDNUNKSUxuN014RXZQUDFr?=
 =?utf-8?B?NCs1bmFzbktHajdyeldlSk1VZWdxbVNjODVVcVlRVmZMbFlMV250cXJZYlRO?=
 =?utf-8?B?RDI4QXJQMGtPWCtvd0dQdGlnMGtDQlc1cVhkclRFMm4zWkdtSHJ0RDFDZFFi?=
 =?utf-8?B?enVZRjAvdW0yTGZIblNWNEY4emVTU2pHYXlOVUpvUjJGVldqaWxiMm9wYkpP?=
 =?utf-8?B?QUZUQWZNRmVUSHd4WnU3QlpuekxJOFVBMGRuV2JpTTV6V08xc3QxT3FCcEQx?=
 =?utf-8?B?S1J5MU16Lzcwa0JmTldvN2RzV1kwZUdCT1F1S3gxbmVTSkU2NlA0enFjTWcy?=
 =?utf-8?B?em9vTzR2NVdOdXJxblFtS1JmQWxRcU1jc3VvK29LcUs1WVJxQlBYUjBtbzAr?=
 =?utf-8?B?ZnRnWkNkTlRNdVc0UDYxdHRXSWFHMUlablpGSmJxQTd3TllzU3Y1R1ltTWVN?=
 =?utf-8?B?Wk92Z0tFN2YrOHJEbmp3anowK1BMMlRibVZVSzNQS1ZWWmM3eU5ZbzlUdEJB?=
 =?utf-8?B?aGJ0ZHdQdW05NEkzaGhTR3hmZ3hyYjBFdDlRL1FiT0FEckQ4eWluc3dheXVr?=
 =?utf-8?B?VzZDSTc4WTFYR0dYUlNqUVZPbkNybEpnc29xcWJrV1pqc3J4MVVlQ1RuVW5j?=
 =?utf-8?B?WS9MYld0ck85WnZsQmFBUGY4WXVJQzZBaFVKTk1ySVZNb3BHc0VSaUIxVTVS?=
 =?utf-8?B?bWhNKzRLODR2ajgwb0p0WDA0NDNWYVRPOTg5NzhaNTg3NXlJdThIQ3lVRWg3?=
 =?utf-8?B?WmFGSVp4MU9YSVNPZ0ZSaDJhVFI4UHFjM1I0bTFLYy91cnpDODROTDFZSUln?=
 =?utf-8?B?eFQwMndLTGJjR3VIWHJnWEMwMHdIYXAvcHIvQTZwT1llZ2ROcjY0UEJXazM2?=
 =?utf-8?B?N0g5cERyeEd4ak14TWVhdGFqQyt1MWdXMUg5SEJPYTU2SzNITFQyOHd6dUVZ?=
 =?utf-8?B?cjIxcE96OFlGU3dSK2MyZmkyWTJ3TFJ3a2FYaEIvdVp5U3d6elM1aWZhUUxj?=
 =?utf-8?B?MTQ5Y2ZheUhxUVQrZmtOL2ExWnhLbnNpWnJHMFNOazlibmNCTGdBK3BveWFD?=
 =?utf-8?B?SXpGbEZSVEhOeEcxMTc4cHpJQnA4V29NV01WbVlzVmFzbmNsVGVqdkFiSGJn?=
 =?utf-8?B?c3NlRi85Y0RwbFZ2bGV3Y2JraGc3TnBDeGxPTldsWlkwODNqR1lxTU5hRHJJ?=
 =?utf-8?B?R0FUZDdSNjhlSS9NRmRGL3J1aktqQlllZiszTXZXSWxzSEpBK1ZUb3lZS1Iv?=
 =?utf-8?B?d1NvZWJwV1J5dy9xanUwUUVkZzNTNDlONnhqZ3c1LzYxV2Z3TE9rdGhCbG9W?=
 =?utf-8?B?MHR2WmY2aFlKT1BsSGNVYm40R2E4QjlnYmdqUWZFbXlnRld0cnVFMXJkV2dw?=
 =?utf-8?B?cW40STY4Q1U2cFVPUzUrTlp4Z3d0MGZkWlBQQTdPNDd6VDg2T1p5dnE2Vjha?=
 =?utf-8?B?bnJ3T0hqeDJlQjI2K1JEWE53UXRkOEd1ZEwxMkxmNWJiOSs3Zzk3cVI5Z2Jx?=
 =?utf-8?B?NDYyTGJMeWhJNG9CM3UrRU5EMy9kZ2hyQStkVmh4LzI0ZGlzcEtyVjdXbHZO?=
 =?utf-8?B?YVVBVWUwNVlBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0FPVlZKSlpBWkZrL1ZsNmxSVHV5T3Nhcm1RaHlSU3A1WWxRSUZ3Wk5OelVR?=
 =?utf-8?B?RTRXMXhaTjMrYlI4L1UzWGcxTUdORTlYNXptMTY5bERjU0pLalYxeDRLbXU2?=
 =?utf-8?B?S05uUFE3VHJHL0dla0ltTVU5eXMybGtoMk41Zklrb21zd3U5WVZ1RU05ZDNL?=
 =?utf-8?B?SzM0Y0ZGak11UGVmOENHSFRhRWVWNS8wc1pmNWYrbXF6bVdaNVhwUnZCdlBP?=
 =?utf-8?B?YTE1QXFYdFUrUU5JS0N4azUyRXdwNWVFVDF6WDcxK1RoV3Q0SWNZRy9qK2J4?=
 =?utf-8?B?QTFBcmJwS2ZCT2ZSRzR5WmFsWkdEa0pyQ0xHNE01dW9hbG1NaVFZaXBFMkhP?=
 =?utf-8?B?N0ludENzZFdsWlhFa1JCR1lrRGpWYnpnemhVZHpKYm1PQjhUaXh1K05JVlQr?=
 =?utf-8?B?YVRKdG1xMHk3WjhRWXQ2VEpxeTd5Q0c1aS9lbzR0QjFBTkxSbXg2N09VUVdP?=
 =?utf-8?B?UGlQUU1CbEsvSlI1YXlHVzRSbHVvVWlYOTJIQVYrdmRaSDZLQlMxUnZpSUVB?=
 =?utf-8?B?aE95NmJjcFpONFk5WU42NWVuZ2xoQlpjazRtQVRNZXdqSHh2NUlMUi9oZ2RY?=
 =?utf-8?B?a3NiSUk2UXdmdlFHakQ5NWRITUNOYnNDL1VPWHRtQTJFMEFTZW1EMU8rRnhu?=
 =?utf-8?B?UU95dHFpT1lwL0VFOWhLaEJSM3ZHN0lJZms3a0s2Z1RpajIwUDQ4OHZvd2xE?=
 =?utf-8?B?ekVSZzRHVEFwTkZYM203dExpVU41QWh2SDZsZEppbnN1UlFxS0V1S1pOdDJv?=
 =?utf-8?B?T0VTNEVkcEtlWmwvUFJWMXczQXlLSGliekgrcXBMT3pTZXF1dE9NR1dEQk5Q?=
 =?utf-8?B?RHhEMit6SGw4RXZudWVCTk1lNDlMb3NOMHllYmc0YkxGOFpUOTFaTTFRUEJo?=
 =?utf-8?B?WFFrc3VXT1huU0lEOTd4aUJiS1Zob0V2b2J6YlNzKzlhWFV2RGlRVjhhSkVa?=
 =?utf-8?B?M3U2anMzQ3pWd3dGdy9LczBwVzlYa2lmM21Gc1NLdmtaMHRadzM5V2FOV1JM?=
 =?utf-8?B?aG8zN3orRktXMDluNTVSaFU5ZkFwb00wMVowckoyRnd2aEVBTHdyRFN0OXFY?=
 =?utf-8?B?UFF3blF6WXB4dTZYK1VPU0o2UU8vVzhKNUV0bjJScFA3T0RadVgxVjgxK0pO?=
 =?utf-8?B?STVvU2g4SitoTjBLMGowMzlGWnFWb05OSXlmZG13aUQ0ek5QelNqK21KaWRv?=
 =?utf-8?B?WUNabHJtc3RVelg3U20wakRuRXE3amZiMHMwM1R4bTRza0hrb3hnUVJSSXda?=
 =?utf-8?B?WW9STHJUdlBCZDF2N2dpdlRZcmU1akhtNlBtWUM0Yi9HZVcyVmhiR0psTFVv?=
 =?utf-8?B?Y3RFdnZVR1REbk9hUGlRdk44Y1RMcFNxR2o2VnhOaGhaby9jb1BYSjV5cWlp?=
 =?utf-8?B?cXp3cnUxa2FFNnZWL2tCclJJemp2S0dETStlZURyWklYamwzcUJQZEVuaEdW?=
 =?utf-8?B?Y0FqbWFkd3hlRjNYOWJYVTBHcWkxcEt4UDhRWFppUlJJbi9iWXZFWmswdFFa?=
 =?utf-8?B?VHVHQUxTVmF4WFVwaGlYQjlURHpUc0kvcERVY1NxWFExL3Y5RHU5NjgwdGFS?=
 =?utf-8?B?OTJlYkU3eDRidU5mdnp0MCtVNDJEMXA2WTlncEVuQ0hrSzhrZmtTT2UvWm5W?=
 =?utf-8?B?WUY1ZmgvRWZxRHpReHpRVmlXWjRsdzJDZnF4bWhKc1B0Y2pwcWVpUUF3cW0x?=
 =?utf-8?B?WEwwVGpHd1djMnREQUJvc25la1VaSnRDeDhHRG5oRmhGZzdGKzd3SlVxRDZu?=
 =?utf-8?B?VlJtbUx3OEFuZi9KN3FMTlJqeDZSOGlTUysrQUQ5VmNtUXg5aENuMTBMZDRD?=
 =?utf-8?B?TlNlYjN1WmtjSFVYcXFwNkRoVDlWN29XblQzSHdSeDNwd3dDQjErNkNJOGpM?=
 =?utf-8?B?bEp1UnFVY0NCMWhTNXQ3L1dwaURSdjdWSUpEYjVqY3BYa0hNRG1WNGdvSVI2?=
 =?utf-8?B?aVF6Q29La1JHQkpjVExJSlFITmNIL2pNT2RLaFU0bW1xRldOcTRVZTVIVWRK?=
 =?utf-8?B?UC9kYVBzRDgvaWpIVXdBUWZ6ajI1aEkvaWI1RFpINmdkTHRTYzRmZUVrRTdU?=
 =?utf-8?B?dSs0OWdVMCthUUlCcUpiVkl3Z2JHVlZQOCs1TGtqVDRrakVLall6R0RpMy9W?=
 =?utf-8?B?TFBvWS9vUHNvb2NXbkJaVjl4TVVDZ0x6M1E4enRyNlR0MUYwc1dPelozcjcz?=
 =?utf-8?B?SWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 660cbb51-10c0-4250-f7c3-08dd88d253c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2025 17:05:08.5853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /5i1X1oGEzMRWRDUeuSyQRYKhYjNEpi0skcooAGJwAX7/4TN6Mtbwd7XAToG2r1QotEuP8rpwdt7QEesTyb3KGFPZgHznkvqWzKbA5MN8Gs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7656
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746119118; x=1777655118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BrvBN8noqAS24dtsnhAnWra0L1ak6GCEwfFt1W1V6GQ=;
 b=CXWRWeO08gFF7aKZCt07T9peub7L3oGnvZlQobdqjSqsvXMEtuvxa7gr
 67j35WW2hviPkhGYuCHjWU59aH+mEFkZ3raKx3VJ1jB3LSsjqqEVLhhEL
 lLlY52BRTECbAzULpL4Cec51F5sFnxDw4ioWmLR4Rzt6sSPR11wedrD/a
 DAffmAhKCUz+zGA9ZhkB5dMSnoFQtCZKeOz3IUox5aYyP55r0mtjEbQhZ
 dRzFdJf5JrjO6YtPEq+brcnwBOGpvwFmjndlZ1owOg7YBFIREdqou0DAH
 kCdI4n4gPg1ufbxItJADwQG9+UwlOViSNp4TTxzgk3sOy69pOTM73nYj0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CXWRWeO0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 01/15] ice: move TSPLL functions to
 a separate file
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTWF5IDEs
IDIwMjUgMTA6MDMgQU0NCj4gVG86IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPjsgbmV0ZGV2IDxuZXRkZXZAdmdlci5rZXJuZWwub3JnPjsNCj4gSW50ZWwgV2lyZWQg
TEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz4NCj4gQ2M6IEtpdHN6ZWwsIFBy
emVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtz
YW5kcg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxt
aWxlbmEub2xlY2hAaW50ZWwuY29tPjsNCj4gS3ViaWFrLCBNaWNoYWwgPG1pY2hhbC5rdWJpYWtA
aW50ZWwuY29tPjsgS29sYWNpbnNraSwgS2Fyb2wNCj4gPGthcm9sLmtvbGFjaW5za2lAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzIDAxLzE1XSBpY2U6IG1vdmUgVFNQTEwgZnVu
Y3Rpb25zIHRvIGEgc2VwYXJhdGUgZmlsZQ0KPiANCj4gDQo+IA0KPiBPbiA0LzMwLzIwMjUgMzo1
MSBQTSwgSmFjb2IgS2VsbGVyIHdyb3RlOg0KPiA+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGth
cm9sLmtvbGFjaW5za2lAaW50ZWwuY29tPg0KPiA+DQo+ID4gQ29sbGVjdCBUU1BMTCByZWxhdGVk
IGZ1bmN0aW9ucyBhbmQgZGVmaW5pdGlvbnMgYW5kIG1vdmUgdGhlbSB0bw0KPiA+IGEgc2VwYXJh
dGUgZmlsZSB0byBoYXZlIGFsbCBUU1BMTCBmdW5jdGlvbmFsaXR5IGluIG9uZSBwbGFjZS4NCj4g
DQo+IEkgbWVudGlvbmVkIGluIG9uZSBvZiB0aGUgZWFybGllciB2ZXJzaW9ucyB0aGF0IHRoaXMg
bG9zdC9yZXZlcnRlZA0KPiBjb21taXQgNGM5ZjEzYTY1NDI2ICgiaWNlOiB1c2Ugc3RyaW5nIGNo
b2ljZSBoZWxwZXJzIiksIHdlIHNob3VsZA0KPiByZXN0b3JlIHRoYXQuIFRoYXQgd2lsbCB0cmlj
a2xlIHNvbWUgYWRqdXN0bWVudHMgaW50byB0aGUgbGF0ZXIgcGF0Y2hlcw0KPiBhcyB3ZWxsIGku
ZS4gdXNlIGhlbHBlciBvdmVyIG9wZW4gY29kaW5nLg0KPiANCj4gVGhhbmtzLA0KPiBUb255DQo+
IA0KDQpBaGguLiBTaG91bGQgaGF2ZSBzcG90dGVkIHRoYXQuIFdpbGwgZml4IGluIHY0IHdpdGgg
YSByZWJhc2Ugb24gdG9wIG9mIHRoZSBJV0wgdG8gaGFuZGxlIHRoZSBpc3N1ZXMgd2l0aCBsaWJp
ZSBhZG1pbnEgY2hhbmdlcyBhcyB3ZWxsLg0KDQo+ID4gTW92ZSBDR1UgcmVsYXRlZCBmdW5jdGlv
bnMgYW5kIGRlZmluaXRpb25zIHRvIGljZV9jb21tb24uKg0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6
IE1pY2hhbCBLdWJpYWsgPG1pY2hhbC5rdWJpYWtAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5
OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1i
eTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+DQo+IA0KDQo=

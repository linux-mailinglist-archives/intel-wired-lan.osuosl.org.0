Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDBFD07521
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 07:06:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4DA86064C;
	Fri,  9 Jan 2026 06:06:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qnnT8FidZXsE; Fri,  9 Jan 2026 06:06:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A0360E39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767938801;
	bh=CDz9Otk2MjMztQChQYX8D4j1/qjY2BfXpo+IjK5aAeA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OlvbS5KY94pa+JaShpOqUQzK4ahYbFrEtJfVIUQsU4xXsUAZjwUUsBSeRBFPutTGR
	 wQOZluVJxmPmwD1cc0QVW1E1V2GWEGKFCrgapOrV2EML3F6UJNcBjWjfZmUV1nlBYY
	 w5Wc21ZOt8HJxzyCNU9X//GjTXjN3ve/0BX415IdffWre2o1WoXXNY9TzLqqs16fZ5
	 2E/NcgZCf59dNaoBuq+gDfyeRlfE/Zmj51xZMWPpJ8KfRiqIWpUuCH4g7kqHqmGu/y
	 lPxAOtLpBH5qe4nPbsDLIynNrh4Yx7AK4/4VCiuUz7+qKRVfaGk/bAyvT+ayqC79S5
	 klLeVsFJ8Snnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4A0360E39;
	Fri,  9 Jan 2026 06:06:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C6968278
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B926E810CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:06:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDxo4G487-hr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 06:06:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C8554810B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8554810B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8554810B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:06:39 +0000 (UTC)
X-CSE-ConnectionGUID: 2+GLp2scTUqpLrj4Zo5Pbg==
X-CSE-MsgGUID: VOl34XGtT9eqnuJRZTKWWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="69367059"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="69367059"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 22:06:39 -0800
X-CSE-ConnectionGUID: pMjprh1fQTW9QVRTJCBRGw==
X-CSE-MsgGUID: t7kZjfWsRsmchpqj+AQJxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="204220966"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 22:06:39 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 22:06:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 22:06:38 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 22:06:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iDVSVTlrDdMW+IXoLVp3xQl5jD5DgwGtLjZ+I7S224bG3zaVxvpa+D5cHOxfS2nIkRT+3OLd65q3P38QV10xR4gTL0wkoEMSNMTaEmJSn8E6d2VUoPWe9Ok5ohXNGPibONUrm0DQ3MWh0k46xUtX7t1GHH1ZwM0MajhmkwE0nIKpACyDu/aMy9RVHI8V3BbzT3HbsziyIYUbZfoayAOLdsBG7IdPIRGiH1dQ4ogJuIHJ6xCRDk8Mxq97gkPOpEr8mN9YplgN3e0Jfov3W6kh137tzHsdO3OOFtMRU3vw1PyqpUVp4dfucYxeScZ2qvWGQ29xTm36A/CdcnMgMzJPPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDz9Otk2MjMztQChQYX8D4j1/qjY2BfXpo+IjK5aAeA=;
 b=hjOHE9wMQh1IYtxnJmSAFnOGh84hDolwNW7zfd24YJb0Qy6hOT5EZ/tBtnuTd/8Xb+nwmBDw0tSwkkZqd2IzrknkieF14KV/mB0CZclecbcwmfunQqrjL1QkU23cokJsLHLFz2SipdTX2wMSAMdhGMa/xvE4wJG+rN3HtOT6fLWLVlGTQnubc2Cn1mI+r+E5OE0MKYqawWIcU6FaxVFf3AasX/bGDrtmGuu18WJJXWJKQAEP5+SPtotVtrC0+UgL0vKAnWBHNUzED3RiuZBv8V1QjOs+3ZIYunv0SFVJzoqn1bAuiBX4qZU8f/xHGKwTsk4XZXf3LyLsP9l9DhkQ8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB7671.namprd11.prod.outlook.com (2603:10b6:a03:4c4::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.3; Fri, 9 Jan
 2026 06:06:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 06:06:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 5/5] idpf: skip stopping/opening vport
 if it is NULL during HW reset
Thread-Index: AQHcf3HERhfF3HongUWpx6e0/Jd5U7VJXMiw
Date: Fri, 9 Jan 2026 06:06:36 +0000
Message-ID: <IA3PR11MB898636DB7C48DDB28FF88A09E582A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260107010503.2242163-1-boolli@google.com>
 <20260107010503.2242163-5-boolli@google.com>
In-Reply-To: <20260107010503.2242163-5-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB7671:EE_
x-ms-office365-filtering-correlation-id: 87c96f8e-55a1-4469-de05-08de4f453f3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b0FwTmh2ek5ibjZIYUFGVGs1UDZ3Q2hMMFArUUtkOXd1cFlycGdSVUxFenVZ?=
 =?utf-8?B?WDl6Wm9qUVpvYnlucVFwN05MTTVGeGVUNks3dlNQWEhrZnVXVXpHSU1WUHUr?=
 =?utf-8?B?aE1pb093WTNaU1ROSWhZd291cHVKTEFLeHYrV1hqY0ppeVMxRTNEclpYbFp6?=
 =?utf-8?B?RG1aWFZ4dkZxK2VQZktZWVR1eTh6bi9TNksxd2szL3hZL2V2N1lPZWJnMWh5?=
 =?utf-8?B?aEpIcmpSZGNSNWpkc3RGbndxVWJJYWY4L29sZHVGNmI5VkdUTnptRFNrUFdw?=
 =?utf-8?B?WlBUdVp3clZ5S0xSMmxCZis1b01Kako1NXk3ZVI2eTlENGJTeDFrQ0NRM0l2?=
 =?utf-8?B?RjFsbmtzWERtSjBOaWhCQStJR29QMDZUWllhREFxb1RmdlEvRzllT2ZhN29M?=
 =?utf-8?B?SUhWdjBFb0haR1RoeDVRT2tSYUhKSlhHa0RWdVlCT2FibWJvUXZrUXB5VitQ?=
 =?utf-8?B?dHBPTzFsNW1UUk42TmtEd0R4V3ZFQ3FFQlRIb2hZTGQwSVV0SnFnb2hlb3N2?=
 =?utf-8?B?NjBjUmk0dWhIdFR1dDdwTW9jeDhjZTBnai9MaW9GcWMwQjhsMDNzS2FyR0dU?=
 =?utf-8?B?enNnelUxd2xMYnBkRllvdnc0Mjdhc3VjbHpCUldhc3M1UCtSZHZNNFRaQzVI?=
 =?utf-8?B?bW50V1dhT2ZmcG10UUJ0TFE0MzNrN1VmWVd5RlM3cDJaSU1wSzgrWTJ3ZjN5?=
 =?utf-8?B?LzJKWjJBaUVWYUFqdXFuM2w2NXN2UzFkUkZJYmRuZHVZdWVWWEhUSGIrc0xB?=
 =?utf-8?B?S1VwNzgveDVWcUpqRFVpWnMzMWwraUtET24xZXMwNFpKUjM5YTVnaXN5QXlw?=
 =?utf-8?B?SDFjT1pHRGdwTytmeE5BMDErcGNWL0RZTWxRUzdkbHlneEdvbnY2Zkx0NnhV?=
 =?utf-8?B?VHJ0Uk9SZTNYWlgvN1RDWm9MSFVqSUFwbWt0dWJQVzdVT0VHVktkWkxWRnRt?=
 =?utf-8?B?M2l0c0owU0w2UkpaWGZ1RVNXU3JnbkZYRXNZNWUvbThudmxkaS8wb1poNEZI?=
 =?utf-8?B?b01uWUNDYWQ1dkVwSzlKa2E2K3hVOXZSaEFXR0VqUmVUaCtxdUtnQnRUdXNy?=
 =?utf-8?B?dllvcVR4N3pOc2hGb25DekRlWDdQUDRCRldjMEE2NENZbUVYYTJ0QTlkUkNS?=
 =?utf-8?B?YVY5bjBkU3Q2KzYwbXZCRWprWGJSK01JRnNKa2NHWHM3djE4RmtkZnQ1cXVI?=
 =?utf-8?B?b3RtSnpUT3FsRGdscWYrRFk1dDdJS1B2K0lCbE56aHMrUHpCSlRGTEh2Wko0?=
 =?utf-8?B?NnljNXRyYlFtV0o4U1djWlQ0azhLelFVVDNOTEVUR3BqVXA4dGNtcVlWMEFx?=
 =?utf-8?B?czQ2aDJHVEgwUEtkRnh4d0phUXROa2FPaXRxNzQ2Y0VnbFRzSEFVbXRFSzI5?=
 =?utf-8?B?azgvNXk3d2lWbzYwR05GU2Ntc21wWDZGNjlBVG8wRERQTVEzSUhBNU4zVGQy?=
 =?utf-8?B?NXpCT2xNZlZ5aTliVkV4VVRIWmdaTjUrdWJGb0hSdlJEOG4vM2REOFBua3Fx?=
 =?utf-8?B?YmhhQzhPQVZhaHAwNVM2NVZST0Fhc3ZhMGZhZWRCT0xlY3V2U3JQRGczK2FK?=
 =?utf-8?B?dnF4R2d6dUQrT0N2VEdvWW1MbHQzNmp2UU13MmhqY05ldUpLcnFXajJOU1B3?=
 =?utf-8?B?V2piQVNsMG04ek5DUkZjNHdHMVRLSDZ1WUJiZmVWdzdKYTBhdGtwVmFncS9K?=
 =?utf-8?B?NWh4bDNmb2ttOFN4VExaMUM2MHdFakoyU2NHYXMrM3AzV1d4Um9pL0NDcU5u?=
 =?utf-8?B?bjc3UlhDVTRueFdUQnBsSmE3MGlVN0ZYVStmZVlBQjlPc2hENTdJNnNUYTlX?=
 =?utf-8?B?T2hXbWs2cVhnM3hyaDBzL1A0QTdFOUgwSzV4TkR3elRQSU9Kc2ZJLzcyZWRY?=
 =?utf-8?B?ekN6MVpGK0F5bDRJajBYV1VQeXZUM3J2RkxwRU5DS2wrbVFhMlE4elJQNE5K?=
 =?utf-8?B?ZnE4K2Y5dWpYb3psODN3clJkcmVZRnEvR1BvWHdUak5Db1JlU2tGS3Y4Qmpj?=
 =?utf-8?B?Nm9XNGhVQ09Zamg1U0RrMitkdVg3Umt1YUxTZXFnZHJtRDh4SzBrK29QRHJY?=
 =?utf-8?Q?v+iTx6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUZNV1RSL2RvazVScmQ5b0pxMVpTelZWOUtsN0FMOFpzUDdMWGYvMStHWnJm?=
 =?utf-8?B?aVJFQWFrM08yUEtXcEtDTGRneU5ENDg0QkRxZlQ1dnFGNFBwM0RIbGlCOHhk?=
 =?utf-8?B?TlRFb3pBTnEzWU93ZTVIYmRaaXlFTFMvU2EzcVQ1TkptOWFVQnR5UnZUaXJ0?=
 =?utf-8?B?Rnp4Qnh5UXJ6N1JBY3Z2SFZTSjJ3UjZJVTd4VnArZ2NRMFdyYjUvbkU2aElq?=
 =?utf-8?B?WlpsbDB4ZkkwU1o0WjZyazdLaVpaeThFM25pdkJFSk5zY3pGS3E4QlNzQ0RR?=
 =?utf-8?B?Yy9YZVhNYUtBWG1oRm1rcmdnZWhCWTkwOVQvUUdKU1FBallrY3NuMGFIR3B6?=
 =?utf-8?B?alcrNGFYK05wYWxTa1hKOWpaU0xxa3RneUdSWWhnMkcyUEREc1BXVENodXcr?=
 =?utf-8?B?ZUFHMDhRY3hhTU04d0R5SHNTTDk0Sm9ERkhqODFOR29DQ1FKb0F3MWtydzhO?=
 =?utf-8?B?Kyt3czczcjNwOTZLdWozVVlxTkpBNW9VWjJscVFxMTlsUkhwejRmMVRIV0NE?=
 =?utf-8?B?MHlHSGp2Wkp4N2RlUVdaeXZLU3BYZE5RNVhocm96dGFGM0puZnRsWlYyd2li?=
 =?utf-8?B?ZmFyeGFRMThpcWYwUXVyMktCNGhXQkIxemF5dG1ENTdrTzBGYnlBNWNxVzZF?=
 =?utf-8?B?WTh0YkV0UjN5b2NtTWhBbEQrSGVNR0x3TzNwM0NUZmJSZ3pYUFhaRWNBckd0?=
 =?utf-8?B?elpOSW5HZlo2K2xyeWNYTTFCMDR1dHo1bXQ2djhpWEdFRWRCenMra0NQMnht?=
 =?utf-8?B?amtEanBiT0gwVEhvb2xDdUM3YWtFRFdXZmdBSmhQQVNsSlg1M0dVcWo3Vzl1?=
 =?utf-8?B?RHp6cllvbk10bVVkanpNc2ZyRjFBWHUyeWFlM3BCYnM5TjFMaDdKSk9ieWFF?=
 =?utf-8?B?YjEwS2U2bEdRSk1pNFM4R3ZRVitVWnIrWUV4Z0tIU2ZxQ2NyRGNjaSt5U3Zj?=
 =?utf-8?B?b0JjNm9rR2dKYmtiaWNpamtZZlNyd3lNTnJLcFNaMEMwZSs5bk9PdHpBRytR?=
 =?utf-8?B?eVQ1RGRwbFVDN1BlUFk5MlpTUnVLMkhDZ2xsSVp0QXRadDRjUHVWYkp6ZnUx?=
 =?utf-8?B?QWtQOHpUNEJkOUdURzBkTUtsQVdPZWdwSVREKzRGZE9OcFdscEdYSG5JdG9t?=
 =?utf-8?B?dFRaOUh0YkM4TmdRS3JkNHhkb0RwZ042MmkrdkRuRlBobDJNalhsQUY5L0NQ?=
 =?utf-8?B?YmxJVkpaamNQeHhPUmthdXpwMzF3K1ZUWWc1WUNYNnJsNm1vVXhpQ2FseG5p?=
 =?utf-8?B?aXlzaG5sNTZIK2tWU1pnUkZ0K1d0RkR4ZFR5R3pidmt3VFlNejFjWkV0aVox?=
 =?utf-8?B?em1iS25hemhaSERVbWMvUFE1R21YN3FmUUI5UFdwMVlCTWdFem5YY2g0L0ZP?=
 =?utf-8?B?R0h2WFcrdExHTlYrMTh0Sm5FNlMvTDJHZXVmOGFVb2lCUHY2SDRqN2xiQldn?=
 =?utf-8?B?SDhYSlhMNXRxSEtORDlNRlFnbmk4NzlZWHIwTWFIeFZyekdhcHl6SGZadlJR?=
 =?utf-8?B?ZEJWZzNsdzBKT0N5c3o0K0RqVUIwUDQ4UE9qSTVxRXhRZERlcFBpYnRjeW9I?=
 =?utf-8?B?TjhCeHBPT241MWFOeVlwZG0raVFCNWVxdG53VkZMN3pEYVFnUWhvRTN5L21E?=
 =?utf-8?B?UmozOHJQc0FtTzBZWDAwR3BDM1NTaTArU3JvTnk5bDFDYTRCT2p6dVpPV1Bl?=
 =?utf-8?B?bkJEWVVqcktEYkYxYURMRXQ0dWFad3NmTWFIdjRiV2M4dHA3OXA4b2RaSVRO?=
 =?utf-8?B?TTl3dmRxTnRub0gxVHovYk9JcU15NU50MnhNT0dXZjRhVmMwNXBDODFGUGJV?=
 =?utf-8?B?TDhTdXB1RjBXdWhmVkFCMXFxeUtxOTNuSUhlN2JpR09jaTdsWVJhQXZhd0Mr?=
 =?utf-8?B?MDBENDgwektXck5WVWIwWUJGV3ljOXcvSFlUUmpoZGkxNWFYR2pTT0x0bXZO?=
 =?utf-8?B?OHF6dThFVlJUSlhzV05BSUpoamV0d2NORmlod3ErZ3FWTEVWelpvY3lQSFoy?=
 =?utf-8?B?Q3hubFUra0p3NkVRb2t6NkNYRzdRMmRWMFBlRHNZQnB0blRwV2F1c0Eya0ZB?=
 =?utf-8?B?U1ZMQmkzU3hjdlVpUnhhc1NhV0puZkc5NVptblNGTnFwNTFBUVV6WDNKKzFO?=
 =?utf-8?B?R1I0clVkcXMyRDU2Z29WOWdtRWVBblk3RncvV2ZNakM4S2RsVXBhRTVXQnl5?=
 =?utf-8?B?NzM0N2lLNWJ3aWRLNmtqS3p0WkErc2tpZmpwb3drczRPOHVuaGllalVIV0Vj?=
 =?utf-8?B?ZWNweE50d2huc1pyd1BxMk5ZZW1UdjFrUHdoTk43ZUhyRzdjbVZsQ1U2eHl0?=
 =?utf-8?B?NGlybk1lMzNzUkEvbTcyanhnUjdZRzAwblZ0aWlBeGNsOXZMOWRydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c96f8e-55a1-4469-de05-08de4f453f3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 06:06:36.5265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XPgpvPr7xbYqyTsAkuWuDl1/ogohvTpd+UH0/fhoYgfzS3RgXxPvW9pa17zlNYelaqSwNVtfRpYzoh0BzqrxtN6cndC+73bpmXluXXlDMCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767938799; x=1799474799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CDz9Otk2MjMztQChQYX8D4j1/qjY2BfXpo+IjK5aAeA=;
 b=Xt0KtYNbJlzTFU+OLRL5C2PbhQwAHfBRuBob2knhaRTqXiPbsQZo15Pz
 obUR4Av6TwaAhdSWMdtiLJjcLx/trkk+XPc1d7BRuUrfZUL96pNHPcjkB
 QlBKE222EZtEBQiM/l+X8k5m5rCZ+U9yrQNQ84pq75WZPYcyNjoU4QPxt
 Yv3ehmZ4qgxPxI8Uq7yefJvm5SQ3cSkchHfWOCVPzmQ/2kn6nDI01InvE
 nhQufA2Y2eNw56x3dOqVlm/3BLoev2wboBMHh9km847x1Wl9T8Ylalrq1
 EmKuU/lTgxUO47Pd0MhkruRH1jfykORs53x0Q1inZptwsEHNWdIeO6bYj
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xt0KtYNb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5/5] idpf: skip stopping/opening vport
 if it is NULL during HW reset
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgNywgMjAy
NiAyOjA1IEFNDQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xl
LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiBEZWNv
dGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPGFuamFsaS5zaW5n
aGFpQGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFA
aW50ZWwuY29tPjsgQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsNCj4gTGkgTGkg
PGJvb2xsaUBnb29nbGUuY29tPjsgVGFudGlsb3YsIEVtaWwgUw0KPiA8ZW1pbC5zLnRhbnRpbG92
QGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIDUvNV0gaWRw
Zjogc2tpcCBzdG9wcGluZy9vcGVuaW5nDQo+IHZwb3J0IGlmIGl0IGlzIE5VTEwgZHVyaW5nIEhX
IHJlc2V0DQo+IA0KPiBXaGVuIGFuIGlkcGYgSFcgcmVzZXQgaXMgdHJpZ2dlcmVkLCBpdCBjbGVh
cnMgdGhlIHZwb3J0IGJ1dCBkb2VzIG5vdA0KPiBjbGVhciB0aGUgbmV0ZGV2IGhlbGQgYnkgdnBv
cnQ6DQo+IA0KPiAgICAgLy8gSW4gaWRwZl92cG9ydF9kZWFsbG9jKCkgY2FsbGVkIGJ5IGlkcGZf
aW5pdF9oYXJkX3Jlc2V0KCksDQo+ICAgICAvLyBpZHBmX2luaXRfaGFyZF9yZXNldCgpIHNldHMg
SURQRl9IUl9SRVNFVF9JTl9QUk9HLCBzbw0KPiAgICAgLy8gaWRwZl9kZWNmZ19uZXRkZXYoKSBk
b2Vzbid0IGdldCBjYWxsZWQuDQo+ICAgICBpZiAoIXRlc3RfYml0KElEUEZfSFJfUkVTRVRfSU5f
UFJPRywgYWRhcHRlci0+ZmxhZ3MpKQ0KPiAgICAgICAgIGlkcGZfZGVjZmdfbmV0ZGV2KHZwb3J0
KTsNCj4gICAgIC8vIGlkcGZfZGVjZmdfbmV0ZGV2KCkgd291bGQgY2xlYXIgbmV0ZGV2IGJ1dCBp
dCBpc24ndCBjYWxsZWQ6DQo+ICAgICB1bnJlZ2lzdGVyX25ldGRldih2cG9ydC0+bmV0ZGV2KTsN
Cj4gICAgIGZyZWVfbmV0ZGV2KHZwb3J0LT5uZXRkZXYpOw0KPiAgICAgdnBvcnQtPm5ldGRldiA9
IE5VTEw7DQo+ICAgICAvLyBMYXRlciBpbiBpZHBmX2luaXRfaGFyZF9yZXNldCgpLCB0aGUgdnBv
cnQgaXMgY2xlYXJlZDoNCj4gICAgIGtmcmVlKGFkYXB0ZXItPnZwb3J0cyk7DQo+ICAgICBhZGFw
dGVyLT52cG9ydHMgPSBOVUxMOw0KPiANCj4gRHVyaW5nIGFuIGlkcGYgSFcgcmVzZXQsIHdoZW4g
dXNlcnNwYWNlIHJlc3RhcnRzIHRoZSBuZXR3b3JrDQo+IHNlcnZpY2UsIHRoZSB2cG9ydCBhc3Nv
Y2lhdGVkIHdpdGggdGhlIG5ldGRldiBpcyBOVUxMLCBhbmQgc28gYQ0KPiBrZXJuZWwgcGFuaWMg
d291bGQNCj4gaGFwcGVuOg0KPiANCj4gWyAxNzkxLjY2OTMzOV0gQlVHOiBrZXJuZWwgTlVMTCBw
b2ludGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOg0KPiAwMDAwMDAwMDAwMDAwMDcwIC4uLg0KPiBb
IDE3OTEuNzE3MTMwXSBSSVA6IDAwMTA6aWRwZl92cG9ydF9zdG9wKzB4MTYvMHgxYzANCj4gDQo+
IFRoaXMgY2FuIGJlIHJlcHJvZHVjZWQgcmVsaWFibHkgYnkgaW5qZWN0aW5nIGEgVFggdGltZW91
dCB0byBjYXVzZQ0KPiBhbiBpZHBmIEhXIHJlc2V0LCBhbmQgaW5qZWN0aW5nIGEgdmlydGNobmwg
ZXJyb3IgdG8gY2F1c2UgdGhlIEhXDQo+IHJlc2V0IHRvIGZhaWwgYW5kIHJldHJ5LCB3aGlsZSBy
dW5uaW5nICJzZXJ2aWNlIG5ldHdvcmsgcmVzdGFydCIgaW4NCj4gdXNlcnNwYWNlLg0KPiANCj4g
V2l0aCB0aGlzIHBhdGNoIGFwcGxpZWQsIHdlIHNlZSB0aGUgZm9sbG93aW5nIGVycm9yIGJ1dCBu
byBrZXJuZWwNCj4gcGFuaWNzIGFueW1vcmU6DQo+IA0KPiBbICAxODEuNDA5NDgzXSBpZHBmIDAw
MDA6MDU6MDAuMCBldGgxOiBtdHUgbm90IGNoYW5nZWQgZHVlIHRvIG5vDQo+IHZwb3J0IGlubmV0
ZGV2IFJUTkVUTElOSyBhbnN3ZXJzOiBCYWQgYWRkcmVzcyAuLi4NCj4gWyAgMTgxLjkxMzY0NF0g
aWRwZiAwMDAwOjA1OjAwLjAgZXRoMTogbm90IHN0b3BwaW5nIHZwb3J0IGJlY2F1c2UgaXQNCj4g
aXMgTlVMTCBbICAxODEuOTM4Njc1XSBpZHBmIDAwMDA6MDU6MDAuMCBldGgxOiBtdHUgbm90IGNo
YW5nZWQgZHVlDQo+IHRvIG5vIHZwb3J0IGluIG5ldGRldiAuLi4NCj4gWyAgMjQyLjg0OTQ5OV0g
aWRwZiAwMDAwOjA1OjAwLjAgZXRoMTogbm90IG9wZW5pbmcgdnBvcnQgYmVjYXVzZSBpdA0KPiBp
cyBOVUxMIC4uLg0KPiBbICAzMDQuMjg5MzY0XSBpZHBmIDAwMDA6MDU6MDAuMCBldGgwOiBub3Qg
b3BlbmluZyB2cG9ydCBiZWNhdXNlIGl0DQo+IGlzIE5VTEwNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IExpIExpIDxib29sbGlAZ29vZ2xlLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZHBmL2lkcGZfbGliLmMgfCAxMiArKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2xpYi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWRwZi9pZHBmX2xpYi5jDQo+IGluZGV4IDUzYjMxOTg5NzIyYTcuLmE5YTU1NjQ5OTI2MmIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIu
Yw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMNCj4g
QEAgLTEwMjEsNiArMTAyMSw4IEBAIHN0YXRpYyB2b2lkIGlkcGZfdnBvcnRfc3RvcChzdHJ1Y3Qg
aWRwZl92cG9ydA0KPiAqdnBvcnQsIGJvb2wgcnRubCkNCj4gICAqLw0KPiAgc3RhdGljIGludCBp
ZHBmX3N0b3Aoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldikgIHsNCj4gKwlpZiAoIW5ldGRldikN
Cj4gKwkJcmV0dXJuIDA7DQo+ICAJc3RydWN0IGlkcGZfbmV0ZGV2X3ByaXYgKm5wID0gbmV0ZGV2
X3ByaXYobmV0ZGV2KTsNCj4gIAlzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQ7DQo+IA0KPiBAQCAt
MTAyOSw5ICsxMDMxLDE0IEBAIHN0YXRpYyBpbnQgaWRwZl9zdG9wKHN0cnVjdCBuZXRfZGV2aWNl
DQo+ICpuZXRkZXYpDQo+IA0KPiAgCWlkcGZfdnBvcnRfY3RybF9sb2NrKG5ldGRldik7DQo+ICAJ
dnBvcnQgPSBpZHBmX25ldGRldl90b192cG9ydChuZXRkZXYpOw0KPiArCWlmICghdnBvcnQpIHsN
Cj4gKwkJbmV0ZGV2X2VycihuZXRkZXYsICJub3Qgc3RvcHBpbmcgdnBvcnQgYmVjYXVzZSBpdCBp
cw0KPiBOVUxMIik7DQpQbGVhc2UgZG9uJ3QgZm9yZ2V0IHRvIGFkZCB0cmFpbGluZyAnXG4nLg0K
DQo+ICsJCWdvdG8gdW5sb2NrOw0KPiArCX0NCj4gDQo+ICAJaWRwZl92cG9ydF9zdG9wKHZwb3J0
LCBmYWxzZSk7DQo+IA0KPiArdW5sb2NrOg0KPiAgCWlkcGZfdnBvcnRfY3RybF91bmxvY2sobmV0
ZGV2KTsNCj4gDQo+ICAJcmV0dXJuIDA7DQo+IEBAIC0yMzAxLDYgKzIzMDgsMTEgQEAgc3RhdGlj
IGludCBpZHBmX29wZW4oc3RydWN0IG5ldF9kZXZpY2UNCj4gKm5ldGRldikNCj4gDQo+ICAJaWRw
Zl92cG9ydF9jdHJsX2xvY2sobmV0ZGV2KTsNCj4gIAl2cG9ydCA9IGlkcGZfbmV0ZGV2X3RvX3Zw
b3J0KG5ldGRldik7DQo+ICsJaWYgKCF2cG9ydCkgew0KPiArCQluZXRkZXZfZXJyKG5ldGRldiwg
Im5vdCBvcGVuaW5nIHZwb3J0IGJlY2F1c2UgaXQgaXMNCj4gTlVMTCIpOw0KUGxlYXNlIGRvbid0
IGZvcmdldCB0byBhZGQgdHJhaWxpbmcgJ1xuJywgaGVyZSB0b28uDQoNCj4gKwkJZXJyID0gLUVG
QVVMVDsNCj4gKwkJZ290byB1bmxvY2s7DQo+ICsJfQ0KPiANCj4gIAllcnIgPSBpZHBmX3NldF9y
ZWFsX251bV9xdWV1ZXModnBvcnQpOw0KPiAgCWlmIChlcnIpDQo+IC0tDQo+IDIuNTIuMC4zNTEu
Z2JlODRlZWQ3OWUtZ29vZw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQoNCg==

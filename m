Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB581A2F8BF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 20:36:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB23E4130C;
	Mon, 10 Feb 2025 19:36:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ghj0OohmCVpW; Mon, 10 Feb 2025 19:36:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06E13412D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739216186;
	bh=qjJZoGgVOFeVWbLH0JDEUQqlvfOCNmHSqCAK3XUI47s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HHFq+VFNzIj2YAQ8HNHF4+k5b42BB83E+xQHgx+R6CqZqsbbSoFVlvyvtyIEQhVT6
	 k7/XLz0hoGRB1M772GGR+ssWO00dps7Ufom7Bq6qpZcoxcph93VgKfUUnhIe38nGX9
	 mdxLgq189rF8LuTlA3uY5CAURwgguug0sNqyGU8n/DEo0XEUy/qhiFNpMP4NKZgqg/
	 su2tCTl2J+glJYXhFp9b5lWy5wYBEbHVZVFrxPLa0cC6PMOv4CJwyMpFCzS9FRBYbg
	 JptIuGKyHBzsHUjEdsQWcOzSrcqHTPxZlLtJlb1LtWBok9JSs9s5CbgMSSvC8h4FsA
	 1V11EXBLXhF2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06E13412D5;
	Mon, 10 Feb 2025 19:36:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7940C6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6823081E10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:36:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GsbHE8tVYsP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 19:36:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C6B881E0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C6B881E0E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C6B881E0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 19:36:23 +0000 (UTC)
X-CSE-ConnectionGUID: 3uMNNJXWSp212ffYT+I1Iw==
X-CSE-MsgGUID: Byx9nV86RJSCF0zmN7W0nQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39053605"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39053605"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 11:36:22 -0800
X-CSE-ConnectionGUID: 9bIPlyJYSMWiCD4xWMCmCw==
X-CSE-MsgGUID: Rj0NC6raR6ylVVt6FpNH8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="117366861"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 11:36:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 11:36:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 11:36:22 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 11:36:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PzvdlMK6HBMcCYfbAl+H63bC8q4P3JeZ/Vw8PoAVYUJBhvW7PJUIEkxQSSoaZ+ClVLgB65PPlmDuA0QN7r60CFCiMFl95he3lVuFD9o3+ZJeD6TDgYJceWZK9UoyWyPwRPd+U0UcIZapV+rXx+aiEx8VQxnbWQBQLfE/EF2CwNRHRWmawE4TCGUSjOK50pwTZ0QY1tf9AsSVO5St5wv8Xb8jAHGOHAlaYZWWF3E3twMnucDqI1ajsIi3dxSdaHr/nTdId2qITCNpWTz48yFfChgUgTWxWmZj1L6r8XpdjsnJgOy6ykZtL6fzQucy2FoIBmjAe6Duil5u0UGcSoD0Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qjJZoGgVOFeVWbLH0JDEUQqlvfOCNmHSqCAK3XUI47s=;
 b=FstUl8Q07n5Wiath09CxhXgVCQgp8/FFfLOCXL9NkX686rUo26ZqGbBfxwCGbNPTlyfe/b1K39b+TeOMQcj9soMRksn8IIXXTlF7WQI+OTgcbWay5xrogIF3aBn3euOFJOVBsYDe73K1iVzvMQGxOHNVHUCnNmodRNldtBNgkHGO4qUtIrzRdBF4FnIZj+h0q5CrQcs5/KBedP4se29kp6Gz2BZr8FE/LuZ8z9yh4MhnGJaxSWMdD1vKwKO0gPoLNjclOExp1rD95GbP+0tZdfyKoiGTYpkvJQXgPvHpzGBpRiIKfJIQpiEPWCgy7eQEQDXzrEOwc2JTj2jIdpwrTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 CH3PR11MB8361.namprd11.prod.outlook.com (2603:10b6:610:172::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.18; Mon, 10 Feb 2025 19:36:16 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%7]) with mapi id 15.20.8422.010; Mon, 10 Feb 2025
 19:36:16 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call
 set_real_num_queues in idpf_open
Thread-Index: AQHbd3HdziUZY+pL+kqfNZ1YyWY6rrNAqn0AgABIC+A=
Date: Mon, 10 Feb 2025 19:36:06 +0000
Deferred-Delivery: Mon, 10 Feb 2025 19:35:00 +0000
Message-ID: <DM4PR11MB6502D38FFAF91E2CF96033F4D4F22@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20250205020811.2839702-1-joshua.a.hay@intel.com>
 <4c522f0f-ffda-4b0d-8b83-96d652c4abe0@intel.com>
In-Reply-To: <4c522f0f-ffda-4b0d-8b83-96d652c4abe0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|CH3PR11MB8361:EE_
x-ms-office365-filtering-correlation-id: f07404a5-4799-4534-02d2-08dd4a0a2f85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SzBlUWtEZmdrdnJLZ1N0Y3grOWl4UXdRY3RvcjRyZngrbmhYRkdMQUg2TThB?=
 =?utf-8?B?RlpyVnF1UkI3UkUyZlZ0WkJBTUJ3eUtXdlFwVnl3YURoNjhQeUE4M0FCNHdI?=
 =?utf-8?B?bXd4dzFYZjVFNm5UT08zemMxbXVpWkMvTld1dzNQK0s5MmFZUWUzMkJWTGNn?=
 =?utf-8?B?VmsxaStXSXpQN1h3eTN5Qi9HVVRqc3NTcXk5K2piL1g0VFJaSlhZbjNpbURl?=
 =?utf-8?B?ekd0T3ZQNlczMVozcDVLSFdJUkUrbjRxTjl5TEU3dnQ1ZVhiT2ZEcUpPNG1X?=
 =?utf-8?B?dlYyQ0hST0VYS1dibzdWdEk5YXR0NlVoOXlGaU9jSWJnNFVoMkhzb3VmbG1U?=
 =?utf-8?B?bWdwN1VBTXpTbWV1TmRBMEFyM2ViUGhVb3pLeHZGbm9YS0dXM1gxeFgyMW55?=
 =?utf-8?B?cjROYTlrajBFaUFqL0xSMG9zdzM1YjRUa1NMajFLblZWM3dEdnJDYTY2aW8x?=
 =?utf-8?B?NElmSlBRQUNKWVJHSXhDOW9aVm9BRlpWRENCbk4wVnVDUG9UcDIwMzBPM3VG?=
 =?utf-8?B?L3Fxa3NqSkM1SHc2eGR2QU1TU1Q2ZFEzODF4aytMb0tlMlVlT1gvUXNxdXl3?=
 =?utf-8?B?M1ZaWWM4TnJwT3Z3QkgwRHAvMmlGOWZwTldyNzhodmFEQ1pwWG1Rb3JtMHVl?=
 =?utf-8?B?VHV4OGZEb0E1OW0ybWRhbnJhSVVFdGN3RTFJczJCTmwrUzE5U25neEw0Z2hV?=
 =?utf-8?B?dDlISlM0bFgwUmV1TnFiMVRJaEpZR2ozVmpOeUFBeUV2MkdQRWpadjhBSENz?=
 =?utf-8?B?d2trbmJqb2pIR1FtYVRHOTRNeTMvaDcrSXhpNitGRGNHY013SUNDRVFHbWZB?=
 =?utf-8?B?NlVpUjRmWmZQR3N2M0d0cVVYeDQvOG1mQ0tLTWhmS1ExcVZwS3FLTXNwVWZK?=
 =?utf-8?B?NXAzTVJJbFlucVY3RnpBTjJvTC9oR2Z6cnhlRmdvR3lRQ3hSMG9VSlFXRDNz?=
 =?utf-8?B?OW9NTjBZTXVaRUhYb3hSU3RpZHlzTm43bCs0MEErMnYzV1JvbVBlM1VUaFJR?=
 =?utf-8?B?aktnUjJiaEQ2ZnBPYW9QeGhxdTRwb25rYlJEKzl4b2lEaDZFbVhzWVdxNU04?=
 =?utf-8?B?VlBIK0FFd2pSMUNWK01Xb2dYak5JMzRSZHZQQjdncXBaemNIM1ZTZEsyVUtt?=
 =?utf-8?B?dVZod2xZRitLaE5jL09EZHY2ZmlUUGxSRXJoWWpmcmRDcVJPSnA1anA3Vi9M?=
 =?utf-8?B?Mk8rY2hBdU4zY0RIYy9mdTdnZ1lxcllCWFYwV3BlRzVlUUliQXNxU3RWR2My?=
 =?utf-8?B?dmhPM0J3Z2YwR0ZXRkllaDNUbWgvTFFjTGZaUll6VmlGOXNnZERiSnBJV2l0?=
 =?utf-8?B?b2RPcDJWQmJDSDBabWd0RzlNZWYvbWZPOGs1V1hMc1A0MndrNUYvYUlrWHVO?=
 =?utf-8?B?OXkzaTZJd1BHK3lRL3NMbHRMbDIwSWNFQVFkMDVWWnpiTmk5RUg1bFpmSWNI?=
 =?utf-8?B?NEdtVklUWnBMaTZCUVhSb3B6bjd0bkdxNmJSTjJ1NVZreFo5Y3dxQVVIUkh0?=
 =?utf-8?B?azBnd0xkRTllb214Nm16UmhqSXV5d1J6V1B6QXllQUtPN3hkM3hmQWN6MkpE?=
 =?utf-8?B?WmlkazFQZm9xbVVwZmcydkZ1SE5JVk1tcHVKd0ViTm9ZT0NXRzU0Zm5CM0Ir?=
 =?utf-8?B?YkJ4ZDhnenBUajJNVG56Ry9mUWN4am5XeUpKQkFldnc4QlhieWNqckh2MkFN?=
 =?utf-8?B?R0hwbCszMVgvdklWUzBUOFJreHZYMTBocE43NzFib1NvUkZYUThJcmpBTnhL?=
 =?utf-8?B?RUEwbndkNlpHcURLSW9TMDRUdjdCQjloT3NBNHZNR1IrdkhEMy9naFdMMkdv?=
 =?utf-8?B?Si9lem5BU1U1NVVlVmptRHBQanNBZGIvWG1hY0I1ajlHcG1RM1lyM3BJRlZ3?=
 =?utf-8?B?SW5ScFVwREhkenpobWNpcGwwalhSalZxYm51Zi9WS1BWT0xTUXdlLzFXcU1M?=
 =?utf-8?Q?taHZOWrFdJpc6Uil5zhCERaI+C2godZK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzZWVjFoQnBVVkRNZTZvWEhudFQ4U3dOVFVNM0wzT05HbDFZWEdCMklvVkxP?=
 =?utf-8?B?MXQxSVRmdjA1clVNWWJlQjBYZ2tQaG4xcFZIcDFGUjVRelltOWJkR29aYXRj?=
 =?utf-8?B?ZzZzK2RVVHY3a1d4aUljblVBSkUvV0ZGRnRTbi9vVTBDZzU5dmtycmY2cDZz?=
 =?utf-8?B?OXBTYjlxSkVPaG93ZExicHl2MlZ4c2JNamxjN3VZNGIrNW1zM2dZMHVCcHJT?=
 =?utf-8?B?YWJtSUlXTDk5aEhvZk9VUVVsS21iREUrR01ZQ0FxL2pGWkVybFhleVpNQXpi?=
 =?utf-8?B?a3FDWTBCV0RtclhiRjJMcWdhMHB4bTFhWmlZNWM2NitFaXBKcmJ0OXVGbzM1?=
 =?utf-8?B?WGtzQWo4cDlHOGo1QmlWN2JoWS84QWdnaXhsL3pJaVZRVlhMZEt2MWxaU29J?=
 =?utf-8?B?YVREYW8rVVVLeFJKNFRUczl3WnJ3NmJZR1EyenFVUHhZQWFPbHA2cWE0U3h4?=
 =?utf-8?B?NWpsQmFySDhNeStxOG5zczZ0aHdsanRwTWJmZmJHYW1Id1pNaGhRbjZIdjhW?=
 =?utf-8?B?WFR4Yy9wSWw2aHpOVW9KTWs1bHNmcHRKRWxrV0Q0WElabi9XcjhtL0pCdjkv?=
 =?utf-8?B?Y3prZkJYSUZheHV4TXV4R1BaS2RLaEh6NmNJaHhPbG9yQkJYaVdoYSt5WWhF?=
 =?utf-8?B?Nnhpb2RtcFBML0kvWGxGUnNTQXc0dW1MTmE0OENTZ2dpOXZmbXREdEZhbENV?=
 =?utf-8?B?QmJ1Nzk2dFlDUWFtU2N1VENESGJkemRGcG0vSnBlWklKRVRXczFXMXl5dENk?=
 =?utf-8?B?ajBVdDJVWnQ0MlRnaXo3dG9ubmVuOW1mcFMyR2E4Sms2ekFKeU1DSlVrL01P?=
 =?utf-8?B?bEorZFJZK2dJdk0wa0JTSHBXbDBQUFBCRjZ0ditiR3c4dXd6MjBKSVNmMFJO?=
 =?utf-8?B?V29RU0VoMm5Fek5Zc3J1RnpDVDEzakp1S3kwU3RCaDJCSU9Zdlo5dG12ZWRn?=
 =?utf-8?B?STZ6RG1jYm1PUmM5S2hOVXZjOVBYVW1lMWZYM09UK0FteFJDUE40SVVPUTI1?=
 =?utf-8?B?cDBuMDU1VHhmeU1oT0grelczNmJyNGdhQm1VbHdNWTVqV28yWDhqdWJLMlNi?=
 =?utf-8?B?TG93VXl0YXRpL0FnVUdjUHVqd1oxcXQ2a3lqd0M1WGtIMmYyZG5pb2twVkNT?=
 =?utf-8?B?d0xJc29xSjlCT2ZnbVo1U0h0ZzluWkRFMlR3M3Jya25EMHYrb3dvNkdjYlY2?=
 =?utf-8?B?NUh3ZmVRRFdPcTg5UlFnWHBXNzZrYW1ESEEvZ3ZQUGx5QktJL0dlUXpJNGJC?=
 =?utf-8?B?QzdTaUk2R2lzNldzY1kwdm9EcUY1UXM3Ky9wZGljUTZZWlNpQ2s3SHBTMFlJ?=
 =?utf-8?B?cWdOUUdlbjRCdVdxUk1pamd6Zkd4ai9qWlVMR09rK3RIRFNkYTU2RmV2ZDNo?=
 =?utf-8?B?UnJUYS96MytManVad1RQTThPZlR0dVRhNjRvSzZuS3RqYzlSWlJpVXR6dWxO?=
 =?utf-8?B?MEpPaEt4NlRWK2dpZ2ZCT0NwNjBqSTdQSm9uRi8xTzhqYnpRa3lUcUg1Qm5S?=
 =?utf-8?B?T0xPQktPM1FycTBpZVVMVTJYTzd6WHB3TjBCUm1tK2pDL2dUTGxDSm9WejFk?=
 =?utf-8?B?Zy90TSszOXUzVkdjakFQMWlWbkZrRWNuQlU3OGQyUTlBV29KbERkL0FzclYz?=
 =?utf-8?B?ZlNPaTJYT0h1dGh3Vm5LUWpvaE03dENoR1h5NS9LUmJMaXVzSVRIZnZQMEht?=
 =?utf-8?B?dnJGVGg0cys5SEl2RUMvTXNvcEZONUpBcWRSU1U5ajVJcXRJOXRSL21wOHMv?=
 =?utf-8?B?WWN6MU53cFBRS09kWWo0RVVKWDlVUkUzUysrNGxMQTVNOHArWm5sYTNpRDVB?=
 =?utf-8?B?Sy9LeGFQZG45NTZFUUNUSEFxWEpZb3gvbkQzOWgrdVZTYUJ5WWhUL2JKY3Zo?=
 =?utf-8?B?YlVoMk05UW1xc0xPb2FOcEc5NW4xTlJyRVhLejFHY1c4STM5b08yNXpVN0xi?=
 =?utf-8?B?QjE5R3NTVSszWEw1UlJxcldUNHJCQVRYck42VVZSR3ptSEZ3SC9BY1U2NlU4?=
 =?utf-8?B?cS9iR2dNZkFCR2tFeWl3Y2tGdjRtbGVuMDcxS09HMjBMZEFjdi9VY0lmc292?=
 =?utf-8?B?MExqQThSQVJzeVVBQ3l5WHNEMEt1akF1YUhGbW02VXVGYzlGTUFKeThvclIw?=
 =?utf-8?Q?L9VbDXeruq7YvkGk7GzN84miN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f07404a5-4799-4534-02d2-08dd4a0a2f85
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 19:36:16.3532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KcnK3vkcBGFQDUObAxf6FK/HIzn8huX9YeS3W8gSvpQTrpHN87eOALe7RPLtks7OqY1/WreHTs6rjzfJ9LzRqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8361
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739216183; x=1770752183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qjJZoGgVOFeVWbLH0JDEUQqlvfOCNmHSqCAK3XUI47s=;
 b=GRcMmt/ksi3g5q5l0eFN3reB/KpR1acOChIKQ/8Z+IZQ8ghppulouI9T
 MJ0PWfOqYlF5miZw5e03W515c8KmlQGli+I13JXe6i/ZUHACSp2da1Zaf
 4SVbuG0ec0povbxx8Wrb0QPlAAdux2VDk0FMVbh7baqAt+6T7gIUOyn3p
 sBNjozK7rX34FLgOgIwVOmwXeVHeqyGNUz53a+VHwxccjY0mNTL3g03K7
 1qXILKaTlIc7JHii9mBYjGCbNR1Dsgi20FDSqQMe23J5H1aa1i9OGSapw
 gm2VoRRJXh7yCfZJUpfqSFaURfv/LyDjXoyKaQ0ISnF8F8qI2fqqNt76j
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GRcMmt/k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call
 set_real_num_queues in idpf_open
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMb2Jha2luLCBBbGVrc2FuZGVy
IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEZlYnJ1YXJ5
IDEwLCAyMDI1IDc6MDIgQU0NCj4gVG86IEhheSwgSm9zaHVhIEEgPGpvc2h1YS5hLmhheUBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgU2FtdWRyYWxh
LCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+OyBDaGl0dGltLCBNYWRo
dSA8bWFkaHUuY2hpdHRpbUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQt
bGFuXSBbUEFUQ0ggaXdsLW5ldCB2Ml0gaWRwZjogY2FsbA0KPiBzZXRfcmVhbF9udW1fcXVldWVz
IGluIGlkcGZfb3Blbg0KPiANCj4gRnJvbTogSm9zaHVhIEhheSA8am9zaHVhLmEuaGF5QGludGVs
LmNvbT4NCj4gRGF0ZTogVHVlLCAgNCBGZWIgMjAyNSAxODowODoxMSAtMDgwMA0KPiANCj4gPiBP
biBpbml0aWFsIGRyaXZlciBsb2FkLCBhbGxvY19ldGhlcmRldl9tcXMgaXMgY2FsbGVkIHdpdGgg
d2hhdGV2ZXIgbWF4DQo+ID4gcXVldWUgdmFsdWVzIGFyZSBwcm92aWRlZCBieSB0aGUgY29udHJv
bCBwbGFuZS4gSG93ZXZlciwgaWYgdGhlIGRyaXZlcg0KPiA+IGlzIGxvYWRlZCBvbiBhIHN5c3Rl
bSB3aGVyZSBudW1fb25saW5lX2NwdXMoKSByZXR1cm5zIGxlc3MgdGhhbiB0aGUgbWF4DQo+ID4g
cXVldWVzLCB0aGUgbmV0ZGV2IHdpbGwgdGhpbmsgdGhlcmUgYXJlIG1vcmUgcXVldWVzIHRoYW4g
YXJlIGFjdHVhbGx5DQo+ID4gYXZhaWxhYmxlLiBPbmx5IG51bV9vbmxpbmVfY3B1cygpIHdpbGwg
YmUgYWxsb2NhdGVkLCBidXQNCj4gPiBza2JfZ2V0X3F1ZXVlX21hcHBpbmcoc2tiKSBjb3VsZCBw
b3NzaWJseSByZXR1cm4gYW4gaW5kZXggYmV5b25kIHRoZQ0KPiA+IHJhbmdlIG9mIGFsbG9jYXRl
ZCBxdWV1ZXMuIENvbnNlcXVlbnRseSwgdGhlIHBhY2tldCBpcyBzaWxlbnRseSBkcm9wcGVkDQo+
ID4gYW5kIGl0IGFwcGVhcnMgYXMgaWYgVFggaXMgYnJva2VuLg0KPiA+DQo+ID4gU2V0IHRoZSBy
ZWFsIG51bWJlciBvZiBxdWV1ZXMgZHVyaW5nIG9wZW4gc28gdGhlIG5ldGRldiBrbm93cyBob3cg
bWFueQ0KPiA+IHF1ZXVlcyB3aWxsIGJlIGFsbG9jYXRlZC4NCj4gPg0KPiA+IHYyOg0KPiA+IC0g
Y2FsbCBzZXRfcmVhbF9udW1fcXVldWVzIGluIGlkcGZfb3Blbi4gUHJldmlvdXMgY2hhbmdlIGNh
bGxlZA0KPiA+ICAgc2V0X3JlYWxfbnVtX3F1ZXVlcyBmdW5jdGlvbiBpbiBpZHBmX3VwX2NvbXBs
ZXRlLCBidXQgaXQgaXMgcG9zc2libGUNCj4gPiAgIGZvciB1cF9jb21wbGV0ZSB0byBiZSBjYWxs
ZWQgd2l0aG91dCBob2xkaW5nIHRoZSBSVE5MIGxvY2suIElmIHVzZXINCj4gPiAgIGJyaW5ncyB1
cCBpbnRlcmZhY2UsIHRoZW4gaXNzdWVzIGEgcmVzZXQsIHRoZSBpbml0X3Rhc2sgd2lsbCBjYWxs
DQo+ID4gICBpZHBmX3Zwb3J0X29wZW4tPmlkcGZfdXBfY29tcGxldGUuIFNpbmNlIHRoaXMgaXMg
aW5pdGlhdGVkIGJ5IHRoZQ0KPiA+ICAgZHJpdmVyLCB0aGUgUlROTCBsb2NrIGlzIG5vdCB0YWtl
bi4NCj4gPiAtIGFkanVzdCB0aXRsZSB0byByZWZsZWN0IG5ldyBjaGFuZ2VzLg0KPiA+DQo+ID4g
U2lnbmVkLW9mZi1ieTogSm9zaHVhIEhheSA8am9zaHVhLmEuaGF5QGludGVsLmNvbT4NCj4gPiBG
aXhlczogMWMzMjVhYWMxMGE4ICgiaWRwZjogY29uZmlndXJlIHJlc291cmNlcyBmb3IgVFggcXVl
dWVzIikNCj4gPiBSZXZpZXdlZC1ieTogTWFkaHUgQ2hpdHRpbSA8bWFkaHUuY2hpdHRpbUBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRw
Zl9saWIuYyB8IDUgKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRw
Zl9saWIuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYw0K
PiA+IGluZGV4IDZkZjdmMTI1ZWJkZS4uOWRjODA2NDExMDAyIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYw0KPiA+IEBAIC0yMTU5LDggKzIx
NTksMTMgQEAgc3RhdGljIGludCBpZHBmX29wZW4oc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldikN
Cj4gPiAgCWlkcGZfdnBvcnRfY3RybF9sb2NrKG5ldGRldik7DQo+ID4gIAl2cG9ydCA9IGlkcGZf
bmV0ZGV2X3RvX3Zwb3J0KG5ldGRldik7DQo+ID4NCj4gPiArCWVyciA9IGlkcGZfc2V0X3JlYWxf
bnVtX3F1ZXVlcyh2cG9ydCk7DQo+ID4gKwlpZiAoZXJyKQ0KPiA+ICsJCWdvdG8gdW5sb2NrOw0K
PiANCj4gV2h5IHdhc24ndCBpdCByZW1vdmVkIGZyb20gdGhlIHNvZnQgcmVzZXQgZmxvdyBub3cs
IGFsdGhvdWdoIHlvdSBkaWQNCj4gdGhhdCBpbiB2MT8NCg0KSXQgd2Fzbid0IF9yZWFsbHlfIHJl
bW92ZWQgZnJvbSB0aGUgc29mdCByZXNldCBmbG93IGluIHYxLCBqdXN0IGNvbnNvbGlkYXRlZC4g
VGhlIHNvZnQgcmVzZXQgZmxvdyBzdGlsbCBjYWxsZWQgaWRwZl9zZXRfcmVhbF9udW1fcXVldWVz
IHRocm91Z2ggaWRwZl91cF9jb21wbGV0ZS4NClRoZSBzb2Z0IHJlc2V0IGZsb3cgc3RpbGxzIG5l
ZWQgdG8gY2FsbCBzZXRfcmVhbF9udW1fcXVldWVzIGluIHRoaXMgdmVyc2lvbiwgc2luY2UgaWRw
Zl9vcGVuIGlzIG5vdCBndWFyYW50ZWVkIHRvIGJlIGNhbGxlZCBhZ2FpbiAoZS5nLiBpbnRlcmZh
Y2UgaXMgYWxyZWFkeSB1cCBhbmQgdXNlciBjYWxscyBldGh0b29sIC1MKQ0KDQo+IA0KPiA+ICsN
Cj4gPiAgCWVyciA9IGlkcGZfdnBvcnRfb3Blbih2cG9ydCk7DQo+ID4NCj4gPiArdW5sb2NrOg0K
PiA+ICAJaWRwZl92cG9ydF9jdHJsX3VubG9jayhuZXRkZXYpOw0KPiA+DQo+ID4gIAlyZXR1cm4g
ZXJyOw0KPiANCj4gVGhhbmtzLA0KPiBPbGVrDQoNClRoYW5rcywNCkpvc2gNCg==

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPNzM+U3e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:35:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35328AED41
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6C5740B5C;
	Thu, 29 Jan 2026 10:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UsUzaoDWQwZa; Thu, 29 Jan 2026 10:35:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37D0040B66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682915;
	bh=DWtwqEAHL3IQRkKwJDT87JkPQ2IPlTfnPGwlW6eC21U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bvs98qcN5J9u81O7sq61IUzoqFtSyoZD3uP/xEWWMVpJwtOYtGYUv6oh3LOcmeteE
	 lhdS4MrnTWuL8wIqaZ/ePaB8WixkRYSFZXolJaDZJsXFoRpcV+fpGzbdyAuc0lGq+p
	 yyeZPW1zXHegB/VoiAL/Dg+sWt7PbuNBAeYZ85EA6dTH7BG4SRyq8aFrKyXKdBYjet
	 Y9D9ge+zpCL6Csoaf9QODd9Zhfufj4W3ncayoS1HzUH9qbl9QZad3YAxOoMThxXwOe
	 hSPQP3VBbkOJwSd7WzJ4p66zXxktdDJOHQJfqkEZ6vRxd6XVWLnab85WPiOlJIxEYU
	 qKyA1oKs6/YsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37D0040B66;
	Thu, 29 Jan 2026 10:35:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A4EF61AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 868DD40B56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ug50jeoito5e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:35:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 700E540592
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 700E540592
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 700E540592
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:35:12 +0000 (UTC)
X-CSE-ConnectionGUID: cVqgTxGKR4qzoBjXdUiPKQ==
X-CSE-MsgGUID: nwqtnvlOSW6kDO64Nl/Q3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81552900"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="81552900"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:35:11 -0800
X-CSE-ConnectionGUID: e0R0IwigQQuPnXY88E4n0A==
X-CSE-MsgGUID: gphMQzTZTrGtrtn89C2eag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213090643"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:35:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:35:10 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:35:10 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NSmiLcSq06Bxr0mwZ0eaL/medNcEZZHGY1I4q7H97MAUxf0gKeTHPgKenJXjJRuDdnI/xeWNdpEl6EHIgZHmtWSZNhkb3kKqEl7OlS8MtQupkG+8A4Hwo5HKo1KsEfLuSHaWDWvcJR0Y/sPlMsOEeaHPLWr3CkwEZVFBRFAS8me/Xmmbe0BO0Cv8F6ZZwqdG/LzsoOwqNkdKqmVWAT4Pnsn3u+FWiOKG8ft2Dqx0zFTulTeUtQ5ENeqlTOT8VfjHR8c4SWFOlpbCUV7ScZCNjOtf1294Wz9VKBosFffyT9Ps0A0Bdbe8r5yPsv0gKlgsH7ufuDl7tEj+RPzNrrWj1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWtwqEAHL3IQRkKwJDT87JkPQ2IPlTfnPGwlW6eC21U=;
 b=Eal2IXy20cu93n0gJ9j4uQDZNuJOqE8hwGpnJyzBN6WKmr0Zcy+Rw47y9NRuVglto6l19SZMSL4ddqNnOt9AkpVLmcXC/6IM9f6vf4LI7pLqBjw7QzcHwOE/7rdZ/FuaUysfQPauLmd3WQDQCoILOQx09j+fMdQ2SpOnpb6pgqnEaDzBB38NcgnaP4WnDSdF/Ad5Jl5bf2AaD4f4ZQTGEj+Q/wBaJBX3SBM9bKH+v+e994Aok2CF6xDR6Xzim8lemLlWFpzwMTu2v5B2FnuluhWjqLGgnFYZdZIUvhZRQPp6tCNjcCfNVXRJIoNmPAAVlEfoDFzUnEck+EfKW9q35A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6568.namprd11.prod.outlook.com (2603:10b6:806:253::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 10:34:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:34:51 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 29/30] docs: kdoc_re: don't remove
 the trailing "; " with NestedMatch
Thread-Index: AQHckPaLoQkRoEYj/0WGw/cmuQinyrVo89gw
Date: Thu, 29 Jan 2026 10:34:51 +0000
Message-ID: <IA3PR11MB89863C1EDB7556620CB73C42E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <e307c046f3f788021060b5ad0fe996c6c6dfb2e0.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <e307c046f3f788021060b5ad0fe996c6c6dfb2e0.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6568:EE_
x-ms-office365-filtering-correlation-id: 32d9233a-4dfc-4325-e728-08de5f220918
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?T0VHeXdTTGJZSklpR3Y0c2N4MmMzeDFwWlcrNUlDbEFkQWlrbVdVbWlqQ1Uz?=
 =?utf-8?B?cERySGtSRnNsZURqOE9ZNkZXV2ljdjdhRVM5WmNRTHV3UnNENUVWeFl2WWFK?=
 =?utf-8?B?cHB5K0l0U0xjdjVwTWgwOEYvSXUwcDlza1hQdmtYZHd4Z0FIdFN2ckxxTXZI?=
 =?utf-8?B?TmNvSk5uVmdHZWptdFhNbEtMYTBMZ0pzMll4NlZIdHc4enBNKzc2WDRkaFdH?=
 =?utf-8?B?UzFENGY1MnRWdnRSOGpFYXlzYkV1SlkrSGJpSzAwOHlNeWkwVHArYllLaisy?=
 =?utf-8?B?a1ZabDhFd1VsQTJnanNqMXB6dThBOFB0K21hWWVJMmRXMFdDZ09NZ0ZIVWgw?=
 =?utf-8?B?bG9lRXlPNFpqK01qdlFRbWUzSHdRQUwzelZwQ21SOEF0cXBIOE5HdG9jS2JQ?=
 =?utf-8?B?cXNndnY1ZEFSS2NoN3ZFS3dHN3hGT1FDTjdlUDVtYmhJd2dMcFVyd1M3ZEZk?=
 =?utf-8?B?WWpxK3FOUjNUVlFJMk4vQTBSNlROSTAzbDdFRXBGdmw5VHloK2IyajJWMmh3?=
 =?utf-8?B?UXZ1UmRpalIxZ0pHeTg3cHFaWS9QZk1mTWFaTDg0UHhrZEc0Q2Q3TU5aR21N?=
 =?utf-8?B?ZTJESmo5Sk5HMzdBMTRKN28yV1QyeDBoMkcwNHNodzZDS1h6OGwyZFo5dmdH?=
 =?utf-8?B?YXluZlFTSDFsTUs5SWI3QjQvRXU2eFQ4VUNGbEpWL0QyeVprUXp0Z0dVV0Fi?=
 =?utf-8?B?bHFJSzNZbE4yaVlZU0RXMktjdGdOdFdiTTVtZ0hQS0FXNmxvbzNTcG9jcDdI?=
 =?utf-8?B?c29lTnlwY29jTkNEQ1lwMlQyUU1hOExaNXVoSTM1cTdWN2ZOVDY1Y3FRVHJ4?=
 =?utf-8?B?NXhkOGdKL1YwVThjQkxUMnBCY2dLaUxGOGVidTNPanRkRlRFSldHcG9sM21a?=
 =?utf-8?B?TVhBVnJZOFFXK3dTMURZZDdUNGRHMDJjalpaaEdrMWs5M0RDNVVlc084Zk9j?=
 =?utf-8?B?d1NLL211d2JrWXBPRUptQytYL0VXdktQOGRrMFQzRHhia09YZmNHRXpoWTVh?=
 =?utf-8?B?SVplQmY3Z2trdUxidlJQTUxaRld0czhuRnpQMUMzK2xSdmg2dVdHemh2V3Fw?=
 =?utf-8?B?azR4Q3BQUHdCd3QwVkx3ZFZyRzZoajh2Zll3ZUdlcHNqZmNvTUh1ZUVBS1V5?=
 =?utf-8?B?b3IxUDNLZm1zMWk0cVpJNUVBNi9VSGc3TzlqeStMS1h4TDBYNHROcGpIQ3hL?=
 =?utf-8?B?VVo4SEdMTXA4YTBqU3doYnFkUWlnb3F6NEtmUVkzdllZT3I2LzNVRC9TaXNQ?=
 =?utf-8?B?b05NczAxNDcwUzM2bzBXQnkvTHJ0c3dIeU5iZVhwZXJjRDlVaTlSbnBDeTJP?=
 =?utf-8?B?elZoM0cyaW9ZWUI2bEFzYzNxMjJ0Z3UxemFRQ3kxY3phZTJ5eEIxQlUzV0tH?=
 =?utf-8?B?MVdwSkM5dUhMNklaMml5RXc1blhnWmpTbWp4TjhPMVltYWt5OFpzeS9ZOFV6?=
 =?utf-8?B?akFRMUZMa0FpSENMcFhyK0Q5YTV3MlpCcTFOMkRmMEtORW4xSGtxNGxERnpj?=
 =?utf-8?B?MVJYM2U4WTRkMkw0VUFPTUk4aFFUdnY4bU9tcldqT2MxaVJyRm1jUjZXNlNi?=
 =?utf-8?B?VElpN0hOak0wYUFTRDVEMzdhVTJTNGQvL3dSd3k2OER3RmtFRGVWb1BSQk5C?=
 =?utf-8?B?OWsxOHhtNDFHSGR3YjZJaTIxYWZnS1pUZm9OeG1YKzdVcVZjNG1NZ3JpK21i?=
 =?utf-8?B?bzhrMXJFRkNmZzJsTmgxSWkxREpuV05taWg3aEVGbzRNdUNlaTBPT1JtdXlr?=
 =?utf-8?B?ck9vSGdDUzVuSkVoWjY0aEFaV3FRWXdZT3BOZVNaVlB4VFdCZUp0NjdNbDE2?=
 =?utf-8?B?T3VTdXlpaDVRczVQQWw3T3pOelNGL3YvNE5NeCtKbCtmSjFIUWlNZEw4WjVE?=
 =?utf-8?B?NFNiY0syWXdnMWowRi8xa2x0L0YyZ1lDa3NMeUhMTU0vUnl4cjhHWU1sd241?=
 =?utf-8?B?UDZWeE81OXNJbVFtUDVMS3BJdnRpVzkrbjhvdUVlenNnT1Mxc29RUVh6YmJq?=
 =?utf-8?B?T2taaURVek5peFpuT214N0NETXJLdjB6Tnd1THRCaXdDbEpMZURVc1RsTXMy?=
 =?utf-8?B?QlpybHdDWDBLRGFVNjR6RDdLL05OV0l1WU54Y0lXNW9UZ3JoZGNKSzZvZ2Rv?=
 =?utf-8?B?OU5EU0U1KzVlYlV1bUFNVnV0UHh0YWhuU0taa2RQZ3NnTGIvWm12emwxRlhx?=
 =?utf-8?Q?HmutvAw6cj+rpP4UVIhshD0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2lIVHpGZ0hybW1OZTJKM1pGYm00Y3hjNyt3eXMwRGRIU0ZSZkZURXdycytK?=
 =?utf-8?B?NHMvdTlvRmVTVkVQd3FtemhNTFc2ejR5YjQvQUNObUhNYm5JZitMWGhVZ2tM?=
 =?utf-8?B?RE5PWEtCeXg2d0xVbThYUlUzOVQrU2ZndkpuN3hySUhKckJJbVQ4QWI0QXMz?=
 =?utf-8?B?MVl4N2E0VC9oSkExbFlDeUFJMnNHTDJEUkpCSXFCT2RzaXVDZE8vQ0kzbTFu?=
 =?utf-8?B?SURaK1YvTlFpTTVpUy9xQU5YYkRqaGR1cEE0TDFGdUlUcnZVc2FQRlVqNG50?=
 =?utf-8?B?TDdqaWVQcTBOTlZ5N05JNktCZ3FHcytybGNXU2ZjSFdNUktCdDNvRFo1VEE1?=
 =?utf-8?B?djc3dURjTURCejNLbkRaSDVNUlZpcXNrZnFvWTk5dHJnMXo3U0JiZFhhU0wy?=
 =?utf-8?B?dmwxYTZlaGE5MWdSZGtZVk9HbE1hV1gzTkZsUXhPcGN5d05FR0YrL1FCNVdQ?=
 =?utf-8?B?bjRTQnVYMkZacHU0TXFocnRnRm5ZS3ArbnFVaHhDT2I3c0hDVEswWmhxM1hV?=
 =?utf-8?B?ejVBSlJvUXEyRExBZ2VYUzJHeExMVGZTZ0twdWZoYTNZdmhhNit0S3hDSzNG?=
 =?utf-8?B?cVhtRGgwRk5LMG9RRHlHcWxKRUxGM09McGtPWWJlWnhSL0Q3bGRPRWJ4clBD?=
 =?utf-8?B?UStNeHJXZGtWdmFxbGZZSlczT21kT2JyQWlSUkJPbEQ1QldHVHpabTQ0VWh1?=
 =?utf-8?B?S0ZUaklPRSt2YzBpWjA2L3l5YjA1TlZLVUNiL0hFVzlBQkxIaS9peW5jU0Qw?=
 =?utf-8?B?eW5EVnJXUG9nSGJyTTJiWDUxZVVDZVlXKy9UVTRiclhwUXBQcFNtOWJHcUN4?=
 =?utf-8?B?ZGVZcWVyVjZBRTh6c0p0V0pVN01zSmxhbWh4alkvMVZ3M3VOTUJxMUpka2la?=
 =?utf-8?B?L1RGcERnSGF3TzAremRkZVZCMWJiSDhIbDZQamZVakc5L1JmdjZzN0tWc1BM?=
 =?utf-8?B?TkhxU3UzT3BKZWFwWE10TGwrWWYyRFBTRUgzbGhSUXNhSUJxbGRoeVkwQTZz?=
 =?utf-8?B?eHpGZG52VlZwSk0rQ1RQVmF0QlFtejc0dHVFYUZBV2hXSWZwRDYrT1EwT3FF?=
 =?utf-8?B?TlpOSzB4R1N3dnZpNFBOcG9EYU55Y0kwbmRhUTJoVnpYREEzNGxpL0puei9O?=
 =?utf-8?B?REFMQlhOb1N3MjNQTmlLN3NtczEzL3BaazhEZmZDTm5zcWlBVkJkdGp4T2h0?=
 =?utf-8?B?a1h3S3gwTjRWKzI2UXpvTzJTcXpUNmk0YWJPVlVOVldtMjdudnpuQTBaczVr?=
 =?utf-8?B?NDFWRkMvT3V5U3cyS1BmMDVCYUl0VlUxL2FYMFBEQ0d0dnR6ZW1BTUUzdXZw?=
 =?utf-8?B?R0pTSTYyU2lMRkJtTUcyYktjbVFPSkJweVE0c0pKQTBvemN6ZlRiUlVOcUNB?=
 =?utf-8?B?cFdlZWNXZW9nM0kvd1A2ODRxeGJPQm4rYW5xNFJFYit3dXlWNURMUkEwdlM0?=
 =?utf-8?B?SlE5UHczM3pRS0Zqck1Gd2tObzJMMkVSYUdvcnVIRWhnN3JmR2dVL0hnL2RL?=
 =?utf-8?B?UDJHeVdKaU5MWWJUN2J4VmphaHpBaGZHVExzeTF6NE9leE5qQjl5WFRQWlJa?=
 =?utf-8?B?M0RqOUo1eWtxQjhBcDZVRTl5ZHU4dTFHWC9VaW1ydmJlS1BHR3gybTgvUjA5?=
 =?utf-8?B?YVNqVzF5cFI2V0NsbHFuSWlwNk9Ja1ZsNjBFOXRLZFdqcThoWEd5VDRzSHVx?=
 =?utf-8?B?cVgxYjZHVExhZTNIRkNKY0dFZ05sNlBHcEQrTENPaTMyc1o0SjR0WTVoemx2?=
 =?utf-8?B?a2hVcHF2TXVRMFpNYlp0MGVuRW9kRHEyOCtYa2hDbVduOUFRdDFEa0lDbWM0?=
 =?utf-8?B?L1VHaEM1WisxYUJjVzhOeXNMV2dSM3RVVHk1R3BWb0NXenhIQTdKaFdSaGx1?=
 =?utf-8?B?ZzM1bGF1YitvWHpvZnJTbHB6UHRNNHMrNFlVNmplMUR6aHNHWml4d0JVeTZk?=
 =?utf-8?B?VU5FQVdITFNZc2dnK28zSW9kdmJ2YUNtcEtsNStTb2E4OTZoY001VjRybVpN?=
 =?utf-8?B?b3JPcHhmTS83OVZ5SzJEOVY4MTljcjJSOTZvaHZwNzJ6S1ExZU9XNHBpYlFJ?=
 =?utf-8?B?TmdPcDNPNHE5QjM2Vk9oQlMvVzlzUHhOeGsrQkY0VHVYVk5iTmR1UW5PVUto?=
 =?utf-8?B?bE82QVlyT3ZjUk5oTTFVc3ExSUlFbTdOYy83N1cyWkRDS1lrTUI5UjIzS2FC?=
 =?utf-8?B?OCt3OGlLS2lMKzJzNEFoN2ZtMFY5MVhRNHBVTHhZZTU2SUhzOGJ0OERaVm9z?=
 =?utf-8?B?VUhwNkh5SFVka2VjSnVacFJhTk85MzBkU1V0U0JyQXJBcXZkczMwNzdUYVQ4?=
 =?utf-8?B?ZVduOVVJYXpic1JGNDdaVEVEN1NqSTFubDNQaU85bFF0NVJnSFRwc1U2cHlo?=
 =?utf-8?Q?QbgjMY+U/pwwVfeU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d9233a-4dfc-4325-e728-08de5f220918
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:34:51.9078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aa+bzMBZFI+baKGdEY9d9cTVvB/u8YpQOyRew+Yg9jIGnGctULPBiffJwW6SQlPB8a1dvYJbRkAdey733v1y81RtwVnWhl8gSam+fDij/+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6568
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682912; x=1801218912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DWtwqEAHL3IQRkKwJDT87JkPQ2IPlTfnPGwlW6eC21U=;
 b=C6MHCWTIrxyRMK3E2v6+x8rMofm5s6JM+RCVxNmRGYZetAmdaA639rR4
 bnBD92NF4ggki7PcAlcdeCEqRE1sbJ6pjwIuy9mF+Vj9PorR0xYPm+N8N
 sqmn/gUf6Qm6YmnZ1Zq7AhiP3GbDCDmlOERp7kj06d/hzFUarm3a9OFwT
 z6fD83qRlwPWk3KowMsydW23sIeIOBYruSBBK15d0bOkBuE5g8ML1fcgO
 UbqzLVePjBHSpPUxTIZs09D9zWmOZqNMlJ4jBoUG9Ugm09z8ozerX/RA1
 23TZgQlgKGKMD2TL419HJ3b9KU8mhZr5gQrYhjqtW+cRTZ5w7/DDLoKM0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C6MHCWTI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 29/30] docs: kdoc_re: don't remove
 the trailing "; " with NestedMatch
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,infradead.org:email,lwn.net:email]
X-Rspamd-Queue-Id: 35328AED41
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDI5LzMwXSBkb2NzOiBrZG9jX3Jl
OiBkb24ndA0KPiByZW1vdmUgdGhlIHRyYWlsaW5nICI7ICIgd2l0aCBOZXN0ZWRNYXRjaA0KPiAN
Cj4gUmVtb3ZpbmcgaXQgY2F1c2VzIHRoZSBwYXJzZSB0byBicmVhayBzb21lIGNvbnZlcnNpb25z
LCB3aGVuDQo+IE5lc3RlZE1hdGNoIGlzIHVzZWQgb24gbWFjcm9zIGxpa2UgX19hdHRyaWJ1dGVf
XygpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
K2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9j
X3JlLnB5IHwgNCAtLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBiL3Rvb2xz
L2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGluZGV4IGE0OWI0MmUzZDE4OS4uMjk0MDUx
ZGJjMDUwIDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0K
PiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBAQCAtMzU4LDEwICsz
NTgsNiBAQCBjbGFzcyBOZXN0ZWRNYXRjaDoNCj4gDQo+ICAgICAgICAgICAgICBvdXQgKz0gbmV3
X3N1Yg0KPiANCj4gLSAgICAgICAgICAgICMgRHJvcCBlbmQgJzsnIGlmIGFueQ0KPiAtICAgICAg
ICAgICAgaWYgcG9zIDwgbGVuKGxpbmUpIGFuZCBsaW5lW3Bvc10gPT0gJzsnOg0KPiAtICAgICAg
ICAgICAgICAgIHBvcyArPSAxDQo+IC0NCj4gICAgICAgICAgICAgIGN1cl9wb3MgPSBwb3MNCj4g
ICAgICAgICAgICAgIG4gKz0gMQ0KPiANCj4gLS0NCj4gMi41Mi4wDQoNClJldmlld2VkLWJ5OiBB
bGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==

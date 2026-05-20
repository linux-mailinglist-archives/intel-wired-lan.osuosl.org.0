Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L9EJ0lrDWqHxAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:05:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F355A5895E7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 10:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9735641183;
	Wed, 20 May 2026 08:05:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2UuH6aH9wuvi; Wed, 20 May 2026 08:05:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 022B64113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779264327;
	bh=n25HF2xHc3agstvw2ov5R0Ij5wHnnetjxApLZ2uOQ3A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1W4BXAWKuCzFPoE7LHc6/e/n6TIAonjoX6KR96L3CAXZ4V2I8nAfu59Xq4fLHI1yI
	 wMkLOiujKEh7LAfV3puz+BOF8Y5pR7Fgm4OP2E/EaTDmMCMQ4yOSKdR+F6BINBMvxX
	 KzQxlsZHLbHf92SdIdRT55lQML6Thym1CIwjdIPe82MxPjcnmoueupLWZA8TLBqxXZ
	 olbMlTe8NMpg9avQ07J3wLMco4yTXAFOklP+uiR02Qg3fm82QD32ESVP4lEoGKda5v
	 /6oq6BeKq3IeEp3XSh7MY26qgbkxmVQssMqz/lZe7yYhdKMA0bGUxkJHSG7ESQrF/N
	 7diZwuWcdKZRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 022B64113D;
	Wed, 20 May 2026 08:05:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CE451B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E3E160FAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:05:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nm9SHkO0hPnM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 08:05:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6484160FA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6484160FA9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6484160FA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 08:05:24 +0000 (UTC)
X-CSE-ConnectionGUID: H0g1otxiTPWUHx+0tYGX7A==
X-CSE-MsgGUID: XK7PsJyaRXGlE6xXQQWuug==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="79302262"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79302262"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:05:23 -0700
X-CSE-ConnectionGUID: X7ri12axS7SOMjZ/G8Iwlw==
X-CSE-MsgGUID: vELckDZSQ5eyjXK0U2hAqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="245074445"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:05:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:05:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 20 May 2026 01:05:21 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 20 May 2026 01:05:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XZY1O68BLWj1jBAiXxDWVGPpcxJJ6RZSGcpunpQ2cbHEHaNPIclfXkoW84ukyjr8ycCTQj8pJgktw9zujav0X1Ebgg/3WlHckTHOxqKeiHFQHNyvTg4Mx78+TTVh3RwQHiG2eybYqBoR9iyFrX6hi79P8FbmzquBVRIBPOUJwPS4mwPoC/JAW/HANaBB4YQYWUIIFgujAoCtgqQx/uiQ4e1atUvvKoFs9QWXEQ1PeGEkcdyMAMHbCdQt6hzeF4TYiZqxUqfhCPNO/OBgQxLtheQCqclLvLpR3UJcF7jtzOKFBrhz9DRdH4kysaYz3weAo31/eovtbWaioMzjOfChMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n25HF2xHc3agstvw2ov5R0Ij5wHnnetjxApLZ2uOQ3A=;
 b=oV8kyKZukTjRzoKET2g2WGwwF6cx+9/ZASvKmPR8YvIJ7T/zVzZ0Xgx7Qzgt7AtR+fPbBh1c4cfWk9zAKlzYw+rG+emkKx4z2Q6tuBwKIDkDvtRaPHKA4UuCgEa2Yd1KvjCd2Cl5K1Twco7mT2g7+3GuVGzTfCF8zD83PxOsItBJzAtjg6vFUt2+Zd5AICTbxrGXpQFg1MgtY0JIiMt/eiFq/SgxEsXmHCYcmH61C+46Avo459pFyVZKubzoJDJCYoEEDSmgutZ7vZLpC7hqMjSoIDTgnw8G3nbETeKuXP/qm85SHq0anN+TgonXzj+sAtl6hzTt57gYVPNCdMdXnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Wed, 20 May
 2026 08:05:13 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 08:05:13 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Jose Ignacio Tornos
 Martinez" <jtornosm@redhat.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "jesse.brandeburg@intel.com"
 <jesse.brandeburg@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 3/4] iavf: send MAC change
 request synchronously
Thread-Index: AQHc18te1C8zWmZY5k+2ZgR3qQtVG7X18AqAgAARwoCAIK1VQA==
Date: Wed, 20 May 2026 08:05:13 +0000
Message-ID: <IA3PR11MB8985B550A8320A6349C6E5238F012@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <IA3PR11MB89861527E138BBA14FA907DCE5342@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260429120047.218369-1-jtornosm@redhat.com>
 <755876a2-92ed-42bd-b93c-10faa5b6f249@intel.com>
In-Reply-To: <755876a2-92ed-42bd-b93c-10faa5b6f249@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA1PR11MB6760:EE_
x-ms-office365-filtering-correlation-id: 6df9363c-1ade-4b82-3537-08deb6468592
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|4143699003|38070700021|11063799006|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: gJiIhQ4GBge5kG2Lchsyupk1z8Wjpyba0LwgZ/6maGqqsEJcfymG+3CI9t8JZGsLwQbTHPbFbm/VUmVfX2leLQrmKxuL5AEUbdXn7JOesVT+jqFi8Z+/mvHisDtKCv9QIu3QH4BcvORLF1nBSAhW1y6c6VpPPMCEbq7b3+oyu7XZ3oy+o8r++pMAlEbFHoyCo02LEfwdxnneZnvmJ93ZR8rWzAQNyxkW1g8eYiHRx/5nr5tairqviNRm96LcVjllTLnkpcU7Y2v6CXZmEDM8e+IJWmi96jYSS3m91lsRhhQpSX2lPPHmO08y8MRVYXSh9rRSh66RKpHLdqcLHG1tGy3B/5cBtG09oi3xxIWn1vRgd/fWWp4Q3t5biqwiHu7CDrFgtzHWXS+3Q/55YcJtt3+IdhXnaezlPvhHueuTefqAxZ/8UT559NDnijcCSMSz/F/nvDnFfcE+s+1DrTuY0wUj9SOCVGEQSZHnlfCc8IhI4XOL8WYjctcEz+/PaPT9NJ5I3YSMxUAajVU/Gg8hOdAUIBXRJiUr6FMYE0V+tq36UCunKhiCwuWcUWcaDD2vroKYjkOaeKh9lM1Yd0ww9ni7TEw5Cr0mdiKDsl0nao2TOYkLeIbHzeGuaEh7GVDvu38f7df5L0tLboIDMTvkK5/61rdwfbBdWwFcnEyxou/9fAJQSVbgL8xtfT1cUB+7axuH/tKb2FuXesVHn9nGFfdJgJvVkwN1LanCZ2mSHXtt53sB51f6MqwwcWhLqcbs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(4143699003)(38070700021)(11063799006)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUQ3RDM1ZFM5MUhBRFdpLzdDRHNVNUFOb3Z3dGJBYUZjTGk4V3JQYW9aejRk?=
 =?utf-8?B?Q3d1SFpXUFZueW83RXFBWWVYeXZ4enZrRjA4VnpyVXkxeTBvN2o5SkZJUWdW?=
 =?utf-8?B?eVNYR1hvQkVFRUZSaDhTY1NQYXZQamsxcFFwTG0yWEp6Rnc0ZXljYWpIS2JU?=
 =?utf-8?B?NUpkZ0pMU011ZzRLcDNvQ1VQaUNBaCtvZk5ueFRqd09iY1pCS1I5OEtXWm84?=
 =?utf-8?B?SnJxZHdrVkdXUjY5cVg1SDNRTnc1d1czVXdBeGZQMXduNmN0QjYrcGJBSzdw?=
 =?utf-8?B?Ty9JTDNieFRPWE5NOWdYVEgrbHF5YURnNGhkM01iY3h5dzBkekN6OWI0NlF2?=
 =?utf-8?B?K0JiRkxpTGVjMlkyL29HNVRFK2VOWHZGOW02YUNUNXJXVVpvd1RvYjIvdGQr?=
 =?utf-8?B?SmJMaTBac2l6L0RKWFZkL21wUUJiV0JjQWxVNERoTURhRy95RWZJOFk1MjZY?=
 =?utf-8?B?M0ZoZzVwU3FvWEJQaFQrOUIxejQrcy9aYWtTVzE1eEZoVWxsMGZ4SjY5OGlC?=
 =?utf-8?B?M1ZzVmlrUlB1V1luWGZTOUlwcmdJaVRIb2RrZDhEM1RVN1dIVmVQZlBKVzQz?=
 =?utf-8?B?M2h4TFpZRWlTSnhKNmhLZmVwN29xbFpYVDA1d1F2V0kwVGZSckV6ZnFyWC9B?=
 =?utf-8?B?UTBFemhvQnY1Y1pMem5xQTZEbU82KzY5TE9YZ3FzMlgrc2ZBQnZkUkwyS1Ru?=
 =?utf-8?B?SnEvTUhnOFJyWm1rUm90UitJMEdoSGJlUEpkb2pOTllSK1p4UG1iMnlETjVw?=
 =?utf-8?B?c0hnZ1JDZ3ZUVFE5d21pUU4zTXN4S3EwcGNkbVU1OHE3Q01WZ1dtTTZuTVRZ?=
 =?utf-8?B?YmFZTTFIY0RUS2g4NVRDdEJIUUNMc3hHWk9hNWIrblRyWVR6S2U0dUlMZEJT?=
 =?utf-8?B?ZVk5S3p5aytFVDJkSDlBVkVJc0VqNGhRTlJOZ0d3ZFJia2wzc293aXpRR2tI?=
 =?utf-8?B?bmQ2emhMeEZhY3NHMnhRVUp0SlNtSzI3R1pxRXZvUys3SFdmQ0dhbjBiaFB0?=
 =?utf-8?B?SFdGampqRlgyWDExTVh2VE5TTjJ4TGxub2E0L01yU2d5dE5VT1FQVWUrYjA3?=
 =?utf-8?B?MmRLVm9wOEMxRGt2bW5jWEpKWXEwYXQ0NUlGRUxuME1yWjZScDdxNkxadTJx?=
 =?utf-8?B?WFozcDhNaDA0Z2FLU3FzMU41WkVwVFFEZUJuNlFTYXZ1UVdMR0Z6eC83dkg2?=
 =?utf-8?B?bWN0U0tWc1dJZGxwd1pMbjRTNTlRb2ZqZld1UHJ6OENjNk54UjBvSzZ4R3Bx?=
 =?utf-8?B?OUE0OVZHZjFYcXRBRUw2Qlg1YnR5WmpMc2tUNEpYQ2JUUFlFaVYzWUlHT1Vk?=
 =?utf-8?B?UlErNWpPang5Rmd2bmNuejRPVmEvSGQ4TVlkTnBJYUVPbE4rRVFLWTdDc1k1?=
 =?utf-8?B?bGVBTnhPbldpWFZTWHRLTFROTFVvcGxUbTAxSXdiTGorYm8vc1VWakd5ZHlW?=
 =?utf-8?B?S094dG9Qd3NmMzFNOGp6TEdtUmdtRU1XbTRzdGswa0ZaY01NT20zWTN3ODNz?=
 =?utf-8?B?dHlFQkRUKyt1UlRJN0dUa3hKc1ZETGJSaExsWXdWblJqSXRSc293RzNtaXls?=
 =?utf-8?B?TnlzR1pZOHB1WFJEbVlhdGgzaFR6V2RXQlJXbmw3cFBsTStHaXEydUo3WExT?=
 =?utf-8?B?VFg3SEFJeG5XRXFlNWRmR3V2dXFMdFp2K0dYckVxcCtGUXFYa2d1cVdvbndw?=
 =?utf-8?B?VURCenF1N21lK1pnSEJFS0h2U2kycXhTZ05ZeGxjL1lnTGlLYTcvOEZzSnky?=
 =?utf-8?B?T2M5c3BVdmJNbzVld1A0OGRGakZ3WkNJb3Z3SllUbTNXalF2dUkrdWlLSmZ1?=
 =?utf-8?B?a0x4T0VXbG1lQUFzL3gvbFB5UDVPRU5NY01WU3U1VEhrajJLRGh0TTFLemNW?=
 =?utf-8?B?UzVyWEJ3QlJ6bzh1T04yeTBWTkZwdUgxOU1YWTQ5N3MzU0VYNkRWNHFSQktT?=
 =?utf-8?B?SmU3ZlFBNEROZTEzKyswWUcrd0pqUzlOaUxZeFZrRm9jQWxxczR1YXZ2VlNQ?=
 =?utf-8?B?bjRuTDFUS1FoajM4eEQ2SUVHNi9vS0REUUtmWnQwb2k5SGpNaXVqbDFYekhN?=
 =?utf-8?B?aVU0NnhhaGZqNGRZWkdjSU9CdFlNN3BBL0QyVU1UTUIxcXdTSWR4NVBUSXcz?=
 =?utf-8?B?eVR2aTJjUEhMc3NrcVBDME1iS2hqU1NCTUk5eWxVbm44eHljM1hRZ21UTE1m?=
 =?utf-8?B?WlRkK1BJNnlBNk1RMUJCcE5IMXYwaUV0OUVMbFVCZFg5SWNab2grMzBMWHZI?=
 =?utf-8?B?Y1UxNzFTRDdqekhWS3NEbllncnRlT0dTQVdLQmJlcTJYSEN5Vkg3enV3NVZ6?=
 =?utf-8?B?b0c1bnVreFg0SEE3NjY2U0xha3lKNkRNbFd3U1FzRXYzemRGQ1NmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KvvGBt4sdUCpm8nsCy1m8jDBG33rYQeLOxLLvec2XD076gbwizM9Cqp+PohXRszymS6imCB4d+p97CjENYaRfEIfGz/XYe+n+q3gk2pC4LZUOMLiCjNh8qMOzEfvn2mxODQhnzDo5zKag+amTq83qq73g9d9dxgnqosxE5Ym6jmSqQfyrgaxLDL2Lhj2WNF/YGbSgNuB/SHX1dFKStrf+bUiXuvJ9mRnbAgUCsgbQSjqhSReg74gR3Heqy+3RV0wh0NLRMFN4inhW7pSlTBEVM/2Q4wuVJOp6mmr/zEMXJzsiHwJzXqg1n1mYbg2G5FPHzmIS439zsn/aZ5dLp4fcA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6df9363c-1ade-4b82-3537-08deb6468592
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2026 08:05:13.7040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4JwiowcttgtoIb7sXMu6Xq69/dC4TBWqBfZgs1Ty/IjDCy962u8hsWj6AEnNBpSW/OtuHCRcnFjrk977hjH3TZIsy/32XuejB+0ov1lTQgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264324; x=1810800324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n25HF2xHc3agstvw2ov5R0Ij5wHnnetjxApLZ2uOQ3A=;
 b=WzvPoXacI479o8fX+upbRcYQ+4RGT5PhdKx2nshqWOEhbEvNT5vL+OVf
 xFXazsEhJTqRpPXMvWqAjVM+dO8EfI+jzQOgPCm/tQpeGkUeq1S7LKtjc
 cEoJ5UOE8WteaFtNvbRN1syGg7+Bb44J8l+h/URSQVVUo+2TD0KjjRnTa
 oC91u8vqzmLtiTILccr3JDiG47qwcUiRJqEygHSemt/dC1oHrXOCnGv2i
 AyPPNOomxOpCeidt74e0hXJ24uDXfMZFFq0Ws5gCInPwSjhDjxC4wvAoH
 JHFozNFpJbJcX4oklNteV5ov2XNYXcCAnPiMzOLgg5Dd2y1VmkM5RvmGJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WzvPoXac
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 3/4] iavf: send MAC change
 request synchronously
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jtornosm@redhat.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:jesse.brandeburg@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8985.namprd11.prod.outlook.com:mid,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,davemloft.net:email]
X-Rspamd-Queue-Id: F355A5895E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCAyOSwgMjAyNiAzOjA0IFBNDQo+IFRv
OiBKb3NlIElnbmFjaW8gVG9ybm9zIE1hcnRpbmV6IDxqdG9ybm9zbUByZWRoYXQuY29tPjsgTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBD
YzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldDsNCj4gZWR1bWF6ZXRAZ29vZ2xlLmNvbTsgaG9ybXNAa2VybmVsLm9yZzsg
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7DQo+IEtlbGxlciwgSmFjb2IgRSA8amFj
b2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgamVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb207DQo+IGt1
YmFAa2VybmVsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgcGFiZW5pQHJlZGhhdC5jb207
DQo+IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1s
YW5dIFtQQVRDSCBuZXQgdjUgMy80XSBpYXZmOiBzZW5kIE1BQyBjaGFuZ2UgcmVxdWVzdA0KPiBz
eW5jaHJvbm91c2x5DQo+IA0KPiBPbiA0LzI5LzI2IDE0OjAwLCBKb3NlIElnbmFjaW8gVG9ybm9z
IE1hcnRpbmV6IHdyb3RlOg0KPiA+IEhlbGxvIEFsZWtzYW5kciwNCj4gPg0KPiA+PiBJIHRoaW5r
IGNvbnRpbnVlIGF0IHRoZSBlbmQgb2YgdGhlIGN5Y2xlIGlzIHJlZHVuZGFudC4NCj4gPiBUaGF0
IGNvbnRpbnVlIGlzIGludGVudGlvbmFsOyB3aXRob3V0IGl0LCBpZiB0aW1lb3V0IGV4cGlyZXMg
YnV0IHRoZXJlDQo+ID4gYXJlIHN0aWxsIG1lc3NhZ2VzIGluIHRoZSBxdWV1ZSwgd2UgZ2l2ZSB1
cCB3aXRob3V0IHByb2Nlc3NpbmcgdGhlbS4NCj4gPiBUaGUNCj4gDQo+IEFsZXggaXMgcmlnaHQs
DQo+ICJjb250aW51ZSIgY2F1c2VzIHRvIGNoZWNrIHRoZSBjb25kaXRpb24gY2xhdXNlIG9mIHdo
aWxlIGxvb3AsIGFsc28gZm9yIGRvLXdoaWxlDQo+IA0KPiA+IG1lc3NhZ2Ugd2UncmUgd2FpdGlu
ZyBmb3IgbWlnaHQgYmUgaW4gdGhlIHF1ZXVlIGFuZCBub3QgYSBsb3Qgb2YNCj4gPiBtZXNzYWdl
cyBzdG9yZWQgYXJlIGV4cGVjdGVkLg0KPiA+IFRoYXQgY29udGludWUgcmVkdWNlcyBwb3NzaWJs
ZSBmYWxzZSB0aW1lb3V0cyAoYmVjYXVzZSB0aGUgZXhwZWN0ZWQNCj4gPiBtZXNzYWdlIGNvdWxk
IGJlIHN0b3JlZCBpbiB0aGUgcXVldWUpIHdoaWxlIGtlZXBpbmcgdGhlIGRlbGF5IG1pbmltYWwu
DQo+ID4gVGhlIHRpbWVvdXQgaXMgcmVhbGx5IGp1c3QgYW4gZXN0aW1hdGUsIGFuZCBJIGRvbid0
IHRoaW5rIGl0IG5lZWRzIHRvDQo+ID4gYmUgdmVyeSBwcmVjaXNlLg0KPiANCj4gd2l0aCB0aGF0
IHNhaWQsIGN1cnJlbnQgY29kZSBpcyBjb3JyZWN0DQo+IA0KPiByZW1vdmluZyB0aGUgcmVkdW5k
YW50ICJpZiIgY291bGQgYmUgZG9uZSB3aGlsZSBhcHBseWluZyAoaWYgdGhhdCB3aWxsIGJlIHRo
ZSBvbmx5DQo+IG5pdHBpY2sgbGVmdCkNCj4gDQo+IGFmdGVyIG1vcmUgdGhpbmtpbmc6DQo+IGlu
IHRoZW9yeSwgbm90IGNoZWNraW5nIHRoZSB0aW1lIGJ1dCBwcm9jZXNzaW5nIG5leHQgbWVzc2Fn
ZSBpZiB0aGVyZSB3ZXJlIGFueQ0KPiBwZW5kaW5nIG9uIHRoZSBwcmV2aW91cyBtZXNzYWdlIGNv
dWxkIGNhdXNlIGluZmluaXRlIGxvb3AgKHRvIGZpeCB0aGF0IHdlIHNob3VsZA0KPiBzdG9wIHJl
ZnJlc2hpbmcgInBlbmRpbmciIHZhbHVlIGFmdGVyIHRoZSB0aW1lb3V0LCBidXQgb25seSBkZWNy
ZW1lbnRpbmcgaXQgLSBidXQgSQ0KPiB0aGluayB0aGF0IHRoaXMgd291bGQgYmUgbmVlZGxlc3Mg
Y29tcGxpY2F0aW9uKQ0KPiANCj4gTXkgUmV2aWV3ZWQtYnkgc3RpbGwgaG9sZHMNCj4gDQo+ID4N
Cj4gPiBUaGFua3MNCj4gPg0KPiA+IEJlc3QgcmVnYXJkcw0KPiA+IEpvc2UgSWduYWNpbw0KPiA+
DQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVs
LmNvbT4NCg0K

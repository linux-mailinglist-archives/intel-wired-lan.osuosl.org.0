Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF9B97CD51
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 19:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52AB042AB8;
	Thu, 19 Sep 2024 17:50:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zzdeAIzUkcKw; Thu, 19 Sep 2024 17:50:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6318A41E6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726768234;
	bh=WiIwElFT8FRiaArLvBowoo8A0odnz2uuY4c8NDQ8iIU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KFRP8/BIXd4gAD9Lm/XvBX5+Bb2h2IX/Qo6XrIu6rSIdcPhcdlEPV0LjkLAxWJS6Y
	 YjRsY0EjIDuerRgLtw5MJiAvhzoZ2kKvKNREAUimuaczf92IHpyUOdz5jcE7VZFXCZ
	 MRLHdqRwkFanp1RmoRRfPT7jNpSlfkfbt2HSox6wenKQfpe8z2l53AVz0WoP0o4DS5
	 EpMd2ucM2+Kg2Jfa6Dn0gR+ij6qSZiLTpPrqkCHO9Y1/l9/jCx9z1SYI0yoRM2STi7
	 7yIAXyRE2zmW3mLdSDDQJA3Q7W+S5KDfF5Sjsz+98m9xu9XFg8G9ZbIYbnME1NrOzc
	 iTdnCy7T2B9Kg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6318A41E6A;
	Thu, 19 Sep 2024 17:50:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FFF81BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 17:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D82E412D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 17:50:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wSKdFa70F_DJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 17:50:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 39C4940C1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39C4940C1B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39C4940C1B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 17:50:30 +0000 (UTC)
X-CSE-ConnectionGUID: 0M/jN7v4R+K0UMz04M2MGw==
X-CSE-MsgGUID: m45GdXoERUyFXzYjhH8yHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="43267658"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="43267658"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 10:50:30 -0700
X-CSE-ConnectionGUID: 8FrLX27xQxaCc98zMdbP6Q==
X-CSE-MsgGUID: mMFOXCblRIa8nATpsoeokg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="107488942"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 10:50:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 10:50:29 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 10:50:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 10:50:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 10:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PW9mdlVY0oYeEj4nkzEwMBt2639LFJgTJLHSYNffiF/PJG6NlKaLARpG8aEHMI0aoyKvag6yywYcUHw0TkepR7qAM7kpS85VbeNsNWF5zp6fzkGhFCGU15gbtcMqfbCCNizOPO2Urq4bxPjI1zRNrXNeR1s4Nyj/dZinbBiGdbUeysV1ltxzsOLOc6KqEwZPu5rc2Gj7gB716F/E2fPvV/G+ZxIsBlRkDkqPWrtAN5ks485ZT35WaY6viXIfRzDRGkR1eYL5N4jsGxr9NN5LEuAvxtIBttmXNdK9yeMjiKDS55WS5JsQjVmXWrK3m4qGeEj/q8hrI6IaR1Y9Af9wzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WiIwElFT8FRiaArLvBowoo8A0odnz2uuY4c8NDQ8iIU=;
 b=czXohNovryWib5CHcl5Ac7rqHHaj4fJhlSMBQEEa6koXSBMmogxEdPuK0HYEFtD7TsEjdQnbBgjg8h7bCvslZct9BRFK+SUYq0Szt/0mVotheMnbt8dTXXoMFvPXMRjmVL0qOiICF78A34IlNHtqbGBeWOmvQyQnfm6KpL/9aMXUjealAXlmCaEARlrdgDCQ2FTCbTmpcQi6ey2E4TqNhSj5V1CELNOwDo1cpQaLvJM7XgJH62tnJVBglHvVtVIXw0CaD0qWCv4tRnUxcmwNugJjl+27QGA8YczjnZHLZzeaDWvG2+Ng0lTx/6sHujmQriqS5lFv5sUk0TxwQAjXdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7317.namprd11.prod.outlook.com (2603:10b6:208:427::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Thu, 19 Sep
 2024 17:50:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7982.018; Thu, 19 Sep 2024
 17:50:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Markus Elfring <Markus.Elfring@web.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>, Paolo Abeni
 <pabeni@redhat.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH] ice: Use common error handling code in two functions
Thread-Index: AQHbCreYsfL8DA0brkOlLZcV0lNUVrJfY0tQ
Date: Thu, 19 Sep 2024 17:50:25 +0000
Message-ID: <CO1PR11MB5089648C2C7127FABFF2B976D6632@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
In-Reply-To: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|IA1PR11MB7317:EE_
x-ms-office365-filtering-correlation-id: b37969cc-d1bb-4ee4-c589-08dcd8d38abb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?bzZKUnM5TlBDUFpBWWtZS0hlMWx0QnUxKzVVcHpDUFg3ME9qbGlOZXgzTWpk?=
 =?utf-8?B?Z05venM3MmM5OGprWjd5dEJnQ2pXMkhBQnErM3U0bEpISFlkYVczeDJVQkIx?=
 =?utf-8?B?MDZQbGNQQ2ROTitFRTJ6Q3JqaExOMGx2eU1kaTUxNGYrNElzb3ROcDNRNE1q?=
 =?utf-8?B?Mk9PVXRIem12UlE4dytkeDFxNkZBNEZsVFd6cDQ2dHZsRUdZSU02WEhrbTV6?=
 =?utf-8?B?WkN1SXR0aGtYazBOQnppNUJpRTNpZ3g1VW9tT1lXY0IxRjZMTlgvaE0xeWx4?=
 =?utf-8?B?d1NoeUIwMER6SnE1YjU0V3JEQTZrU1ZrYTY2Q0VyVTRTOWx6QU1tQ3d3OXNG?=
 =?utf-8?B?TCtzeFhUNFBDQ0xVUlp1MDJnamIwYVhuN2V5L1pRbVd4OVFyeWRCejdSZTZ1?=
 =?utf-8?B?Y2tkRzZmUG13SmZEUGVBaWpjVEc0VmlmZkVHSVV6UEZVNnNrUGJBZEV0Uk4w?=
 =?utf-8?B?S1NTeWpmdTFXdEd0LzYwS0p2WVoyNTFsSW1MVVNSeUhCL3VOMXhNZm5yQ2Zv?=
 =?utf-8?B?Z0xBY3JIc3k2NHdLeXA0cTNIbXFaVjJ0RjFBd0syc0N0cTVLZndLaFNqZkhp?=
 =?utf-8?B?eEhjNENLMDVFYjR5bmhnZFg1Y3c1YW1PdFZlR0I4Ujd5eHhFOHpEWEcvMCt6?=
 =?utf-8?B?ZUlZS1JnalVXcmZjdWR2TEhVbktQK3V0RC9SUlFlellJcXQxU2pRYlZOMjEw?=
 =?utf-8?B?M1lwVFFCdkJhU3c5WkwrVi84aXkrZEJGNXVzOHczUjZGaVhrL2ZmQUNhRHBM?=
 =?utf-8?B?bUIzOEdkUEJDYjh2TFp5RG4yUlRTYjI3dWNnNWVibDVZSldCQmVzN01ZR09V?=
 =?utf-8?B?SUhKdTQzYmdCR2R1YUs1SG5RV1EwL1d6VURBbFlod0Z3SjdLdnpjZWJNU1Fo?=
 =?utf-8?B?eU5tN2dYWXN0b3FpU0R2YTJaMFBSeVVVZHVod2RINjNKcTZhK0lKQ0FZVVVR?=
 =?utf-8?B?OWhGWERqUUtNVm9lM3RxUHRUQ1hjejVDRGgxTnllNm5yVFNLWWlqQkd6RE43?=
 =?utf-8?B?ekMyb3c1OXBacmJaeVZSY1E2OEw4VXVWRTNwMlF4bnY0RGhpd2VSRFZTaUll?=
 =?utf-8?B?cWRxTE1Ha3BkQ21xRm1yK3RVbFlicHBYV2trRUt3VDBES1VhNjlGQi94RExL?=
 =?utf-8?B?RTd0VkoyWTlmUGF0M2R4VGNYWFgyK1BISzduVzZtZTdVVmgyYXhhNFA5cVZu?=
 =?utf-8?B?dHZnbERIdy9Cc3dBMkljWjB3TXJ1aExIWnExTHBBaXdZdmRBbVdJTG9YUmc0?=
 =?utf-8?B?d2M2T0ZyS3hQRThBbzBvT3NWTlBuL0JoVFdWWm5iODBBaFZiZ0N1Q1hEeVRt?=
 =?utf-8?B?eGRHL3VNU0FXUUVjRkQ0VUMzWnBqUDdJbmV4S1BabXFRS21DYmhFVnJNV1c2?=
 =?utf-8?B?ZUhETDUycVI0N3RNOFd1WWhEb2hJMTczT3JiaHJBbGI1aWJQWWFCU25NVFVa?=
 =?utf-8?B?ZitrNHA4TDdQc3JRZlZzM2xXNmdZbkpNZ3pkdnBMLzZYMWlTWWJTaGYwMUFV?=
 =?utf-8?B?QXZzaXZOM2hhbldIU1FsK0g0RnRONHpaK3Z3QW5CVmJaWnY5NStHUTcyUHhO?=
 =?utf-8?B?ZFlaUldoMEZ0MkpYOFFTZVFMVVdIYXFRazk2d3gxNHkzL3lMUDJjTVhyVjNx?=
 =?utf-8?B?TU9Fa25IcWRodEFnVHBmOHFVV0EvQSt5S1ZrN3hkZU1WWnRvQmVRcVo4MC95?=
 =?utf-8?B?cFBVWTV2ejA3a2cveUtFYmF1dmJIUUFEcmhkN2s2TktmQjdXZUVSazc3bjlu?=
 =?utf-8?B?TG9YRGV6dFZjWDdVclJEeDROVkwwQVhwK2swNmxmemZZZ1RUV1E3Qk5sQitS?=
 =?utf-8?B?ZU40bFdJN0t4M1JPZlZiRjc1aHVyak5nZXpwaS93OElrY3d4a0dZV1VhOWJH?=
 =?utf-8?B?eXlTeWt2QmgxUW9GK0tvcXp0VXhGckRwS1JIbmtuYzJFRFhFMWxLWUJocEw3?=
 =?utf-8?Q?A/8rYyWJE1U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME9tbWJwZkhDakN1N2pNdFUvTThYamNXNGhqRVFJRU1zMldqZGpqSVZCY0ZL?=
 =?utf-8?B?dmtlRGZYTjh6MXVQTmErRDA4bFE4NlN4ZXk1TkdLZXJUYUZjR3dlOHFUTnBh?=
 =?utf-8?B?emZkalI0K3JBaWJLL3BQdjZMQkRsSGpuNHhQQ3pDc0xSUTJONVEyLzVNczFj?=
 =?utf-8?B?bkpsclNHblBnU0I4YWZxTUowK0ZnY0NrUm5hMFgwQStKVkFOQWpMcm95Zk9E?=
 =?utf-8?B?cjhMWEIrMnF1Rk1DRUZ0TTN4WDZqd1lRbVZQREJRNVNyODFVKzBkR2ZJRGtJ?=
 =?utf-8?B?ODZtQmNaeWRKamJ0TEg0WXZQSEhEU1V4YVpqUGtCbEwrNElGZDlWZnQyTXNj?=
 =?utf-8?B?ZXMrYnlPNDU5MEFpdzM3SkUvZ3ZxSGd3cllsUTl4TjVHZWMrSVRoOG10R2Ux?=
 =?utf-8?B?MkNLZ294U0s1cUU3bkdJR0J6NUhmbmloOU5RMG9qV3ZzNDhDMEpTc0E4VVBF?=
 =?utf-8?B?aVNNSXlrcFJyOStLQ1Y4T1M2ZjU1d0NPaXBjQkVKV0hUQ3ZlMUx2MzY5cWY1?=
 =?utf-8?B?bTlpY3JJRE8rczBNTWZaVWZzUTNaeUN6Qk5CblZvbFg1Nm1WSE9FYWdYK2dB?=
 =?utf-8?B?aUpVMlpYQ08yT0NnR2toUktwQmppVmgwZmVXdGJSN2ZLR1ovOStMRVlRM01C?=
 =?utf-8?B?aFNkZ3F2Qlo1ZGdkMnI2L1JUTGZCTHZSdm9XMDdEc1dhWmVFRGhENktlc25J?=
 =?utf-8?B?Zi9NNWhuUmhzTENYNWRBaVBlWWo0WURZV1ZZaWRacXFyUGhwNDNBQjNudlRy?=
 =?utf-8?B?VStxNElkdm9aNFhLV2VWb3J2bEFFSnpIQ1o5SC9Ra3d1bXUwUktLM3liUzVh?=
 =?utf-8?B?TllZRkI5SlR5aUxXNEFYLzRheXNJM0RFNXlQeEZXM3RleGs0b2M1RkhhK0tv?=
 =?utf-8?B?c1FSYUdVZjVIa2VudmVhbkhjemx6Ry9kMHNCbFR5SmVlWU9KTHNUdW13c0xN?=
 =?utf-8?B?ZkxpaU8yZktQUmdsbzZnZzVRNVIvVEtmQkd5SEpOeUE1bzRmdmtPakxpdzVZ?=
 =?utf-8?B?UkozbTNRK0VpaFdJZE9Gd0dBdkJ5Y09WZ2FhVGQrZ241cDNIK1FaVENHdHA1?=
 =?utf-8?B?dEZrVUZWNGJseUtxVTlVbDlwUjNienpZbC9qSUgyeEdydEhDUTdrWGEzVGEz?=
 =?utf-8?B?RXFmcGJUdWFSWGQwRlhiTEVDeTk5bkRhVnFhNUdRWWFKWGd2MHB4QVRnVVp2?=
 =?utf-8?B?QzdoelZVQy91b3FQd2R2VnJ1M0w4OHp2WWFONXhSMS9GRDlKSk85UnpuSnNN?=
 =?utf-8?B?YWFmbHptM3BJc3JYQ3FSdzBFNTBtQXc5ZnZhWFhDVGZOdWEvZnBsVXNnUU1R?=
 =?utf-8?B?bFcyN2wvbGdhMHFTMlh2ZDFDWjduTUI3OUxabzI1dmNSUGNLZFQzRyszMW5p?=
 =?utf-8?B?aW9uSG51dFR6MGlwWjhOb0tmYTVqZ0RJc2xlRWZlb0d3UVNxZ3dobTRwV1cy?=
 =?utf-8?B?eWhKSzNGY1RBem54SUtETHhRdVFLTk91cG05R0cvdEZXTFRVc1JUelpEc1Zl?=
 =?utf-8?B?S0Nxakp4K1F0aXlrZ0dpeFNsRkxRNDRtSDdCNnBCclpwbkk0N1RIR3hOYTRE?=
 =?utf-8?B?em5vcjFZVUU1VTNWM3Q0cEgwSDZCdU9uc1VKZS9vdEl1N0l0cC92MzhmVGND?=
 =?utf-8?B?N2MrbzJRRWpIdGc0Q1R5SURJK2JPUlh3QnF3eXRMNmZXUXArV1loTUU4c05B?=
 =?utf-8?B?d0ZkY0UzMitzbXh5TFdYVU0yN0xIWE91SEZkZnhEZm5QK3d5bGlRbFJUT1pJ?=
 =?utf-8?B?dmw5UkovbGU5ODJBWlVXR3ZEYWQwSmtyZTA0QUZtM3VWcHRWa3c1ejhFYkQz?=
 =?utf-8?B?ZFBqYUVieDdnb3psa0RaUmo5NFdLNElGbGlXUXZwRFhrWlBrVkZmY2lNRXB0?=
 =?utf-8?B?aHFQVW1pL28zWDM3dHZuK0pKbCs0VmNrcGZTaENaeHNWekdzR3FLeTFsRzBj?=
 =?utf-8?B?N1RZamIwSVJUS2Q0UHQ0bGw1aUhiSlNiOVZrNG1sRkZwODhtamJwb3VrZlJM?=
 =?utf-8?B?SnAzZjErRkh6YUxVTUwrWnhBR3JkYi9YM0tBWUtnenRRaDZ1ekhkN0Nra2Ny?=
 =?utf-8?B?bW4vUGp2QUI0bCtJMUZiUWRoU2duTEszQ09lU2R5TFpGc2FZUzBlRE0xakdj?=
 =?utf-8?Q?Q1oF2YdbVR1M2uzgJYUSFDq9d?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b37969cc-d1bb-4ee4-c589-08dcd8d38abb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 17:50:25.6534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +KxJ1qE/JZpDYxJVV+Xr/vV8NUJeq3jZCOl5vXySJU9o2aZaNjo5txZr9AisndBeysE9iBRIaTjE7ybeMKmR7sktSiLrU91sJ/d/FPApzNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7317
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726768231; x=1758304231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WiIwElFT8FRiaArLvBowoo8A0odnz2uuY4c8NDQ8iIU=;
 b=M2eXPt2I0h3nvj9Losiqn7uMTs/6ozjkKAK21iJApZ2dqAoH57KhMLp+
 t6Q3AxFiTWCKJ7ne2hP9NwOPB1yuL08eJIBDaGFXnAGeKh1EFH+O9HRyL
 X9VKMOZQe71WC5MpHGngUd0JlZlSQIuItAezYS6TJ83TXNtBWzDMDEh3+
 vmW2qC+kGVOSKD+qe3tYW9m5R8AEbVzFEXZKVpfWsrmq4bVR0/hj6IuEU
 cK+i7NLGydWaQ5oCzGbhSE15INWtsOdJon4qWqK7e9KW1ZsIQNJDPGpcA
 AVgU0EA00h0mlKtWht7mq+0tgSkw/qGH532LqTBfINjAjw6n3sLs8+DJX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M2eXPt2I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Use common error handling code
 in two functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: LKML <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFya3VzIEVsZnJpbmcg
PE1hcmt1cy5FbGZyaW5nQHdlYi5kZT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRlbWJlciAxOSwg
MjAyNCAxMDoxNSBBTQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5l
dGRldkB2Z2VyLmtlcm5lbC5vcmc7IERhdmlkIFMuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEtlbGxlciwgSmFjb2Ig
RQ0KPiA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2Vy
bmVsLm9yZz47IEtvbGFjaW5za2ksIEthcm9sDQo+IDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNv
bT47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IEtpdHN6ZWwsDQo+IFByemVteXNs
YXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBSaWNoYXJkIENvY2hyYW4NCj4gPHJp
Y2hhcmRjb2NocmFuQGdtYWlsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1
eWVuQGludGVsLmNvbT4NCj4gQ2M6IExLTUwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+
DQo+IFN1YmplY3Q6IFtQQVRDSF0gaWNlOiBVc2UgY29tbW9uIGVycm9yIGhhbmRsaW5nIGNvZGUg
aW4gdHdvIGZ1bmN0aW9ucw0KPiANCj4gRnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNl
cnMuc291cmNlZm9yZ2UubmV0Pg0KPiBEYXRlOiBUaHUsIDE5IFNlcCAyMDI0IDE5OjAwOjI1ICsw
MjAwDQo+IA0KPiBBZGQganVtcCB0YXJnZXRzIHNvIHRoYXQgYSBiaXQgb2YgZXhjZXB0aW9uIGhh
bmRsaW5nIGNhbiBiZSBiZXR0ZXIgcmV1c2VkDQo+IGF0IHRoZSBlbmQgb2YgdHdvIGZ1bmN0aW9u
IGltcGxlbWVudGF0aW9ucy4NCj4gDQo+IFRoaXMgaXNzdWUgd2FzIGRldGVjdGVkIGJ5IHVzaW5n
IHRoZSBDb2NjaW5lbGxlIHNvZnR3YXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWFya3VzIEVs
ZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0Pg0KPiAtLS0NCg0KU2VlbXMgZmlu
ZS4NCg0KUmV2aWV3ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29t
Pg0KDQo=

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ADE94B142
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 22:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47BAA8130B;
	Wed,  7 Aug 2024 20:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wecj1uMEdtDF; Wed,  7 Aug 2024 20:27:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB8FC812B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723062471;
	bh=VlPX9bztyZKK15FoWyd5H5kdCFvUPD8R0ukWNLQwcfg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4UxX4FAcIXUwKhRTdQYnPywFcC6f+MyXr4+vJMOfN8mqQThbaVTlvxktIvlCrPG1b
	 SJhODGRdWUc6B7NDk65UCaomZkFYbfdkOb7vEHTYPZvloWAUfbCI4m8X2Tgw68WNwC
	 5XCctsfkN6Ofsc6/dKCPYt7r3yMt5PUTIkGd/qyQ/T9fkhsYNPoCi4CFlFpFQazI+0
	 xuTpRKdNG/vBKdXsChHV+TJGv7qRM2umoKGnUMDjvMvhqV7dJpwGootAwxkAbNbYi0
	 VLYOkUjRqI1eNssTHXv2fWq1vsUTCbr5FGmHBkVs415EferHtjLgn9wED5K6OzyuMZ
	 8NmmNrGHJO+IA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB8FC812B2;
	Wed,  7 Aug 2024 20:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D9C61BF308
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 20:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 26D95606CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 20:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NpzUV98C0hp0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 20:27:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 595BB6066A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 595BB6066A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 595BB6066A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 20:27:49 +0000 (UTC)
X-CSE-ConnectionGUID: 94NJ4DqRRqO2C1uxd+5iTA==
X-CSE-MsgGUID: I+NdKypYS/Szgi1ojvwdQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32550186"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="32550186"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 13:27:49 -0700
X-CSE-ConnectionGUID: C0FQab4qQN+zxwjJmjeulw==
X-CSE-MsgGUID: TLb+pgULTfGtry8egczx6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="56659453"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 13:27:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 13:27:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 13:27:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 13:27:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tAXecWY5bF+QriVvYrM4GzIcgGj4v/RFeNU1cU8gtUhIUCJAPnTjZEdkk+u8zFkVHNWj6W5RkWfMqb8K389b4Dd66PrdB+Y/sR6NFstN7h4l77cjIuTpzFrnJssvrKrvuF3mRWoDdP8h1zIZPEoo4ygC1jn2VeUqu03ZGs74Cb9nqbhbAIuWUgYucCwbNpJE1lRxTLVKxnBfBAdGSdcaeIkFZZWDTQnIqyy+HNibHfiH7ZcgrgFNzedbh485r+60JjugVpck+17QsCC1cTq9JozwZz7+22aKdcmXQb/D/BOP3m03HRbPiwaVZEhdUvzJ3qTQBEb0R5g4lW4E7d9laA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VlPX9bztyZKK15FoWyd5H5kdCFvUPD8R0ukWNLQwcfg=;
 b=R3tHqHKiJQYFIXiHKIf4NPs1LszH2Um2+XXvD/sjeyjcLud4ECspR0ndV9UIF5KXh4X+Jza/lf3uO707GS7CPpC2S8FYZ6fN4/NCdJJmqHE+Ki+956MA22oGnGBRziK6qCn5E7YjhOMIVSt9HEY7a2kLl5K86OoTnQlXSW2brGzfFw+f4l2IblWZ8qq+awYHE7bGo+cT0BAE1xjW60/21yOh9Mg1jqeJO/3p/8htnPSuHYZRvoaReXtXdIPSObcbVjsrW6uPwSBY5lsjyxBwu5osl9XcqyLEE8/d77eGKaWpuLIMyDibUAhPA5vddXR/LVEk5XDxyhl7/+AyNGWSag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6978.namprd11.prod.outlook.com (2603:10b6:510:206::12)
 by DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.29; Wed, 7 Aug
 2024 20:27:40 +0000
Received: from PH7PR11MB6978.namprd11.prod.outlook.com
 ([fe80::3f47:ba18:44ff:4e42]) by PH7PR11MB6978.namprd11.prod.outlook.com
 ([fe80::3f47:ba18:44ff:4e42%7]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 20:27:40 +0000
From: "Hall, Christopher S" <christopher.s.hall@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/5] igc: Ensure the PTM
 cycle is reliably triggered
Thread-Index: AQHa6GHoZbbdVX7ymEWRWz7DRDDxsLIb+V8AgABBA3A=
Date: Wed, 7 Aug 2024 20:27:40 +0000
Message-ID: <PH7PR11MB697875DD586111AEF3F4B5DAC2B82@PH7PR11MB6978.namprd11.prod.outlook.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-2-christopher.s.hall@intel.com>
 <ZrOdthE36RQy78fx@calimero.vinschen.de>
In-Reply-To: <ZrOdthE36RQy78fx@calimero.vinschen.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6978:EE_|DM4PR11MB8179:EE_
x-ms-office365-filtering-correlation-id: bfca6f34-b09b-4f60-98b5-08dcb71f6281
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZTIwUXgvTmpCbWJOclNGdEVKQmZoUmx6ZlZJeXpDMTkrT0hDSU9yRHlQWVVC?=
 =?utf-8?B?bzg2RTdiNzF6bzkwUXhoclRXeERUOHdwb3YwazVLWWRSK24wenNjeFBiemZF?=
 =?utf-8?B?Z0ZNUitEOTNwYUlDZW5yZmx0RmZnWHVCVVdMMVY0ejVvT3hGK1UxaXBQdTdN?=
 =?utf-8?B?V25PSGd4Z09kR2lhOWRaUlpOWnJYUVdBY1JMT1YvTDk5bVZVdjVRZk9LREM1?=
 =?utf-8?B?UXNIRXdMbkwrcVV0RGhpY0VyUVM1YWlnUktmU293VXh4U0ZIcGJ4YWxYeWNy?=
 =?utf-8?B?V1phck1DOEpLS1dPZVhRVGFJNlpjTjRLMkV3bm9KODQ3MDZCN05kbzU4Qks4?=
 =?utf-8?B?d0JFYU4zaWVrbjhGQndlSnhvYzlDb2lKUWkrN0d3U3AvRW9sT1dJQm9GbnJo?=
 =?utf-8?B?by82KzkwM1lRaUlqcCtqMlVvR01iaVpRM0U0Qk5nL2NkbmpNUUxIaFFNcWVH?=
 =?utf-8?B?NmFaNkVYWkFLeWNJUExaYldwNmdDY1l3Y2ppQXQ5TlFLcjNYd0V3VkhOd1BM?=
 =?utf-8?B?TTNrbmJQeGRjZXA4YnYrVE5hV251NUROWmVobDdDU2ltdWcwM1l3UnRzYmUw?=
 =?utf-8?B?b1RUU3dMWFV3L0hFd2Z6MlhDWWxqaW95b05VVjJIejJsb0s2RlZBOEtVMEZz?=
 =?utf-8?B?SFE3SEc3R2pIWlN5TEtuZ2VQenVua1RFWXN2NmF4Znk1VmFsWjBPQTJCNTlo?=
 =?utf-8?B?aTJMNW9TWEVPdFJuVlphaXdhc2R5QmJEUFdmTVY2ZzVpY3V3bEdnM3hDWmlD?=
 =?utf-8?B?YTc3Nnp3eS92THUwVFNkS0pBYnpqcytKWlVyK2xha0h1Rk9la0JNOTh6T3Ez?=
 =?utf-8?B?bld6dnhkNS84T1FHUGpqbSt4c2VlRHA5eEtOd0dsUHdjVUJPN0loZXIva1BR?=
 =?utf-8?B?K3NNaWtjUmJpaCtndVhBNWw5QjMwbjQ1OCtIeTFaOHpWNjJ2TUxnRC9JR3JY?=
 =?utf-8?B?Z1JUWkNRTkNLMUNaN1JWRGVRQW5qaDcvYlpPWUJYRWNVUmFRS20xWi9zTzA3?=
 =?utf-8?B?eVF5UktTRnhYUjJGY2hoTG9TV1dxTlpWSEpYT2pSU2E2Rzh6WnlyYzZURVVX?=
 =?utf-8?B?NEgyeDY3cFFodEZuN1ZiT09zekRwMjhtclhxL243SVhRME5OWVNNbVZxUFY5?=
 =?utf-8?B?eFFzTzNSY2tBL3lVK1ljS2ZQa2lmYjU0MmF3R1YvQ1FLZHVSWWM2ZHptbVJJ?=
 =?utf-8?B?NisxYnd2VzVVMlV4a0ZoekNjQkNqTWR1Zkl6WU0vUG0yYjg2MmxoMnUxZWo2?=
 =?utf-8?B?ckE2V01kbXR3SXV5UU4yV1ppRll6NnVyRlJxYzE2dlU4aVV5MnpnUFdmdGl2?=
 =?utf-8?B?WThmSXZFUUphMXdzM21WVWlwbFlBcWdZR1BWR0dVTk45UTF6dEFoQUVWYTJZ?=
 =?utf-8?B?VHRwZUxQbDNxU08zTVQ1UEQza2VmY2g2M0VjUSt0V3BFR25US0xCUkJqRzVw?=
 =?utf-8?B?U3pLN1V4OEFYVkR1UmJKc0xHU2svOWhyNGRhOGF3emVPR1FacGZLMVVrbHZ3?=
 =?utf-8?B?TzN5MzFxUUxDODVTVjdDWmpuUWhOdHJreFc0SVhYL1pCdVBEUXNDSHMrUjdy?=
 =?utf-8?B?MmFOUm1VYmRFZ2ZvTXBrRUt3TGF4bllka1VQU2dxQTdOTG1FU1VTQU8zYm1M?=
 =?utf-8?B?RDVia0ZjY2syam5nMW5rRng4d2dMNWtRU05IUVlyVFl2NlFuNWpWRHJRV29Y?=
 =?utf-8?B?RFd2bC9uS1pMM0V2aVpzaTdQaHBXZ09oMjNHZDU5Y2JLQnNvOW1FUkduR0J6?=
 =?utf-8?B?YWhSRXVrQUJJSkZ4RnVTZTZ4UkJxNUpxMjAvQTNnYzhjOWRXSnFLSUxDdGxz?=
 =?utf-8?B?eFZyTEI2Mzl1Rm9jdURNVWlNTFF3eU13WVo1OXdvMFBDUHA1QzdrbmpmM21G?=
 =?utf-8?B?NW5Vdi9OcU8vV2Vmd090cmdMOGF0L09odk9ZNkMwQjNmcVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6978.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkZ5eXJSbWdmbVVERXlQVGdjRUtQWkNDNTFwaUd3NlMyWXAyb1ZleFludjlI?=
 =?utf-8?B?UEc2bHQ4T01uZW1FOUh6dEwvSDkxZmVmNU5naTdjWXJLRVFERHhaSUhqcDJG?=
 =?utf-8?B?V001eEV6RG1iSG5IN0NNWWc5L3l5cTE3V20rNGR3clZrejdDZnI3azhMNGN5?=
 =?utf-8?B?TXZJRU42SlNzSDl5aDRnRTlCRndsbWduN216TGVBN21hSnJnUTdsSi9HMzBD?=
 =?utf-8?B?a0drcUduaFp6RUl5eHVSNDZzeWsvbitXY2k3Zk1vUmRkeWRiQThTMkJLR2Nx?=
 =?utf-8?B?Wk54RHFIeDlMbDJ4ZDhnZmpSOWVLeXp6a0VQNTV0Uk9WMUhQMGhFR0VZNXRY?=
 =?utf-8?B?VkhNN2xwaXNycEpHa2xTQ0JxYzh3cU9WNGs3WExKNWs0NDNsajNTc1NMa2Er?=
 =?utf-8?B?S0JaQjM4RWpWRFJFN2tJRHRYV0xQc2Z4WFhqYlNmUnNjWDlSZWZZbXh1OXYw?=
 =?utf-8?B?QURTQjZqdDJZL1FnMWdNWmFrVzNiUDg4K1BEaHJYVzV5aW82dUxXUlBHczVo?=
 =?utf-8?B?NFN2L3ZhMDlWWnYzeHR3cDlSZTROd2J4MjZ0RVVVZlpBSisyOUFsOHFUbnJr?=
 =?utf-8?B?bmVCaG4wcFovRnY0L0NzQ2VjRzh5YVJUZnZQa2lUSm94ZWplSTdhVE9xRjBk?=
 =?utf-8?B?UmpwMStWMGhRZHZhUjlMUGF0MXkycEE1Z3BQdGV5SE5GekJSeDB2MjhCc243?=
 =?utf-8?B?VVhhc2NXVElOeGVYSzEvTkdLK1M0UEpHdjE5WlRzbUVIMzhLNXgyb2x2UHVs?=
 =?utf-8?B?WGd1WC9WSWJ6bGl3dStaNVFEM0N0amxQNVhNbFNNc3RzSkNUQnNnMUhKYTlk?=
 =?utf-8?B?K3FqVC9DbzFpTjE5TFVaN1VHVnpHZENPWUNNZ3hyRVZKMHJKVDAvS0M4VVZU?=
 =?utf-8?B?WnJJdDdHaFdoVitaOTdlYVlVN1lPbDFsNVhnQmc5UCtjdllnb2pOSStmSm1N?=
 =?utf-8?B?SnFwcXFlQWxxeVJ3cXR1MG5rNmgybzZWbFBhS2xYSmlWSjhFNkxxNjNaemxj?=
 =?utf-8?B?NzRWS3h0OWl4MmY5dS9jSUliRWZQYjg5Y0tWTk1OWDR6dUFoS0NaK3pkeDdS?=
 =?utf-8?B?bE80WVhVdlZ1cWp4K0didUtPT1VHM3VZNFozeEJNdlpQRUs1QmpuK3Jla2Jy?=
 =?utf-8?B?TnB4TEk2bk8zSTRuYlBkYW1wblUvbTIza2JhcWMweGFXQXN2MUtIU1YyR056?=
 =?utf-8?B?Uks1ZVdzYXo2WDR6S0d1dHN6eUN1TnE0SCtHcnJsd3hkRDNjYVBOYjVpNkdX?=
 =?utf-8?B?RlRiUEtpS1VqQ1VsSVRUd0hxSU95V1daRXRWU3Fkay9FSXl1eXpmTHV5L0px?=
 =?utf-8?B?MkpINjZuMWJidzNsTDRzekRpYkxhU3BqSUxTeWMrWHU1bWR0THZtSWtpYjRZ?=
 =?utf-8?B?U3RhQlhmY3EwaFBnS1NJblhjQ1FqejRKWTlRWHVyZmZZT052aTh2SUhpSjF0?=
 =?utf-8?B?UkFOdmhod2lFOXZ6YlJTQVVXZDJxSkp0Tml0YUNEaG1NaE5CaVQ0OWQxeEd1?=
 =?utf-8?B?QnBaaTFQemMxZTBYd0x4cEsvMlRNVkVld2Z0WWpRVmhYNWpTTmdXWGRlcUxX?=
 =?utf-8?B?R2hDZUsycXAybWNERkw0RnRwSFVlNFZKUmhhM3hQRWVIWk5qYmFOSi9pdU9D?=
 =?utf-8?B?TVFBV3RwSC95aFZtTk5SWlArRDhEMjFMeno5TnR6cmY3bDI3elNUK0FXOGM5?=
 =?utf-8?B?eks0VGZSV2hWNStaRHY4Z04wU2djUURBM0dyZi82dDhKTnh6cXhzTFJXUGUy?=
 =?utf-8?B?eWdObllWVlJ4SDhXUldhWUdBNUVZZ0NmQVYzakUvV1VHcW5ISVdzeE0zYlMr?=
 =?utf-8?B?QUVTcjN6MzEvTkdvWlIvZnMxa0ZGWWJMa2xsWTVxZWVFdjBVQVhBOFV3MTli?=
 =?utf-8?B?bUN0Yk1VeE9zMk1Cd2dTcEFmNzBBWXJ0S3R4SHNSREpJUGhHd3hEME9ZU2lj?=
 =?utf-8?B?Zm9NL1F4cWFFZ3RzQWRuRC9SMlpabmVZR1cwZWI1Yng3bHlhUkRsKzhOTDlM?=
 =?utf-8?B?U0pHZndONk5KZUV2aXhxdWFHUUZxTkVEZndCMUw0VHZvT2RqZTc2VG11UHR5?=
 =?utf-8?B?Y0tLcTZyWWJjTno5akVOMHNEbzZxUVl5YUhMVDk4WVVYZEJVR2NxdUg1bzJk?=
 =?utf-8?B?VURQL04rSUpDNk56VDZHSjVvQ05ROU5RdHhYSFFITTRCT3lRUUxqT3B3S3Uy?=
 =?utf-8?B?L3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6978.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfca6f34-b09b-4f60-98b5-08dcb71f6281
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 20:27:40.3861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ykrSXF4XCX6JE1rVNLRW1M8pRcH3UmbOHLw3n4p6v3DppEANk4hy3xzNYHAbnNzaItXEp8yaxu9tkJqXYSQEroM0HrdxLaVXZPiSfZzCxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8179
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723062470; x=1754598470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VlPX9bztyZKK15FoWyd5H5kdCFvUPD8R0ukWNLQwcfg=;
 b=K10Z1sZ0/K6AZjTjQ7Q1S93D5ceOeZvio1jivybbW2hwtwm/zALPIZ2p
 3pEb9a89RB4wHOUM3D1AKp44H4CcwJtl85miNE0cgc8/TlIYhUXJ1wGS/
 b1E6cm0KvK+nylHLjayeqX7jSAeR4F/OCgwdzlh6SDhutVTZ0Zu80rldb
 e2jTP35msiAVFCF55pfy7AKwzPK+QCkLc6y4P3Z372yQx8JfkvxqaBmzX
 uuqEngIl3g/avZ8XOxC5FEKR4rivoxmY1g+4VBp9gCT9V60kV/1C6z/EQ
 nnoCJsYJaJa5nMONdKTDSTEAH0z3KEgmw4u9PlMlcb9dz9AIeOeQX/uwE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K10Z1sZ0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/5] igc: Ensure the PTM
 cycle is reliably triggered
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
Cc: "Zage, David" <david.zage@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "rodrigo.cadore@l-acoustics.com" <rodrigo.cadore@l-acoustics.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQ29ycmluYSwNCg0KPiA+IFBIQzJTWVMgZXhpdHMgd2l0aDoNCj4gPg0KPiA+ICJpb2N0bCBQ
VFBfT0ZGU0VUX1BSRUNJU0U6IENvbm5lY3Rpb24gdGltZWQgb3V0IiB3aGVuIHRoZSBQVE0NCj4g
dHJhbnNhY3Rpb24NCj4gPiAgIGZhaWxzDQo+IA0KPiBJdCB3b3VsZCBiZSBncmVhdCB0byBhZGQg
dGhlIHByb2JsZW1zIGVuY291bnRlcmVkIHdpdGgga2R1bXAgdG8gdGhlDQo+IGNvbW1pdCBtZXNz
YWdlIGFzIHdlbGwsIGFzIGRpc2N1c3NlZCB3aXRoIFZpbmljaXVzLCB3b3VsZG4ndCBpdD8NCj4g
DQo+IElmIHlvdSBuZWVkIGEgZGVzY3JpcHRpb24sIEkgY2FuIHByb3ZpZGUgb25lLg0KDQpEb2Vz
IHRoaXMgcGF0Y2ggZml4IHRoZSBpc3N1ZSB5b3Ugb2JzZXJ2ZWQ/IElmIGl0IGRvZXMsIEkgYW0g
aGFwcHkgdG8NCmluY2x1ZGUgeW91ciBkZXNjcmlwdGlvbiBvZiB0aGUgcHJvYmxlbSBpdCBzb2x2
ZXMuIEEgdGVzdGVkLWJ5IHRhZyB3b3VsZA0KYmUgYXBwcmVjaWF0ZWQgYXMgd2VsbC4NCg0KVGhh
bmtzLA0KQ2hyaXMNCg==

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3BA9D1444
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 16:18:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1662460832;
	Mon, 18 Nov 2024 15:18:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qZsPkqFpfMdV; Mon, 18 Nov 2024 15:18:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA6E960848
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731943114;
	bh=9oigGYbywU3KInw5wPMY4L5uRxSXFSO93jTUlL0kNN8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G7m/RpmG0MsSxWQ6e54/pzwCIbEWO463RzG+GHeWutR8vXZDTit6nYb7mYSSSoBbX
	 ziL9ElrxaCRX0FR2+7/ENXpIk4c5jT8MSTlYMQKbzMIjaNbZeqEzFa/oCSXDOwSz8h
	 G49tFOhakWY0OPB3Sx4aeIOljI6YTlbOm90wwU6+Hygv/STBC4U/zUgrMsH2C9yTJB
	 6oGQom2vZQhs9bNBbO4PmrzC8ugFWjpvbmijOy2hdIINc6lxZR71y7VUwF2TIpJS+K
	 FKEkBNrx32ulHwFjwO/88OfYQXL82+wiOwecQ/0XKFOCWCYtI6ExtpFr+vOmj66FyP
	 IaqpFVIvz9B9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA6E960848;
	Mon, 18 Nov 2024 15:18:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 558B2DB2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3420942FD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:18:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TW6spZHCsd33 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 15:18:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3A30401F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3A30401F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3A30401F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:18:30 +0000 (UTC)
X-CSE-ConnectionGUID: 6A6QjYhcTxKdjqqvxPgxxQ==
X-CSE-MsgGUID: jNRg7w4IR1mAIxEu/Ujepg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31311125"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31311125"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 07:18:12 -0800
X-CSE-ConnectionGUID: IJG+7ntnQzCcxwZ6J4hGSw==
X-CSE-MsgGUID: P/uhpQGBR9W6mx0l1OiPBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="93330137"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 07:18:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 07:18:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 07:18:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 07:18:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cndYvbEa+Wl0wXbTDXlo1OcszzvU0Kre8otWU0+7vGz9tJvmtvWrDK0hxQ76U68OcWHJ2cjvQx6jy9YDxxaNiQn0KMESql1f2w4v0IyXjBMjeRNLTybUPPT9G/3F3V9hLlgfo8tJEIvwmo0HOcdwYh41wm6l/Pz0OqYrtgn6VE/I0qeOLT3UX75fwppNbYk/il1B4eqaR+hHmJwafcnpkRUdoSOhSVIXdbo6yX9M0L3F5+BSuDgXO39i0efMCNvBXz6mmbmWH5AHe2FQ18BOCgPrfHEA9H57rYzaX3RBV65PYo3jKYNOOC/a5goKjNiifoeKiF8x8LeoKF79njYUyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9oigGYbywU3KInw5wPMY4L5uRxSXFSO93jTUlL0kNN8=;
 b=IVS4pED7UQs8wLxBe75UQ56F1rX99+AFY3TCe3A+xhxA4NL+cp6gai4r45gJ5iZNK7XkL725CFgSBYfv8GJMnvzRzabjgpl140s3VRj8s7qB/bnu9XFzFnHWAQy6Jzc5vrNRrYpXrP70G6HOmAd4+Nnl1q7XIZWzo1a534eezXkPqAB1bum119ofdxHiauKGXYFqUU62odKfJHOabnTMW+7W405oSYtg/xuwRV87G63kKF3pVtvr2Ye9X7udq6uL9LpoBHrDP1o9OSeUHP2JtMDiH7tXasgqmv1ERTkJ4myz7w/1Tjy8eh7ftx2wI5amtzQ0CGpFn8R6tcO8Lk0kKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by DM4PR11MB7327.namprd11.prod.outlook.com (2603:10b6:8:105::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.21; Mon, 18 Nov
 2024 15:18:07 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8158.019; Mon, 18 Nov 2024
 15:18:07 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 08/10] idpf: add Tx timestamp
 flows
Thread-Index: AQHbNeOoShzOGTLvYke+IKc7dy8KN7K3a80AgAXA87A=
Date: Mon, 18 Nov 2024 15:18:07 +0000
Message-ID: <PH7PR11MB5885EB42ABAE3CA8023CFC038E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-9-milena.olech@intel.com>
 <673685bc9ef98_3379ce2948@willemb.c.googlers.com.notmuch>
In-Reply-To: <673685bc9ef98_3379ce2948@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|DM4PR11MB7327:EE_
x-ms-office365-filtering-correlation-id: 87b5e75a-b2d0-4e82-f8bb-08dd07e434e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TXd0S2lYTWtwbGFyWmZXU2hHcm1LaG9zaWp0MFhkdnpuY0JDYkV2MkowT1Qv?=
 =?utf-8?B?REYvRmRZNW5qdjBucjhYdmRwTzNhVzJ5ejNmWUMrSVQxc2lGOGQ3NHoxQlVw?=
 =?utf-8?B?c1Q2KzJEakFkVXBvV0NCUVIvbC9CSWNqNy9tV3VhdmhCd3VXRHdnSXprWEZv?=
 =?utf-8?B?MVRFQkRjY1gvd240aGNjcDJqMXU3cmlFdmdHN0VFUXBRYllSVnpSeWVUR0pP?=
 =?utf-8?B?OTB2bXhCSy9mb3VCTnA1RGw1WTNWRFZPQ2llQmMvU2pnU1RmVDB1WTVNQlVj?=
 =?utf-8?B?dmlmUlNtNVg5RmpzZnpJUGRwMWZCR09TbkRiU2IreXBOd0Z0TDJudDJRMXJl?=
 =?utf-8?B?RVVnTjFEODFrOGZ4SlNuMFFLOUwxcnRBelBzWCtwTjRNL1VsV1lLcnNlSUw0?=
 =?utf-8?B?dWxsTytBaElPYTUyR3hDTGIrRlhOTkRRSVBWS3dHajI0Mk9STy9ZY3VCOWxD?=
 =?utf-8?B?Zk9oNlNoZXc4eFNyeWFjUFExV3l1Q053RWpJWUVmSHR4U0NoZitpWUZlYktI?=
 =?utf-8?B?SzM4NTdFYXpGeGlKQnh5YkpzOERsU29nZ2tkZTRuajdFWFJWWHhYL2JQQmNp?=
 =?utf-8?B?N2VLREtTN21RS3lBd0ZETG1xQWNRTU1EMXJuWUpaRFRHRFNyZml0dXMvNCtr?=
 =?utf-8?B?UEtza1BoOEFybVhjS0pDbThQTVpXQ3lMNU5wcmVOZExXSWxPc1BnVHFtWTEz?=
 =?utf-8?B?WGMxYjFEVTVndThaQ1JaOVZtek4vbGFqNDBWUlppSWdodmx0SndURkUzeVM2?=
 =?utf-8?B?ZEJOQzMwRk9qeE5VODY3U3ZzSzU1dzkwdi82N3NZVmJoNTVKZnNvNlh4VDRn?=
 =?utf-8?B?TmVTVEpES3pVZlB0QVZESTlYSjUrT1haZU9DRkpsTFYyME5oaG9DUGk1SjM2?=
 =?utf-8?B?czJBVXh2UzdQa3MrbVo5azYzaWlUWUdnb0pRaWZkcFh2ZFRlRmlkTW03cDB4?=
 =?utf-8?B?U200cVVYMjJ4bUZjOG1LR2dra0lKZDFlMTl4OUhLbmh1SmRGNEN5T3VoZURn?=
 =?utf-8?B?UXRXcVdURTMyVzFKRklZMTArb0hvbzN3TUp0R3F2S1lXend2SVIwZEpQT1pm?=
 =?utf-8?B?dTNNS28ySWxxRFEzQlVtRTdyd0FQbnpwWUM0dEZHUVhwVUQySmhzQW9BT29M?=
 =?utf-8?B?UVdoNW1KY2N6dHh3R1VSckdtb2R6ZnBiK2JzbHM2VGVFVUZpdVpvaUgvUFpG?=
 =?utf-8?B?K0dhR2NZM29VMERoNVEwNitIZzUxVG5EdXA2czFHMlg4TWFrV2FZQ25FOE9I?=
 =?utf-8?B?elFvOXNhVGJldkxuUnpnK3J1dkM1c3Jvc3ZRdDBhSEdFc3h2MGlOQkdTNnRj?=
 =?utf-8?B?SnFWYlVrdFNWakE4L2Z4TzdCWG1sRW54V2NCbk5Pd3ZyaGpSMVd0bi8rRGVK?=
 =?utf-8?B?RGFxLzVxSUZCY2w3NERkbi9KeWIwUTVXSUpIRGM1dmk0VFJoc3F1bkxtNzRr?=
 =?utf-8?B?QVNkNjlOLzdFRERPcHVjOXdaS0ZicDNTT3IzcFZjN3dQZ1Z5T0xvVERwZ3Jj?=
 =?utf-8?B?bldwVDVsdUVrbEdra1N3THpGVkFjZ2lVQUhwdTY4UE92NFVvRlV5MDllR3hu?=
 =?utf-8?B?Y0dYUURjRENLcFRWSm9yWU5uM2pJM21STW9NMlIxZnJLNjNRWXZEOFBaeGpV?=
 =?utf-8?B?STVXYVBHOHRCZ1hIQ3ppWFF1ejU3WFpJdEp2RVNla2FCcC94VDJLU2RJNGV4?=
 =?utf-8?B?QWp6aUJIbTJXYS9DeXhrU1ZFZWRFcVdzMXoyOWVQRzVjWFBqNFQ4S1h0OGE1?=
 =?utf-8?B?T3l0cjljYnhGc0tVQkRTR0ROVkVlS1NmWUNTdDVJeXhaL3AvUnVOR3ZLMVAw?=
 =?utf-8?Q?pzf7AO8ZWtJcyGcO7CK/Vv0D40ZqAJz80sBRU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmVuQzlFMWFYUzZBVERtbzlpaGFzL01rSzZpQlVFZlU2dE8ybTYrVy9LNE11?=
 =?utf-8?B?UmlRZ2RYS1lyOWRQeU5kOE01d1JaOUgzMGlRajFLYnhDRWZmNUE0NEVKSXlO?=
 =?utf-8?B?SjF1Nk5HeDZQVG8rK2l1MjJ3c1Roc2QwTEk3K1R5ODZTNFpjdEYwRWx4UWdV?=
 =?utf-8?B?RS9tTG9PODF6RFF5STFwSnFMbXBnNmVsYzBQVW9DZEpyYlBpakdrUkYwVFM5?=
 =?utf-8?B?V1VzVVRmNXEwSjJxaitqV0I1TVhsMTNXSmcyYWk5b05VRExBUEsydkZVblV0?=
 =?utf-8?B?YndDbG41M1pvVXBpSmRnVExtVnBNWVlncjhMU2VuNTR4c3N4RFh3KzNhR1Nh?=
 =?utf-8?B?NXFkcnRsL3g3STkwWE11QnhnN3NmckRXTG9zZW5sNFAwbHRTOVZiSW95Ymlu?=
 =?utf-8?B?N21LWHY2aC9Ld3FlSmxpSk8yenQ3dmJDQXdnQVd1WVg5NEZmbE1qZ2ZTYkN3?=
 =?utf-8?B?WnRES3hBenhTMUtQSStoTDQ5RVBCUXptT3FhRWYrNVFtem5hU1NEYk5WVUdH?=
 =?utf-8?B?a3EwQ0duRHZmdVlOZTV4QW4yYk9mV2RBMGxTRXFKQUFQWHBESU1sT2h1ZHV2?=
 =?utf-8?B?RW0zRWZlSXFYdGJtcEJzZWZ1QmRUNFpJOHVEbkx2c0E5SEhMeEtzTUhzSzhU?=
 =?utf-8?B?TjkxSzg5OERLckwyTGd3WFM3bEJGY2FqMzhhb2MzdzZza2VBT1BZYll2NmJ0?=
 =?utf-8?B?THAwekQ3bjFJaWovM2g4eWZrMlYzNW5LbHpRUm1iSjl0eHNyZ0pUTkt0Smsx?=
 =?utf-8?B?a2tTaXhkVXRtaVVxVFlSR0JSSWlmaDhPSm9qVlhqbGtFbFJzakpBbTBiTERX?=
 =?utf-8?B?SFhud3hVcXRPR0svNkZzZkNtNldxNU9QcVk0bDdmYWkwYmp6SHZ4YkE2SThn?=
 =?utf-8?B?YXZPUU5zaHBwc0lFMFJLRklKYVJDRktxSG13ZTVSNzhPbUJlOStFUlptUnhD?=
 =?utf-8?B?MTBPTktUdkVPemNTMmljZ281S09aWDQyTlJka1ZPa0p6a3c3Q0hVb3BpSWlp?=
 =?utf-8?B?VzdUajVkek9oeXAwUVlna1JJMVFEempJNlZDZngyNHhObjhVV2wvMFJDK0JO?=
 =?utf-8?B?dUovREJtTk9QaGVTQ1JjLzFrSHduMURQUEU5RndtZUFEbE9yR0pJRjEvaS9K?=
 =?utf-8?B?UXAyV2ZoVXpyZ3llOUozaHFPUXNXQ2oxaXNtdmZyek5jSEd3cmJMZlZyT2dv?=
 =?utf-8?B?YmJUQm4xMDBESE8zeVNCS3g0R3lnNysvQklLMWhLMmJSVS9NMXYydWs2ZmVl?=
 =?utf-8?B?dGEzN0s2NEIwT1BZNTBhOW1rV2tBeDhKaHZBYjQ0dkRPRlNIWVFXWXZTWVhk?=
 =?utf-8?B?NkpsaXNJWG5YRk5GK2NiUEFHRXNWOGk5TllWSHlDcU9sRFlUZ1dpak9JT0hO?=
 =?utf-8?B?TEg4UlY3empNd3lPOUsrZEVqOXRtMmtYbU1NditLRFhIVlZWSStZODhuS0VV?=
 =?utf-8?B?TTRXemZCbHg5bVhqOEpQMk8vblJ0TFNXcWRraEVVbm9WdFR4Q1pGbEFjWkJL?=
 =?utf-8?B?TGxmbkphMkJtcU9xNlQySlRUVUdzZElncFhXWVY2YWJMMDdFTi84S3RrWmZx?=
 =?utf-8?B?Z3IyYXUwOVVTRGY2Q0RvTGRncVBXVmJzSUdWcGhzQStyU2M2cFhDTXhXUGhu?=
 =?utf-8?B?NnVtc2VxZ0hHVGZQNDMyQTFqaVZRdkR2TUt5dWtpclJVNTFaTlI4THYyeFZv?=
 =?utf-8?B?VGVUcDZyazkrbUlXY1FiWVRZOVV5NEFJOThlMSs4VDlzS0tvbUJldkZOOEVP?=
 =?utf-8?B?T1ZNeFpNWXBHQjh5V3dXbWVtWHZwUDZGRGN0d1k1NTVsY2hyVElrYzZQeFoy?=
 =?utf-8?B?cWJ0V3kveFFqV05IcnN2dGp3MVdsSDA1MTN0Z3pDVjVVRG4wN28xTytIZWMz?=
 =?utf-8?B?WE56RHJhQ2Fnbm45UE9WSmEra1JUT3hQVVd6VkNWK0FvU3pFdVdOSnlTSW5n?=
 =?utf-8?B?OG9NQVdVWjZQUHVwSGdHOU5HM0xRK1o4QnpqN0FGOVJyRzZsejl1cUlKVzVY?=
 =?utf-8?B?K3BFSnhUemVXeEpQazNPS3JKOUZ1c0JQWmxBMXFhUGNFUE45UUJoTnQ0VWhE?=
 =?utf-8?B?NWhUYXNaNTdTT1dWcXBxaHBKYTF6RUtCcmZKYUo2OFBiUDNkRHZoSzl4RGZh?=
 =?utf-8?Q?FXm9W6qrZniir6OnIDk2BDTuD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87b5e75a-b2d0-4e82-f8bb-08dd07e434e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 15:18:07.7793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jaa7k2JO4m70BUVqXB7xeXZwjBginAcZ9gER+5b7iYQhp+Go6uj0lvp33cHAYktAt9s66zrgINy3l0M4CEi1MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7327
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731943111; x=1763479111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9oigGYbywU3KInw5wPMY4L5uRxSXFSO93jTUlL0kNN8=;
 b=atnEB6P6CT4dKrUUNVbjNC6zuvTdGt3mFx3QlqcsKs1Osjaqqjrc77m6
 1ZsXCUS4rlcQMPJ5t4bE1sPDONLFtz+CG/seI+E5LgK+vGfNCBCmjV1rR
 Wl+2DGyZgHmE9RI5+yrs6TTR+gdrtcenKzjFYWQj0CdjKLI/65qmioTeY
 RWx+TSRj9RvV0KDRh83Xae93pohcpBsWDZgsLijJNlbDtsc5EOB9MfCVX
 k7CULj7tkEiI4Rb5bMMBcIaZBZT8ZwR1Ne8vZuZXg+di5fpdrt/cux2Xk
 Uqq7U7nunld3B5exJPJz4unX9KSK9u0ikKsMHt+l02RLGWU6JLJhkRIpI
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=atnEB6P6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 08/10] idpf: add Tx timestamp
 flows
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

T24gMTEvMTUvMjAyNCAxMjoyMCBBTSwgV2lsbGVtIGRlIEJydWlqbiB3cm90ZToNCg0KPiBNaWxl
bmEgT2xlY2ggd3JvdGU6DQo+ID4gQWRkIGZ1bmN0aW9ucyB0byByZXF1ZXN0IFR4IHRpbWVzdGFt
cCBmb3IgdGhlIFBUUCBwYWNrZXRzLCByZWFkIHRoZSBUeA0KPiA+IHRpbWVzdGFtcCB3aGVuIHRo
ZSBjb21wbGV0aW9uIHRhZyBmb3IgdGhhdCBwYWNrZXQgaXMgYmVpbmcgcmVjZWl2ZWQsDQo+ID4g
ZXh0ZW5kIHRoZSBUeCB0aW1lc3RhbXAgdmFsdWUgYW5kIHNldCB0aGUgc3VwcG9ydGVkIHRpbWVz
dGFtcGluZyBtb2Rlcy4NCj4gPiANCj4gPiBUeCB0aW1lc3RhbXAgaXMgcmVxdWVzdGVkIGZvciB0
aGUgUFRQIHBhY2tldHMgYnkgc2V0dGluZyBhIFRTWU4gYml0IGFuZA0KPiA+IGluZGV4IHZhbHVl
IGluIHRoZSBUeCBjb250ZXh0IGRlc2NyaXB0b3IuIFRoZSBkcml2ZXIgYXNzdW1wdGlvbiBpcyB0
aGF0DQo+ID4gdGhlIFR4IHRpbWVzdGFtcCB2YWx1ZSBpcyByZWFkeSB0byBiZSByZWFkIHdoZW4g
dGhlIGNvbXBsZXRpb24gdGFnIGlzDQo+ID4gcmVjZWl2ZWQuIFRoZW4gdGhlIGRyaXZlciBzY2hl
ZHVsZXMgZGVsYXllZCB3b3JrIGFuZCB0aGUgVHggdGltZXN0YW1wDQo+ID4gdmFsdWUgcmVhZCBp
cyByZXF1ZXN0ZWQgdGhyb3VnaCB2aXJ0Y2hubCBtZXNzYWdlLiBBdCB0aGUgZW5kLCB0aGUgVHgN
Cj4gPiB0aW1lc3RhbXAgdmFsdWUgaXMgZXh0ZW5kZWQgdG8gNjQtYml0IGFuZCBwcm92aWRlZCBi
YWNrIHRvIHRoZSBza2IuDQo+ID4gDQo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBKb3NoIEhheSA8am9z
aHVhLmEuaGF5QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3NoIEhheSA8am9zaHVh
LmEuaGF5QGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogQWxleGFuZGVyIExvYmFraW4gPGFs
ZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlsZW5hIE9s
ZWNoIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZHBmL2lkcGYuaCAgICAgICAgfCAgIDQgKw0KPiA+ICAuLi4vbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl9ldGh0b29sLmMgICAgfCAgNjMgKysrKysNCj4gPiAgLi4u
L25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGFuX3R4cnguaCAgIHwgIDEzICstDQo+ID4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYyAgICB8ICA0MCArKysN
Cj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jICAgIHwgMjY1
ICsrKysrKysrKysrKysrKysrLQ0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBm
L2lkcGZfcHRwLmggICAgfCAgNTcgKysrKw0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZHBmL2lkcGZfdHhyeC5jICAgfCAxMzYgKysrKysrKystDQo+ID4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmggICB8ICAxMCArLQ0KPiA+ICAuLi4vbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jICAgfCAgIDYgKy0NCj4gPiAgLi4uL2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubF9wdHAuYyAgIHwgMjMyICsrKysrKysrKysr
KysrKw0KPiA+ICAxMCBmaWxlcyBjaGFuZ2VkLCA4MTMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRp
b25zKC0pDQo+ID4gDQo+IA0KPiA+ICsvKioNCj4gPiArICogaWRwZl9zZXRfdGltZXN0YW1wX2Zp
bHRlcnMgLSBTZXQgdGhlIHN1cHBvcnRlZCB0aW1lc3RhbXBpbmcgbW9kZQ0KPiA+ICsgKiBAdnBv
cnQ6IFZpcnR1YWwgcG9ydCBzdHJ1Y3R1cmUNCj4gPiArICogQGluZm86IGV0aHRvb2wgdGltZXN0
YW1waW5nIGluZm8gc3RydWN0dXJlDQo+ID4gKyAqDQo+ID4gKyAqIFNldCB0aGUgVHgvUnggdGlt
ZXN0YW1wIGZpbHRlcnMuDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgdm9pZCBpZHBmX3NldF90aW1l
c3RhbXBfZmlsdGVycyhjb25zdCBzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQsDQo+ID4gKwkJCQkg
ICAgICAgc3RydWN0IGtlcm5lbF9ldGh0b29sX3RzX2luZm8gKmluZm8pDQo+ID4gK3sNCj4gPiAr
CWlmICghdnBvcnQtPnR4X3RzdGFtcF9jYXBzIHx8DQo+ID4gKwkgICAgdnBvcnQtPmFkYXB0ZXIt
PnB0cC0+dHhfdHN0YW1wX2FjY2VzcyA9PSBJRFBGX1BUUF9OT05FKQ0KPiA+ICsJCXJldHVybjsN
Cj4gPiArDQo+ID4gKwlpbmZvLT5zb190aW1lc3RhbXBpbmcgPSBTT0ZfVElNRVNUQU1QSU5HX1RY
X1NPRlRXQVJFIHwNCj4gPiArCQkJCVNPRl9USU1FU1RBTVBJTkdfUlhfU09GVFdBUkUgfA0KPiA+
ICsJCQkJU09GX1RJTUVTVEFNUElOR19TT0ZUV0FSRSB8DQo+ID4gKwkJCQlTT0ZfVElNRVNUQU1Q
SU5HX1RYX0hBUkRXQVJFIHwNCj4gPiArCQkJCVNPRl9USU1FU1RBTVBJTkdfUlhfSEFSRFdBUkUg
fA0KPiA+ICsJCQkJU09GX1RJTUVTVEFNUElOR19SQVdfSEFSRFdBUkU7DQo+ID4gKw0KPiANCj4g
RHJpdmVycyBubyBsb25nZXIgbmVlZCB0byBzZXQgdmFyaW91cyBzb2Z0d2FyZSB0aW1lc3RhbXBp
bmcgb3B0aW9ucw0KPiBzaW5jZSBjb21taXQgImV0aHRvb2w6IFJYIHNvZnR3YXJlIHRpbWVzdGFt
cCBmb3IgYWxsIg0KDQpHb29kLCB0aGFua3MgZm9yIGluZm8sIEknbGwgZ2V0IGZhbWlsaWFyIHdp
dGggdGhhdCBjb21taXQuDQoNCj4gDQo+ID4gKwlpbmZvLT50eF90eXBlcyA9IEJJVChIV1RTVEFN
UF9UWF9PRkYpIHwgQklUKEhXVFNUQU1QX1RYX09OKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArLyoq
DQo+ID4gKyAqIGlkcGZfZ2V0X3RzX2luZm8gLSBHZXQgZGV2aWNlIFBIQyBhc3NvY2lhdGlvbg0K
PiA+ICsgKiBAbmV0ZGV2OiBuZXR3b3JrIGludGVyZmFjZSBkZXZpY2Ugc3RydWN0dXJlDQo+ID4g
KyAqIEBpbmZvOiBldGh0b29sIHRpbWVzdGFtcGluZyBpbmZvIHN0cnVjdHVyZQ0KPiA+ICsgKg0K
PiA+ICsgKiBSZXR1cm46IDAgb24gc3VjY2VzcywgLWVycm5vIG90aGVyd2lzZS4NCj4gPiArICov
DQo+ID4gK3N0YXRpYyBpbnQgaWRwZl9nZXRfdHNfaW5mbyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0
ZGV2LA0KPiA+ICsJCQkgICAgc3RydWN0IGtlcm5lbF9ldGh0b29sX3RzX2luZm8gKmluZm8pDQo+
ID4gK3sNCj4gPiArCXN0cnVjdCBpZHBmX3Zwb3J0ICp2cG9ydDsNCj4gPiArCWludCBlcnIgPSAw
Ow0KPiA+ICsNCj4gPiArCWlkcGZfdnBvcnRfY3RybF9sb2NrKG5ldGRldik7DQo+ID4gKwl2cG9y
dCA9IGlkcGZfbmV0ZGV2X3RvX3Zwb3J0KG5ldGRldik7DQo+ID4gKw0KPiA+ICsJaWYgKCF2cG9y
dC0+YWRhcHRlci0+cHRwKSB7DQo+ID4gKwkJZXJyID0gLUVPUE5PVFNVUFA7DQo+ID4gKwkJZ290
byB1bmxvY2s7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWRwZl9zZXRfdGltZXN0YW1wX2ZpbHRl
cnModnBvcnQsIGluZm8pOw0KPiA+ICsNCj4gPiArCWlmIChpZHBmX2lzX2NhcF9lbmEodnBvcnQt
PmFkYXB0ZXIsIElEUEZfT1RIRVJfQ0FQUywgVklSVENITkwyX0NBUF9QVFApICYmDQo+ID4gKwkg
ICAgdnBvcnQtPmFkYXB0ZXItPnB0cC0+Y2xvY2spIHsNCj4gPiArCQlpbmZvLT5waGNfaW5kZXgg
PSBwdHBfY2xvY2tfaW5kZXgodnBvcnQtPmFkYXB0ZXItPnB0cC0+Y2xvY2spOw0KPiA+ICsJfSBl
bHNlIHsNCj4gPiArCQlwY2lfZGJnKHZwb3J0LT5hZGFwdGVyLT5wZGV2LCAiUFRQIGNsb2NrIG5v
dCBkZXRlY3RlZFxuIik7DQo+ID4gKwkJZXJyID0gZXRodG9vbF9vcF9nZXRfdHNfaW5mbyhuZXRk
ZXYsIGluZm8pOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArdW5sb2NrOg0KPiA+ICsJaWRwZl92cG9y
dF9jdHJsX3VubG9jayhuZXRkZXYpOw0KPiA+ICsNCj4gPiArCXJldHVybiBlcnI7DQo+ID4gK30N
Cj4gPiArDQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZXRodG9vbF9vcHMgaWRwZl9ldGh0b29s
X29wcyA9IHsNCj4gPiAgCS5zdXBwb3J0ZWRfY29hbGVzY2VfcGFyYW1zID0gRVRIVE9PTF9DT0FM
RVNDRV9VU0VDUyB8DQo+ID4gIAkJCQkgICAgIEVUSFRPT0xfQ09BTEVTQ0VfVVNFX0FEQVBUSVZF
LA0KPiA+IEBAIC0xMzM2LDYgKzEzOTgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV0aHRvb2xf
b3BzIGlkcGZfZXRodG9vbF9vcHMgPSB7DQo+ID4gIAkuZ2V0X3JpbmdwYXJhbQkJPSBpZHBmX2dl
dF9yaW5ncGFyYW0sDQo+ID4gIAkuc2V0X3JpbmdwYXJhbQkJPSBpZHBmX3NldF9yaW5ncGFyYW0s
DQo+ID4gIAkuZ2V0X2xpbmtfa3NldHRpbmdzCT0gaWRwZl9nZXRfbGlua19rc2V0dGluZ3MsDQo+
ID4gKwkuZ2V0X3RzX2luZm8JCT0gaWRwZl9nZXRfdHNfaW5mbywNCj4gPiAgfTsNCj4gDQo+ID4g
Ky8qKg0KPiA+ICsgKiBpZHBmX3B0cF90c3RhbXBfZXh0ZW5kXzMyYl90b182NGIgLSBDb252ZXJ0
IGEgMzJiIG5hbm9zZWNvbmRzIFR4IHRpbWVzdGFtcA0KPiA+ICsgKgkJCQkgICAgICAgdG8gNjRi
Lg0KPiA+ICsgKiBAY2FjaGVkX3BoY190aW1lOiByZWNlbnRseSBjYWNoZWQgY29weSBvZiBQSEMg
dGltZQ0KPiA+ICsgKiBAaW5fdGltZXN0YW1wOiBJbmdyZXNzL2VncmVzcyAzMmIgbmFub3NlY29u
ZHMgdGltZXN0YW1wIHZhbHVlDQo+ID4gKyAqDQo+ID4gKyAqIEhhcmR3YXJlIGNhcHR1cmVzIHRp
bWVzdGFtcHMgd2hpY2ggY29udGFpbiBvbmx5IDMyIGJpdHMgb2Ygbm9taW5hbA0KPiA+ICsgKiBu
YW5vc2Vjb25kcywgYXMgb3Bwb3NlZCB0byB0aGUgNjRiaXQgdGltZXN0YW1wcyB0aGF0IHRoZSBz
dGFjayBleHBlY3RzLg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm46IFR4IHRpbWVzdGFtcCB2YWx1
ZSBleHRlbmRlZCB0byA2NCBiaXRzIGJhc2VkIG9uIGNhY2hlZCBQSEMgdGltZS4NCj4gPiArICov
DQo+ID4gK3U2NCBpZHBmX3B0cF90c3RhbXBfZXh0ZW5kXzMyYl90b182NGIodTY0IGNhY2hlZF9w
aGNfdGltZSwgdTMyIGluX3RpbWVzdGFtcCkNCj4gPiArew0KPiA+ICsJdTMyIGRlbHRhLCBwaGNf
bG87DQo+ID4gKwl1NjQgbnM7DQo+ID4gKw0KPiA+ICsJcGhjX2xvID0gbG93ZXJfMzJfYml0cyhj
YWNoZWRfcGhjX3RpbWUpOw0KPiA+ICsJZGVsdGEgPSBpbl90aW1lc3RhbXAgLSBwaGNfbG87DQo+
ID4gKw0KPiA+ICsJaWYgKGRlbHRhID4gUzMyX01BWCkgew0KPiA+ICsJCWRlbHRhID0gcGhjX2xv
IC0gaW5fdGltZXN0YW1wOw0KPiA+ICsJCW5zID0gY2FjaGVkX3BoY190aW1lIC0gZGVsdGE7DQo+
ID4gKwl9IGVsc2Ugew0KPiA+ICsJCW5zID0gY2FjaGVkX3BoY190aW1lICsgZGVsdGE7DQo+ID4g
Kwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIG5zOw0KPiA+ICt9DQo+IA0KPiBDb25zaWRlciBhIHN0
YW5kYXJkIHRpbWVjb3VudGVyIHRvIGVzdGltYXRlIGEgZGV2aWNlIGNsb2NrLg0KDQpZb3UgbWVh
biB0byByZWx5IG9uIHN0YW5kYXJkIHRpbWVjb3VudGVyIGluc3RlYWQgb2YgY2FjaGVkIFBIQyB0
aW1lPw0KQ2FuIHlvdSBwbGVhc2UgY2xhcmlmeT8NCg0KPiANCj4gPiArI2lmIChJU19FTkFCTEVE
KENPTkZJR19QVFBfMTU4OF9DTE9DSykpDQo+ID4gKy8qKg0KPiA+ICsgKiBpZHBmX3R4X3RzdGFt
cCAtIHNldCB1cCBjb250ZXh0IGRlc2NyaXB0b3IgZm9yIGhhcmR3YXJlIHRpbWVzdGFtcA0KPiA+
ICsgKiBAdHhfcTogcXVldWUgdG8gc2VuZCBidWZmZXIgb24NCj4gPiArICogQHNrYjogcG9pbnRl
ciB0byB0aGUgU0tCIHdlJ3JlIHNlbmRpbmcNCj4gPiArICogQG9mZjogcG9pbnRlciB0byB0aGUg
b2ZmbG9hZCBzdHJ1Y3QNCj4gPiArICoNCj4gPiArICogUmV0dXJuOiBQb3NpdGl2ZSBpbmRleCBu
dW1iZXIgb24gc3VjY2VzcywgbmVnYXRpdmUgb3RoZXJ3aXNlLg0KPiA+ICsgKi8NCj4gPiArc3Rh
dGljIGludCBpZHBmX3R4X3RzdGFtcChzdHJ1Y3QgaWRwZl90eF9xdWV1ZSAqdHhfcSwgc3RydWN0
IHNrX2J1ZmYgKnNrYiwNCj4gPiArCQkJICBzdHJ1Y3QgaWRwZl90eF9vZmZsb2FkX3BhcmFtcyAq
b2ZmKQ0KPiA+ICt7DQo+ID4gKwlpbnQgZXJyLCBpZHg7DQo+ID4gKw0KPiA+ICsJaWYgKCFpZHBm
X3B0cF9nZXRfdHhxX3RzdGFtcF9jYXBhYmlsaXR5KHR4X3EpKQ0KPiA+ICsJCXJldHVybiAtMTsN
Cj4gPiArDQo+ID4gKwkvKiBUeCB0aW1lc3RhbXBzIGNhbm5vdCBiZSBzYW1wbGVkIHdoZW4gZG9p
bmcgVFNPICovDQo+ID4gKwlpZiAob2ZmLT50eF9mbGFncyAmIElEUEZfVFhfRkxBR1NfVFNPKQ0K
PiA+ICsJCXJldHVybiAtMTsNCj4gPiArDQo+ID4gKwkvKiBvbmx5IHRpbWVzdGFtcCB0aGUgb3V0
Ym91bmQgcGFja2V0IGlmIHRoZSB1c2VyIGhhcyByZXF1ZXN0ZWQgaXQgKi8NCj4gPiArCWlmIChs
aWtlbHkoIShza2Jfc2hpbmZvKHNrYiktPnR4X2ZsYWdzICYgU0tCVFhfSFdfVFNUQU1QKSkpDQo+
ID4gKwkJcmV0dXJuIC0xOw0KPiANCj4gTWFrZSB0aGlzIHRoZSBmaXJzdCB0ZXN0LiBUaGlzIGZ1
bmN0aW9uIGlzIGJlaW5nIGNhbGxlZCBvbiBldmVyeQ0KPiBvdXRnb2luZyBwYWNrZXQuIEl0IHNo
b3VsZCBiZSBhcyBjaGVhcCBhcyBwb3NzaWJsZSBpbiB0aGUgbGlrZWx5DQo+IGNhc2Ugd2hlcmUg
dGhlIFBUUCB0aW1lc3RhbXAgaXMgbm90IHJlcXVlc3RlZC4NCg0KT2ssIEknbGwgcmVwbGFjZS4N
Cg0KPiANCj4gRXZlbiBtb3ZlIHRoaXMgdGVzdCB0byB0aGUgY2FsbGVlIGlmIHRoaXMgZG9lcyBu
b3QgZ2V0IGlubGluZWQuDQo+IA0KPiA+ICAvKioNCj4gPiAgICogaWRwZl90eF9zcGxpdHFfZnJh
bWUgLSBTZW5kcyBidWZmZXIgb24gVHggcmluZyB1c2luZyBmbGV4IGRlc2NyaXB0b3JzDQo+ID4g
ICAqIEBza2I6IHNlbmQgYnVmZmVyDQo+ID4gQEAgLTI3NDMsOSArMjg1OSwxMCBAQCBzdGF0aWMg
bmV0ZGV2X3R4X3QgaWRwZl90eF9zcGxpdHFfZnJhbWUoc3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4g
PiAgCQkJCQlzdHJ1Y3QgaWRwZl90eF9xdWV1ZSAqdHhfcSkNCj4gPiAgew0KPiA+ICAJc3RydWN0
IGlkcGZfdHhfc3BsaXRxX3BhcmFtcyB0eF9wYXJhbXMgPSB7IH07DQo+ID4gKwl1bmlvbiBpZHBm
X2ZsZXhfdHhfY3R4X2Rlc2MgKmN0eF9kZXNjOw0KPiA+ICAJc3RydWN0IGlkcGZfdHhfYnVmICpm
aXJzdDsNCj4gPiAgCXVuc2lnbmVkIGludCBjb3VudDsNCj4gPiAtCWludCB0c287DQo+ID4gKwlp
bnQgdHNvLCBpZHg7DQo+ID4gIA0KPiA+ICAJY291bnQgPSBpZHBmX3R4X2Rlc2NfY291bnRfcmVx
dWlyZWQodHhfcSwgc2tiKTsNCj4gPiAgCWlmICh1bmxpa2VseSghY291bnQpKQ0KPiA+IEBAIC0y
NzY1LDggKzI4ODIsNyBAQCBzdGF0aWMgbmV0ZGV2X3R4X3QgaWRwZl90eF9zcGxpdHFfZnJhbWUo
c3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4gPiAgDQo+ID4gIAlpZiAodHNvKSB7DQo+ID4gIAkJLyog
SWYgdHNvIGlzIG5lZWRlZCwgc2V0IHVwIGNvbnRleHQgZGVzYyAqLw0KPiA+IC0JCXN0cnVjdCBp
ZHBmX2ZsZXhfdHhfY3R4X2Rlc2MgKmN0eF9kZXNjID0NCj4gPiAtCQkJaWRwZl90eF9zcGxpdHFf
Z2V0X2N0eF9kZXNjKHR4X3EpOw0KPiA+ICsJCWN0eF9kZXNjID0gaWRwZl90eF9zcGxpdHFfZ2V0
X2N0eF9kZXNjKHR4X3EpOw0KPiA+ICANCj4gPiAgCQljdHhfZGVzYy0+dHNvLnF3MS5jbWRfZHR5
cGUgPQ0KPiA+ICAJCQkJY3B1X3RvX2xlMTYoSURQRl9UWF9ERVNDX0RUWVBFX0ZMRVhfVFNPX0NU
WCB8DQo+ID4gQEAgLTI3ODQsNiArMjkwMCwxMiBAQCBzdGF0aWMgbmV0ZGV2X3R4X3QgaWRwZl90
eF9zcGxpdHFfZnJhbWUoc3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4gPiAgCQl1NjRfc3RhdHNfdXBk
YXRlX2VuZCgmdHhfcS0+c3RhdHNfc3luYyk7DQo+ID4gIAl9DQo+ID4gIA0KPiA+ICsJaWR4ID0g
aWRwZl90eF90c3RhbXAodHhfcSwgc2tiLCAmdHhfcGFyYW1zLm9mZmxvYWQpOw0KPiA+ICsJaWYg
KGlkeCAhPSAtMSkgew0KPiA+ICsJCWN0eF9kZXNjID0gaWRwZl90eF9zcGxpdHFfZ2V0X2N0eF9k
ZXNjKHR4X3EpOw0KPiA+ICsJCWlkcGZfdHhfc2V0X3RzdGFtcF9kZXNjKGN0eF9kZXNjLCBpZHgp
Ow0KPiA+ICsJfQ0KPiA+ICsNCj4gDQo+IENhbGxlZCBoZXJlDQo+IA0KPiA+ICsvKioNCj4gPiAr
ICogaWRwZl9wdHBfZ2V0X3R4X3RzdGFtcF9hc3luY19oYW5kbGVyIC0gQXN5bmMgY2FsbGJhY2sg
Zm9yIGdldHRpbmcgVHggdHN0YW1wcw0KPiA+ICsgKiBAYWRhcHRlcjogRHJpdmVyIHNwZWNpZmlj
IHByaXZhdGUgc3RydWN0dXJlDQo+ID4gKyAqIEB4bjogdHJhbnNhY3Rpb24gZm9yIG1lc3NhZ2UN
Cj4gPiArICogQGN0bHFfbXNnOiByZWNlaXZlZCBtZXNzYWdlDQo+ID4gKyAqDQo+ID4gKyAqIFJl
YWQgdGhlIHRzdGFtcHMgVHggdHN0YW1wIHZhbHVlcyBmcm9tIGEgcmVjZWl2ZWQgbWVzc2FnZSBh
bmQgcHV0IHRoZW0NCj4gPiArICogZGlyZWN0bHkgdG8gdGhlIHNrYi4gVGhlIG51bWJlciBvZiB0
aW1lc3RhbXBzIHRvIHJlYWQgaXMgc3BlY2lmaWVkIGJ5DQo+ID4gKyAqIHRoZSB2aXJ0Y2hubCBt
ZXNzYWdlLg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm46IDAgb24gc3VjY2VzcywgLWVycm5vIG90
aGVyd2lzZS4NCj4gPiArICovDQo+ID4gK3N0YXRpYyBpbnQNCj4gPiAraWRwZl9wdHBfZ2V0X3R4
X3RzdGFtcF9hc3luY19oYW5kbGVyKHN0cnVjdCBpZHBmX2FkYXB0ZXIgKmFkYXB0ZXIsDQo+ID4g
KwkJCQkgICAgIHN0cnVjdCBpZHBmX3ZjX3huICp4biwNCj4gPiArCQkJCSAgICAgY29uc3Qgc3Ry
dWN0IGlkcGZfY3RscV9tc2cgKmN0bHFfbXNnKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgdmlydGNo
bmwyX3B0cF9nZXRfdnBvcnRfdHhfdHN0YW1wX2xhdGNoZXMgKnJlY3ZfdHhfdHN0YW1wX21zZzsN
Cj4gPiArCXN0cnVjdCBpZHBmX3B0cF92cG9ydF90eF90c3RhbXBfY2FwcyAqdHhfdHN0YW1wX2Nh
cHM7DQo+ID4gKwlzdHJ1Y3QgdmlydGNobmwyX3B0cF90eF90c3RhbXBfbGF0Y2ggdHN0YW1wX2xh
dGNoOw0KPiA+ICsJc3RydWN0IGlkcGZfcHRwX3R4X3RzdGFtcCAqcHRwX3R4X3RzdGFtcDsNCj4g
PiArCXN0cnVjdCBpZHBmX3Zwb3J0ICp0c3RhbXBfdnBvcnQgPSBOVUxMOw0KPiA+ICsJc3RydWN0
IGxpc3RfaGVhZCAqaGVhZDsNCj4gPiArCXUxNiBudW1fbGF0Y2hlczsNCj4gPiArCXUzMiB2cG9y
dF9pZDsNCj4gPiArCWludCBlcnI7DQo+ID4gKw0KPiA+ICsJcmVjdl90eF90c3RhbXBfbXNnID0g
Y3RscV9tc2ctPmN0eC5pbmRpcmVjdC5wYXlsb2FkLT52YTsNCj4gPiArCXZwb3J0X2lkID0gbGUz
Ml90b19jcHUocmVjdl90eF90c3RhbXBfbXNnLT52cG9ydF9pZCk7DQo+ID4gKw0KPiA+ICsJaWRw
Zl9mb3JfZWFjaF92cG9ydChhZGFwdGVyLCB2cG9ydCkgew0KPiA+ICsJCWlmICghdnBvcnQpDQo+
ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQlpZiAodnBvcnQtPnZwb3J0X2lkID09IHZw
b3J0X2lkKSB7DQo+ID4gKwkJCXRzdGFtcF92cG9ydCA9IHZwb3J0Ow0KPiA+ICsJCQlicmVhazsN
Cj4gPiArCQl9DQo+ID4gKwl9DQo+DQo+IGlkcGZfdmlkX3RvX3Zwb3J0Pw0KPg0KPiA+ICsNCj4g
PiArCWlmICghdHN0YW1wX3Zwb3J0IHx8ICF0c3RhbXBfdnBvcnQtPnR4X3RzdGFtcF9jYXBzKQ0K
PiA+ICsJCXJldHVybiAtRUlOVkFMOw0K

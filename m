Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CE59A2DD0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 21:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89C0A4087B;
	Thu, 17 Oct 2024 19:29:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJzoeMssCOcJ; Thu, 17 Oct 2024 19:29:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEAF240871
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729193378;
	bh=XBzXbg6Vp5LZAicCG44SkQP/KYX1h2DNz7kgTIPddFM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nbNIR7XQjVQhvm6Ng+gKdki5SeyO38bbfKWJb5e1Io6yhm4vJ9I2afi/of5zf6kMx
	 bJbHbIJ8U8FxYUGumiPIlUryh8DlJe3wigQz8X2FwLztFDuxIKPSQBhpTQFp8ALw4j
	 DqW6DCS2hmcXRBLc1pdt56VvHpiA9YXbI1aLGSQ4HP1PPN/G4rIApOsxonG9bMwtDU
	 KtMIqD9mEuc+jVfqPgTyUNAzguRf28Jqq1q0WSm9rRhMMvQV/Oyq4SDLwDJY91gTeE
	 1lR3DdG26pbVpRYSLJqY9BPPxNdXWmuztug6BYfj+cNQnl84uOrd8o9lXFMEBAxInZ
	 18irvamWwCyGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEAF240871;
	Thu, 17 Oct 2024 19:29:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BE4FC27DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 19:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F54B60AA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 19:29:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VkMkboB6kq7Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 19:29:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 11F1060AA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11F1060AA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11F1060AA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 19:29:30 +0000 (UTC)
X-CSE-ConnectionGUID: 0PnszOZ5TuO/UiUWnZQNZA==
X-CSE-MsgGUID: 30OIVisOQYO9Qa0NxIdzyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11228"; a="28793541"
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="28793541"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 12:29:30 -0700
X-CSE-ConnectionGUID: NiaOF/koREidXiK0+H6gmQ==
X-CSE-MsgGUID: zYo5MyDNQhG9x2PhbS/M5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,211,1725346800"; d="scan'208";a="82610007"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 12:29:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:29:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 12:29:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 12:29:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 12:29:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SF7MWFBMCmkhUCFQaU9MnCbkvgahv6Sjz6eSxsWCkGsAgHlfheon1Xs8dUoDA1GQfNoNJaClqLQrEVfDTpYc6HOnxEozboHTgrTTELixdpl2PSkOBwkmQ404BYfZZYywj5nNHsa7wn5mAELj8iMg3obh8zwvrEAkuCg8+YWfW4VYBwqU5kKCAGctmS5vv7DI0710nuVuemmFTQyg/9+gZfZDXQOETFHE0mmfeAmtnPKrPiFbEvnBqtgUtMJmHzxjbEwPEJUrDNZHzH0B7UVhJ4dyluBr0n6Dua/Uup2ISUc/GciXj8BVuDuz7z3r0NavLFYjUJg8XtVLpVjoZgW6yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XBzXbg6Vp5LZAicCG44SkQP/KYX1h2DNz7kgTIPddFM=;
 b=ym2aSLd32TpbzdHheAGNzH5EFfc0c+KyS2ysNM4+HSPUpX+/hgFpOenQzmwDMFoZDd2GkGpfnooCbgwBHKRlsVqaCHxOg/139rWQeWpoRthEf0IIOJ2Op5d12CdK1towF4S3swCMZ9mfIKFsDQ0HgwEOrVZUrlQk6vQ0iDMPe9G32E4z+zNSF0eNynXFBvgEfjX8cvVxslkcVWwSCO9AjH8aR2jELycO/aGqZLCAMaqnyGAMo4gtgO/koREuK4ZaiBcBh2JxGbjSJ3KCLj98Rqdj7VmQBr9ecuUSrVtrZQCgypPBHNgi+rh71nor733WRxuVHKpdkgILIIyQ4ur4JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB6402.namprd11.prod.outlook.com (2603:10b6:510:1fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Thu, 17 Oct
 2024 19:29:25 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8069.016; Thu, 17 Oct 2024
 19:29:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>
Thread-Topic: [PATCH iwl-next v3] i40e: add ability to reset vf for tx and rx
 mdd events
Thread-Index: AQHa+xLFE+hHXP8jHEmej6nLA7aeI7JGgUAAgAo+iaCAAC4vgIA6EsLAgACepgA=
Date: Thu, 17 Oct 2024 19:29:25 +0000
Message-ID: <SJ0PR11MB58669687E3249583A8209215E5472@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
 <ZtdqfLfHYvEKPE+r@boxer>
 <SJ0PR11MB586686ED6AFA882486F4EF05E59A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <e9828f6a-3a2a-4128-bb2c-5dc75d013a9e@intel.com>
 <SJ0PR11MB58667E28D6BB2B3CB663032FE5472@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB58667E28D6BB2B3CB663032FE5472@SJ0PR11MB5866.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB6402:EE_
x-ms-office365-filtering-correlation-id: e222b7f1-1428-4031-28d7-08dceee202c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dk5DOEJrWDUyT3EzQkhmRUFRckI0cGJCL0huajlNVnBkS1FzNlo3YWk4bCtW?=
 =?utf-8?B?M1lGR09vS1lBQVhxYXg1Wk55Q3lhUERiLzY2WFBla08ybURtYm8rWFJLdDJv?=
 =?utf-8?B?dWljNTA5VUxOYnNFZ01NZVc0aXJqSmlUcXJpZXAyVUxnT1pQZHY3MnpselJF?=
 =?utf-8?B?WFdPSkEwMTEyV2VRMWRaZmF6d2FrWDVGWUdDODBodlNkcEtpRzFLdU5WU0lM?=
 =?utf-8?B?ZjZXNjlmRVpoa29idFNZelNIN1hteW83eGJoSG9FTGcrbTZ4Z050UThPUFlL?=
 =?utf-8?B?U1RNcXJDbjN3NG1yV242OTVObFpTNnRWYkRjY2FDbXV2SXR2Yk16ZmRDUjF1?=
 =?utf-8?B?V2tqUnhoVHZ4aHFjMmFpV2F4MEZaU1dLVnNjclhqeHVxQmdUWC9TMXNpc3Fh?=
 =?utf-8?B?NDNXRnk3cVFJbHgrK0JBTUQwRFgyZFhFMWxyZXlOaW43QlVDT25JNEJaUU5V?=
 =?utf-8?B?QmUvUTBLc3o2cDdJd3kydXZOSHhQdnJZdVNjbTFVb250aXN4R1RjeU5xWEVU?=
 =?utf-8?B?QnZBenBNN0ZiOUQzRlBtTlVVMlBlTmhHaVVSQVAyaVU5MGxFNmNGL0p1Q1Rr?=
 =?utf-8?B?U0UvWllEemp1akRrVm4zZ2l4dTJHUGJ2US94TmhwM2pRakwrckQrY0J2ckRh?=
 =?utf-8?B?Zms0bUYzc2tCK1JyNGRzMFdERXRoOW0zKzQ0NFRxSEF0eDgzdVpkNDdDMi9u?=
 =?utf-8?B?Mmg3T0ROMk9IMDVyV3ZYQUNuTk5VWWNIM3JrRzZiMEh1eFdaL0FiY3hGRUVV?=
 =?utf-8?B?WjZBdERmQTRqSmIyQ0lvejU1ZXFwd05KYzh0SjBxNTRhVi9DR3RMeS9FU0xF?=
 =?utf-8?B?eWsrYnhBNzYrSDA1aFA5ZjBINDNRQnV4WlB0cDZaV2IxeVBGcWw1NVFuazhB?=
 =?utf-8?B?U3htWDMxbzd5MTlweVpmVCtWbktmRVVNaDJTdlI4VENmMmVoekhJSS81THls?=
 =?utf-8?B?NkNISTh5N2dXYmhRMG5nbGJiRzFJUGUrb2ErSmdDaHJxSjFJY2grUTNycFhB?=
 =?utf-8?B?TGxHamVDMGgrUjRRWndTMU5tbzM5UGZCdTlnRytZKzZvNCtnRnRXZHZtWUl5?=
 =?utf-8?B?UFBhQWZoaEVoS0RUT0JhSjZ2bjFYaWxQM29pYUpuWjkvN2Vyc2IrcTIvMVRx?=
 =?utf-8?B?d2ZUZTJuTGRWTkJlVHRwejdWQlkxMS9iYTc1OUtLeS9SS2g5bE8xcjY1QWhB?=
 =?utf-8?B?MWE0Uzh1MGRYbmVEcEU2djIxVFFvWE9zYUgzT0RIMVZMaFJmLzdrdHczUTdJ?=
 =?utf-8?B?WHJBV2VxWEJibmkya1NYbE4rTWpzajB5MXYrT1RXOUhRaXBHbVlvSVltRkdw?=
 =?utf-8?B?RWlXVmkyL1FtM3dnVEJnZ2xwUVE0cFI3eU5mOWpTaVNlbWJkNXR5K3N1QXlU?=
 =?utf-8?B?c0UrQisrVGYwa1RMdGhqYklEWkV4SWI4bTNibGxBdGZra0lLdE9jaFBHM01y?=
 =?utf-8?B?eUJGWDQrRFc5Q05ZMVk1R0t2dkRhWkhVeDhvbEJKbDkzWGlBaWpBbkszbGt1?=
 =?utf-8?B?N0VkSG9RQ2p6Mm1DeVBPWEswbnpuc01yZ1BJMUpieGZrdWg5UDRQcklWYVZM?=
 =?utf-8?B?c3prVEdMVXdmWE5xQzgzYjhJQUNZRTRWYUF3RElvSjBCMVQwUHFKeXVscnp3?=
 =?utf-8?B?aU9uZGFmUGtDcnphc0pNZHhEK3psaGNvamI4VFZ1VlBhQ3I3TG8zNDZNOEcx?=
 =?utf-8?B?MFU2bDlqRjI5WTZPZ0dZQmwrZDVxRHk3MWF4NjlFNUNGYi9xUXM2cHhpcXZR?=
 =?utf-8?B?dFhIZlUxQ0ZFLzFxYjNqaDhBN3lXUHRNVjhoK0docGJzVTY3aUxSQW4ya1RC?=
 =?utf-8?Q?esplNlK6pGsWMnSPH5s7Dx4PuTkCHT9h+d+0c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzNaVG9FWWtiZjZlcjYvKy9IMjV2WTZiZE5TV1JQT3VUTC8xeXB1MWxDbEZJ?=
 =?utf-8?B?dytlL0hkclBYUi9lbjJGUloreU5nNTRHRTczejZ0dnZOekFoeE1NWGpzTFBV?=
 =?utf-8?B?UDJRSjJCdEtzbTl0OURnMCt0Z3VBU1lwVDhOKzZ6VlVCM0N3dXVINjZYM2Ri?=
 =?utf-8?B?dmJrRElLWjc5b21oUHVNSnIrUHdKclRDK1RuRWhOcG8vK2dGbDR0SHJva0Q4?=
 =?utf-8?B?MFczWVBQWG9KUE5obW9FbEdQdDErV21mOUh0bEpFeUNDUWlOdzFYWTBmTXk3?=
 =?utf-8?B?TXJzZGFxbVVUeGgydVlBdTRpVSt6Yk9MekVlNGh2RGdjczY0UEVoa0N1Yklw?=
 =?utf-8?B?anJObzk3LzNJaFo3Zkw4TG9ia0pwVDZjWXFNbVp3THdEOEt3amY4UEhycWJz?=
 =?utf-8?B?bzBGTlFjNGVQeDhQbTgwa3hNeFM5cnovUW1wd1pnMTV3TVdzWkRIQUpQdTZN?=
 =?utf-8?B?QXRjbXF2bnlaSUtFbUcyamZydy8wdG55S3J3MHpIQS9kNzhVOGd5UWtYMXp1?=
 =?utf-8?B?MnFPc2VZSHVhT012TVc1RlFTbHVMMElhQ3o0TTd5Z2pORE8xZzdvZkdobXN5?=
 =?utf-8?B?ZnVHeHkzOEt4MUR6YjJtdnZ1V3huOFJNdTllSUozalZBRDBuTk1RcTBEbzYy?=
 =?utf-8?B?bVViaU9UTjBzKzE2ZjlwODhrbGluS3Zqbmx0bW0wM2xUMWtyV3FaeXg5Uldy?=
 =?utf-8?B?L0dRL29zcHR2UVZYYTg3TEFMTHlBK3RuNHhSZUdSaUxaUnZlK1VyMjFjdVBX?=
 =?utf-8?B?RnNRRnNwQ2x0bVJVQlhoZGhMNC9YQnFkK1k3dTJTUVE3cDUwWUtkZWpTZnhl?=
 =?utf-8?B?ZCtNUjQrUTdPOTUydFhEenB3NkpkUS81QkZsMnFVK0laR1ZMc2ZyZGpLZVdj?=
 =?utf-8?B?UVNlLzY1MFJrYUtKSTNwdkFUa0V5OWI1WkVFRlpLTTI1YUtyVkRNMjNDUUZS?=
 =?utf-8?B?NmdyR1pkc2h3MmlKUHc1MkJoZlFrbkozdUNaUkI3dXV1TWY3WmhlSG9rZlp6?=
 =?utf-8?B?S0g3dG5sTWM5ampIcFJyN1RNTHEzKzVYWWw4S1JuSUFpRWt5TFRZSitwamJq?=
 =?utf-8?B?bTN4dW9vMHZSYWRDdlVucDZzb2tsZ0tlZitzRnB4aytkYWdZRGl4cXF2ck1w?=
 =?utf-8?B?MFhVSzFiVlEvWTJFbEx6NmpydThzeFFsS0crQjVuWEtLSVNhNHRwYTJtRU1P?=
 =?utf-8?B?QSs1RllRVnBBWGlBQkRnd2J2alhFemU2MEtZSE5FZlFsV1BqSUpyM3YzZlZs?=
 =?utf-8?B?ZFowSlN6SlAzeEFiRldrcUMzaWM2QzdpdEhXMzJuQkVtU3YxczRKRW1mL0JF?=
 =?utf-8?B?WWNOYWNDREVZQ2czVzZIeEZ3UVI3MGlQemdpVjhLTVU4clN4Vk5WczlsYXFE?=
 =?utf-8?B?aGxrZDBMSjg0RGhhbTRsMkNjSzF3S083SnNJdk5nTG04aTZHaUdHNlhqeUZh?=
 =?utf-8?B?N0lYN3ZBWE80V3liUEJna2Z0a3ZGdE9ja0R4VTkzL1JaODFwbzBrRVZLcGdW?=
 =?utf-8?B?c1pBZEorY0s3dzUvUFAwUXpRWUo2RmtzM0l1cENUeFJycWxXSGZ5bWJLYVdS?=
 =?utf-8?B?aGlsbmFySW5PS2Q2SzVEMXhadDJiMDMxWFBRNzhiMXBqWU1SUy9CdGFmUXFP?=
 =?utf-8?B?OEVnWm5hUlk1QlFueWNHT254blNpcEF3elE2N1NMSllsRW9pL0ZaUnVCbFlZ?=
 =?utf-8?B?clNOQkNjbmw0amlHaHdLbldmSDBCbGRQR3hBTWlvSlRBd2xsZWFITDhZQWdu?=
 =?utf-8?B?S1BLZTdjeEo5OU9uMDhxbHdJU3E1UlB3K0xtYVdydlR1R3pWZXJMdGt6QU1v?=
 =?utf-8?B?YTE5Z3prTjJ1MFBMVGw1d1pBWk5kdzVCcmF0U2NKb3lXZUR3MVpzbjNsVVR4?=
 =?utf-8?B?bXVsK1RkYmNNb1l2ekNObUltakc0Q0Znck12clpxUG5FOHBHdFZUQUhwNFpE?=
 =?utf-8?B?MFVKR2ZYemNFSnRzeGkxekI1b2pVL04rd1JMemZDSjFrdTJLTk9VM0lRTnQ1?=
 =?utf-8?B?b1ZScUFOdTJsSEZ2TFVJTVNPNjBLSmtCRnc4c0ZIazErcG9Sb1kxakpWNzhI?=
 =?utf-8?B?K201YmlnVUlEUDJid3AzS09Dd20wK3pDSFV5WjNzWFliSW8zdVM4SERBVVZU?=
 =?utf-8?B?NHkwdHp6cmpzeFJSUWVaMEJmcDZUMGR2bWVRZUE2b1dRY2lXZUZ2aStqK3Z2?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e222b7f1-1428-4031-28d7-08dceee202c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 19:29:25.6440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tJeNlrGOtFHZ2j5/6pDy5zfELJwrkJMWJOfrYs8ui9RyXoGaEAdcWtjxCnT/ezhENW/0hmB20FXB8oB545SXxvDXtNoRqfjy99YMwIh+E5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729193371; x=1760729371;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XBzXbg6Vp5LZAicCG44SkQP/KYX1h2DNz7kgTIPddFM=;
 b=l0ThbjA1u8Ysd8nOpRwU+WmZUqfk1P37ExyR7dUbIwTWHxyKW9ABaMmn
 ppQ53cqJwP9heLbjx0MKfu7Xtbbr4nvftIqUR9X77EM7DEEFSandMcuU9
 20Ee8H4R4niICbpo3TBsFMkadgTtH1rUAPUu8fdpVKk6BpoFQrPJJ7jUS
 UnQCTppuCSKgPaX1Y5zPnBxglmmFbPG7WT0N6JAWht/AOr1Irn86H3S4G
 BEay+tXZi3AYTcaDAL1/1EOtAiJ6Igd1Vz1yj51zGym1lSOAwNtHXtjmy
 QULfTnQaGT+gO8usAVrJLL/TIeWFSKVrBVfOeaJD9uQTWeXDNrV4+4dkI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l0ThbjA1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9rdGlvbm92LCBBbGVr
c2FuZHINCj4gU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMTcsIDIwMjQgMTI6MDIgUE0NCj4gVG86
IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Ow0KPiBG
aWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPg0KPiBDYzog
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXllbiwgQW50aG9ueSBMDQo+IDxh
bnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFNva29s
b3dza2ksDQo+IEphbiA8amFuLnNva29sb3dza2lAaW50ZWwuY29tPjsgQ29ubm9sbHksIFBhZHJh
aWcgSg0KPiA8UGFkcmFpZy5KLkNvbm5vbGx5QGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQ
QVRDSCBpd2wtbmV4dCB2M10gaTQwZTogYWRkIGFiaWxpdHkgdG8gcmVzZXQgdmYgZm9yDQo+IHR4
IGFuZCByeCBtZGQgZXZlbnRzDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gPiBGcm9tOiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxA
aW50ZWwuY29tPg0KPiA+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAxMCwgMjAyNCAxOjExIFBN
DQo+ID4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVs
LmNvbT47DQo+ID4gRmlqYWxrb3dza2ksIE1hY2llaiA8bWFjaWVqLmZpamFsa293c2tpQGludGVs
LmNvbT4NCj4gPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXllbiwg
QW50aG9ueSBMDQo+ID4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgU29rb2xvd3NraSwNCj4gPiBKYW4gPGphbi5zb2tvbG93c2tpQGludGVsLmNv
bT47IENvbm5vbGx5LCBQYWRyYWlnIEoNCj4gPiA8cGFkcmFpZy5qLmNvbm5vbGx5QGludGVsLmNv
bT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYzXSBpNDBlOiBhZGQgYWJpbGl0
eSB0byByZXNldCB2Zg0KPiBmb3INCj4gPiB0eCBhbmQgcnggbWRkIGV2ZW50cw0KPiA+DQo+ID4g
T24gOS8xMC8yNCAxMDoyOSwgTG9rdGlvbm92LCBBbGVrc2FuZHIgd3JvdGU6DQo+ID4gPj4gRnJv
bTogRmlqYWxrb3dza2ksIE1hY2llaiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4NCj4g
PiA+PiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMywgMjAyNCA5OjU5IFBNDQo+ID4gPj4gVG86
IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4g
PiA+PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXllbiwgQW50aG9u
eSBMDQo+ID4gPj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsNCj4gPiBTb2tvbG93c2tpLCBKYW4NCj4gPiA+PiA8amFuLnNva29sb3dza2lAaW50
ZWwuY29tPjsgQ29ubm9sbHksIFBhZHJhaWcgSg0KPiA+ID4+IDxwYWRyYWlnLmouY29ubm9sbHlA
aW50ZWwuY29tPg0KPiA+ID4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHQgdjNdIGk0MGU6
IGFkZCBhYmlsaXR5IHRvIHJlc2V0IHZmDQo+ID4gZm9yIHR4DQo+ID4gPj4gYW5kIHJ4IG1kZCBl
dmVudHMNCj4gPg0KPiA+IHBsZWFzZSBjYXBpdGFsaXplIGFjcm9ueW1zIChUeCwgUngsIFZGLCBN
REQsIFBGKSAoYWxzbyBpbiB0aGUNCj4gPiBzdWJqZWN0IGxpbmUsIGJ1dCBzZW50IG5leHQgdmVy
c2lvbiBhcyB2NCkuDQo+ID4NCj4gPiA+Pg0KPiA+ID4+IE9uIEZyaSwgQXVnIDMwLCAyMDI0IGF0
IDA5OjI4OjA3UE0gKzAyMDAsIEFsZWtzYW5kciBMb2t0aW9ub3YNCj4gPiB3cm90ZToNCj4gPiA+
Pj4gSW4gY2FzZXMgd2hlbiB2ZiBzZW5kcyBtYWxmb3JtZWQgcGFja2V0cyB0aGF0IGFyZSBjbGFz
c2lmaWVkDQo+IGFzDQo+ID4gPj4+IG1hbGljaW91cywgc29tZXRpbWVzIGl0IGNhdXNlcyB0eCBx
dWV1ZSB0byBmcmVlemUuIFRoaXMNCj4gZnJvemVuDQo+ID4gcXVldWUNCj4gPiA+Pj4gY2FuIGJl
IHN0dWNrIGZvciBzZXZlcmFsIG1pbnV0ZXMgYmVpbmcgdW51c2FibGUuIFdoZW4gbWRkDQo+IGV2
ZW50DQo+ID4gPj4+IG9jY3VycywgdGhlcmUgaXMgYSBwb3NpYmlsaXR5IHRvIHBlcmZvcm0gYSBn
cmFjZWZ1bCB2ZiByZXNldA0KPiB0bw0KPiA+ID4+PiBxdWlja2x5IGJyaW5nIHZmIGJhY2sgdG8g
b3BlcmF0aW9uYWwgc3RhdGUuDQo+ID4gPj4+DQo+ID4gPj4+IEN1cnJlbnRseSB2ZiBpcXVldWVz
IGFyZSBiZWluZyBkaXNhYmxlZCBpZiBtZGQgZXZlbnQgb2NjdXJzLg0KPiA+ID4+PiBBZGQgdGhl
IGFiaWxpdHkgdG8gcmVzZXQgdmYgaWYgdHggb3IgcnggbWRkIG9jY3Vycy4NCj4gPiA+Pj4gQWRk
IG1kZCBldmVudHMgbG9nZ2luZyB0aHJvdHRsaW5nIC8qIGF2b2lkIGRtZXNnIHBvbHV0aW9uICov
Lg0KPiA+ID4+PiBVbmlmeSB0eCByeCBtZGQgbWVzc2FnZXMgZm9ybWF0cy4NCj4gPiA+Pj4NCj4g
PiA+Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBKYW4gU29rb2xvd3NraSA8amFuLnNva29sb3dza2lAaW50
ZWwuY29tPg0KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBKYW4gU29rb2xvd3NraSA8amFuLnNva29s
b3dza2lAaW50ZWwuY29tPg0KPiA+ID4+PiBDby1kZXZlbG9wZWQtYnk6IFBhZHJhaWcgSiBDb25u
b2xseQ0KPiA+IDxwYWRyYWlnLmouY29ubm9sbHlAaW50ZWwuY29tPg0KPiA+ID4+PiBTaWduZWQt
b2ZmLWJ5OiAgUGFkcmFpZyBKIENvbm5vbGx5DQo+ID4gPHBhZHJhaWcuai5jb25ub2xseUBpbnRl
bC5jb20+DQo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YNCj4gPiA8
YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4NCj4gPiBOZXh0IHRpbWUgcGxlYXNl
IHdhaXQgZm9yIHJldmlldyBvbiBvdXIgaW50ZXJuYWwgZTEwMDAtbWFpbGluZy0NCj4gPiBsaXN0
Lg0KPiA+IEZlZWwgZnJlZSB0byBwaW5nIG1lIGRpcmVjdGx5IGlmIHRoZXJlIHdpbGwgYmUgbm8g
b25lIGVuZ2FnZWQgaW4NCj4gPiBhbnkgZnV0dXJlIHNlcmllcyBvZiB5b3Vycy4NCj4gPg0KPiA+
ID4+PiAtLS0NCj4gPiA+Pj4gdjItPnYzIGZpeCBjb21waWxhdGlvbiBpc3N1ZQ0KPiA+ID4+PiB2
MS0+djIgZml4IGNvbXBpbGF0aW9uIGlzc3VlDQo+ID4gPj4+IC0tLQ0KPiA+ID4+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgICAgICB8ICAgNCArLQ0KPiA+ID4+
PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMuYyAgICB8ICAgMiAr
LQ0KPiA+ID4+PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyAg
ICB8ICAgMiArDQo+ID4gPj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X21haW4uYyAgIHwgMTE2DQo+ID4gPj4gKysrKysrKysrKysrKysrKy0tDQo+ID4gPj4+ICAgLi4u
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jICAgIHwgICAyICstDQo+ID4g
Pj4+ICAgLi4uL2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5oICAgIHwgIDEx
ICstDQo+ID4gPj4+ICAgNiBmaWxlcyBjaGFuZ2VkLCAxMjIgaW5zZXJ0aW9ucygrKSwgMTUgZGVs
ZXRpb25zKC0pDQo+ID4gPj4+DQo+ID4NCj4gPg0KPiA+ID4+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jDQo+ID4gPj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMNCj4gPiA+Pj4gQEAgLTQ1OSw2
ICs0NTksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk0MGVfcHJpdl9mbGFncw0KPiA+ID4+IGk0
MGVfZ3N0cmluZ3NfcHJpdl9mbGFnc1tdID0gew0KPiA+ID4+PiAgIAlJNDBFX1BSSVZfRkxBRygi
YmFzZS1yLWZlYyIsIEk0MEVfRkxBR19CQVNFX1JfRkVDLCAwKSwNCj4gPiA+Pj4gICAJSTQwRV9Q
UklWX0ZMQUcoInZmLXZsYW4tcHJ1bmluZyIsDQo+ID4gPj4+ICAgCQkgICAgICAgSTQwRV9GTEFH
X1ZGX1ZMQU5fUFJVTklOR19FTkEsIDApLA0KPiA+ID4+PiArCUk0MEVfUFJJVl9GTEFHKCJtZGQt
YXV0by1yZXNldC12ZiIsDQo+ID4gPj4+ICsJCSAgICAgICBJNDBFX0ZMQUdfTUREX0FVVE9fUkVT
RVRfVkYsIDApLA0KPiA+ID4+DQo+ID4gPj4geW91IGRvbid0IHRlbGwgdXMgdGhhdCB0aGlzIGlz
IGltcGxlbWVudGVkIHZpYSBwcml2LWZsYWcgaW4NCj4gdGhlDQo+ID4gPj4gY29tbWl0IG1lc3Nh
Z2UsIHdvdWxkIGJlIGdvb2QgdG8gaW5jbHVkZSBpbmZvIGFib3V0IGl0Lg0KPiA+ID4gVGhpcyBm
bGFnIGlzIGltcGxlbWVudGVkIGZvciBvdGhlciBuZXR3b3JrIGFkYXB0ZXJzIGxpa2UgaWNlLA0K
PiB3ZQ0KPiA+IHRob3VnaHQgaXQncyBraW5kIG9mIHN0YW5kYXJkLg0KPiA+ID4gQ2FuIHlvdSBz
dWdnZXN0IHdoYXQgZXhhY3QgcGFydCB0byBjaGFuZ2U/IFBsZWFzZSBiZSBjb25jcmV0ZS4NCj4g
PiA+IFRoYW5rIHlvdQ0KPiA+DQo+ID4gcHJpdi1mbGFnIGlzIG5vdCBhIHN0YW5kYXJkLCBieSBk
ZWZpbml0aW9uIHdoYXQgd2UgZG8gaW4gaW50ZWwNCj4gPiBkcml2ZXJzIGlzIGFsc28gbm90IG5l
Y2Vzc2FyaWx5IGEgc3RhbmRhcmQNCj4gPg0KPiA+IGtlZXBpbmcgdGhlIGNvZGUgcXVhbGl0eSBh
cy1pcyBzaG91bGQgYmUgcmF0aGVyIHNlZW4gYXMgYW4NCj4gPiBhbGxvd2FuY2UgZm9yIGxlZ2Fj
eSBkcml2ZXJzLCBpbnN0ZWFkIG9mIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZQ0KPiA+IGNvcHkt
cGFzdGVkIHlldCBhZ2Fpbi4gQnV0IGNvbW1pdCBtZXNzYWdlcyBhcmUgZGlmZmVyZW50LCB5b3UN
Cj4gbmVlZA0KPiA+IHRvIG9iZXkgdGhlIGN1cnJlbnQgc3RhbmRhcmQsIHdoaWNoIGlzIHNpbXBs
eTogZGVzY3JpYmUgbm9uLQ0KPiBvYnZpb3VzDQo+ID4gdGhpbmdzLCBkZXNjcmliZSBtb3JlIGlm
IGFza2VkIGR1cmluZyByZXZpZXcuIFBsZWFzZSBkbyBzbyA6KQ0KPiA+DQo+ID4gPj4+ICtzdGF0
aWMgdm9pZCBpNDBlX3ByaW50X3ZmX3J4X21kZF9ldmVudChzdHJ1Y3QgaTQwZV9wZiAqcGYsDQo+
ID4gc3RydWN0DQo+ID4gPj4+ICtpNDBlX3ZmICp2Zikgew0KPiA+ID4+PiArCWRldl9lcnIoJnBm
LT5wZGV2LT5kZXYsICIlbGxkIFJ4IE1hbGljaW91cyBEcml2ZXINCj4gRGV0ZWN0aW9uDQo+ID4g
Pj4gZXZlbnRzIGRldGVjdGVkIG9uIFBGICVkIFZGICVkIE1BQyAlcG0uIG1kZC1hdXRvLXJlc2V0
LQ0KPiA+IHZmcz0lc1xuIiwNCj4gPiA+Pj4gKwkJdmYtPm1kZF9yeF9ldmVudHMuY291bnQsDQo+
ID4gPj4+ICsJCXBmLT5ody5wZl9pZCwNCj4gPiA+Pj4gKwkJdmYtPnZmX2lkLA0KPiA+ID4+PiAr
CQl2Zi0+ZGVmYXVsdF9sYW5fYWRkci5hZGRyLA0KPiA+ID4+PiArCQl0ZXN0X2JpdChJNDBFX0ZM
QUdfTUREX0FVVE9fUkVTRVRfVkYsIHBmLT5mbGFncykNCj4gPyAib24iDQo+ID4gOg0KPiA+ID4+
ICJvZmYiKTsgfQ0KPiA+ID4+PiArDQo+ID4gPj4+ICsvKioNCj4gPiA+Pj4gKyAqIGk0MGVfcHJp
bnRfdmZfdHhfbWRkX2V2ZW50IC0gcHJpbnQgVkYgVHggbWFsaWNpb3VzIGRyaXZlcg0KPiA+IGRl
dGVjdA0KPiA+ID4+PiArZXZlbnQNCj4gPiA+Pj4gKyAqIEBwZjogYm9hcmQgcHJpdmF0ZSBzdHJ1
Y3R1cmUNCj4gPiA+Pj4gKyAqIEB2ZjogcG9pbnRlciB0byB0aGUgVkYgc3RydWN0dXJlICAqLyBz
dGF0aWMgdm9pZA0KPiA+ID4+PiAraTQwZV9wcmludF92Zl90eF9tZGRfZXZlbnQoc3RydWN0IGk0
MGVfcGYgKnBmLCBzdHJ1Y3QNCj4gaTQwZV92Zg0KPiA+ICp2ZikNCj4gPiA+Pj4gK3sNCj4gPiA+
Pj4gKwlkZXZfZXJyKCZwZi0+cGRldi0+ZGV2LCAiJWxsZCBUeCBNYWxpY2lvdXMgRHJpdmVyDQo+
IERldGVjdGlvbg0KPiA+ID4+IGV2ZW50cyBkZXRlY3RlZCBvbiBQRiAlZCBWRiAlZCBNQUMgJXBt
LiBtZGQtYXV0by1yZXNldC0NCj4gPiB2ZnM9JXNcbiIsDQo+ID4gPj4+ICsJCXZmLT5tZGRfdHhf
ZXZlbnRzLmNvdW50LA0KPiA+ID4+PiArCQlwZi0+aHcucGZfaWQsDQo+ID4gPj4+ICsJCXZmLT52
Zl9pZCwNCj4gPiA+Pj4gKwkJdmYtPmRlZmF1bHRfbGFuX2FkZHIuYWRkciwNCj4gPiA+Pj4gKwkJ
dGVzdF9iaXQoSTQwRV9GTEFHX01ERF9BVVRPX1JFU0VUX1ZGLCBwZi0+ZmxhZ3MpDQo+ID8gIm9u
Ig0KPiA+IDoNCj4gPiA+PiAib2ZmIik7IH0NCj4gPiA+Pg0KPiA+ID4+IFVubmVjZXNhcnkgY29k
ZSBkdXBsaWNhdGlvbiwgdHdvIGZ1bmN0aW9ucyB3aXRoIHByaW50aW5nIHRoZQ0KPiA+IHZlcnkN
Cj4gPiA+PiBzYW1lIHN0YXRlbWVudCB3aXRoIGEgc2luZ2xlIGRpZmZlcmVudCBsZXR0ZXIuDQo+
ID4gPiBCdXQgaXQncyBlYXN5IHRvIGdyZXAgYW5kIGZpbmQgYXMgcmVxdWlyZWQgYnkgbGludXgg
Y29kaW5nDQo+ID4gc3RhbmRhcmRzLg0KPiA+DQo+ID4gWW91IGNvdWxkIHJld29yZCB0byBoYXZl
IGl0IHN0aWxsIG9idmlvdXMgd2hhdCB0byBncmVwIGZvciwgbGlrZToNCj4gPg0KPiA+IE1hbGlj
aW91cyBEcml2ZXIgRGV0ZWN0ZWQgYW4gRXZlbnQsIFBGOiAlZCwgVkY6ICVkLCBNQUM6ICVwbSwN
Cj4gZGlyOg0KPiA+ICVzLi4uDQo+ID4NCj4gPiB3aXRoIHRoZSBsYXN0ICVzIGJlaW5nICJUeCIg
b3IgIlJ4Ig0KPiA+IChub3RlOiBJIGRpZG4ndCBjb3BpZWQgYWxsIHlvdXIgc3R1ZmYgYXMgdGhp
cyBpcyBqdXN0IGFuIGV4YW1wbGUpDQo+ID4NCj4gPiA+Pj4gKw0KPiA+ID4+PiArCS8qIFZGIE1E
RCBldmVudCBsb2dzIGFyZSByYXRlIGxpbWl0ZWQgdG8gb25lIHNlY29uZA0KPiBpbnRlcnZhbHMN
Cj4gPiAqLw0KPiA+ID4+PiArCWlmICh0aW1lX2lzX2FmdGVyX2ppZmZpZXMocGYtPmxhc3RfcHJp
bnRlZF9tZGRfamlmZmllcw0KPiArIEhaICoNCj4gPiA+PiAxKSkNCj4gPiA+Pj4gKwkJcmV0dXJu
Ow0KPiA+ID4+PiArDQo+ID4gPj4+ICsJcGYtPmxhc3RfcHJpbnRlZF9tZGRfamlmZmllcyA9IGpp
ZmZpZXM7DQo+ID4gPj4NCj4gPiA+PiB3aHkgaG9tZWdyb3duIHJhdGUgbGltaXRpbmc/DQo+ID4g
PiBCZWNhdXNlIGl0IHdvcmtzISBBbmQgb3RoZXIgaWRlYXMgcHJvYmFibHkgZGlkbid0Lg0KPiA+
ID4gV2hhdCBpcyB5b3VyIHN1Z2dlc3Rpb24gZXhhY3RseT8gUGxlYXNlIGJlIGNvbmNyZXRlLg0K
PiA+DQo+ID4gZGV2X2luZm9fcmF0ZWxpbWl0ZWQoKQ0KSXQgZG9lc24ndCBmaXQgcmVxdWlyZW1l
bnRzLiBXZSBuZWVkIGN1c3RvbSByYXRlIGxpbWl0aW5nLCBwbGVhc2Ugc2VlIHRoZSBjb2RlIQ0K
DQo=

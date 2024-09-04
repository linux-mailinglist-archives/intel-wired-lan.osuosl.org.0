Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2661C96C910
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 23:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C382680E4A;
	Wed,  4 Sep 2024 21:00:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G-QFZUZRYZQJ; Wed,  4 Sep 2024 21:00:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 576FA80E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725483643;
	bh=g43oVEC9dleLyUSFv0LBkTgaDE517muMHBlhjzJfywo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qsi/b23pCHGjhpzKN6IE4Vsw5nMvJE488yf9Yi4BtqGkvQFQlpV4/JRwi8rJqc6pb
	 go9A/Dt7yBneeBBZDLIKsTrUrVR3WIHJDN4QPd44f+5QDfPO9UbvgG7UagdF0T5D52
	 zQ8RWyOxm002EMfkOmAUBynaz4x1LZG9BUxYxwlUaanli6e3zoFvEbzUdw7LJ9RdY/
	 hLZA9OLN7sUJocZ/3zVcoqDup92KsNyTh4Y9XDFheReSInYbhYsFQJ2jBkhPDi8gsE
	 biofyy/7AXoshXpFkbHTb5qicCRgWVXtrlvKH6hh3aC7klXQO2/6VsLvQdBS8YwDU4
	 7+s2b2X992NTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 576FA80E4C;
	Wed,  4 Sep 2024 21:00:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA851BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 21:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED98B80E44
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 21:00:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o0CvXDsL_-8Y for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 21:00:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C919380E47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C919380E47
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C919380E47
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 21:00:40 +0000 (UTC)
X-CSE-ConnectionGUID: 68Y06pd6QPmBN9OlPMWj+g==
X-CSE-MsgGUID: kLxc/VFrQPixHX5+yqmcWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="41645499"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="41645499"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 14:00:39 -0700
X-CSE-ConnectionGUID: hCgz6IuNRJaFIBAikyqpNQ==
X-CSE-MsgGUID: OPC7p44bRKGKnWz3l0cZcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65049273"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 14:00:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 14:00:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 14:00:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 14:00:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 14:00:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dN0JmF3b+WW+QYE0/WKiWbhWwtSITiEE0JJVsr1rviBjqweoPEgoUbO/6ah1cjTImmkp1bzIJHYPvaqYWXIYkggwKiIM5TTyXN1DodgemQnOHZSEdmDny7wWesPE0H+TL7OWdRA0CUnxJoM2pP6ZKoABbcZ+r3yYvsOWZE+wqFCASDwAkhOkvfBHwZDbEilPtNL5/HMsHxTF+fhRWig8vsLgceVYK4b2VxUF4l8l31XzR5zQ1jkaVdAuvS6CQGh4rv5HZ20qKVqpOL203OI6da6OllpLTC5bSHk8QAG494AB6/IRa463SD4JFPvgfNYZ4PV2Zocv7IBO5SIY3RrRGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g43oVEC9dleLyUSFv0LBkTgaDE517muMHBlhjzJfywo=;
 b=BV8us8sqJWWkrOoEtpqKf4SKO++PmG3oMe2ITqJ0HNhpt1TtrTn2wW33pHWSaf2tfygdLTlETogYzBSHZjSUdvMRg7azMtz4ums0mRdxdKS/Z2BlXvy7fnIkVClYURgO96A7ActWv0s6sgcPY8hixyDGUwXJ/9wm7MEJROr/+nQ4Hd9APc2ilUQh+SvWq7osS0OadGcfW4tb1bS4x/SP6bMQJIvWCX6D2WJhJwxz4YFrZObMt7RItk74OHbAmojn8yRZEJJq1g2k+YVHY4OxfmesyJKAlx5mJNfCdbBlJZe1A60d5/pyJa8qH3SeLxrDvZ1XQf6mUoMBNTL2zrUSRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 21:00:33 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 21:00:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: YangHang Liu <yanghliu@redhat.com>, Kamal Heib <kheib@redhat.com>, "Chao
 Yang" <chayang@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
Thread-Index: AQHa/i7RxdH0urwtMk+HoNwXIeffrbJG6iMAgAEzvvA=
Date: Wed, 4 Sep 2024 21:00:32 +0000
Message-ID: <SJ0PR11MB586692C95212C29D929C0DA5E59C2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240903182555.1253466-1-kheib@redhat.com>
 <CAGYh1E_tbTY5U1Uwpszw7KeUTaKXV0+Lw4AUgBFdsTbx=Gb73A@mail.gmail.com>
In-Reply-To: <CAGYh1E_tbTY5U1Uwpszw7KeUTaKXV0+Lw4AUgBFdsTbx=Gb73A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB7778:EE_
x-ms-office365-filtering-correlation-id: 2e8f02fc-f0df-4f39-7674-08dccd249da1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aE53c0syMkFMcUVFOENoWDNoZUY3YlhjSzlLOTFoVC8zVnd1clJ4OExmeGgz?=
 =?utf-8?B?UzQwTmhBNFk5dnBHamJTWHloMDNQYzNCdGlvbWwyTUZTYnBieHRoSTBJbXJ0?=
 =?utf-8?B?VGkxNDNpb3NuUzFiUVFFV3lHWUJkRHp5dnVsTjMwTjQ5Y1pjajkyNDdvUWNI?=
 =?utf-8?B?ZHkzdlRaUE1SWkRGWUZIL1NxTlNWRkxockN0OUJwTDgxMWhBT2hJU2t3RENM?=
 =?utf-8?B?NlJCQVlXUWtST252RVd5V0tMaXQxZEtBb1BaTWFnTWcxOWpZekpNVFVVdUxD?=
 =?utf-8?B?S0ZwOFJraXlFbTZiT0VNOCtRQzlqM0txb0xOZXNVTEJ2U3pTWTRvQVZJeW1D?=
 =?utf-8?B?SEtlM2pyTnVZV3R5aTIvcW9vMWFyY3NPcURlMCtZNnJGUzVDK2FUTTcrK3RU?=
 =?utf-8?B?S201VHFpN2EvZWVtOG1tOUVpT0tQV3k1cGpXekIxR3FoQldZL29iT3hhNGpr?=
 =?utf-8?B?SVNFYURZMEx6aFhnVWIwOGlPQU0xdkNJQWd3VnlFcEtobkJXbkNjRE43M0do?=
 =?utf-8?B?MnhKM0FOZWRtaGVsU2QzNjUyZHEzUHUxdWZaSUZobnZsdVBER2lRSXovMHJZ?=
 =?utf-8?B?SENsMXh0d1BiWld1Sm9EUnF1Wjc3aDNlRVg4ZGNKZ1NtWWNZWUMrYW1KdU90?=
 =?utf-8?B?UUUwQkh1bFlFZjNWNjN0M2IreXZwWmlWME16OUp0NGU3bUtZcVRtNkVQYnJ3?=
 =?utf-8?B?cTNjdFBqczVQWnpJSDZiU1hhWTVna3ZBVEVyQ0toSkJoV3l3MitzdzFVRU5R?=
 =?utf-8?B?b0xmdzVCSFVMaWNRdUh4ckdiTElLT1dEODlDSkRzTzMzVVlSK2czKzJDUDVT?=
 =?utf-8?B?Z3RMWWZFdi84c21LdXZLekNvOTFGSEI0Rk1hT3pCdWNkWnkyd2FYWHBkcDZR?=
 =?utf-8?B?bG1ZSGVXNXRhM1ZKK1hiM21UaDdwdUU4amFXSmlDTWdoWm1mV3QzWjhUcWN2?=
 =?utf-8?B?QTBFQm5lbkxzRDYzMGFJQ0oyc20rZXlYclBJUE1PVzdLSXVNdFpVMFF5RFQ1?=
 =?utf-8?B?blFNZXBJc2RBMm1GTjlJVWdJaDgyQUljMnVkTnc0WTBtSUV0c3FWSEtvZ29Y?=
 =?utf-8?B?S0d2d2U2T25tR0x3ejVOZ3g3azM0d0ZQNW83RGRZMnF0QWlqTk9FdXRxWVZM?=
 =?utf-8?B?cWZRNFQ2QTdmaEFPMUJqNlJhWWRiUytaMEVnbmdLcklKYVhib1VMeUNIQk54?=
 =?utf-8?B?eER3NHlYRVM4bUZiV0ZlK0FJbFM3NUJvS2tYTzFRTFY1ZUxIeXBybWVWZmRT?=
 =?utf-8?B?UCttUDJkYXBFNWlyTXo1SGlxUHVFNEVPWTNSMXNyUEovUURDNTlONStqcU9m?=
 =?utf-8?B?YzRQWkQ1Tm5kb2FKdEpyenlONUJtTXNIYVFIVUE1ckk4R0dsQmU2TVpvUmxh?=
 =?utf-8?B?SU9KcTdsUkZKZnpBY1dBZDYwUVpJWVRvb3J2UEs5ZXFlWEwwVG5TOVpvUWtj?=
 =?utf-8?B?UjhLTnpheUhJcUZ5Y1daSHk0V2pBalBIUXh0MDdQaXRIdDMzcS9xaTI0NnV5?=
 =?utf-8?B?NjdFUmV2L2g1VmovRTNBS0ZZbVZ4ZnJLWkY1SkVuejluZWh1ZjUxK1RyTldO?=
 =?utf-8?B?RUk4b2NRc1NaVzZrUFc0WnVqNnlxam5HMjRSVXBielJDcVdRR3JuSVpldkMy?=
 =?utf-8?B?MGlUU2ZXK0tmOWZxekU0blg4YW0vayt3N1VlSDZjQUowbXBOdEdQU1BDUWQ0?=
 =?utf-8?B?eEpybERJcVMyTnU2b1ZCSGpwV3dXcDVIM0ZQR0FwMDJmVG9TVXVyUUQ1ejRj?=
 =?utf-8?B?bDZ2Qml2TVlrSjZLYXJPQ1FRM0VpU1pyYU15Q1RuY1NIUUV5dC9OYktmNTVN?=
 =?utf-8?B?WGxuZ3NDaXFzdGFBSTVUcFpJa2MzVzBRU0o3QURMazdPRUlnSC90TUEzV0dW?=
 =?utf-8?B?bGhDR2ZySFJuVVQ2d1hVbk93MEVFQVZ5L0dLVzQ3eTd1dXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anlLSDRINDJzVmtsZmxnUm9kN2ppb3ZlUXFIV0xkYXJpZStmclZNWkorNFRC?=
 =?utf-8?B?azRyVXZWM1NiaUxtZmVIT3pmTTB4N0VsMWF6SDFJemlRS0hJcHZCRWxYc0E0?=
 =?utf-8?B?VmcxcTVJNmxTejdDRUxBTzRJVXFFZ2RoMEQycUhXY3pvc29LeDdQSVBlejQ5?=
 =?utf-8?B?Nm5MR3VseFdHWWUyNVluQm5MWGdsUUcwMTV1dHkzZVlzWjVPS2x3cG1kbitq?=
 =?utf-8?B?U0phUG1jbUxEREZ3djBYaUJUZ3BKaUJ6N0tMSHQxK3lvRkdocmRRVFhzK24v?=
 =?utf-8?B?dTJxSmdCN2xGKzExb0NDV2ZtMTZ1WVNEUHdoalFCTC9OdWUzSnZIR1ZnekNu?=
 =?utf-8?B?YnNzZlVFWEg1OXI2TWcvUExxQ0hhSllmUmlXTVhRdDJHOEFFNyttaU9PeWVl?=
 =?utf-8?B?eTYwRkJNeExXUkhvY2g2U2FLdDJxWGYyeG1lcTRDZmV4TjY5eEpNVnN1Z2ZI?=
 =?utf-8?B?cnN5QlNkTi9GS0c2SlhPci92ZW9OcFdjRU5mRmhEY1lXSGxFeTBSU3lPalhm?=
 =?utf-8?B?NHMyMnMrOHlXbWIrckozcmJzZmJpU0R6emV1NkZQbmpHNGIxaHpFUGRjTVNC?=
 =?utf-8?B?R3NQYXU3aEpJUGlDNDd6K25lOVhSdTBRZHVJN21jVzhrZnpvazQ4dzNpVlpT?=
 =?utf-8?B?YnlLanova0tyVy9WUGxEV0hVVVVuTzR5RHUxVW0zRVdZTGZucWFoYUY5aVA4?=
 =?utf-8?B?RnpCUWFNTFplRTZpYzZ1eUVYWWFlV1J6NXlRZ1VPMUdSUDRSQVYwWHh4dnZP?=
 =?utf-8?B?bnNNMUMwTWJIbGFGcVpkR0FCa0REa0RmT2crb0wrTHpIS3liWFI3RzZrbGZT?=
 =?utf-8?B?WGd6eXF4REhwUDArRzN6YzRYOXpmc1c2QndtSGFjMTdPbFFtN002Um85Rytn?=
 =?utf-8?B?WFZVNlRzMkIwVWR0NVYyblBpOFNocmRqaDQvWTJhWElRc29DZ01MOCtXSVZm?=
 =?utf-8?B?dGVDMjBrbGhjU3MyNExpU2JqOGhiY2FYaTlWRVFLRmFsRzVtUGlOU2dnNkls?=
 =?utf-8?B?SWtqZWdiU3VQam14bjM2KytIZ29IVEZ4V3QxUGxSbmhLZk9Wc3ZGWVNzZFRC?=
 =?utf-8?B?QVRuZWsvdE9WU2NKcmN0UFFPR2VSS1lTYXNhS0l4NlpseUtsR2hrVkNwcmJV?=
 =?utf-8?B?R0FudlJSV1FBazZibGdPbHpvOFZoSWNrMWp6QWc0WXlWVy9qd3JuUGdsbDdV?=
 =?utf-8?B?Z1VobGg2cnREMDQrT2RZK0xxMjZYR0ZVRGJDejhTcVZTVE1XeWdBalJpdWZO?=
 =?utf-8?B?RWRDclV6bTRkVTFHU3dkSENuclovTWcvSEx5VDZLZTMzVm5NTXNURUNYMzFU?=
 =?utf-8?B?ZjhFd0UyKy9RT2lVWTFuTWtTV20zenY4S2tLb2l6VHRXTW8zZTRJZzEyOU1v?=
 =?utf-8?B?ZkdIdFZCS3ZOeUtWWllWalRGeFJSYjFRc0s3UDVQZ29pSUVNVFpPemNjdFFX?=
 =?utf-8?B?WVM4NnBPYmZQY082ckFvSEpFMFNaY3o2ZWlUeDBxYzZTQXp0V3ZrT2FWNVIr?=
 =?utf-8?B?VmNDTmZvUWE2L1Y2dW1HTENVM3hrd09xZk83Vll6dmdpK3dTTytqL05LaVdS?=
 =?utf-8?B?WlhDaHpnWUFvYUN4MVdSUUp3eGsyc3VGWkpJOHpLcFNQOU1XUkRUaGNJMXl3?=
 =?utf-8?B?SXEwbTRmYjRBRlB3KzhFSHRRaTNndkJyM0h0V2VYTkxyZFI4eUlyTmRTTEZ3?=
 =?utf-8?B?RlpFT1JpYkQ0bEFxMVZtSDZKUnFtQUk2elJ4RUttcmZVdkQ3aVFDeXhCa0dY?=
 =?utf-8?B?VDZuUzdQcVkzcGtzVzhrbEMzSzcxVDJEQ251Y2MxTVQ1bkkzNlpzazJGSVdZ?=
 =?utf-8?B?Q213MHhJYXdUMmtiQy9rMTZuNFRHd3dTQmF2TkRLeUtiQzZURGlWZUl2VGlr?=
 =?utf-8?B?cTB3Qm43bEliOWxUZXQrdVgzRzhXS1E1RVpNMDJJdlRyVzVBRFRPb1FIMWQ4?=
 =?utf-8?B?UXRqRFlXQzhqUExIaDlEUGFiWjJ4emNPS2VaS1NKOFBpeVRxZGp1ZUtLTGVZ?=
 =?utf-8?B?eVZob28zV01MY28wcitaZkJzK2hOUUZ1TWNsSWQ5Nzh0STlMRGxEREFjS3lT?=
 =?utf-8?B?WHd6MGxFbWthMjB1S01idno4WEwyWjU1bXhDRnIyNGcwMVB6b09Jd1I1YVo2?=
 =?utf-8?B?NVU3SjkxNkZ1b1JBc1JBVUVJUjNQSFBsQ01uRnpYbEw1dk42WHJyQ3NrRWhZ?=
 =?utf-8?B?Ymc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8f02fc-f0df-4f39-7674-08dccd249da1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 21:00:32.6736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cBDEvGiC+ffcs/VxaZp38+6F78gGegNI0Hj7LNVks5GPOdWX8svn+BgcgZBqfshB6g4htHVv7T73WsNNFYtitMkAwiun49y1W8O+y5wgo+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725483641; x=1757019641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g43oVEC9dleLyUSFv0LBkTgaDE517muMHBlhjzJfywo=;
 b=D/PjJb1yhqFZQoBrJXpoHBTTUbozpfN91pFe5inf0InIntmz2VpyMzd8
 ZYhoQAFXrV/wtnrub3Ji/gaAcH+p/vCK+3OMW640LC56yLsGH3pgd0yA6
 wkID1PlbFAyBzdct79jE9h7B9CrjA1VkaIg1pIEYnEn7c3wsIyjje7q9I
 /uNqGmnQXd2HgufpIozUEMQAkkmBsHRKUYD71q8E526eKvvIepNdTwvkQ
 8f00dUcwqOpSmV6J/hr61eWGs8+aC4B//Hmw7H62nmj7m/hbR6ye1uqmL
 26KnaLMvQWROZ9JDWaOn8l3UZv9fX+kcB1EmZ1k/KFu10qB5s+ynf1Nd2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D/PjJb1y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>, "David S
 . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgWWFu
Z0hhbmcgTGl1DQo+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVyIDQsIDIwMjQgNDozNyBBTQ0K
PiBUbzogS2FtYWwgSGVpYiA8a2hlaWJAcmVkaGF0LmNvbT47IENoYW8gWWFuZyA8Y2hheWFuZ0By
ZWRoYXQuY29tPg0KPiBDYzogaXZlY2VyYSA8aXZlY2VyYUByZWRoYXQuY29tPjsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgSmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IE5ndXll
biwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFBy
emVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZzsNCj4gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsg
RGF2aWQgUyAuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCj4gU3ViamVjdDogUmU6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpNDBlOiBGaXggdHJ5aW5nIHRvDQo+
IGZyZWUgYWxyZWFkeS1mcmVlZCBJUlENCj4gDQo+IFRoaXMgaXNzdWUgY2FuIGJlIHJlcHJvZHVj
ZWQgYnkgaG90LXVucGx1Z2dpbmcgdGhlIElOVHggaTQwZSBQRi4NCj4gDQo+IFRoZSBDYWxsIFRy
YWNlIHdpbGwgZGlzYXBwZWFyIGFmdGVyIHVzaW5nIEthbWFsJ3MgZml4Lg0KPiANCj4gVGVzdGVk
LWJ5OiBZYW5naGFuZyBMaXU8eWFuZ2hsaXVAcmVkaGF0LmNvbT4NCj4gDQo+IA0KPiANCj4gT24g
V2VkLCBTZXAgNCwgMjAyNCBhdCAyOjI24oCvQU0gS2FtYWwgSGVpYiA8a2hlaWJAcmVkaGF0LmNv
bT4gd3JvdGU6DQo+ID4NCj4gPiBBdm9pZCB0aGUgZm9sbG93aW5nIHdhcm5pbmcgd2hlbiB0cnlp
bmcgdG8gZnJlZSBhbiBhbHJlYWR5IGZyZWVkDQo+IElSUSwNCj4gPiBUaGUgaXNzdWUgaGFwcGVu
cyB3aGVuIHRyeWluZyB0byBjYWxsIGk0MGVfcmVtb3ZlKCkgdHdpY2UgZnJvbSB0d28NCj4gPiBk
aWZmZXJlbnQgY29udGV4dHMgd2hpY2ggd2lsbCBsZWFkIHRvIGNhbGxpbmcgaTQwZV92c2lfZnJl
ZV9pcnEoKQ0KPiA+IHR3aWNlLCBGaXggdGhlIGlzc3VlIGJ5IHVzaW5nIGEgZmxhZyB0byBtYXJr
IHRoYXQgdGhlIElSUSBoYXMNCj4gYWxyZWFkeSBiZWVuIGZyZWVkLg0KPiA+DQo+ID4gaTQwZSAw
MDAwOjA3OjAwLjA6IGk0MGVfcHRwX3N0b3A6IHJlbW92ZWQgUEhDIG9uIGVucDdzMCAtLS0tLS0t
LS0tLS0NCj4gWw0KPiA+IGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0gVHJ5aW5nIHRvIGZyZWUgYWxy
ZWFkeS1mcmVlIElSUSAwDQo+ID4gV0FSTklORzogQ1BVOiAyIFBJRDogMTIgYXQga2VybmVsL2ly
cS9tYW5hZ2UuYzoxODY4DQo+ID4gX19mcmVlX2lycSsweDFlMy8weDM1MCBNb2R1bGVzIGxpbmtl
ZCBpbjogbmZ0X2ZpYl9pbmV0IG5mdF9maWJfaXB2NA0KPiA+IG5mdF9maWJfaXB2NiBuZnRfZmli
IG5mdF9yZWplY3RfaW5ldCBuZl9yZWplY3RfaXB2NCBuZl9yZWplY3RfaXB2Ng0KPiA+IG5mdF9y
ZWplY3QgbmZ0X2N0IG5mdF9jaGFpbl9uYXQgbmZfbmF0IG5mX2Nvbm50cmFjayBuZl9kZWZyYWdf
aXB2Ng0KPiA+IG5mX2RlZnJhZ19pcHY0IHJma2lsbCBpcF9zZXQgbmZfdGFibGVzIG5mbmV0bGlu
ayB2ZmF0IGZhdA0KPiA+IGludGVsX3JhcGxfbXNyIGludGVsX3JhcGxfY29tbW9uIGt2bV9hbWQg
Y2NwIGlUQ09fd2R0DQo+ID4gaVRDT192ZW5kb3Jfc3VwcG9ydCBrdm0gaTJjX2k4MDEgcGNzcGty
IGk0MGUgbHBjX2ljaCB2aXJ0aW9fZ3B1DQo+ID4gaTJjX3NtYnVzIHZpcnRpb19kbWFfYnVmIGRy
bV9zaG1lbV9oZWxwZXIgZHJtX2ttc19oZWxwZXINCj4gPiB2aXJ0aW9fYmFsbG9vbiBqb3lkZXYg
ZHJtIGZ1c2UgeGZzIGxpYmNyYzMyYyBhaGNpIGNyY3QxMGRpZl9wY2xtdWwNCj4gPiBsaWJhaGNp
IGNyYzMyX3BjbG11bCBjcmMzMmNfaW50ZWwgdmlydGlvX25ldCBsaWJhdGEgdmlydGlvX2Jsaw0K
PiA+IGdoYXNoX2NsbXVsbmlfaW50ZWwgbmV0X2ZhaWxvdmVyIHZpcnRpb19jb25zb2xlIGZhaWxv
dmVyIHNlcmlvX3Jhdw0KPiA+IGRtX21pcnJvciBkbV9yZWdpb25faGFzaCBkbV9sb2cgZG1fbW9k
DQo+ID4gQ1BVOiAyIFBJRDogMTIgQ29tbToga3dvcmtlci91MTY6MSBLZHVtcDogbG9hZGVkIE5v
dCB0YWludGVkDQo+ID4gNS4xNC4wLTQ3OC5lbDkueDg2XzY0ICMxIEhhcmR3YXJlIG5hbWU6IFJl
ZCBIYXQgS1ZNL1JIRUwsIEJJT1MNCj4gPiBlZGsyLTIwMjQwNTI0LTEuZWw5IDA1LzI0LzIwMjQN
Cj4gPiBXb3JrcXVldWU6IGthY3BpX2hvdHBsdWcgYWNwaV9ob3RwbHVnX3dvcmtfZm4NCj4gPiBS
SVA6IDAwMTA6X19mcmVlX2lycSsweDFlMy8weDM1MA0KPiA+IENvZGU6IDAwIDAwIDQ4IDhiIGJi
IGE4IDAxIDAwIDAwIGU4IDA5IDc0IDAyIDAwIDQ5IDhiIDdjIDI0IDMwIGU4IDhmDQo+ID4gN2Mg
MWQgMDAgZWIgMzUgOGIgNzQgMjQgMDQgNDggYzcgYzcgNTAgYTMgNjEgOTIgZTggY2QgOTkgZjYg
ZmYgPDBmPg0KPiAwYg0KPiA+IDRjIDg5IGZlIDQ4IDg5IGVmIGU4IDMwIGFhIGIzIDAwIDQ4IDhi
IDQzIDQwIDQ4IDhiIDQwIDc4IDQ4DQo+ID4gUlNQOiAwMDE4OmZmZmZiOTcxYzAwNzdhYzggRUZM
QUdTOiAwMDAxMDA4Ng0KPiA+IFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY4YjU5NDE5
M2VlMDAgUkNYOiAwMDAwMDAwMDAwMDAwMDI3DQo+ID4gUkRYOiAwMDAwMDAwMDAwMDAwMDI3IFJT
STogMDAwMDAwMDBmZmZmN2ZmZiBSREk6IGZmZmY4YjU5YmNmMjA4YzgNCj4gPiBSQlA6IGZmZmY4
YjU5NDE5M2VlYzQgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogZmZmZmI5NzFjMDA3Nzk3MA0K
PiA+IFIxMDogZmZmZmI5NzFjMDA3Nzk2OCBSMTE6IGZmZmZmZmZmOTMxZTdjMjggUjEyOiBmZmZm
OGI1OTQ0OTQ2MDAwDQo+ID4gUjEzOiBmZmZmOGI1OTQxOTNlZjgwIFIxNDogZmZmZjhiNTk0NDk0
NjAwMCBSMTU6IDAwMDAwMDAwMDAwMDAyNDYNCj4gPiBGUzogIDAwMDAwMDAwMDAwMDAwMDAoMDAw
MCkgR1M6ZmZmZjhiNTliY2YwMDAwMCgwMDAwKQ0KPiA+IGtubEdTOjAwMDAwMDAwMDAwMDAwMDAN
Cj4gPiBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzDQo+
ID4gQ1IyOiAwMDAwN2YxMWViMDY0MDAwIENSMzogMDAwMDAwMDAwYWQ0MDAwNCBDUjQ6IDAwMDAw
MDAwMDA3NzBlZjANCj4gPiBQS1JVOiA1NTU1NTU1NA0KPiA+IENhbGwgVHJhY2U6DQo+ID4gIDxU
QVNLPg0KPiA+ICA/IHNyc29fYWxpYXNfcmV0dXJuX3RodW5rKzB4NS8weGZiZWY1DQo+ID4gID8g
c2hvd190cmFjZV9sb2dfbHZsKzB4MjZlLzB4MmRmDQo+ID4gID8gc2hvd190cmFjZV9sb2dfbHZs
KzB4MjZlLzB4MmRmDQo+ID4gID8gZnJlZV9pcnErMHgzMy8weDcwDQo+ID4gID8gX19mcmVlX2ly
cSsweDFlMy8weDM1MA0KPiA+ICA/IF9fd2FybisweDdlLzB4ZDANCj4gPiAgPyBfX2ZyZWVfaXJx
KzB4MWUzLzB4MzUwDQo+ID4gID8gcmVwb3J0X2J1ZysweDEwMC8weDE0MA0KPiA+ICA/IHNyc29f
YWxpYXNfcmV0dXJuX3RodW5rKzB4NS8weGZiZWY1DQo+ID4gID8gaGFuZGxlX2J1ZysweDNjLzB4
NzANCj4gPiAgPyBleGNfaW52YWxpZF9vcCsweDE0LzB4NzANCj4gPiAgPyBhc21fZXhjX2ludmFs
aWRfb3ArMHgxNi8weDIwDQo+ID4gID8gX19mcmVlX2lycSsweDFlMy8weDM1MA0KPiA+ICA/IF9f
ZnJlZV9pcnErMHgxZTMvMHgzNTANCj4gPiAgZnJlZV9pcnErMHgzMy8weDcwDQo+ID4gIGk0MGVf
dnNpX2ZyZWVfaXJxKzB4MTllLzB4MjIwIFtpNDBlXQ0KPiA+ICBpNDBlX3ZzaV9jbG9zZSsweDJi
LzB4YzAgW2k0MGVdDQo+ID4gIGk0MGVfY2xvc2UrMHgxMS8weDIwIFtpNDBlXQ0KPiA+ICBfX2Rl
dl9jbG9zZV9tYW55KzB4OWUvMHgxMTANCj4gPiAgZGV2X2Nsb3NlX21hbnkrMHg4Yi8weDE0MA0K
PiA+ICA/IHNyc29fYWxpYXNfcmV0dXJuX3RodW5rKzB4NS8weGZiZWY1DQo+ID4gID8gZnJlZV9w
Y3BwYWdlc19idWxrKzB4ZWUvMHgyOTANCj4gPiAgdW5yZWdpc3Rlcl9uZXRkZXZpY2VfbWFueV9u
b3RpZnkrMHgxNjIvMHg2OTANCj4gPiAgPyBzcnNvX2FsaWFzX3JldHVybl90aHVuaysweDUvMHhm
YmVmNQ0KPiA+ICA/IGZyZWVfdW5yZWZfcGFnZV9jb21taXQrMHgxOWEvMHgzMTANCj4gPiAgdW5y
ZWdpc3Rlcl9uZXRkZXZpY2VfcXVldWUrMHhkMy8weDExMA0KPiA+ICB1bnJlZ2lzdGVyX25ldGRl
disweDE4LzB4MjANCj4gPiAgaTQwZV92c2lfcmVsZWFzZSsweDg0LzB4MmUwIFtpNDBlXQ0KPiA+
ICA/IHNyc29fYWxpYXNfcmV0dXJuX3RodW5rKzB4NS8weGZiZWY1DQo+ID4gIGk0MGVfcmVtb3Zl
KzB4MTVjLzB4NDMwIFtpNDBlXQ0KPiA+ICBwY2lfZGV2aWNlX3JlbW92ZSsweDNlLzB4YjANCj4g
PiAgZGV2aWNlX3JlbGVhc2VfZHJpdmVyX2ludGVybmFsKzB4MTkzLzB4MjAwDQo+ID4gIHBjaV9z
dG9wX2J1c19kZXZpY2UrMHg2Yy8weDkwDQo+ID4gIHBjaV9zdG9wX2FuZF9yZW1vdmVfYnVzX2Rl
dmljZSsweGUvMHgyMA0KPiA+ICBkaXNhYmxlX3Nsb3QrMHg0OS8weDkwDQo+ID4gIGFjcGlwaHBf
ZGlzYWJsZV9hbmRfZWplY3Rfc2xvdCsweDE1LzB4OTANCj4gPiAgaG90cGx1Z19ldmVudCsweGVh
LzB4MjEwDQo+ID4gID8gX19wZnhfYWNwaXBocF9ob3RwbHVnX25vdGlmeSsweDEwLzB4MTANCj4g
PiAgYWNwaXBocF9ob3RwbHVnX25vdGlmeSsweDIyLzB4ODANCj4gPiAgPyBfX3BmeF9hY3BpcGhw
X2hvdHBsdWdfbm90aWZ5KzB4MTAvMHgxMA0KPiA+ICBhY3BpX2RldmljZV9ob3RwbHVnKzB4Yjgv
MHgyMTANCj4gPiAgYWNwaV9ob3RwbHVnX3dvcmtfZm4rMHgxYS8weDMwDQo+ID4gIHByb2Nlc3Nf
b25lX3dvcmsrMHgxOTcvMHgzODANCj4gPiAgd29ya2VyX3RocmVhZCsweDJmZS8weDQxMA0KPiA+
ICA/IF9fcGZ4X3dvcmtlcl90aHJlYWQrMHgxMC8weDEwDQo+ID4gIGt0aHJlYWQrMHhlMC8weDEw
MA0KPiA+ICA/IF9fcGZ4X2t0aHJlYWQrMHgxMC8weDEwDQo+ID4gIHJldF9mcm9tX2ZvcmsrMHgy
Yy8weDUwDQo+ID4gIDwvVEFTSz4NCj4gPiAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAw
IF0tLS0NCj4gPg0KPiA+IEZpeGVzOiA0MWM0NDVmZjBmNDggKCJpNDBlOiBtYWluIGRyaXZlciBj
b3JlIikNCj4gPiBUZXN0ZWQtYnk6IFlhbmdIYW5nIExpdSA8eWFuZ2hsaXVAcmVkaGF0LmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBLYW1hbCBIZWliIDxraGVpYkByZWRoYXQuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaCAgICAgIHwgMSAr
DQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCA4ICsr
KysrKysrDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gPiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+ID4gaW5kZXggZDU0NjU2
N2UwMjg2Li45MTA0MTUxMTY5OTUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGUuaA0KPiA+IEBAIC04NjUsNiArODY1LDcgQEAgc3RydWN0IGk0MGVfdnNpIHsN
Cj4gPiAgICAgICAgIGludCBudW1fcV92ZWN0b3JzOw0KPiA+ICAgICAgICAgaW50IGJhc2VfdmVj
dG9yOw0KPiA+ICAgICAgICAgYm9vbCBpcnFzX3JlYWR5Ow0KPiA+ICsgICAgICAgYm9vbCBsZWdh
Y3lfbXNpX2lycV9yZWFkeTsNCkknbSBhZ2FpbnN0IGFkZGluZyBhZGRpdGlvbmFsIGJvb2xpYW4g
dmFyIHdoaWNoIGNhbiBjYXVzZSByYWNlIGNvbmRpdGlvbnMuDQpVc2UgSTQwRV9GTEFHX01TSVhf
RU5BIG9yIGF0IGxlYXN0IGFkZCBhZGRpdGlvbmFsIGJpdCBhbmQgdXNlIGludGVybG9jayB0ZXN0
X2FuZF9jbGVhbi90ZXN0X2FuZF9zZXQgYml0IGZ1bmN0aW9ucyBpbnN0ZWFkLg0KDQoNCj4gPg0K
PiA+ICAgICAgICAgdTE2IHNlaWQ7ICAgICAgICAgICAgICAgLyogSFcgaW5kZXggb2YgdGhpcyBW
U0kgKGFic29sdXRlDQo+IGluZGV4KSAqLw0KPiA+ICAgICAgICAgdTE2IGlkOyAgICAgICAgICAg
ICAgICAgLyogVlNJIG51bWJlciAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+ID4gaW5kZXggY2JjZmFkYTdiMzU3Li5iMzkwMDRhNDJk
ZjIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X21haW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMNCj4gPiBAQCAtNDYzMCw2ICs0NjMwLDkgQEAgc3RhdGljIGludCBpNDBlX3ZzaV9yZXF1
ZXN0X2lycShzdHJ1Y3QNCj4gaTQwZV92c2kgKnZzaSwgY2hhciAqYmFzZW5hbWUpDQo+ID4gICAg
ICAgICBpZiAoZXJyKQ0KPiA+ICAgICAgICAgICAgICAgICBkZXZfaW5mbygmcGYtPnBkZXYtPmRl
diwgInJlcXVlc3RfaXJxIGZhaWxlZCwgRXJyb3INCj4gPiAlZFxuIiwgZXJyKTsNCj4gPg0KPiA+
ICsgICAgICAgaWYgKCF0ZXN0X2JpdChJNDBFX0ZMQUdfTVNJWF9FTkEsIHBmLT5mbGFncykgJiYg
IWVycikNCj4gPiArICAgICAgICAgICAgICAgdnNpLT5sZWdhY3lfbXNpX2lycV9yZWFkeSA9IHRy
dWU7DQo+ID4gKw0KPiA+ICAgICAgICAgcmV0dXJuIGVycjsNCj4gPiAgfQ0KPiA+DQo+ID4gQEAg
LTUwNjEsNiArNTA2NCwxMCBAQCBzdGF0aWMgdm9pZCBpNDBlX3ZzaV9mcmVlX2lycShzdHJ1Y3Qg
aTQwZV92c2kNCj4gKnZzaSkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICB9DQo+ID4gICAg
ICAgICAgICAgICAgIH0NCj4gPiAgICAgICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICAg
IGlmICghdnNpLT5sZWdhY3lfbXNpX2lycV9yZWFkeSkNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm47DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICB2c2ktPmxlZ2FjeV9tc2lf
aXJxX3JlYWR5ID0gZmFsc2U7DQo+ID4gICAgICAgICAgICAgICAgIGZyZWVfaXJxKHBmLT5wZGV2
LT5pcnEsIHBmKTsNCj4gPg0KPiA+ICAgICAgICAgICAgICAgICB2YWwgPSByZDMyKGh3LCBJNDBF
X1BGSU5UX0xOS0xTVDApOyBAQCAtMTE1MTksNg0KPiA+ICsxMTUyNiw3IEBAIHN0YXRpYyBpbnQg
aTQwZV92c2lfbWVtX2FsbG9jKHN0cnVjdCBpNDBlX3BmICpwZiwgZW51bQ0KPiBpNDBlX3ZzaV90
eXBlIHR5cGUpDQo+ID4gICAgICAgICB2c2ktPndvcmtfbGltaXQgPSBJNDBFX0RFRkFVTFRfSVJR
X1dPUks7DQo+ID4gICAgICAgICBoYXNoX2luaXQodnNpLT5tYWNfZmlsdGVyX2hhc2gpOw0KPiA+
ICAgICAgICAgdnNpLT5pcnFzX3JlYWR5ID0gZmFsc2U7DQo+ID4gKyAgICAgICB2c2ktPmxlZ2Fj
eV9tc2lfaXJxX3JlYWR5ID0gZmFsc2U7DQo+ID4NCj4gPiAgICAgICAgIGlmICh0eXBlID09IEk0
MEVfVlNJX01BSU4pIHsNCj4gPiAgICAgICAgICAgICAgICAgdnNpLT5hZl94ZHBfemNfcXBzID0g
Yml0bWFwX3phbGxvYyhwZi0+bnVtX2xhbl9xcHMsDQo+ID4gR0ZQX0tFUk5FTCk7DQo+ID4gLS0N
Cj4gPiAyLjQ2LjANCj4gPg0KDQo=

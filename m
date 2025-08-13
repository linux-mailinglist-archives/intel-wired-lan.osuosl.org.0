Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4C7B24CFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 17:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A68DD60A60;
	Wed, 13 Aug 2025 15:15:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGlvQ6nwzT2a; Wed, 13 Aug 2025 15:15:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39ACD60820
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755098135;
	bh=nGkNL7R2cXJsdiGgWJd8bYNyoMTh9lWXgoLrMo2aqWY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L1fcSYLOsXgww/UBkjUCZOTKAiHAuBzLsmpm5iwF+LjQDuW/4+k9BS6C3S8k4tMlH
	 xeHZwf86JDNHk/J6dI1oLCy7NkMhnjZ2b6tPQkhpDQR2Xhds3E0UDQQ8AM957uVo4J
	 kuuU46twcr2nufoeqjBgNW6vXxubGQjrBMyWDM3WA8ijrbXxdaCv8K8WSnjmF/cU/Z
	 BqzrnbhHl/H1ydtgc5Sqs8Nwc3/jxehFw6D4oMGgJ2XwObj9PCgxp6Cl/gSXOof79B
	 qa3LVlcK1Hvrpj/0AeF+5Zl5r4y4ofAmHnytQEwRVwSQSIzJiN6Ch73OGG+brVh9oV
	 BOjiVmHqHIGDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39ACD60820;
	Wed, 13 Aug 2025 15:15:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C850E1C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 13:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE1A440A62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 13:47:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4QVVblj6av7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 13:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 971B940A56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 971B940A56
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 971B940A56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 13:47:09 +0000 (UTC)
X-CSE-ConnectionGUID: QXwtZsHUTe6UNtgwGky9XA==
X-CSE-MsgGUID: 1wNZbcxQT52cvHSS7qinOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57531752"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="57531752"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:40:01 -0700
X-CSE-ConnectionGUID: no4AJRW1QxWM7tJHwRq82g==
X-CSE-MsgGUID: H6kP1/VwTs+ub/b1vrgD5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166453908"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:40:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 06:40:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 06:40:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.48)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 06:40:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BzA6EetMGaRzZfGElQuCt28TZ43Nl/K7/bvLDI88VJGU69/sHXNOHJ4lmb7mMl5iELMIFWtfxCFpO0x0W2D4CobsKwTP6FPSMYAvjA/NkrlsSTJFQBhA6R+tqEMvugDz32KZMLX/YoCz/UWr2VCwlbz3LD8MR3rExTYAV8zXSr7Vc+0DdbGuSk4SpgtjPvm9Wl9DRdKhhWVE2C+N8UYdbeHlCJmColZhzLz7xFLCVH0sDkYIE2O/1y0k7lvAnKQHxebCgTrjnZwv+9vtvR+Z/matggPAr6+yiR4IwZbOPqSgOvrp727Hovz0yjF02T8nsEVZOUtGn+jDSTI5lq3t7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGkNL7R2cXJsdiGgWJd8bYNyoMTh9lWXgoLrMo2aqWY=;
 b=vdmpGt/hgQKaObjKXD2sghyhxyUuK9+BcAvNcgIs7YYnNWG59qkgZ0f2tql/nWP5GJu+lIHJK6Ti9d9PBLK0KvXEdfxIcl3nhFdS8WN9AKwfsBCAwZ1z6/mT179NdrXycUYDT2egQ3Q1L3RwiOyeJCRPVfXnvT0qeGWuST0ofsCFgQ5D6h9b2Y+n1HWJ/0yOUlowmg2bAZdFPX3HkOIqxRUzHzjmdsi07jYCJGMZG9WIL00Y2NfxOVvokaPwpBQxEqZLYhPtZBNKescIwLsJT8+chNQqho8QYRt9CBVh6CTrgXdtx9hdo+D199oRS1JVh8o8F+zIm7FxwLo9VE515A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA4PR11MB9278.namprd11.prod.outlook.com (2603:10b6:208:563::12)
 by SJ5PPF8DE294191.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::843) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Wed, 13 Aug
 2025 13:39:58 +0000
Received: from IA4PR11MB9278.namprd11.prod.outlook.com
 ([fe80::21c1:2c15:c80a:ac9b]) by IA4PR11MB9278.namprd11.prod.outlook.com
 ([fe80::21c1:2c15:c80a:ac9b%4]) with mapi id 15.20.9009.017; Wed, 13 Aug 2025
 13:39:58 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
CC: ": Joe Damato" <jdamato@fastly.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Christoph Petrausch
 <christoph.petrausch@deepl.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
Thread-Index: AQHb8sNkzkYNyhN8cUCY565A/XX3J7Rgla2AgAAy9JA=
Date: Wed, 13 Aug 2025 13:39:57 +0000
Message-ID: <IA4PR11MB9278AE885F80AFBCA2411CB7912AA@IA4PR11MB9278.namprd11.prod.outlook.com>
References: <20250711-jk-ice-fix-rx-mem-leak-v2-1-fa36a1edba8e@intel.com>
 <PH0PR11MB5013AD3FEC58E277297A7D4F962AA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013AD3FEC58E277297A7D4F962AA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA4PR11MB9278:EE_|SJ5PPF8DE294191:EE_
x-ms-office365-filtering-correlation-id: 0d07cbf2-904d-47d8-f51a-08ddda6ee522
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UnVDVzV5bzEzYTJ3c1pENkNNN09MdFNWTUZqc0hWU2xXbjFtbmNJY1B3cXRL?=
 =?utf-8?B?ZkR6R0NvVktUM0d4Yld2dzFlU0laTjN2UlFBclYvOTdJckhlT0VzQXJVWHVi?=
 =?utf-8?B?UGR0YSt3anBqdyswQ0Zod3FMb0d1cDJxbUpVTzRVdDdaVDMxOXVqdEwwTDgz?=
 =?utf-8?B?L3lVaHBCVXpGMkl4VTVHb2RyZytNSFllSy82QzNEWkFWbGZtNzJRV0duckF0?=
 =?utf-8?B?QmRYWXk1bEFxUGhnakdIZDV2OUJRL2d1bWs1K2FwSHdsV2JlTmJXbTB4aEtV?=
 =?utf-8?B?ankwVy9DanRQUEpkOFBBVE14bGIwUU41U3AxUmpGTWtjMU5UVXpaWE5VTkVR?=
 =?utf-8?B?NGNibzNFRCtIWXBVTk1VUXU5MTlIRUNJOEJWNmx0cS9Nem9DZ3J1ci8xWGZp?=
 =?utf-8?B?MEx4UDFVeFd5OGZsVmwzd2xMMzZhN0J5L1puTXdrNElWRDFaTkNJQjVQMVd0?=
 =?utf-8?B?Y3hCMy8zQzJEZVlJWmhacjZ0OVo3c3JRakJWVm5aUDhYZWtsVHQ0blIxRDV3?=
 =?utf-8?B?Ym9udjB4NVZjTmdkV2JYU2E4MVNvT25RR1RnWEIwWkdLWnlKN2NpeUJGRlN6?=
 =?utf-8?B?aEpZOGFCYmZpNG5zLzVwOUtnaTk4U0w3d0psZDYwOGc4OTkrVXBYQXRiY29n?=
 =?utf-8?B?TC9BWE1NMmlHdG5LNG41TUl2VlpkS2RwQ0J1QlQwQXkvRUpEbjRjMlNsQk5O?=
 =?utf-8?B?QUp4dmx6bHJOdE1GdHlZRkZkc3RUdU9mbDUxVU1VMWhxbG5KWlB6TVFZSmwx?=
 =?utf-8?B?TUd2aWR6dkhEWjRMVEtlMVN6a1gzQVlhK0FNMEZDTE5MNHFrRUdEMFo1K0Yx?=
 =?utf-8?B?cG9XQkFTVmxhNW1ZL3hBWlljdTNoMTJtWHhzSEI0MUU0a1BSQmY3RkJQYml5?=
 =?utf-8?B?MzZlR092K1FaL2FQK0lNVHMrbjJvdERmdEFlaDJtYVBJaXg0b2pPOXdKdGtV?=
 =?utf-8?B?V21RejE3U2hSQzhTOW0weDczNmpNSHF2MHBsdXc1Z1RlbDl5Wnh2OEdvYTRy?=
 =?utf-8?B?TjNGWHk2ekV6MW5lQko5WUViK0VjcjdBei8wWllGMVJHZU9NUTN4VGtDTHZt?=
 =?utf-8?B?ZmxqZFdSUXdYYlRvT3JDZjBHQmRHRlE5SFZSQXpVaXRNSkdnOW1YbWhsNURo?=
 =?utf-8?B?OUtIZktXTXZWZHdoY0tOUjM3R2RXdlVma05manRudHZyWjlzUzFTWS9BZlV5?=
 =?utf-8?B?MjBWRm8rSHo4K0tWalNaREtmZWMyOFFEVmJTblBoazR2dlg3Mi85RGxUUUtQ?=
 =?utf-8?B?VGNZTVh4WGhHWUQ0NXRtQkFRdEg5dGlxczdCNmhxOWpmakFXZmlnSmo2N1RR?=
 =?utf-8?B?NFF4MlRJZzNvODRtay9jZXNyQmJrUDVjc2JWUkxuU0V6K05vM2JMWWNXaTVD?=
 =?utf-8?B?WThyTDExN2t3cFdraFRzMGZMS0dsMXpBWEo4MlJPeFNocEN1S3BORndVWEZu?=
 =?utf-8?B?Y1lVM3V3Yk91NHpFMVlqT1ZnZTBESkh4SnBhQkI2ZXVoY2dvamNuSVhjTmpK?=
 =?utf-8?B?cXVSYmFiY3hWTklNZE42bCtlc21meThETjFwakJzdjJSME1yWWg1c3dmTWRl?=
 =?utf-8?B?RkJzNzMvd3pYZUwwNHJHaDViNit6Uld3ODFvS0JpTmRLemFZU3pSc0tXaUZF?=
 =?utf-8?B?TFgza1Mvd1dqL1MwOHZDSGd0eSszZW16TnVQZWRkK1RhN2c2NXYxeE5ybHBF?=
 =?utf-8?B?UEhyT1l3TS9KZFdjRjdObzhsSlJsRWE4aHdSZUIwRVo3Z2w5aCtOWXdxbER2?=
 =?utf-8?B?V2ZkQ3FOUGR5eWU1K2dZZTBVNTdhMUhUWGRKeVBjNjJhelVQZjIwQSt0RVdK?=
 =?utf-8?B?dkZnUDNLOUI4Mkx3eEJicGxMY3BReEtacWxzUEZWR2g4SVlHMGdVVnhsZW1L?=
 =?utf-8?B?MzM1YnJrMUQ1V2FDY0g1YUMvdGZ5OTl4MlZnZzc3ZGsxUjRWZTd2cm0yNjlR?=
 =?utf-8?B?OUNFdWlCV0V4a2phU1BSYnZZb0NTbDkzT1hoNXpmbTNZaGRLTVdmeTg0SEx3?=
 =?utf-8?Q?g1tL5EVTs4HdZ8LfZ5O5LXgBeu7TXA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA4PR11MB9278.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3NjTUY5UXMvYnNDbVduTnNzTW9DeU1xd05MR010dkNjMHlFVmVLTkpDVmV0?=
 =?utf-8?B?WENOYVJ3TXRNcjE3dU9VaGNReXVIZ0xlcjdNMVoyanJNUUo5ZmhlOXBrVVJS?=
 =?utf-8?B?aGlYRmtzQk1iaitqSHl6cis2Y0RWaWhkTVJaMGtGdGtVQzVYQUdvSWdqbkl1?=
 =?utf-8?B?dWdpNXRFUURacWdyZ0EyUVhvQldHM2pSK3dXVUQ4THl5VVJiY01tVm5EaHQw?=
 =?utf-8?B?NGRVRXFIdUtYbkpTdUh6SThIUkFDRVpYZ1R3U3FWZmxIVC9ncHJXYWZrcFZN?=
 =?utf-8?B?aW40dGZhWWhUVVNxcVh1SkJLNzkvL1p2UGlZenFwMjFQN1FJb2tMVlExSTRy?=
 =?utf-8?B?NkNzRFROTDd6Y2h1c25GNEVxc09XZHNJTE1ic2tNRFVoZVNUWXBOZlR0WDlS?=
 =?utf-8?B?SFVTRklld1BzbzF2Mk1sUmk1R1ZWOG8zWWcraFIxcktIZzNVU1JvWFNVNmph?=
 =?utf-8?B?dWdqSXE3dldoR21INGZ5YW1NbU5DUU0raWMrQU14TUhWTXczcGc5cFdyckxp?=
 =?utf-8?B?QkdKT3RRSTNJRkxVc3k0elMzanpaUCtEbUJ4UjJDZU83MThXOXIySnExbkVM?=
 =?utf-8?B?Y0dZZFJhU2pRdXRndEo3eGFGZENrMzBDVHAxOTc3N1F1YThyS2VmeWdkOWZM?=
 =?utf-8?B?ampSa0FBR1RpQVAwMkZZcVQ1MlVGR3RxRzV5VGI5RkxkdWplN25IRERDYkpK?=
 =?utf-8?B?RkFoZjRKK3lWVWoreVEvMTdYMUdVMGlvcjBYeDBkbzQzYXZQbzJsd0dCV0ZH?=
 =?utf-8?B?UHFnTDVyYTdsY2Q5Qk50Q3NaK2VzbFRRVWRjWDhMWlhKM1FpcjBoN1Vxaks3?=
 =?utf-8?B?SWNsM1VNaUJ4dGNRanhkWmU3YU9XRSs1TzQzWWU1T0h0NGlPRXI4ZERDTVBq?=
 =?utf-8?B?RjJjd0pWMEdLV3YvaVM5SkdxYnR3TnhQaFVZdWFvSVNwenFKck1mT1RQYkZR?=
 =?utf-8?B?bEpLSlZ2YUQ4cE13RHBSTmZBNzZrZGRKYnFHR1FESzJZSW1aZWU5WWlEMlc4?=
 =?utf-8?B?eGVPcTE2L1d3MGE2NGEwOU1KWjU1VktoVDB6QUUwTjl3RHVzSVJLazRqVWR5?=
 =?utf-8?B?ekdFeTVDZ3pmMXBucVRkUzZyYklScWFXZ3ZGaTBFcHNpUVpVbjVTUXUyR3RO?=
 =?utf-8?B?eFJFVG9pRkUrWVNkT1p5cTV2VmE0cFl5SGRBbU9BSytzU1ZVcDBUbDUrbU9H?=
 =?utf-8?B?TVBVcXdtY3dhTXlrSENXM21MbC81aStNS0pHVFNjTzlBODFNdHFvbGlLK3hu?=
 =?utf-8?B?ekVzaTVLZEFUZERsTWJiQm9YUGlCNVRCWHRDWU54M012NFpXTDRhbjJrOURN?=
 =?utf-8?B?SUNiRUZrZThzT3phejNSbnpGMEdCQWdKNkxVcEFOT3NtU2F2a1l0UG5BQWxo?=
 =?utf-8?B?VjVnc0hMSzhCeG9vdDNSanZCUWRaMEFVUE5pV2VHd3ZHSWg0SWlmdURFaTdm?=
 =?utf-8?B?RnBSUjkvckt0N2lFRzEzMForUWtiUHIwakc1b2YvaWlvQWV6Q20wTm9oSXc1?=
 =?utf-8?B?ZHhzYU12NFlYY2cyV3Z0Q3p4dlBlc1VkeDRFZVNaSDFwQzUzK1ZvRGJIUjZY?=
 =?utf-8?B?WWNSeGtyZjNXc3RpWXBJMHdQOXU0YzBNUkNVQWUxMEh3RUJPNUtkWXEzTmU5?=
 =?utf-8?B?RStPSWZMRmJmWlRla0pXUEhtUEJMMXdqWHhjb3Q5cStSbVcvV2ppOEtobWRs?=
 =?utf-8?B?UXlHY2VJZ3k3b1JtYUw4S0lMcmpPZGpEQlRYZWFCbGMyTFJUS0x1V09KWlpR?=
 =?utf-8?B?SERMV1RGV3VvaHR5dmtVc1NYWVhPVkxyR1JMbmd6QjYxMCtjTFIzMVJQdHov?=
 =?utf-8?B?Q0lLb0FJUnJ3eTBIckY3VUN1NmplY0NKbFJtbXpSWHVERUZwSktNTmJCaEZh?=
 =?utf-8?B?OU41dmFsWkJPb0lHMWwxRHlzbzk0SGc0UWhZWklvSFNjRzdrTllmYnpCZ1F4?=
 =?utf-8?B?ZDNscXNSMHFyZXFoc3BIWjhiMnMvaEV2N3lKRThMRjl2aC84dUVuOFdmNndJ?=
 =?utf-8?B?Ny9lTkxyUURlb0N6Q0d6dXZGOFRQUmhSTUlWSU9rWHphKytYbFpwdFJ5Z2Ru?=
 =?utf-8?B?czJJcEFWNWVJb1NsS0d4dm5yTGZ6WGJmVWVPUUxJbVQ1MkdHeWhwY25HaXhn?=
 =?utf-8?Q?wLB4uuf3GaY5R6PLDRVzpirBv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA4PR11MB9278.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d07cbf2-904d-47d8-f51a-08ddda6ee522
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2025 13:39:58.1938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GmkB1tk4TJypYtCHyWpc+1q7cpsi12F0oAz+jNE2w60N+j9PQa8uUtNgfrSk7H8p0P6XGKCOMuhl/klHq048Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8DE294191
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 13 Aug 2025 15:15:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755092829; x=1786628829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nGkNL7R2cXJsdiGgWJd8bYNyoMTh9lWXgoLrMo2aqWY=;
 b=HHVg2FsKeNxJJfvosDdRSzvK9Q9mQc3tK3ETjsng5ppwSbqXzsLghlY1
 C2rhVpWj5sbCXCVOqDm1yQwp8Wqd8YxXhHJ71QC0XWwnFpJZD9YcZ/Lw0
 ZGkBhhu581ec97oExXpMMf+L0VifCMpCtQOM00Y1Rz2EoShSGA12CzBnT
 lVLfrR3uVEb/pLta++IMGmbSaqnfCx06Zrgi49RCiIrHHKcmGjNxqHFkZ
 w8CWn9aeRyaRLpPMFLqCYm1+HXkhamfcvmYurg7SD1tJ/fm2ezdJjW2Pj
 r8N/52WLptcW1ZsWitoXDBOeI7dTHEVIKIiSEkaw7rzG9PlislgclndNe
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HHVg2FsK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKYWNvYiBL
ZWxsZXINCj4gU2VudDogU2F0dXJkYXksIEp1bHkgMTIsIDIwMjUgNTo1NCBBTQ0KPiBUbzogRmlq
YWxrb3dza2ksIE1hY2llaiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBJbnRlbCBXaXJl
ZCBMQU4gPGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZz47IExvYmFraW4sIEFs
ZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+DQo+IENjOiBKb2UgRGFtYXRv
IDxqZGFtYXRvQGZhc3RseS5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBDaHJpc3RvcGgNCj4gUGV0
cmF1c2NoIDxjaHJpc3RvcGgucGV0cmF1c2NoQGRlZXBsLmNvbT47IEphcm9zbGF2IFB1bGNoYXJ0
DQo+IDxqYXJvc2xhdi5wdWxjaGFydEBnb29kZGF0YS5jb20+OyBLZWxsZXIsIEphY29iIEUNCj4g
PGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0g
W1BBVENIIGl3bC1uZXQgdjJdIGljZTogZml4IFJ4IHBhZ2UgbGVhayBvbiBtdWx0aS0NCj4gYnVm
ZmVyIGZyYW1lcw0KPiANCj4gVGhlIGljZV9wdXRfcnhfbWJ1ZigpIGZ1bmN0aW9uIGhhbmRsZXMg
Y2FsbGluZyBpY2VfcHV0X3J4X2J1ZigpIGZvciBlYWNoDQo+IGJ1ZmZlciBpbiB0aGUgY3VycmVu
dCBmcmFtZS4gVGhpcyBmdW5jdGlvbiB3YXMgaW50cm9kdWNlZCBhcyBwYXJ0IG9mIGhhbmRsaW5n
DQo+IG11bHRpLWJ1ZmZlciBYRFAgc3VwcG9ydCBpbiB0aGUgaWNlIGRyaXZlci4NCj4gDQo+IEl0
IHdvcmtzIGJ5IGl0ZXJhdGluZyBvdmVyIHRoZSBidWZmZXJzIGZyb20gZmlyc3RfZGVzYyB1cCB0
byAxIHBsdXMgdGhlIHRvdGFsDQo+IG51bWJlciBvZiBmcmFnbWVudHMgaW4gdGhlIGZyYW1lLCBj
YWNoZWQgZnJvbSBiZWZvcmUgdGhlIFhEUCBwcm9ncmFtDQo+IHdhcyBleGVjdXRlZC4NCj4gDQo+
IElmIHRoZSBoYXJkd2FyZSBwb3N0cyBhIGRlc2NyaXB0b3Igd2l0aCBhIHNpemUgb2YgMCwgdGhl
IGxvZ2ljIHVzZWQgaW4NCj4gaWNlX3B1dF9yeF9tYnVmKCkgYnJlYWtzLiBTdWNoIGRlc2NyaXB0
b3JzIGdldCBza2lwcGVkIGFuZCBkb24ndCBnZXQgYWRkZWQNCj4gYXMgZnJhZ21lbnRzIGluIGlj
ZV9hZGRfeGRwX2ZyYWcuIFNpbmNlIHRoZSBidWZmZXIgaXNuJ3QgY291bnRlZCBhcyBhDQo+IGZy
YWdtZW50LCB3ZSBkbyBub3QgaXRlcmF0ZSBvdmVyIGl0IGluIGljZV9wdXRfcnhfbWJ1ZigpLCBh
bmQgdGh1cyB3ZSBkb24ndA0KPiBjYWxsIGljZV9wdXRfcnhfYnVmKCkuDQo+IA0KPiBCZWNhdXNl
IHdlIGRvbid0IGNhbGwgaWNlX3B1dF9yeF9idWYoKSwgd2UgZG9uJ3QgYXR0ZW1wdCB0byByZS11
c2UgdGhlIHBhZ2UNCj4gb3IgZnJlZSBpdC4gVGhpcyBsZWF2ZXMgYSBzdGFsZSBwYWdlIGluIHRo
ZSByaW5nLCBhcyB3ZSBkb24ndCBpbmNyZW1lbnQNCj4gbmV4dF90b19hbGxvYy4NCj4gDQo+IFRo
ZSBpY2VfcmV1c2VfcnhfcGFnZSgpIGFzc3VtZXMgdGhhdCB0aGUgbmV4dF90b19hbGxvYyBoYXMg
YmVlbg0KPiBpbmNyZW1lbnRlZCBwcm9wZXJseSwgYW5kIHRoYXQgaXQgYWx3YXlzIHBvaW50cyB0
byBhIGJ1ZmZlciB3aXRoIGEgTlVMTA0KPiBwYWdlLiBTaW5jZSB0aGlzIGZ1bmN0aW9uIGRvZXNu
J3QgY2hlY2ssIGl0IHdpbGwgaGFwcGlseSByZWN5Y2xlIGEgcGFnZSBvdmVyDQo+IHRoZSB0b3Ag
b2YgdGhlIG5leHRfdG9fYWxsb2MgYnVmZmVyLCBsb3NpbmcgdHJhY2sgb2YgdGhlIG9sZCBwYWdl
Lg0KPiANCj4gTm90ZSB0aGF0IHRoaXMgbGVhayBvbmx5IG9jY3VycyBmb3IgbXVsdGktYnVmZmVy
IGZyYW1lcy4gVGhlDQo+IGljZV9wdXRfcnhfbWJ1ZigpIGZ1bmN0aW9uIGFsd2F5cyBoYW5kbGVz
IGF0IGxlYXN0IG9uZSBidWZmZXIsIHNvIGEgc2luZ2xlLQ0KPiBidWZmZXIgZnJhbWUgd2lsbCBh
bHdheXMgZ2V0IGhhbmRsZWQgY29ycmVjdGx5LiBJdCBpcyBub3QgY2xlYXIgcHJlY2lzZWx5IHdo
eQ0KPiB0aGUgaGFyZHdhcmUgaGFuZHMgdXMgZGVzY3JpcHRvcnMgd2l0aCBhIHNpemUgb2YgMCBz
b21ldGltZXMsIGJ1dCBpdA0KPiBoYXBwZW5zIHNvbWV3aGF0IHJlZ3VsYXJseSB3aXRoICJqdW1i
byBmcmFtZXMiIHVzZWQgYnkgOUsgTVRVLg0KPiANCj4gVG8gZml4IGljZV9wdXRfcnhfbWJ1Zigp
LCB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0byBjYWxsIGljZV9wdXRfcnhfYnVmKCkgb24NCj4gYWxs
IGJ1ZmZlcnMgYmV0d2VlbiBmaXJzdF9kZXNjIGFuZCBuZXh0X3RvX2NsZWFuLiBCb3Jyb3cgdGhl
IGxvZ2ljIG9mIGENCj4gc2ltaWxhciBmdW5jdGlvbiBpbiBpNDBlIHVzZWQgZm9yIHRoaXMgc2Ft
ZSBwdXJwb3NlLiBVc2UgdGhlIHNhbWUgbG9naWMgYWxzbw0KPiBpbiBpY2VfZ2V0X3BnY250cygp
Lg0KPiANCj4gSW5zdGVhZCBvZiBpdGVyYXRpbmcgb3ZlciBqdXN0IHRoZSBudW1iZXIgb2YgZnJh
Z21lbnRzLCB1c2UgYSBsb29wIHdoaWNoDQo+IGl0ZXJhdGVzIHVudGlsIHRoZSBjdXJyZW50IGlu
ZGV4IHJlYWNoZXMgdG8gdGhlIG5leHRfdG9fY2xlYW4gZWxlbWVudCBqdXN0DQo+IHBhc3QgdGhl
IGN1cnJlbnQgZnJhbWUuIENoZWNrIHRoZSBjdXJyZW50IG51bWJlciBvZiBmcmFnbWVudHMgKHBv
c3QgWERQDQo+IHByb2dyYW0pLiBGb3IgYWxsIGJ1ZmZlcnMgdXAgMSBtb3JlIHRoYW4gdGhlIG51
bWJlciBvZiBmcmFnbWVudHMsIHdlJ2xsDQo+IHVwZGF0ZSB0aGUgcGFnZWNudF9iaWFzLiBGb3Ig
YW55IGJ1ZmZlcnMgcGFzdCB0aGlzLCBwYWdlY250X2JpYXMgaXMgbGVmdCBhcy1pcy4NCj4gVGhp
cyBlbnN1cmVzIHRoYXQgZnJhZ21lbnRzIHJlbGVhc2VkIGJ5IHRoZSBYRFAgcHJvZ3JhbSwgYXMg
d2VsbCBhcyBhbnkNCj4gYnVmZmVycyB3aXRoIHplcm8tc2l6ZSB3b24ndCBoYXZlIHRoZWlyIHBh
Z2VjbnRfYmlhcyB1cGRhdGVkIGluY29ycmVjdGx5Lg0KPiBVbmxpa2UgaTQwZSwgdGhlIGljZV9w
dXRfcnhfbWJ1ZigpIGZ1bmN0aW9uIGRvZXMgY2FsbA0KPiBpY2VfcHV0X3J4X2J1ZigpIG9uIHRo
ZSBsYXN0IGJ1ZmZlciBvZiB0aGUgZnJhbWUgaW5kaWNhdGluZyBlbmQgb2YgcGFja2V0Lg0KPiAN
Cj4gVGhlIHhkcF94bWl0IHZhbHVlIG9ubHkgbmVlZHMgdG8gYmUgdXBkYXRlZCBpZiBhbiBYRFAg
cHJvZ3JhbSBpcyBydW4sIGFuZA0KPiBvbmx5IG9uY2UgcGVyIHBhY2tldC4gRHJvcCB0aGUgeGRw
X3htaXQgcG9pbnRlciBhcmd1bWVudCBmcm9tDQo+IGljZV9wdXRfcnhfbWJ1ZigpLiBJbnN0ZWFk
LCBzZXQgeGRwX3htaXQgaW4gdGhlIGljZV9jbGVhbl9yeF9pcnEoKSBmdW5jdGlvbg0KPiBkaXJl
Y3RseS4gVGhpcyBhdm9pZHMgbmVlZGluZyB0byBwYXNzIHRoZSBhcmd1bWVudCBhbmQgYXZvaWRz
IGFuIGV4dHJhIGJpdC0NCj4gd2lzZSBPUiBmb3IgZWFjaCBidWZmZXIgaW4gdGhlIGZyYW1lLg0K
PiANCj4gTW92ZSB0aGUgaW5jcmVtZW50IG9mIHRoZSBudGMgbG9jYWwgdmFyaWFibGUgdG8gZW5z
dXJlIGl0cyB1cGRhdGVkICpiZWZvcmUqDQo+IGFsbCBjYWxscyB0byBpY2VfZ2V0X3BnY250cygp
IG9yIGljZV9wdXRfcnhfbWJ1ZigpLCBhcyB0aGUgbG9vcCBsb2dpYyByZXF1aXJlcw0KPiB0aGUg
aW5kZXggb2YgdGhlIGVsZW1lbnQganVzdCBhZnRlciB0aGUgY3VycmVudCBmcmFtZS4NCj4gDQo+
IFRoaXMgaGFzIHRoZSBhZHZhbnRhZ2UgdGhhdCB3ZSBhbHNvIG5vIGxvbmdlciBuZWVkIHRvIHRy
YWNrIG9yIGNhY2hlIHRoZQ0KPiBudW1iZXIgb2YgZnJhZ21lbnRzIGluIHRoZSByeF9yaW5nLCB3
aGljaCBzYXZlcyBhIGZldyBieXRlcyBpbiB0aGUgcmluZy4NCj4gDQo+IENjOiBDaHJpc3RvcGgg
UGV0cmF1c2NoIDxjaHJpc3RvcGgucGV0cmF1c2NoQGRlZXBsLmNvbT4NCj4gUmVwb3J0ZWQtYnk6
IEphcm9zbGF2IFB1bGNoYXJ0IDxqYXJvc2xhdi5wdWxjaGFydEBnb29kZGF0YS5jb20+DQo+IENs
b3NlczoNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2L0NBSzhmRlo0aFk2R1VKTkVO
ejN3WTlqYVlMWlhHZnByN2RuWnh6DQo+IEdNWW9FNDRjYVJiZ3dAbWFpbC5nbWFpbC5jb20vDQo+
IEZpeGVzOiA3NDNiYmQ5M2NmMjkgKCJpY2U6IHB1dCBSeCBidWZmZXJzIGFmdGVyIGJlaW5nIGRv
bmUgd2l0aCBjdXJyZW50DQo+IGZyYW1lIikNCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVy
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBJJ3ZlIHRlc3RlZCB0aGlzIGlu
IGEgc2V0dXAgd2l0aCBNVFUgOTAwMCwgdXNpbmcgYSBjb21iaW5hdGlvbiBvZiBpcGVyZjMgYW5k
DQo+IHdyayBnZW5lcmF0ZWQgdHJhZmZpYy4NCj4gDQo+IEkgdGVzdGVkIHRoaXMgaW4gYSBjb3Vw
bGUgb2Ygd2F5cy4gRmlyc3QsIEkgY2hlY2sgbWVtb3J5IGFsbG9jYXRpb25zIHVzaW5nDQo+IC9w
cm9jL2FsbG9jaW5mbzoNCj4gDQo+ICAgYXdrICcvaWNlX2FsbG9jX21hcHBlZF9wYWdlLyB7IHBy
aW50ZigiJXMgJXNcbiIsICQxLCAkMikgfScgL3Byb2MvYWxsb2NpbmZvDQo+IHwgbnVtZm10IC0t
dG89aWVjDQo+IA0KPiBTZWNvbmQsIEkgcG9ydGVkIHNvbWUgc3RhdHMgZnJvbSBpNDBlIHdyaXR0
ZW4gYnkgSm9lIERhbWF0byB0byB0cmFjayB0aGUNCj4gcGFnZSBhbGxvY2F0aW9uIGFuZCBidXN5
IGNvdW50cy4gSSBjb25zaXN0ZW50bHkgc2F3IHRoYXQgdGhlIGFsbG9jYXRlIHN0YXQNCj4gaW5j
cmVhc2VkIHdpdGhvdXQgdGhlIGJ1c3kgb3Igd2FpdmUgc3RhdHMgaW5jcmVhc2luZy4gSSBhbHNv
IGFkZGVkIGEgc3RhdCB0bw0KPiB0cmFjayBkaXJlY3RseSB3aGVuIHdlIG92ZXJ3cm90ZSBhIHBh
Z2UgcG9pbnRlciB0aGF0IHdhcyBub24tTlVMTCBpbg0KPiBpY2VfcmV1c2VfcnhfcGFnZSgpLCBh
bmQgc2F3IGl0IGluY3JlbWVudCBjb25zaXN0ZW50bHkuDQo+IA0KPiBXaXRoIHRoaXMgZml4LCBh
bGwgb2YgdGhlc2UgaW5kaWNhdG9ycyBhcmUgZml4ZWQuIEkndmUgdGVzdGVkIGJvdGggMTUwMCBi
eXRlIGFuZA0KPiA5MDAwIGJ5dGUgTVRVIGFuZCBubyBsb25nZXIgc2VlIHRoZSBsZWFrLiBXaXRo
IHRoZSBjb3VudGVycyBJIHdhcyBhYmxlIHRvDQo+IGltbWVkaWF0ZWx5IHNlZSBhIGxlYWsgd2l0
aGluIGEgZmV3IG1pbnV0ZXMgb2YgaXBlcmYzLCBzbyBJIGFtIGNvbmZpZGVudCB0aGF0DQo+IEkn
dmUgcmVzb2x2ZWQgdGhlIGxlYWsgd2l0aCB0aGlzIGZpeC4NCj4gDQo+IEkndmUgbm93IGFsc28g
dGVzdGVkIHdpdGggeGRwLWJlbmNoIGFuZCBjb25maXJtIHRoYXQgWERQX1RYIGFuZA0KPiBYRFBf
UkVESVIgd29yayBwcm9wZXJseSB3aXRoIHRoZSBmaXggZm9yIHVwZGF0aW5nIHhkcF94bWl0Lg0K
PiAtLS0NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBGaXggWERQIFR4L1JlZGlyZWN0IChUaGFua3Mg
TWFjaWVqISkNCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUw
NzA5LWprLWljZS1maXgtcngtbWVtLWxlYWstdjEtMS0NCj4gY2ZkZDdlZWVhOTA1QGludGVsLmNv
bQ0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5oIHwg
IDEgLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyB8IDgxICsr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5z
ZXJ0aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pDQoNClRlc3RlZC1ieTogUHJpeWEgU2luZ2ggPHBy
aXlheC5zaW5naEBpbnRlbC5jb20+DQoNCg0K

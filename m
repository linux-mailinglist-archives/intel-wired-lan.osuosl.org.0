Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F9BAC8871
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 08:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FBB761BF0;
	Fri, 30 May 2025 06:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OvokPSsJUOC8; Fri, 30 May 2025 06:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A63161BF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748588230;
	bh=xehxqi6fICHq8MZ1ffAwxdi0hRt0zWdGMnm6p4U78qk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=utWaNM2yg9cV1k40pcRp8qYnPAV97vabnHilupW11x+HGA4Uqh6YH3FpEL4DjD6Ny
	 OOJCFRAvS1Nw/l2wQ3fq5VHK1oVUrMM5voSIIC6cBXehRQtvmPBNsRIxeVR8eck5LZ
	 GgRSqMjKq13/9vr81alNmsCSvYRB9pIgBxAp+eIiE6sKFlLFpZ5woc6ctjzn4fhbJX
	 1r8ciP3VqUDHG6Wy+FUxB9g0DBHtESY5QURB8bgL9sqL+7OpXfh+EmqlCxlr4wCrpW
	 pXzbBujSaLs25vZbXLw34QaozEk6dFRp/OPQ2M0lwSY9oxo4SBWULVNd8LurJB7aof
	 Rqv8ZjivDVBnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A63161BF2;
	Fri, 30 May 2025 06:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 19158127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 06:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F321B41C02
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 06:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FPY7MKd1h8ze for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 06:57:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 47FAD41BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47FAD41BEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47FAD41BEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 06:57:07 +0000 (UTC)
X-CSE-ConnectionGUID: 8Vr7rWH/R6+YD1l5pdxw8g==
X-CSE-MsgGUID: Qjitpi2MTYmvb/DRyVvlXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="50724469"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="50724469"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 23:57:07 -0700
X-CSE-ConnectionGUID: Jmo/0jGdTomu+Qudhgnypg==
X-CSE-MsgGUID: o9MLcwniRreB/bbg0ubmDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="147658847"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 23:57:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 23:57:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 23:57:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.71)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 23:57:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gHWX+h34l1azl3AXnVmEdd2+1PhyXjt39Gj4/0MwPvTwvOUjdCWbVF+QwdXg9wq2e7Gyhupf+v/NYA9FNix00aLEgewwHDYNQ3FwhopH7DKWwl0ocDQ2lg6fQtIB8O8Yusi1r2wXnib3WwKzUrrOylbVxyj3z1ja7cXmqEz+zxdSiBJAnHANKf7Y2Jg0cU7IeMuUuTdF9pEAjcvutfsyJpGGciQOOlXjLYf/i5V24/vEAu3gOx6axrdkmel+ILUYjFpRiCG/gvtYsOXf260oEl2HZMidQ+vO3CcSQREMrlOG/5gNyl3+5VEKe98xWoFb/fddRsGYK751ErdGR/IsZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xehxqi6fICHq8MZ1ffAwxdi0hRt0zWdGMnm6p4U78qk=;
 b=eiR56Y9a5o8/yjgQX1ZSq7Hft++FwV0yaKZdJKt3mNxf9lA52jwOSCxDyHsvfo4S6jCX4QRFwfXxCMkTs7jVchuw0HkM0XkPW7vqalzqd2sNulVAP67/FZez1yIfgRO1Z9scUW8B+QeWg5TQMjTxeenTlLCnVI+4B50/DauFOpaiqn36rjdjaAPop06JmTTRBSIwDXWX9mC1oUbxCZMhWMUyzkPHk6i9qRkV0MjHzB+FRLw5s5hIRm/VaSmPKk6dlgJ6zxFKk6LSDfAw6y8viY3EmhIyJ7dRunnbovzyZ7q913tSLFmsctE92ZZerpklPGIwLs9SuQKqUPsEWWn+TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW6PR11MB8389.namprd11.prod.outlook.com (2603:10b6:303:23d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Fri, 30 May
 2025 06:57:04 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8769.025; Fri, 30 May 2025
 06:57:04 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: move RSS
 packet classifier types to libie
Thread-Index: AQHbvfpvl8uYESp7x0m9zvUV79CaXrPq4wyg
Date: Fri, 30 May 2025 06:57:03 +0000
Message-ID: <IA1PR11MB6241C8E2FA0B9517BAF68E8A8B61A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250505-jk-hash-ena-refactor-v2-0-c1f62aee1ffe@intel.com>
 <20250505-jk-hash-ena-refactor-v2-2-c1f62aee1ffe@intel.com>
In-Reply-To: <20250505-jk-hash-ena-refactor-v2-2-c1f62aee1ffe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW6PR11MB8389:EE_
x-ms-office365-filtering-correlation-id: d52c57a3-589b-458a-4af9-08dd9f472f3e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bytlRnJiTmZKUVBrNDJuaExQVDhIWTRZaW8xczJsYnd2bzNnYWNDdzl4WC9a?=
 =?utf-8?B?WjFWNDJ3QU02T0Q2YTYzUXdleHZzQWRhN3ZsQld6NXp5TWlQWFU3WkpBYVFm?=
 =?utf-8?B?OVJ6Z3lIY1pYRnR6enpoand1eUJXbVBWbTBQdG52T2JlWmNUaG5Fd01KRjJR?=
 =?utf-8?B?THN4TUt3bktPTTNDcmNGb3g5V2dLRERJazNjd295WXlkbDl1MGpxaEloaDNK?=
 =?utf-8?B?VzE3b01uUWJvaUlJL3N3RHRmYnNWQ2IvVHhGeWNSV05HMWRzVmpBRVdHM3FI?=
 =?utf-8?B?Uk5memsvL2tTU3k2VWlkcVEyVjlCZ1hCZklxVXA0THhLbmZVLzZaZ0NObTBV?=
 =?utf-8?B?aHI3U3djK2dGQTdzQkJKRFZ2N2dOWWJSTFFLVGE2WEg1ZVJNdU96all5T3Jq?=
 =?utf-8?B?R2NGZUpDWmorU1ZDWjVUSUl2M0gyTUI2ZnNLalRodngySWNiQnh4VmpVc0Q1?=
 =?utf-8?B?NVd1NmRCR3AyeHp4K1FpSWkxSDZJeDNtdWl6amo0c2pVdkRRdjJjVHMwRy9q?=
 =?utf-8?B?cDBjQkVzY0c1WXVmanpKblRjcFl4SXc4MFNIY1poOWJFMkpMRisvS1BHK1FH?=
 =?utf-8?B?ajM0azJkQmh2ektkNjNZQVZnaXZxUmpxNnFnZ0lJQVgzRVlob1hTNDF3QTE0?=
 =?utf-8?B?M0p1c2o0T3pGZEYxdHFQNE9oTXhJOXVOT21tRjBrbEhvdEpyc005WDBzNDdk?=
 =?utf-8?B?RDdmMmVrMGlPNnc4bG1Bd2NjdUZFYWlYZ0xYRDNudVZLRVZlWGZOVjVrVnpr?=
 =?utf-8?B?OHFvQjUybzdvck14MEZTUnkyb0VxSlJ6aFVyeVh3eUUvRTVTVW5vc0JzK3oy?=
 =?utf-8?B?SFRjby83K05MTnVkQlRwamk3akJ4bjlWQlc2Mkt3L1BlQUVEbTBXRVdOa2Z5?=
 =?utf-8?B?Y0RsRGtjUHArUVV6TmZrRFIrdEplRjZ4U3BjemM4N2JLbDQwSkRDUU5MRDQz?=
 =?utf-8?B?cmdmaWFmNFZjOVgyN1lZdDkzcjFKK1N5TmtXWlNHa05maVNFQnRobjZnQWdU?=
 =?utf-8?B?dE5YbGQwVVp6ek9YM0RJdEs3aDNKcUpock8rTDU3WUR3Y1NYNStwMVlxZjN0?=
 =?utf-8?B?U0wzWmszVTd2aEpCaTE3TkRXQlpsTkg3UmVyTXF3K3ZoZ1lGdXE4QUZXM0ZX?=
 =?utf-8?B?Ung5enptUXVoazB0N01lSDg2SGpXRFhQV2JzN0hjT1pHK1dkUENiM3A4akRz?=
 =?utf-8?B?a0FFZzZNeGozQU1YdUlBZzhKTzR0TDZzR2N4ZVNFQVBOOFpKRGMwQWtuMGpj?=
 =?utf-8?B?RHlrSUZJb01VZDVqbldvTE43NnBxSGtnMEJ2bWZKNHh2dkk2WE5NSXdwZk9E?=
 =?utf-8?B?QmF5dUtzTnlkMTMxTmlscTdicjNUblkwd0oxM29xWThXbW5RdzUxSmtTaFo1?=
 =?utf-8?B?TFMvMWxwdGtCWmFEaXEwS1kyT25Db2M5ZEgvU2xFTlE0ZGU1MmgxTWtHQ2ta?=
 =?utf-8?B?TnlJRzlJRXMxVFRRNUEybWRPWUhibW1qU1dYNi9TNVdoOFdWbjZGVEJCNGhB?=
 =?utf-8?B?OURZVnFrWHNxRCsrKzV3RHVnN0VjcGQxSFhteHdKTmJVV2xhOTN2ZTVYWFZw?=
 =?utf-8?B?WTRmUFNzeU9hbnJZOWNQb1J5Y1N5cnlrUmlpK1FKaktadEx2RGZ1Q3BGSDAw?=
 =?utf-8?B?VVIzZC9xRk1rRjhvMWE0MW5ZbGVQdU9KRmZxc1BHSWhhZGVpRWZpWFZjRllo?=
 =?utf-8?B?WnBJYzdPWEtydEp4c1JMQi9tQzBTVVdMKzU3Mlo0K1VYOUxqL0hRdlRpd3dH?=
 =?utf-8?B?RGZWZzlSalluTUtObG03QXhNSWJyN2hHV2MvekUrcXhiZ1V3V0QrWmV6NFlI?=
 =?utf-8?B?VlNxTXFadkRLK1FSTTkwWVBCUG53TVJEUHR0Nk9WYXhIWGZTbVAwVXg5aFhH?=
 =?utf-8?B?TnozL1p2WW1aVFNqTzE5US83alV5UThFM3I3anMyY3ZNSWg4U2krVXpWOU9G?=
 =?utf-8?B?V0xkRzFHRW0yd3JSd3hRckFPMDZSczFXRlVRSFN4MXIrUXNGY1VBU2FHRTd4?=
 =?utf-8?Q?WE+kGMR5OYPO1XZJrqlq2hx4Gq+hPs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RU1RRmVTazZPaHFmNkNMZ0ZMMmlrT0N1OVBzQjVob0tKdlo0VVR0dk9Dd09H?=
 =?utf-8?B?d2RsblF1OXpqUXJOVmQ4WlI4aGFIeTJuNGQvRERDUHFEa2sycU56TEpwc20z?=
 =?utf-8?B?djAxQWF1Q0tWR2swU1dlbmY0c0xoMFZzemM3bGRtWkcrMHJKcjR5WGhKZElC?=
 =?utf-8?B?bzdkbjUxUHp4VS9CZmpLSm4wLzNVYVlqb0xMWko4d2VGNzNZSGRnVU9vN1pq?=
 =?utf-8?B?bkYxMXpzUFJVcVhteWpBd3JMUGMwWHBFR1JxM2JUZFdOazB4M2V6U2F5RFJs?=
 =?utf-8?B?Tzg5K3dneFZuV1NTV09XbXMxZDh4aUZoaXd5bTNoeTBGN1ZCNWhEZTdEWDlv?=
 =?utf-8?B?eFhKV1g2ZVhGL0l6RHg0L09qemUwY2JKZ0NnYUJ1bDNFcnlqdzlhWkRFUnBn?=
 =?utf-8?B?MDRGd0kwSEc1VmZuOWxjaXBQcWVpN3FUUGk1NkpYWWRTdUxQRFJkY3labldm?=
 =?utf-8?B?eUlqTHhpckVKVVdlek5GNEhMSlNNemsrVklnTzJvMUs1T1Z0OWpWUCt2MS9I?=
 =?utf-8?B?eVFVM3p1V05ZL2dWeThPeDJmajFUSFZFR2lVdEMvcXBHcW1LT1MwNFNwazBh?=
 =?utf-8?B?ZEVXbTI2akFSWUJrUXdWVWs3SmZhWk9naDM5c2NhM0NUZ0tvUzRFKzN6YUZa?=
 =?utf-8?B?TE04eEFxVXVaS3g4bzcwTHY4WjRuQjY2dE5VSk5QR0pLRjZYS0xzNGM5aFVH?=
 =?utf-8?B?RytVUWh6WVgyOGpQZUFRelhjeTlUWHhSNm5pcTVnV1ArakxmY3EzYlJqbHJn?=
 =?utf-8?B?bGZ4WGk5NVd3aXF4K0NTMkpaYVlUOStNOXU1d0dtVFlyYlRhYm5hTmdkaDhn?=
 =?utf-8?B?ZFdWYmZkY0VpSjhhN3BKb2hlQU1FSFQ3R3RONm1XR0FWd3ZwU2lybkI2L3FX?=
 =?utf-8?B?UTVRR0tOMlJPTmdma3VMRWNUMU1vV3ZmOFdndUJOYWJwS2daaUloUXJUcGor?=
 =?utf-8?B?WG1TYlA3d0NLb3kxOWw1WXJ2Uk9URFBmTnZReE8vYWNwNFE5QUs0MVhxTCtZ?=
 =?utf-8?B?QXFYTUxHclcySzQyUzVoVzF2YXg2SkozcnJVaVQ1VlJaU3FzZWdEM0I2K3lZ?=
 =?utf-8?B?Ni92YU9NY2l5NUpkZ2dWWkRDdFlhcU5JVk9lVWZiUEFSZ0d4Z3lKUzVEdzVa?=
 =?utf-8?B?Q1NVZXp4a2plTUNRaW52WG9PT29jL2Q0NHJXVGRCZ25nZnhTTG1ZMDRTUlJh?=
 =?utf-8?B?NzNCSCtZMUlmb2FyZjlBZ1BwemozcThSckpBWkR4K3NnY2VUVjN6cXZyTzFQ?=
 =?utf-8?B?dE14b2pBZXlKVTBmc0h1SWdObEpsTldlQkVRWWFaNXNVVnN1OFFDR0IwaTBX?=
 =?utf-8?B?eEVzaHRPalZ0ZTNKTTRFQ1NvS0thQllXamdaNjV3VUsyTFI1MnlVM3BHZnNr?=
 =?utf-8?B?MW42d1N4TzM1SWY5WHMvY2orR1AveXBZSUtYMWNxYjlNR254QlYxZGx3LytN?=
 =?utf-8?B?cWlpcmxXRTlpeExkSDMxcGt1bmR5VTBFaUloZWxNMDRhNGJpakhGTHM3Nlpu?=
 =?utf-8?B?ejRUaEpCZWxHSFZ0akkyTnJQZjkvRk5BcVlReXhGcXJ6YnYzNjFMc3dUUnoz?=
 =?utf-8?B?WVhxbjZQZ2l2MDN6VzB6M0dUYmlQeE5nNHNhZ3FXYThxUkpGM0xsQ2RWZFA5?=
 =?utf-8?B?WWFOb0haRVR1MXRrOEFKLzN3UFFJTVFVVG5KQzZFNVFWRWt4MDhUUWZXL1J3?=
 =?utf-8?B?ZnZXSlFXdDlleXNnMHgwOXY2d1FGOFBTcm42QVN2blVqTnVkU0NTd2FyeEdT?=
 =?utf-8?B?NVo0MWE0ZEx5SjhRc2pVemNvSUFmV3QrY1BMYUJ4VHpxczBzRU90akdUbGVm?=
 =?utf-8?B?M0NRdmRITlFRbk5oY3BhcVhCNzhreTcwb3BqNlRRTE0vcHU4WTZyUy9WL0Q0?=
 =?utf-8?B?M2pHK0g3eHVIM1hJcCt2dGJidU9wM2tQYlRKLzFEVkg2SWI0QVNldW9peDJR?=
 =?utf-8?B?T0MyNGFSaXFBUUJjVnBhTnlXRU40ZHJkRXMzbEpOb0J0K1JON2dkUWVGUUJ2?=
 =?utf-8?B?MHo3NWRFVE9KblFTSyt5ZHA3ZDVGb21tSW56WGJnY0xudjJZaG4zYm8xdUky?=
 =?utf-8?B?a1J0Tmt5Tm5JcDdqZUFLMFc4TmtQYzdPZEo5Mk1qK3g5ekRZYlpzSTd3ZnhV?=
 =?utf-8?Q?1i4fJyQmtmC2RZsamp7/KRZ7Y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d52c57a3-589b-458a-4af9-08dd9f472f3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2025 06:57:03.9806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EcCRk8KhA2UdixlDMU5xpaWczbInQUdcoE7+UNlbrgqlFHP0ufoNSN9cGSsP3amvWCsjnsht1Xa4mCRE3C4iPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748588228; x=1780124228;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xehxqi6fICHq8MZ1ffAwxdi0hRt0zWdGMnm6p4U78qk=;
 b=RheUxz+01OBnraSQUCTneEgOac8JmdWuvFFNl9AWh8j+djDqjYB0/bDT
 jybhx6aakQww0GnyBwbZ5DhSbQpIgSLjXx2G8Kg1sS+VWhMEulEmHUx6x
 o1CZ8RFOkOW7JL27IHefj3hJjkjL7nRTTcV9GeT6iA2scrH/+CAoZFQhp
 /JdRfuBkOibOvIanRA2TpeFXRxaQsaDgirTadTRGjUc0B5WbR6lVd/uZ3
 tzDSPHvqFpkEKgGPze/fl+3YYNUYtsaxiyxLvnL6A+1UU/Gwa95qTmU5N
 EALSn8TOhlA0yx7KGwTiYva6CjHKj1WWe53zW5uRBS5Yz+Zvj2/6wUVv0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RheUxz+0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] net: intel: move RSS
 packet classifier types to libie
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDYgTWF5IDIwMjUgMDE6NDQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBTaW1vbiBIb3JtYW4g
PGhvcm1zQGtlcm5lbC5vcmc+OyBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV4dCB2MiAyLzJdIG5ldDogaW50ZWw6IG1vdmUgUlNTIHBhY2tldCBjbGFzc2lmaWVyIHR5cGVz
IHRvIGxpYmllDQo+DQo+IFRoZSBJbnRlbCBpNDBlLCBpYXZmLCBhbmQgaWNlIGRyaXZlcnMgYWxs
IGluY2x1ZGUgYSBkZWZpbml0aW9uIG9mIHRoZSBwYWNrZXQgY2xhc3NpZmllciBmaWx0ZXIgdHlw
ZXMgdXNlZCB0byBwcm9ncmFtIFJTUyBoYXNoIGVuYWJsZSBiaXRzLiBGb3IgaTQwZSwgdGhlc2Ug
Yml0cyBhcmUgdXNlZCBmb3IgYm90aCB0aGUgUEYgYW5kIFZGIHRvIGNvbmZpZ3VyZSB0aGUgUEZR
Rl9IRU5BIGFuZCBWRlFGX0hFTkEgcmVnaXN0ZXJzLg0KPg0KPiBGb3IgaWNlIGFuZCBpQVZGLCB0
aGVzZSBiaXRzIGFyZSB1c2VkIHRvIGNvbW11bmljYXRlIHRoZSBkZXNpcmVkIGhhc2ggZW5hYmxl
IGZpbHRlciBvdmVyIHZpcnRjaG5sIHZpYSBpdHMgc3RydWN0IHZpcnRjaG5sX3Jzc19oYXNoZW5h
LiBUaGUgdmlydGNobmwuaCBoZWFkZXIgbWFrZXMgbm8gbWVudGlvbiBvZiB3aGVyZSB0aGUgYml0
IGRlZmluaXRpb25zIHJlc2lkZS4NCj4NCj4gTWFpbnRhaW5pbmcgYSBzZXBhcmF0ZSBjb3B5IG9m
IHRoZXNlIGJpdHMgYWNyb3NzIHRocmVlIGRyaXZlcnMgaXMgY3VtYmVyc29tZS4gTW92ZSB0aGUg
ZGVmaW5pdGlvbiB0byBsaWJpZSBhcyBhIG5ldyBwY3R5cGUuaCBoZWFkZXIgZmlsZS4NCj4gRWFj
aCBkcml2ZXIgY2FuIGluY2x1ZGUgdGhpcywgYW5kIGRyb3AgaXRzIG93biBkZWZpbml0aW9uLg0K
Pg0KPiBUaGUgaWNlIGltcGxlbWVudGF0aW9uIGFsc28gZGVmaW5lZCBhIElDRV9BVkZfRkxPV19G
SUVMRF9JTlZBTElELCBpbnRlbmRpbmcgdG8gdXNlIHRoaXMgdG8gaW5kaWNhdGUgd2hlbiB0aGVy
ZSB3ZXJlIG5vIGhhc2ggZW5hYmxlIGJpdHMgc2V0LiBUaGlzIGlzIGNvbmZ1c2luZywgc2luY2Ug
dGhlIGVudW1lcmF0aW9uIGlzIHVzaW5nIGJpdCBwb3NpdGlvbnMuIEEgdmFsdWUgb2YgMA0KKnNo
b3VsZCogaW5kaWNhdGUgdGhlIGZpcnN0IGJpdC4gSW5zdGVhZCwgcmV3cml0ZSB0aGUgY29kZSB0
aGF0IHVzZXMgSUNFX0FWRl9GTE9XX0ZJRUxEX0lOVkFMSUQgdG8ganVzdCBjaGVjayBpZiB0aGUg
YXZmX2hhc2ggaXMgemVyby4gRnJvbSBjb250ZXh0IHRoaXMgc2hvdWxkIGJlIGNsZWFyIHRoYXQg
d2UncmUgY2hlY2tpbmcgaWYgbm9uZSBvZiB0aGUgYml0cyBhcmUgc2V0Lg0KPg0KPiBUaGUgdmFs
dWVzIGFyZSBrZXB0IGFzIGJpdCBwb3NpdGlvbnMgaW5zdGVhZCBvZiBlbmNvZGluZyB0aGUgQklU
X1VMTCBkaXJlY3RseSBpbnRvIHRoZWlyIHZhbHVlLiBXaGlsZSBtb3N0IHVzZXJzIHdpbGwgc2lt
cGx5IHVzZSBCSVRfVUxMIGltbWVkaWF0ZWx5LCBpNDBlIHVzZXMgdGhlIG1hY3JvcyBib3RoIHdp
dGggQklUX1VMTCBhbmQgdGVzdF9iaXQvc2V0X2JpdCBjYWxscy4NCj4NCj4gUmV2aWV3ZWQtYnk6
IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gUmV2aWV3
ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0t
DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmggICAgfCAzNSAr
KysrKy0tLS0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5o
ICAgIHwgMzIgLS0tLS0tLS0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfdHhyeC5oICAgIHwgMzYgKysrKysrLS0tLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lhdmYvaWF2Zl90eXBlLmggICAgfCAzMiAtLS0tLS0tLS0tDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZmxvdy5oICAgICAgfCA2NCArKysrKystLS0tLS0tLS0tLS0t
LQ0KPiBpbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oICAgICAgICAgICAgICAgICAgIHwgIDEg
Kw0KPiBpbmNsdWRlL2xpbnV4L25ldC9pbnRlbC9saWJpZS9wY3R5cGUuaCAgICAgICAgIHwgNDEg
KysrKysrKysrKysrKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRo
dG9vbC5jIHwgODEgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyAgICB8IDIzICsrKystLS0tDQo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgICAgfCAyNSArKysrLS0tLQ0KPiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Zsb3cuYyAgICAgIHwgNDUgKysrKysr
Ky0tLS0tLS0NCj4gMTEgZmlsZXMgY2hhbmdlZCwgMTg1IGluc2VydGlvbnMoKyksIDIzMCBkZWxl
dGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29t
PiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==

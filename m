Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF928B0EF5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:09:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B0A260E18;
	Wed, 23 Jul 2025 10:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LZuTvDXWXbbn; Wed, 23 Jul 2025 10:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BD8060E97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753265375;
	bh=i65soYgHtu4jcLko7/s+8cYiZCXDX9OjmAVnJEVMsIQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gczpqKMbgKWF9GqgUjVDKE/vN5trzRlHUYrM2huxle4465NCKRFXc5EzJ4CL76BJu
	 KOL8mCSHZjUM/ITGCIuLNW+LVJvHSsNvCklK8SRUJcutDkL+NE22EuPyLq2EG2SvR9
	 zQW+ZLOHHQ/ZRfbyGmn1slnfz/t+7PItqbst+lOuSEWq/gRJesCRy5JoSG6DJsrG0X
	 DurRAZN4arXxa2gyIvnJMV1XUZuuQHmxUw9LOxK+ssDMhqPUebxdyeVU6Kz/RKAKXZ
	 HPqx4ktTrYU5jICvTsD5akzJhj4ibStXPC1Yam5R+g8egkZsk7tnLRN9B6djdQRa6g
	 7xl1/y0EKUgzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BD8060E97;
	Wed, 23 Jul 2025 10:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BBB5ADA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A214C400F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1YDLH8yTVaV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:09:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BD1A240057
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD1A240057
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD1A240057
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:09:32 +0000 (UTC)
X-CSE-ConnectionGUID: xlRZDi8tSOG0C9/d/Kku6A==
X-CSE-MsgGUID: n7Im/gqcTAaMQlbmDaubAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="72999005"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="72999005"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:09:32 -0700
X-CSE-ConnectionGUID: txRDEZquQCm/aS7TMvVUKw==
X-CSE-MsgGUID: AQV1GkLOT9m321wkEGjG/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="164851926"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:09:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:09:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:09:27 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:09:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CyAELv7E/li6XwvwzP86D+rVV2Jdezdn6kNed7WUzldgTI4rsOYgb5ev624s0C9ooYtkzPG9b4Vc/9zaLqRmjd8P0GfXh4QE54PwRgjUG1IiVsrcoVnekCDD0DOZRcoiCsr/HpencwrCQv3A9B82jXR5NJYvU9GUZXJDDyofCLpzu03nVCyOHdfk2AYjOx8kPx9K9oPEb0TYZRspEpdPG22ZwO/TZjvpW+Hw4/Diy5KDxZZOYN650+FHEx0gEBi0dYt2gYRYfuddrZQ3s22Y10YkoYQeRJkR+Su0zpq5en0pa7gMaIzftWRgGBUQwb49qKO3wjRBXG3q1FOSiFRJdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i65soYgHtu4jcLko7/s+8cYiZCXDX9OjmAVnJEVMsIQ=;
 b=qoSJ8PrB8rT65i962YNFlsSuEOGiBVj3d6KIafGVk8SWXT34vuoB4xRS1XUnIax1ZQ/nveukxye3Ilshsm+gqiLhhgKznfT6veGPSO7EsvrOy0Hv4pYx9fCrFIJV705yAkHFQEa5Ii+GI4VAfd2IEZKZx43Bz+/XYFvCjpWgfcXIiBhU7nLBtDBr6m2lG+bEfYzEAUTi1HBQI1yiPqzd5Mi0U8mo+4UeJCipsJOus0O/HbW/M8eBhsp4hi99WxDG1BDNcJgrsSIRSYNahjqjxndn2JkrczGc6UFdtjVY+GlITFIJz6gCY3QOb6wNhSYsrpy2kkF567E37WTvRUQDkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF409BB8CE8.namprd11.prod.outlook.com (2603:10b6:f:fc02::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Wed, 23 Jul
 2025 10:08:58 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:08:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/5] igb: drop unnecessary
 constant casts to u16
Thread-Index: AQHb+6+LjQj6/nQL4E2cat4xwU1EObQ/e9bw
Date: Wed, 23 Jul 2025 10:08:58 +0000
Message-ID: <IA3PR11MB89864BC98EF3317AB606B1DFE55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <e16d5318-3e5c-4a4a-a629-ba221a5f04c5@jacekk.info>
In-Reply-To: <e16d5318-3e5c-4a4a-a629-ba221a5f04c5@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF409BB8CE8:EE_
x-ms-office365-filtering-correlation-id: a608d4ee-88c2-46f8-e559-08ddc9d0f07f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?Y0RJaklXbW1IQnp5WldoRkpMWUNvR3NMSEtKNFRyR1FqSGFiRWFZUHhOYk5G?=
 =?utf-8?B?YU1ISTVkN0YzbVptUHp5T2g4a3AyNjNvTHlVZlhjd0g0cERzUlROMFJORE1U?=
 =?utf-8?B?VHhRcFEvRGtyYXcyMTVMaXVJcWpHaUtiZEVQRHJTSmMyYnhOQnpnU2VGc3VH?=
 =?utf-8?B?d0MvYkxaZEFBcWd3aERSYkpvWG84bklCNnJoOHN4Zkk3SmIxcSt3bmU4ZVpR?=
 =?utf-8?B?ZGswNUp6NmN6dWJnUFk1RG42bFZGMmJTRTlaM0psdktmMUVkYjQ4U3VyWlIw?=
 =?utf-8?B?dko4UlVLQU9lL3R4ZStXZ055ekF6VHkzTHRhZ0U5MnpJQnIrZ1RLNE9EWC8v?=
 =?utf-8?B?d0QwUk1qS2JTaE4yT0prNGxuTTl1SEdzTkV2R0l3N1loNkZpSFhmbTVyYkZT?=
 =?utf-8?B?S3JvT2V6VnIzeUhzR01LKzhVZnI2VURmSHdMZzNScmt1ZVhWMVFZTUdtSUVK?=
 =?utf-8?B?Uk1oMFVXMnpuWEtTSFhxZTFFLzVLbjlYOTBMa0JoTXluMlV6UWd0SDJyL1ZL?=
 =?utf-8?B?M3JyOGhwOWFHcjQ4ZXpZOVgvTjBDK0toT1VJSGlJR0R6M1REVVF6ZnlxMkVR?=
 =?utf-8?B?bTZlQ1N2eHN0bUFsQnE0WGZJVzI1c0prRkZibXpCV2xrRFd5THA1SVd2Wkoy?=
 =?utf-8?B?SzE3WS96aUtvcC8yOFNvNEdGYjlrVFVOaEZ5RHgzRjhMMmJRTzdUUDNQMExS?=
 =?utf-8?B?TUJsczkyeXdPbExKZXh6Rlgvenp6Tk9YRHlOUkFnZTJBUGYrZHhHVklIejdD?=
 =?utf-8?B?dWU4eGRFZitZYnR4Z0I4MHZnZDcyeURCZHkzcGlLdlBtMkVFMjJ4Qy9OeE1Q?=
 =?utf-8?B?MjYyUTdYS3dnVytrbUNGdm9TeFhGbGEyQUVOTk9MMitveXlmTXpoU3NVZTNE?=
 =?utf-8?B?aUdJZUNTUm1NMjVFZ0lIbjRnSit0d0tzRitMUVIxbXpFb0psMVFMeHI1bXRa?=
 =?utf-8?B?K040N25lNjV5R0lzTml6WmNQbzk2YlBhcjJoTHVRMzdFMXhxNUxEKzBJcXF5?=
 =?utf-8?B?Nm5mSkZRWXVsaVpMRG9idURHV0NzOVh1Tk9PbXBCVTNKaDhUeG9DY1JKNlRt?=
 =?utf-8?B?MXlIZE9OQm5iNEdmL09uaWZEL3V6bkh2dkJ6bUZSKzYzRmw2N0YyT3dUUG94?=
 =?utf-8?B?MkI0bmpJSzBuWE5XbVoxVUhMckR3ejE5QVZzbTM1dGh4ajROMk0rSHZWQXhC?=
 =?utf-8?B?QU1HSnV6RkFKOGtPZmNUMWJldHpab29WQzlKZVFkWEhuM3F6NWh6WDEwdmhh?=
 =?utf-8?B?L3JZSDc4aXd2TXhBalB1Vyt3ZUJPMnZtUEZseW5Xd09RQ0FYRmNWOGFIUDZR?=
 =?utf-8?B?ejF2ZjluL2pqS09nU05IUkxJK0hYa1pzbTBtb2lsQjRRMksxeUhzVUk2RVJ1?=
 =?utf-8?B?MUxGREFhSHF0Y2FMa1hHNVBBYytDdHd3MzJWcnhDZWtoOHROZGw2Z252aGFv?=
 =?utf-8?B?MUJaaEl1c094aHFjd2VMRDE4TjBjMXpOdTlEdXpBamRSMEFYWDhKamI2OWlo?=
 =?utf-8?B?QUtBTXAyQTRjNHVrT1JSVTJMVFMrSzdzcElnOUF2TE5Gc3RtdXUwOFFPRWpV?=
 =?utf-8?B?Z1pJNHdjUEJUeS9ibFFSUFBtNmhsak9uVzBZdVAvdlpyc1BKWWRRQ2hOUjRX?=
 =?utf-8?B?b2RiSTQ5MUorTjU2d2xzdjVYUTVUTzI2Y09Xclpndit5eUtqWTZIWmZpaHh6?=
 =?utf-8?B?bHp5WGEyaWwxYUhaQ0tiblFjNnM0dm9ldTB0ZUMrOG1xTWZtZ0VsMWh6VURY?=
 =?utf-8?B?bWYxWTBVNk9aWmpFRHBDOUFHbDY3di92NW5JVVIrd2VEWVorQ2N4KzZQVFll?=
 =?utf-8?B?YkZSRitCRHlBQU9QcXhrWnFCQytwT2pCeHoyYXJSUlc0a1FZcjVwRUNKd0JI?=
 =?utf-8?B?emwvVUJ1a0ZjOGwyUUFrMllJY0JRVDZUaGpFWnY1RG5uTU1FTGs2ZkRzRUM2?=
 =?utf-8?B?a3pqWGVJbEttSXQreEVjVkJBWGRoK2wzMUdVZ1VkYUZUdEgwS2J0bWladlda?=
 =?utf-8?Q?cg/RlzbosqX6GlY27xYxCTK7uYZDzA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eU8vZmhNaHZURVhUMjBYaFppT1lmeGJNenV1QittM1N5MWxOVS92WldhWHBX?=
 =?utf-8?B?WWJBS05ZZVRlT3pYTk8xTC9WTE9ZSkJPNlhHQkp0TVFSOE1sWkpEUTRDZEpW?=
 =?utf-8?B?cnRNVnJHSGhselQ2VkRkK3NQbmcvWjd5NCtyQXFZZE4zLzVjREEwZHNpVHpq?=
 =?utf-8?B?LzZmYkdqRWo5VlZlZ2NsUXUzNHNGSFF2RktUZFIwenowUVk1UkdlZ2xyTVRy?=
 =?utf-8?B?Q1pyYi92aU1QUW44WGFhbWZJTmRKUzlrMmVsS1JOTkNHenRCYzQyajFFWm52?=
 =?utf-8?B?SUpvbk1YTHpvQzdBUWdESytEYnFIQ2l2czhoU2xnaU4zdjNBdTBXYVg0T2NF?=
 =?utf-8?B?NlNoM3dvd1piREhCYllBZVkvMXNqUi82cHR3TEppRlFRZW4wM08yQkdQenVU?=
 =?utf-8?B?cWlKUXpnYkpiQ2NlOXUwUnl0aUkwSDRPSm1iYUZzemZJbkZrY3FQRlFBcXZW?=
 =?utf-8?B?YTFmWWh6YXlEYTFPYkdZQVcxOHV5ZVZSUVk0NVFsRml4ck5tL1FRR0JESXpq?=
 =?utf-8?B?WEhBVzgzMDNldVVZZlRYQ01aWWNnZ1NBYkozbXdiOGlFUjdFR2lqaTRxNCsx?=
 =?utf-8?B?bXRmUUR5WmtNdDVwalRYeDV1MDNnM0o5eUl6N2dwOUh4Zk1VUDM2OC85dUNG?=
 =?utf-8?B?bXlmNTZrUHpEVkhRblVrWDZPVXMyaFoxTnRKaU9FOTkwQ1k2NzM1V1lXVVBh?=
 =?utf-8?B?MDJyU1c0ODZsMUxKN1gyTGVkTjRJa2ZpYjlGaUpsWWhQZDJTeHB0ZVBZMEdO?=
 =?utf-8?B?V1pmYWFoaHIwQ0NSRXNITU90UHJWTmQ5ZXFScFczWjUva1RYY2VxOTFuSXI5?=
 =?utf-8?B?K09raUtrVkszRjB6UXlSU2IvS01JNHY3cjBwaFBJMXkwOUp6UDd2SVdUMnpi?=
 =?utf-8?B?SjBPNFlwUk1MWkpSVGtSK1kwbXlua3owRHFTbE5SR3V6ZlFGZThtclRwcjNY?=
 =?utf-8?B?TCtVcVVOTzRVMWMrVzYvSlphWTJWUUkreGNnVEd1MDdvekwycXhvYWoxTlhj?=
 =?utf-8?B?czgrdjJVRzh0OWc1RHVmMmtLbXhFQ0ZVY203a0g3d0x1MmkvUHMxNVI0UkRK?=
 =?utf-8?B?YUJJVU45amkxeXQ3ckNZdVNVQno2a09wc040VHZMVTZxRlUxOGtRalhhdlMw?=
 =?utf-8?B?VytpWTFuOW5uVEVUWmpxVDBvYzZQenkveW5FUUxyMjVjMnVzTExjU3NqWXIr?=
 =?utf-8?B?Mndkb0RvcXpvRGh4UFJWU1BXMnNJRXhBWjJXeXVSV3hiVm1RRkM4M3E3VmtM?=
 =?utf-8?B?SVdJM0xoR1FEMHpCTjJkNVVFUEM5cCtkWWs0RkFWVWtqQWp4Q0tyZ0VpM1VQ?=
 =?utf-8?B?K3JvaGlOVW5ndDJjU0Q3ZkkxUThMTlRXZXFkaW1sR2Jnc0tRZ1puclQ2WkFp?=
 =?utf-8?B?SGxXZWpsRGNvaStPNkJLbGdJaDBwTXRjNWtDb0kzTWZCVDVlY2FYRmRVdlV3?=
 =?utf-8?B?MElia094VFpTN2FEWVc3OWVnYTJRQnFIOXFCWngzcTJTOHdna3ZncTZLTEUz?=
 =?utf-8?B?YnF1dHNkZ2tKdzNPTloyMEh5YXhyQmdMZU9NVjFoQTE0MUN2ZWN0ZktIVmpv?=
 =?utf-8?B?WTNBRlNtNFVHN05YVkhBdHBod3hhRURJRmV1M0F1UEZDYUU3REJYZENmZkhi?=
 =?utf-8?B?WmFLYWNHR1k3REhHMkoxTnFuYVNXbWdEZitQYWRkTGpXVm8zdStHbVNuN2sx?=
 =?utf-8?B?aGIyNW1ZeU5LNkREQmNOV0d1enFsSHF3MnVCOFNzZE5rWjFWeEdmai9NamMv?=
 =?utf-8?B?ZDBRYWIweFhJbldTVGlQaUJoMXpLeVBTdDAvZEhwU3g4ZXdlKzdZYjJPaDF2?=
 =?utf-8?B?eVZGQlA0NTdBeHhzT1g0cmNZVFZLTnJLRWxkcFJRbDg5bi9wSUxwRTY1VFUy?=
 =?utf-8?B?S01vQW1reHc3VEd3UWpmdExSb1JYbncwbnU3cS9PY3FwU1dKTjdyK0IyWkNw?=
 =?utf-8?B?d2p3Ykh2Q1dlcmpXTVkyWmFnaUw2YnlGdkdTQ1JRQWQxaHN2SmR1ZnprU0Ra?=
 =?utf-8?B?Wnd1VTc5SlVqNU5nQVJkVE1sU2JsMlEwMHpNQjB2ODJ4Vlc2TTZmUG5QQ1hL?=
 =?utf-8?B?L0dEK0JsRlhad1IvdytRcjlBemZGVmZWanhqUnBKWjdLN2NuUDlpYkZzMTlp?=
 =?utf-8?B?TDJqdDNONDVwb0FNd3hjMGdQTEhQSkwxeE8rT1pqVHRzak51N2NtdHdOaXpR?=
 =?utf-8?B?V3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a608d4ee-88c2-46f8-e559-08ddc9d0f07f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:08:58.1188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svB6bLHojukeYvOqyPgR2kFElY2K7v3HWKRW8huOGOlIm+AJIwzRZbO9yK2OfM3oHmvJHx7WmDNV/f9ZVBEb3izXJavHSZ5NzaDZp0NmEPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF409BB8CE8
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753265372; x=1784801372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i65soYgHtu4jcLko7/s+8cYiZCXDX9OjmAVnJEVMsIQ=;
 b=MpOwAYxmh389xGvL4lyJNUlBmiuXHcM9mWWwyoZl+x7rn29pqlqt7e8t
 UP/gre9btXblCrQTJvEDt3HUZHbmF7l6TU9qAcVQJCdC8UzU31OSDrCWS
 /U5qz1Hq//whQbCooK7+LVCWUBl9vJjc4Ez6Ci3wyTE0BXyDrV99G1ddp
 lUd5wVRLQ4+zH3ny4qJk/QvcLqOJkEQh0WdDyQhFD6MUUnAeSXNKHELS9
 aks2ZErCSwxJ21i/HZkDGyLb5jf2rkfkjY2riGSEzVcUQ3E+6pnhhb0ir
 Uq5BPKyaAFLHwjv5u8pnYEllHt3uyX6Sbo1hQoET3Y4HhgqhKDHXh0TWO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MpOwAYxm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] igb: drop unnecessary
 constant casts to u16
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
ZWsgS293YWxza2kNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDIzLCAyMDI1IDEwOjU1IEFNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3
IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjMgMy81XSBpZ2I6IGRyb3AN
Cj4gdW5uZWNlc3NhcnkgY29uc3RhbnQgY2FzdHMgdG8gdTE2DQo+IA0KPiBSZW1vdmUgdW5uZWNl
c3NhcnkgY2FzdHMgb2YgY29uc3RhbnQgdmFsdWVzIHRvIHUxNi4NCj4gQydzIGludGVnZXIgcHJv
bW90aW9uIHJ1bGVzIG1ha2UgdGhlbSBpbnRzIG5vIG1hdHRlciB3aGF0Lg0KPiANCj4gQWRkaXRp
b25hbGx5IHJlcGxhY2UgSUdCX01OR19WTEFOX05PTkUgd2l0aCByZXN1bHRpbmcgdmFsdWUgcmF0
aGVyDQo+IHRoYW4gY2FzdGluZyAtMSB0byB1MTYuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNl
ayBLb3dhbHNraSA8amFjZWtAamFjZWtrLmluZm8+DQo+IFN1Z2dlc3RlZC1ieTogU2ltb24gSG9y
bWFuIDxob3Jtc0BrZXJuZWwub3JnPg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3Yg
PGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9lMTAwMF84MjU3NS5jIHwgNCArKy0tDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9lMTAwMF9pMjEwLmMgIHwgMiArLQ0KPiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdiL2UxMDAwX252bS5jICAgfCA0ICsrLS0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2IuaCAgICAgICAgIHwgMiArLQ0KPiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgICAgfCAzICstLQ0KPiAgNSBmaWxlcyBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwXzgyNTc1LmMNCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfODI1NzUuYw0KPiBpbmRleCA2NGRmYzM2MmQxZGMu
LjQ0YTg1YWQ3NDlhNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2UxMDAwXzgyNTc1LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2UxMDAwXzgyNTc1LmMNCj4gQEAgLTIzNzIsNyArMjM3Miw3IEBAIHN0YXRpYyBzMzINCj4gaWdi
X3ZhbGlkYXRlX252bV9jaGVja3N1bV93aXRoX29mZnNldChzdHJ1Y3QgZTEwMDBfaHcgKmh3LA0K
PiAgCQljaGVja3N1bSArPSBudm1fZGF0YTsNCj4gIAl9DQo+IA0KPiAtCWlmIChjaGVja3N1bSAh
PSAodTE2KSBOVk1fU1VNKSB7DQo+ICsJaWYgKGNoZWNrc3VtICE9IE5WTV9TVU0pIHsNCj4gIAkJ
aHdfZGJnKCJOVk0gQ2hlY2tzdW0gSW52YWxpZFxuIik7DQo+ICAJCXJldF92YWwgPSAtRTEwMDBf
RVJSX05WTTsNCj4gIAkJZ290byBvdXQ7DQo+IEBAIC0yNDA2LDcgKzI0MDYsNyBAQCBzdGF0aWMg
czMyDQo+IGlnYl91cGRhdGVfbnZtX2NoZWNrc3VtX3dpdGhfb2Zmc2V0KHN0cnVjdCBlMTAwMF9o
dyAqaHcsIHUxNiBvZmZzZXQpDQo+ICAJCX0NCj4gIAkJY2hlY2tzdW0gKz0gbnZtX2RhdGE7DQo+
ICAJfQ0KPiAtCWNoZWNrc3VtID0gKHUxNikgTlZNX1NVTSAtIGNoZWNrc3VtOw0KPiArCWNoZWNr
c3VtID0gTlZNX1NVTSAtIGNoZWNrc3VtOw0KPiAgCXJldF92YWwgPSBody0+bnZtLm9wcy53cml0
ZShodywgKE5WTV9DSEVDS1NVTV9SRUcgKyBvZmZzZXQpLCAxLA0KPiAgCQkJCSZjaGVja3N1bSk7
DQo+ICAJaWYgKHJldF92YWwpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvZTEwMDBfaTIxMC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2UxMDAwX2kyMTAuYw0KPiBpbmRleCA1MDNiMjM5ODY4ZTguLjlkYjI5YjIzMWQ2YSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX2kyMTAuYw0KPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfaTIxMC5jDQo+IEBAIC02
MDIsNyArNjAyLDcgQEAgc3RhdGljIHMzMiBpZ2JfdXBkYXRlX252bV9jaGVja3N1bV9pMjEwKHN0
cnVjdA0KPiBlMTAwMF9odyAqaHcpDQo+ICAJCQl9DQo+ICAJCQljaGVja3N1bSArPSBudm1fZGF0
YTsNCj4gIAkJfQ0KPiAtCQljaGVja3N1bSA9ICh1MTYpIE5WTV9TVU0gLSBjaGVja3N1bTsNCj4g
KwkJY2hlY2tzdW0gPSBOVk1fU1VNIC0gY2hlY2tzdW07DQo+ICAJCXJldF92YWwgPSBpZ2Jfd3Jp
dGVfbnZtX3Nyd3IoaHcsIE5WTV9DSEVDS1NVTV9SRUcsIDEsDQo+ICAJCQkJCQkmY2hlY2tzdW0p
Ow0KPiAgCQlpZiAocmV0X3ZhbCkgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdiL2UxMDAwX252bS5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2UxMDAwX252bS5jDQo+IGluZGV4IDJkY2Q2NGQ2ZGVjMy4uYzg2Mzg1MDJjMmJlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEwMDBfbnZtLmMNCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX252bS5jDQo+IEBAIC02
MzYsNyArNjM2LDcgQEAgczMyIGlnYl92YWxpZGF0ZV9udm1fY2hlY2tzdW0oc3RydWN0IGUxMDAw
X2h3ICpodykNCj4gIAkJY2hlY2tzdW0gKz0gbnZtX2RhdGE7DQo+ICAJfQ0KPiANCj4gLQlpZiAo
Y2hlY2tzdW0gIT0gKHUxNikgTlZNX1NVTSkgew0KPiArCWlmIChjaGVja3N1bSAhPSBOVk1fU1VN
KSB7DQo+ICAJCWh3X2RiZygiTlZNIENoZWNrc3VtIEludmFsaWRcbiIpOw0KPiAgCQlyZXRfdmFs
ID0gLUUxMDAwX0VSUl9OVk07DQo+ICAJCWdvdG8gb3V0Ow0KPiBAQCAtNjY4LDcgKzY2OCw3IEBA
IHMzMiBpZ2JfdXBkYXRlX252bV9jaGVja3N1bShzdHJ1Y3QgZTEwMDBfaHcgKmh3KQ0KPiAgCQl9
DQo+ICAJCWNoZWNrc3VtICs9IG52bV9kYXRhOw0KPiAgCX0NCj4gLQljaGVja3N1bSA9ICh1MTYp
IE5WTV9TVU0gLSBjaGVja3N1bTsNCj4gKwljaGVja3N1bSA9IE5WTV9TVU0gLSBjaGVja3N1bTsN
Cj4gIAlyZXRfdmFsID0gaHctPm52bS5vcHMud3JpdGUoaHcsIE5WTV9DSEVDS1NVTV9SRUcsIDEs
DQo+ICZjaGVja3N1bSk7DQo+ICAJaWYgKHJldF92YWwpDQo+ICAJCWh3X2RiZygiTlZNIFdyaXRl
IEVycm9yIHdoaWxlIHVwZGF0aW5nIGNoZWNrc3VtLlxuIik7DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiLmgNCj4gaW5kZXggYzNmNGY3Y2QyNjRlLi4wZmZmMWRmODFiN2IgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2IuaA0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiLmgNCj4gQEAgLTIxNyw3ICsyMTcs
NyBAQCBzdGF0aWMgaW5saW5lIGludCBpZ2Jfc2tiX3BhZCh2b2lkKQ0KPiAgI2RlZmluZSBJR0Jf
TUFTVEVSX1NMQVZFCWUxMDAwX21zX2h3X2RlZmF1bHQNCj4gICNlbmRpZg0KPiANCj4gLSNkZWZp
bmUgSUdCX01OR19WTEFOX05PTkUJLTENCj4gKyNkZWZpbmUgSUdCX01OR19WTEFOX05PTkUJMHhG
RkZGDQo+IA0KPiAgZW51bSBpZ2JfdHhfZmxhZ3Mgew0KPiAgCS8qIGNtZF90eXBlIGZsYWdzICov
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4u
Yw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+IGluZGV4
IGE5YTdhOTRhZTYxZS4uNWU2M2Q3ZjZhNTY4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiBAQCAtMTUzMSw4ICsxNTMxLDcgQEAgc3RhdGljIHZv
aWQgaWdiX3VwZGF0ZV9tbmdfdmxhbihzdHJ1Y3QNCj4gaWdiX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+
ICAJCWFkYXB0ZXItPm1uZ192bGFuX2lkID0gSUdCX01OR19WTEFOX05PTkU7DQo+ICAJfQ0KPiAN
Cj4gLQlpZiAoKG9sZF92aWQgIT0gKHUxNilJR0JfTU5HX1ZMQU5fTk9ORSkgJiYNCj4gLQkgICAg
KHZpZCAhPSBvbGRfdmlkKSAmJg0KPiArCWlmIChvbGRfdmlkICE9IElHQl9NTkdfVkxBTl9OT05F
ICYmIHZpZCAhPSBvbGRfdmlkICYmDQo+ICAJICAgICF0ZXN0X2JpdChvbGRfdmlkLCBhZGFwdGVy
LT5hY3RpdmVfdmxhbnMpKSB7DQo+ICAJCS8qIHJlbW92ZSBWSUQgZnJvbSBmaWx0ZXIgdGFibGUg
Ki8NCj4gIAkJaWdiX3ZmdGFfc2V0KGh3LCB2aWQsIHBmX2lkLCBmYWxzZSwgdHJ1ZSk7DQo+IC0t
DQo+IDIuNDcuMg0KDQo=

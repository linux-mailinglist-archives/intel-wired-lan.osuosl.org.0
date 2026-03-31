Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKiyAqbEy2mnLgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 14:57:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D46369D17
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 14:57:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5D778267C;
	Tue, 31 Mar 2026 12:57:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evC2YIqXw2an; Tue, 31 Mar 2026 12:57:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68B8F82684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774961825;
	bh=GnGGiBU5DMLDAY/r9W34ldvEGhIZHnSx3/YbvjBumVg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BsahTCErWR5p87uuCVYv4evXnIPc0cap8z+rGkAxpxn6hXSshZdsI9SJgQU4g58OY
	 o8qCdWznwTXOCiS7NAGiC0PwKtpvhNghZVKgP2gxTKVcH7f5u/WpvIrkP5h+TLpxTY
	 ZeJITka7fu6YFbJOUaZKC4RkRgSkO4CSBvCW/T9ED2aGvVbLrcVrokq3uJrUF0Wyhr
	 nZ+RKWQCGYQpCIgKHVUvmR0upylGK5z4UV0PVqLiKaqtwbPW7Tr8f3uAFd1WRWzDAS
	 BXzp3PwKWvc2JBhbvn4zq7lYcJuufF+0u2gXdYipLu1g2SYg6jqvbiZOwnl9Pyb/Ly
	 7gYb/5kwhpoYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68B8F82684;
	Tue, 31 Mar 2026 12:57:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A424030E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 12:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9631A404A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 12:57:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u6LxWVI1YAsM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 12:57:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D23C400CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D23C400CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D23C400CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 12:57:02 +0000 (UTC)
X-CSE-ConnectionGUID: iho7SxdHR7yniqRu5w3LSg==
X-CSE-MsgGUID: EP9jFzTdQKiThSQc8qiMRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="93361380"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="93361380"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:57:02 -0700
X-CSE-ConnectionGUID: RKnhm/7yTSuN0KP4D7xleA==
X-CSE-MsgGUID: Wo73iEv3T72msTc3BALa6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226230304"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:57:02 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:57:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 05:57:01 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.61) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:57:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i3+yFm728EtAb1nPfV9yQ+/53wH16kX4SYzTvhsUvziEfzZqK8uOzYrjWdimKG7/3dgo924W/egt5wcWvY+/loD0OG6QFj3NRAIsR9C0vBf48QOqgdvRXhyR5ZGA0hhrBAeMnHFAFOKEcBeAC/QYEQcgb6mgBrD0WvsBrHtsXYTZH8XSCY+n5QzWbNBzYbPA/RTvbEpu9IU7iPxEOX7p12umDwFywbYZI+grdycryzZBDfhC6CAEzughVtbqXpRgAbzEw96d08TyRcoS+3XgFmnuOFMwO53oAzMgUcLxTSOoRPViVrrUnAPA/7pMhBY0aevVdo3HnDKZSuvkgHlFJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GnGGiBU5DMLDAY/r9W34ldvEGhIZHnSx3/YbvjBumVg=;
 b=gHkAtiQ6cIFyRcOo713QyHeqC4xFV0yKTZlUvRHw0CNDzSbUfPTI6qghrmafrNwJ8pjC/2juvpFRU52v7Nw4rK5310vr79IsajryD+ZNAuUCuoeoasAq+udSJolWEFXN9pdV9IBbLMEk7ImtHrwQc+exYpbWNaLieAw5dLmmzCFnu1IRwKHY0Djf2/6XfOItdHOecaEafGMNsFL+CV6GgEtvgK0M1BMa3wip7o/XSZi2qq+sylE4Z7NekTW+BfAQFMmx9XMGwm2eSl27jI5Qkjhhhv6ULr3dtRn/AqG0CuKid4E35BkHYKk5WcYkOXIcnUplET38H1LSn6Xlz3645w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by SJ0PR11MB4976.namprd11.prod.outlook.com (2603:10b6:a03:2d7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 12:56:58 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 12:56:58 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
Thread-Index: AQHct5G9kmxWkHPTf0ywwXWWJfRkabW/8uOAgAi4nSA=
Date: Tue, 31 Mar 2026 12:56:57 +0000
Message-ID: <PH0PR11MB4904757F3E979FAD9ED44EE29453A@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260319111659.551039-1-przemyslaw.korba@intel.com>
 <dbe4af5f-b8c6-4abe-bd55-8f970e18add9@intel.com>
In-Reply-To: <dbe4af5f-b8c6-4abe-bd55-8f970e18add9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|SJ0PR11MB4976:EE_
x-ms-office365-filtering-correlation-id: d9daea7c-84b1-43d7-c8aa-08de8f24fe34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: gq6M2it34dLlI5b5KKSLRlYK9os5bgCCsSS7vU6t9PsQ2cakXvaaJLeuLi4ESDj8mIUMlVKxWze9/U/FLisTbSX+lZLh5KIKFXHDuDeqyZ+ldQh68x1jWNfDyd7E1n6VFWx2HoUHQOBhAgVqaUr/XxKsCnJiSpg8SC/I7oP10nazUoj5nuevwmtIvopVm2BuodV3ISdjJuMkUNv2fkHF+B5fK1zb/20aFex/wCMOwsHjd4axGS1KKTdT2tvCZx02XB5KqJiZZKfZyFBz1pxDkNfyITR9PSSg8Z/fD4viWwxSYZSry8mrgZbT0KutN5hLSbzZwubttYtWicgVa9bqYSndNKpvNLb4nUn6Z5E3hxzHlf0mk+sBuqyZKopxL/XV8n8yRPyp4UNmmJt4F8qNKNu7qOacS0IdZVVGDHjoXpxG0VLpAwGcPURWpY8xHQvogPGmOd1pMEMlAKyQbQByMAqaZu9BckRTAD1SOCQfARbkQuPb41lyJD68Kd3j9Nf6oeVRbH7HNHf0RP1ulTo+/m3M09NQZDaiCMDjpTLbrKcGhLkHRdBgftZ/QzAho2bPrr/msX3NfUy9tsfUIrPwHq6nzCB3KX6mdug6EiS7Kd/FZ8DQdHEIs59I+Ev7C0wmxVwIQsTz420zrHXgokJyOWZm5BuXcbDhN+FoIqI44WXT2L04MyMc9V5O0E1+s1tbTaFsmSn5Rok1GG88Fdah2s1WAk0pWPhRjsjeaQNMbKpZx0bm6Zg8MmGnK48NYgNgdjG1otI6p8G34clyCPUWQdEp24QrFvRTPWhmv+eemHa5i4kafoV8pS3QqHYecSKJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnF2Vis5cVFDQllreFRGdEorcjNmcW1tejMybFc4OVJJem9rNGlMRHJ4d0R1?=
 =?utf-8?B?RW9oT1ExV09pOWNoZjZ0WW5QQ2VqUGVGaVB3UDV6MnZYNDY1d3UzVUJqSDZz?=
 =?utf-8?B?Nm1FV3BJVEhIczlycksyb0ZPNVVnYXEySkhLQzlTdGNZZVhEaDlVUnl4WmNz?=
 =?utf-8?B?cnlTc3RKNkVtdlJWV09aWTVmWTBVL2VYWXVnY1lhTFc5eHdxd3g2TTlyUzh5?=
 =?utf-8?B?d0tmMXVTNUpzbTZQRDl0UERITERJZExLb1RyMTYySWlBZW1HeEdDL1ErTEh5?=
 =?utf-8?B?eDNmYm9DUmdNOGxVWTFXT3A4Q1l5aFAza2pyUEZMcnpqdlRzVTZEZk1jRUZG?=
 =?utf-8?B?TEVYMmNycnE4UHA1WGhHb1NQY2k2TVFwTmg3Snhjd0twTkZ6T2ozc3hHZEpL?=
 =?utf-8?B?TG8zODBPdzA2SGhzdER5MXJGUFpxODdGWWIxRnBEVjhxY1A5b3F4cTAzaVVq?=
 =?utf-8?B?cVNsb1RZalkrU3lVcFY4SU53bUpGbmJXMzNiU0RiWHJwUlNIc1EvVk15Yldv?=
 =?utf-8?B?eWtOaGlSdU95S2E1b3p6SGJzZGZMQTArVW5xV0JtZFVaczRrTmVxbStJSWZ6?=
 =?utf-8?B?NlZMSjE4Z2ZOQm5RSEw0KzNnYW1vLytqRkxSeDVkMk1EUkh6SGo5czFDRzZB?=
 =?utf-8?B?c2k4bzRhMDdxdGU0d3FjUTU5bERsRzAvbGFXcmE5ODcxUW40S3J1d2VwSUs3?=
 =?utf-8?B?ejJLeTZ6VzlBTVAyNXRLenNnNFczSlRvb2duS3kwUUk2UEYycTVTUnpKOFZm?=
 =?utf-8?B?Q05wbDFWU3dzcnA2bmRJNWs2cm9uZVNFdlQ1WXlqeXFwblpraFpPR0FlK1BO?=
 =?utf-8?B?Q1dUejRkQTQ1d0RKeEM4azRUY2Qxb2RCUlo4VzlqdGFNMFZTWG1BcjBWTEVE?=
 =?utf-8?B?bU1sSnQ2aHViZTk5ZEE0S2NqbldaL2xtTUt0V0FvVjM0VnJIWTIrYW1MRkFS?=
 =?utf-8?B?MWZwUWV0UTRaelplY2VJMys5UkN5a2E3OE5WOGlURG5xQUlzakRYS3R5MlVK?=
 =?utf-8?B?TmdMbWtjS1ExREFjcFBRUDVhRUg5dWROUVowaklHWGFzYUsvRFdrSXRpd2hF?=
 =?utf-8?B?Wm1iYU1iTlE1M3BpangwVlE3VnlET3Y1czQxZW1uMEFOMFc4VEloSUdVZUd1?=
 =?utf-8?B?SFl1ZmVSUm8xc2FoN2UxMXhINzB3eHZ3ZkFCZ3hDazlXM2ltbUNnS2FHTWVq?=
 =?utf-8?B?Z1lod284NG0waDFDcnNuRXltSlF2SUVaNVdZb1EwUzBremQwZ1BzWVI0THpi?=
 =?utf-8?B?VUk1UW50dk1aazBZOHhCYmlWMFhBQkFXelFYSi9kSEsvdDZtVi9vQkZwS1lN?=
 =?utf-8?B?Qk5YRG9jS1piczNpRy83aFg4bTZUSnFZa25kd0tnbUo5TXhGL2VSd2ZLQmdK?=
 =?utf-8?B?dHRjUGJOZ2kwL1FIaFJPcWtjMlI5SEdiT3c2SkUwZWpQUVZHQmY0cUFJTG5K?=
 =?utf-8?B?d3ZZZWo0QWdOdk04TmttVmJIWDcxTnBHRi9VV3BhblVEUlJscURNblZvVzhX?=
 =?utf-8?B?UXFLazRLSG5zSjhNQW50K0pPWG9EaDdBZVdrK3lvM0JjUFE4TnE2dUxVRE8r?=
 =?utf-8?B?VDZ5M1dWTU9YQm5JSUw1cVQvMC9vSVpHUTUrcVB0eVhwVGIyOTR6TUVZc29a?=
 =?utf-8?B?WkZGM0ROY1VpSTFiUG5UOWo1N2FNaHk1NUlKR1lma1pBQTFYL1BSNWF3Nmcw?=
 =?utf-8?B?MmxlS09nbFJST3RzdmxvN2hDam5xT2xhK1hCNUdINWMxN0lBVCtPWFRyb1pK?=
 =?utf-8?B?UW14ckowWWZQN1F6bSswMEFOVE9taW15MnZZRDdwNWpTQ3V0RFltajhaaFA5?=
 =?utf-8?B?WFlkTTdXUklEVmNhRGpwZm1CTFRhS2ZtOExxSkdna3dwajNBUE9wbWt4Skc5?=
 =?utf-8?B?akk5OWJ2YmEvRnRTLy9FVlJnbDBDZmpCaFhBRDJjQ2E5eXB6Uzg3TURaS1Zz?=
 =?utf-8?B?YXhoWXJvQ0JaQ1k3MnlHd1BxajFJMDVmcjhnVkIrcEJTK3RzWG92cmg3OFlY?=
 =?utf-8?B?R250WU1FYUZRL1Nud2hvVGVFb2wwQjh5czBVR2JuNExyRklreXg4cnVlaTd4?=
 =?utf-8?B?R3g2VHpXYks3RVVsZzRiZHQ0MHZVUFlCWFNXcjNhS0Jmd2tteXNaVmcxVmt2?=
 =?utf-8?B?dlR5YnFpMWxIQTVVeUZNVG45dlo1UE9obllGSHFsNGVQdUVlN1poZEZHSEE1?=
 =?utf-8?B?S1dZVkJYYTloZGorK3VXQ3E0eW5ua2dZQUsrcWl3K2ZhMmRiS092TXFrQlpS?=
 =?utf-8?B?T0ZtUWZaaFQwZ0ZkYmtzRHNramd2Z29JRlV0b3ArVnJYOUlSd0lneVVISG9B?=
 =?utf-8?B?MDh5cTJlSVpxNG9nYWZFb2czd2VvNzF4N3NLWXVnRk9JNllTdW92dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Wey3So66v6jnnkf1cR7zVZ3nQObMdFq1PZxfhQSSfRyKy+8acJVndM0qz0yBxSuAk2ZF85oZ6KIx7w/Gwbjv2IDEb9m4IuoxFq2U/tmegIdaaDy3Mshj7ITl8WfMkf9hKR/Muc/DY2ukasMrJqiau76t4bmqIgwgAA77mRkGJWNm9hvH6UPkqop/bVgz1gM/uIMJ54XxO5GTFewaA3yJu6gAjplSL8UEADIzHNd7mBY1Kk2i+DslJTjJvvp8tKLTL3PmQ8ABX5nf1iEpzFVyFfx6DN64TLkhfuW4qA85QaOaxFfoS4b3rBBkHAyOBANM6b/f/zAURiIAYvmwpyGF6g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9daea7c-84b1-43d7-c8aa-08de8f24fe34
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 12:56:57.9226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kd/CW4foRiW0FUBQm0DAqqyL37FoYJbJJDlDg07jcywMLQKXPy81dIkcdH+P13+gQ5tIBm+ePn4x06wwY1vFwzhUCr0W8hZ/tHakedM8JQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4976
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774961822; x=1806497822;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GnGGiBU5DMLDAY/r9W34ldvEGhIZHnSx3/YbvjBumVg=;
 b=eEcJILfH079KT4Cj1zjkMUEAvcqwaR7AIZ4NVkUC5smtJGDjdLcZsnUn
 THMZNvT2xJpHqi5QnliqejWIvnS9TOs30d6WX/6E/YI62bV1FoGvJ5DlK
 lAOBQpPNyEwfqRDPJzDBOC3pgi0/g4GrbidVlNl8bu3aoJs6HP8evdR2G
 okdByjwD3XtqMVmL9DF5qR8ojLEuaTajH1Sh40NjskuLWyBedKlVzOI4i
 ywh+chLQg+flf4Ea7ifSHLmCuQR8d415xNOXZEDKJys06/bOA90VeKC4F
 hx2THunuXIXvQlgdT3R858xvRWE+UxUZ4GfEsICVEtfw4GCk9Xiftc5Mj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eEcJILfH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,PH0PR11MB4904.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: D4D46369D17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLZWxsZXIsIEphY29iIEUgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNoIDI2LCAyMDI2
IDEyOjQyIEFNDQo+IFRvOiBLb3JiYSwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5rb3JiYUBpbnRl
bC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYyXSBpY2U6
IGZpeCBwb3N0ZWQgd3JpdGUgc3VwcG9ydCBmb3Igc2lkZWJhbmQgcXVldWUgb3BlcmF0aW9ucw0K
PiANCj4gT24gMy8xOS8yMDI2IDQ6MTMgQU0sIFByemVteXNsYXcgS29yYmEgd3JvdGU6DQo+ID4g
T24gRTgzMCwgUFRQIHRpbWUgYWRqdXN0bWVudCBjb21tYW5kcyBzZW50IHZpYQ0KPiA+IFNCUSBk
b24ndCBnZW5lcmF0ZSBjb21wbGV0aW9uIHJlc3BvbnNlcywgY2F1c2luZyB0aGUgZHJpdmVyIHRv
DQo+ID4gdGltZW91dCB3YWl0aW5nIGFuZCByZXR1cm4gLUVJTywgd2hlbiB0cnlpbmc6DQo+ID4N
Cj4gIEhtLiBJcyB0aGlzIHJlYWxseSBmb3IgRTgzMD8gSSBkaWRuJ3QgcmVhbGl6ZSB0aGF0IGRl
dmljZSBhY3R1YWxseQ0KPiBzZW5kcyBTQlEgY29tbWFuZHMgZm9yIFBUUD8NCj4gDQo+IEFjY29y
ZGluZyB0byBpY2VfcHRwX2Fkal9jbG9jayBmb3IgRTgzMCwgaXQgc2F5cyAiRTgzMCBzeW5jIFBI
WXMNCj4gYXV0b21hdGljYWxseSBhZnRlciBzZXR0aW5nIEdMVFNZTl9TSEFESiIuDQo+IA0KPiBE
aWQgeW91IG1lYW4gRTgyNS1DIGhlcmU/IENhbiB5b3UgY29uZmlybSB0aGUgZGV2aWNlIHR5cGUg
YWZmZWN0ZWQ/IE9yDQo+IGFtIEkgbWlzc2luZyBzb21ldGhpbmc/DQo+IA0KPiA+IHBoY19jdGwg
ZXRoOCBnZXQgYWRqIDIgZ2V0DQo+ID4gZG1lc2c6IGljZSAwMDAwOjFhOjAwLjA6IFBUUCBmYWls
ZWQgdG8gYWRqdXN0IHRpbWUsIGVyciAtNQ0KPiA+DQo+ID4gQWRkIHN1cHBvcnQgZm9yIHBvc3Rl
ZCBtb2RlIG5vdCB0byB3YWl0IGZvciBjb21wbGV0aW9uIHJlc3BvbnNlLg0KPiA+DQo+ID4gRml4
ZXM6IDhmNWVlM2M0NzdhOCAoImljZTogYWRkIHN1cHBvcnQgZm9yIHNpZGViYW5kIG1lc3NhZ2Vz
IikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEtvcmJhIDxwcnplbXlzbGF3LmtvcmJh
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiB2MjoNCj4gPiAtIGNoYW5nZSAicG9zdHBvbmUiIHRv
ICJwb3N0ZWQiDQo+ID4gLSBpbml0IHN0cnVjdCB3aXRoIHt9IGluc3RlYWQgb2YgezB9DQo+ID4g
djE6DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzIwMjYwMzEw
MTEwNzAwLjM0NTkwNC0xLXByemVteXNsYXcua29yYmFAaW50ZWwuY29tLw0KPiA+DQo+ID4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgICB8IDcgKysrKysrLQ0K
PiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMgfCA0ICsr
KysNCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oIHwg
MSArDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfY29tbW9uLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5j
DQo+ID4gaW5kZXggODg2NjkwMmVmYjkxLi5jODljNmNhMTI4MWIgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4gPiBAQCAtMTc2NSw2
ICsxNzY1LDcgQEAgaW50IGljZV9zYnFfcndfcmVnKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3Qg
aWNlX3NicV9tc2dfaW5wdXQgKmluLCB1MTYgZmxhZ3MpDQo+ID4gIHsNCj4gDQo+IFRoaXMgYWZm
ZWN0cyB0aGUgaWNlX3NicV9yd19yZWcgZnVuY3Rpb24gd2hpY2ggaXMgdXNlZCBieSBzZXZlcmFs
DQo+IHZhcmlhbnRzIGluY2x1ZGluZyB0aGUgRTgyMiBkZXZpY2VzLCBFODI1LUMgd2l0aCBFVEg1
NkcsIGFuZCBldmVuIEU4MTANCj4gZGV2aWNlcy4NCj4gDQo+IERvIGFsbCB0aGVzZSBkZXZpY2Vz
IG5vdCBwcm92aWRlIGNvbXBsZXRpb24/IE9yIGRvIHdlIHNpbXBseSBub3QgY2FyZQ0KPiBhYm91
dCB3YWl0aW5nPw0KPiANCj4gSSBkb24ndCBzZWUgYSBzaW5nbGUgY2FsbCB0byBpY2Vfc2JxX3J3
X3JlZyBmb3IgRTgzMCwgc28gSSBzdXNwZWN0IHRoaXMNCj4gaXMgY29ycmVjdCBidXQgZm9yIGEg
ZGlmZmVyZW50IGRldmljZSwgYW5kIHRoZSBjb21taXQgbWVzc2FnZSBpcyBqdXN0IGENCj4gdHlw
bz8NCg0KSGkgSmFrZSwNClRoYW5rcyBmb3IgcmV2aWV3ISBHcnplZ29yeidzIHBhdGNoIGhlIG1l
bnRpb25lZCBpbmRlZWQgbWFrZXMgaXQgc28gRTgzMCB1c2VzIHRoaXMgZnVuY3Rpb25hbGl0eS4N
CllvdSBhcmUgcmlnaHQgdGhlcmUgYXJlIG90aGVyIGRldmljZXMgd2UgbmVlZCB0byBjb25zaWRl
ci4gSSd2ZSBmb3VuZCBtb3JlIGNvbXBsZXRlIEthcm9sJ3MgcGF0Y2ggdGhhdCBkb2VzIGV4YWN0
bHkgdGhhdCwgYnV0IGdvdCBzdHVjayBvbiByZXZpZXdzOg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvaW50ZWwtd2lyZWQtbGFuLzIwMjUwNTIwMTEwODIzLjE5Mzc5ODEtNy1rYXJvbC5rb2xhY2lu
c2tpQGludGVsLmNvbS8NCkkgYWRkcmVzc2VkIHBhc3QgcmV2aWV3cywgYW5kIHdpbGwgdHJ5IHRv
IG1lcmdlIHRoaXMgcGF0Y2gsIEkgc2VudCB1cGRhdGVkIHZlcnNpb24gdG8gb3VyIGludGVybmFs
IG1haWxpbmcgbGlzdCBmb3IgcmV2aWV3IDogKQ0KDQo+IA0KPiA+ICAJc3RydWN0IGljZV9zYnFf
Y21kX2Rlc2MgZGVzYyA9IHswfTsNCj4gPiAgCXN0cnVjdCBpY2Vfc2JxX21zZ19yZXEgbXNnID0g
ezB9Ow0KPiA+ICsJc3RydWN0IGljZV9zcV9jZCBjZCA9IHt9Ow0KPiA+ICAJdTE2IG1zZ19sZW47
DQo+ID4gIAlpbnQgc3RhdHVzOw0KPiA+DQo+ID4gQEAgLTE3ODUsMTAgKzE3ODYsMTQgQEAgaW50
IGljZV9zYnFfcndfcmVnKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNlX3NicV9tc2dfaW5w
dXQgKmluLCB1MTYgZmxhZ3MpDQo+ID4gIAkJICovDQo+ID4gIAkJbXNnX2xlbiAtPSBzaXplb2Yo
bXNnLmRhdGEpOw0KPiA+DQo+ID4gKwlpZiAoaW4tPm9wY29kZSA9PSBpY2Vfc2JxX21zZ193cikN
Cj4gPiArCQljZC5wb3N0ZWQgPSAxOw0KPiA+ICsNCj4gPiAgCWRlc2MuZmxhZ3MgPSBjcHVfdG9f
bGUxNihmbGFncyk7DQo+ID4gIAlkZXNjLm9wY29kZSA9IGNwdV90b19sZTE2KGljZV9zYnFfb3Bj
X25laWdoX2Rldl9yZXEpOw0KPiA+ICAJZGVzYy5wYXJhbTAuY21kX2xlbiA9IGNwdV90b19sZTE2
KG1zZ19sZW4pOw0KPiA+IC0Jc3RhdHVzID0gaWNlX3NicV9zZW5kX2NtZChodywgJmRlc2MsICZt
c2csIG1zZ19sZW4sIE5VTEwpOw0KPiA+ICsJc3RhdHVzID0gaWNlX3NicV9zZW5kX2NtZChodywg
JmRlc2MsICZtc2csIG1zZ19sZW4sICZjZCk7DQo+ID4gKw0KPiA+ICAJaWYgKCFzdGF0dXMgJiYg
IWluLT5vcGNvZGUpDQo+ID4gIAkJaW4tPmRhdGEgPSBsZTMyX3RvX2NwdQ0KPiA+ICAJCQkoKChz
dHJ1Y3QgaWNlX3NicV9tc2dfY21wbCAqKSZtc2cpLT5kYXRhKTsNCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jDQo+ID4gaW5kZXggZGNiODM3Y2Fk
ZDE4Li5hNjAwOGRjNzdmYTQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb250cm9scS5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb250cm9scS5jDQo+ID4gQEAgLTEwODYsNiArMTA4NiwxMCBAQCBpY2Vf
c3Ffc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfY3RsX3FfaW5mbyAqY3Es
DQo+ID4gIAl3cjMyKGh3LCBjcS0+c3EudGFpbCwgY3EtPnNxLm5leHRfdG9fdXNlKTsNCj4gPiAg
CWljZV9mbHVzaChodyk7DQo+ID4NCj4gPiArCS8qIElmIHRoZSBtZXNzYWdlIGlzIHBvc3RlZCwg
ZG9uJ3Qgd2FpdCBmb3IgY29tcGxldGlvbi4gKi8NCj4gPiArCWlmIChjZCAmJiBjZC0+cG9zdGVk
KQ0KPiA+ICsJCWdvdG8gc3Ffc2VuZF9jb21tYW5kX2Vycm9yOw0KPiA+ICsNCj4gPiAgCS8qIFdh
aXQgZm9yIHRoZSBjb21tYW5kIHRvIGNvbXBsZXRlLiBJZiBpdCBmaW5pc2hlcyB3aXRoaW4gdGhl
DQo+ID4gIAkgKiB0aW1lb3V0LCBjb3B5IHRoZSBkZXNjcmlwdG9yIGJhY2sgdG8gdGVtcC4NCj4g
PiAgCSAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2NvbnRyb2xxLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRy
b2xxLmgNCj4gPiBpbmRleCA3ODgwNDBkZDY2MmUuLmM1MGQ2ZmNiYWNiYSAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmgNCj4gPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmgNCj4gPiBA
QCAtNzcsNiArNzcsNyBAQCBzdHJ1Y3QgaWNlX2N0bF9xX3Jpbmcgew0KPiA+ICAvKiBzcSB0cmFu
c2FjdGlvbiBkZXRhaWxzICovDQo+ID4gIHN0cnVjdCBpY2Vfc3FfY2Qgew0KPiA+ICAJc3RydWN0
IGxpYmllX2FxX2Rlc2MgKndiX2Rlc2M7DQo+ID4gKwl1OCBwb3N0ZWQgOiAxOw0KPiA+ICB9Ow0K
PiA+DQo+ID4gIC8qIHJxIGV2ZW50IGluZm9ybWF0aW9uICovDQo+ID4NCj4gPiBiYXNlLWNvbW1p
dDogYWNkMmFiYzUyZGVhOTFjM2JjM2QxYjZkZDhhOTJiOTYzMWQ0OGJiZg0KDQo=

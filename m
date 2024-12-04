Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0A89E3641
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 10:10:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F5A341356;
	Wed,  4 Dec 2024 09:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9MSDgfBp_RwM; Wed,  4 Dec 2024 09:10:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A5F24133F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733303422;
	bh=dloUIdQuSTjiIql4OAK2NNBOyPXXQFslHXnw6/mSjhI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sqFPWSSwgTPSqrORr8t5zRWpluDySZd2zAO0SrEJZVL/r05Vj7Bz6gCjEAzMO1UAB
	 dcJ+LlWVJDSKwq1/fjeWBHQT2oIYsAVMd1KnjEphHBMQxfhLOhk0N6QUfbADYB7DrI
	 OtyewJP384q0k2Riw3qmfuQCtVHjAqXAWqgKeLaHvF7f+GtErI+/O59RFzI1rl+wZC
	 EK66jGx6+fcwjmVfkBtxuo2tc34rggBJu6KhjqpjBIM3EFpABJdpQqK9yhFRNGxOkU
	 e+kMYwqLUEvi/v1zJQbQM46j5xpW4DlmY7IUCCZWYDp1fvgMPDdeYMcEC7QEH35FKt
	 DSCLlPpWv8wsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A5F24133F;
	Wed,  4 Dec 2024 09:10:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B02C71DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 09:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D0D66070B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 09:10:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7kCA9UpponUj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 09:10:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8149060722
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8149060722
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8149060722
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 09:10:19 +0000 (UTC)
X-CSE-ConnectionGUID: 9oFwkm4JTSyWDLNRarl3/w==
X-CSE-MsgGUID: f/70OHzOTaWCYfarq3An5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33617849"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33617849"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:10:16 -0800
X-CSE-ConnectionGUID: sXFxEOdzQyGOn5EVFR9xUg==
X-CSE-MsgGUID: HbWXb+/jQKqLthmWf2RISg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94535650"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 01:10:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 01:10:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 01:10:08 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 01:10:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kdFkqIZEgVcQPeH+gduy+DIb0+V5hamb2gDYeVzC2Mzthy6KpXmSiuSLnoCWLjA7IVc64mJ+9Kl+FmLfZjKRcn3OH9RMQwS2OuD2ekgu4Np4mxBoPSQjdh4jye7B2lC679DVnag4/hp34BWkSsxmTEdgnWfsCUT+nPucNNUfIdI1TFzeDd80XVVSUNFZO5im1OpKLa4U3/mcLeVV24M2HtOFxvYDYYWLIkOv3QZYv321yciB6Ea6JyQq5Cjk06ZBxebqOE3s6rXlit3qtCD6Uq+x5xSQQFIHC/9DY3K+U1LWYSAtihUruSTE236snHXpsS6C/IKV4zERA1/zVujQDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dloUIdQuSTjiIql4OAK2NNBOyPXXQFslHXnw6/mSjhI=;
 b=vJmeMovboQyzdkAvZd2kbElL6wGXtlJ2DdMGPwqTyhBVpPV4HPojDIGeFh4s0+yKE6Ob1N73/WLI170z5jBsyWJirAr7V9YnBxSbd0IUqgP1iz0VZRDfTVsoYFOwBE8JEd2s+OTf2q6elPGqIS561uuihy0zxS4eVfP7kH0w/etQ2WjYGLyjDnrADqxWF6OTGeCdXfb9ogJSh/9/ZthLdjKGLyLnREuIZREysGi2Lt0oMEvHdMGeRa7nB5XvKe1vTanTaPy1nd3l9jzPuZNQEth9XrsPAZQ+InRrhyRTrUI/in4FRsZo6PmhFhjPSzw2dec/7LWO5MRf+UwpzbiDFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB7204.namprd11.prod.outlook.com (2603:10b6:610:146::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Wed, 4 Dec
 2024 09:10:01 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 09:10:00 +0000
Message-ID: <94ab7f28-c74b-49c5-920c-a3a881de0b86@intel.com>
Date: Wed, 4 Dec 2024 10:09:54 +0100
User-Agent: Mozilla Thunderbird
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Rosen Penev <rosenp@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20241031211413.2219686-1-rosenp@gmail.com>
 <d97614cb-1798-46d2-a3b8-88fa100d9765@intel.com>
Content-Language: en-US
In-Reply-To: <d97614cb-1798-46d2-a3b8-88fa100d9765@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR06CA0145.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::38) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB7204:EE_
X-MS-Office365-Filtering-Correlation-Id: c63c7333-98a2-48a7-1aaf-08dd14436e94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3RJWVRxZ1ZEbE1RWWhpTUxhdzJKT1czMnBYa1hBbkl6MXZYUFN1OGJPbjlR?=
 =?utf-8?B?ZTBoM25HdlJJTWp2SlZWaHkycFlLQjl5MWlJQUFPYkxBbTdqQ01SbmNzVml4?=
 =?utf-8?B?MWJobFVWdzltZmdOMmZvT0ZpMllRNHdhbzlaWnMxajc5MzZSVVZ3djFQMW1W?=
 =?utf-8?B?M2UydmJLdFFVcStFMU1zOWI5NVc2SzIwRjV5V0h0aktodXlxTmwydjlNa29r?=
 =?utf-8?B?TG1rUnk4emhpMmJUbktOejRqWGFLUkthc2VlSmF3eThqOHVDSVJ5d1psYm5a?=
 =?utf-8?B?U2lTNXRvS3BPdDFWazJST0ZMV3VYSUdhV3ZTUHZaZ1YwMk5SM0QwNllSb3Mx?=
 =?utf-8?B?RExVSDFCMGhVNnVxdk1WMjltMW1jNVlnclFLWHZ3Z1BqdTB6S3V4WkhqTlVa?=
 =?utf-8?B?S3l5UmZNbGlpYURDaDZaS203NlZLcVNOUGtRcDgxVGVTM1NSQkhZMEdOMGc5?=
 =?utf-8?B?Q1dxN0IyOEIreklLTnMwRUNWazVab3Z4WGNVRjIvZ1FRTC9kT2pxVXRBYURx?=
 =?utf-8?B?KzQxN1B2YnM2UFRlVVVzVXNENDlPQVhUeWZFcWt2UVlKTWsvRGNka0l4eFpU?=
 =?utf-8?B?bUFuOFpGMEloYWYvZ1ZyZ0hpUXFCZUNlNGN2SWJ4SkFDdk5PblZOcHkyNTlD?=
 =?utf-8?B?YVJOQlJTcFovbXJ1NU9pdjFYWnVUamhFQ0dVcEgxUTJ5azZNamFLWUxoL0dY?=
 =?utf-8?B?WlZtR2pnbmRPTkJ0b1BKZVFiVjZ3Q29LcE82amJiS2h4Ri9qYWhVbnlDeDZu?=
 =?utf-8?B?eVFqWnBhRHVxc3ArdFBLcC9sU0xEbFlMNHpMLzh0VVZrTE5BUkI4bmNrNloz?=
 =?utf-8?B?SWFjN2JlVnZBUzhDVEZDdXRZdjdoSU5LTkNzd3BrVzhKb1FOTGRZSG85cU1E?=
 =?utf-8?B?Qno0cXhQbEJaN1QvVUtWS0ZEdTRoYWhsV1JuRmFyNzVlMWVnQkVvRmF0RnNy?=
 =?utf-8?B?Q1JKSXFNK0NDS1JDSS9ZQzlZZXpSVWE0Y0EySCs1WnZha2VOekN3UUpreFdO?=
 =?utf-8?B?OGs2NFpGYVlrVENPanljOE14Qi84dldGN0ZQc0JaVmZmc2VBR0xNbk56S2ZB?=
 =?utf-8?B?NGhLMDhxcGtpcnRta2taNld6eHdlWVhaWFJaQW1JWXBZODZYbTJJM3ZpcVF5?=
 =?utf-8?B?ODZUUERMQlNiTVpNYmF0YmJPWkhidTBZYzgrQ0NlYXMxcEtPS2VNZlpTUmJq?=
 =?utf-8?B?Sk0wUVBVWEtPRXFrVE5Ed0JObFRmZTNsbWpEMXZKSGJvVS9kQmVYM3lUMWZH?=
 =?utf-8?B?dEZTNUtGUUM0ZXNGeDl1OGhXVVlyTlNsdklkanZqQW9PQlFQWnNYRkw3Skwv?=
 =?utf-8?B?TDYrb2xkaVduVmVYVDRWM1dJaExYK0svN3hvNE1MenNDRytXMTRpRFJTd0k4?=
 =?utf-8?B?ZjdDd1ZPaGN2Z0hPUkwzMXQweTMrTktrU1lQdjNtWkducW5VZWNqR0R6N0Vm?=
 =?utf-8?B?UjVVZE9zZ0lZS3BNeHBEcGo4K3BhRUpCUE4xTWpNVXA4bFNUVGltUVZwczA0?=
 =?utf-8?B?UVZGeTltaThXVGN6L01WbXVvN0NrcHJ2NUhndklITHJuQVgvdjZJV0E1ZTRt?=
 =?utf-8?B?UTlxODZMeGdoQ2lIMVZHK0tqYUJFVHN5ZVdTaElJTmU5bWdYRnNDc0tvb2tI?=
 =?utf-8?B?WDNOLzk0MVYzQmZWcThTdGpWdGwxaTZ6VVFuRHRPKzNUTk01bldTTkpQWTMr?=
 =?utf-8?B?aU8wTzdwSm16L01USVgrK2dHbUVuVFR2dzBUVzZNMmdHRkZqU3dGYzdBRTY1?=
 =?utf-8?B?Zkl5eDE2dDlwL0lXaUo0QUNpWHVEcENiK1V3cUZxdjVoMHByODdQNE1DRyta?=
 =?utf-8?B?QjlSS2MzTVlhYUlIZVovZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3RiS1dWbHowRjdyaGxBTmZRY05kb1h6U0FLMnlxSnJFNlFpZFhtdDY3cWhs?=
 =?utf-8?B?SjNxaWkrWjlhV3RUMm54anZXMjNOZytaK2pHM1JWVG5vdW9wT0JGODlJbTY4?=
 =?utf-8?B?aWs1b0ZMRlR4YTkyZFV6ak5LaVFSdlZ6T3FUb1VtdWVSMEU4Y0l5MHJ5NHVW?=
 =?utf-8?B?UVcxV2JSYnBYclZPc0dWcXNTbTZCdmVhN0UxamtKc2pycUZqbUx5ZFlHU3c4?=
 =?utf-8?B?Z2NJVWRlZTBzWDRSNnMzV00wODVwL2ZwbTJMcUdDRlBQY2ZQN3RQa050amI1?=
 =?utf-8?B?Q0pETjJma0VvQ3hyb291M0dRdjY1aDlPS2orNlRkMUkzeUZVRzhkNW12SHlx?=
 =?utf-8?B?dlM1alVITWwwUEp0Um9ucGFWWUlPVDVRZllINzQrZk8wa3ZJY016VWljUEgy?=
 =?utf-8?B?cHJFUVJuMXB5b29LREI1THIxSGlDRlBwaDl2U1ZPTGhSYlR4ZnBONzg4UkVI?=
 =?utf-8?B?eVIra2FSVm9SL1pkNGhVRzBlY3VrN3Bld254UWs1ZzcxR0wvVnVWWDhWR0lQ?=
 =?utf-8?B?UlYxZ25TV2g4aGw0UFkxWVBISHVJb1N0QllrN1pUd24vOXRyN0cyTjBaL3A2?=
 =?utf-8?B?Qm1aa2x1VDJNODI3QUxjT2tQc2JWbUZIbnZmZUQxN2hGYmZPV2FnaGlLbC9a?=
 =?utf-8?B?WmVsd0RPWWhnSy96aGNIbWo2SjBFRFdTWGNUOWZSL25WdUU1MmpqdUpIT1NK?=
 =?utf-8?B?amF2VGcxVTB1Z0d2LzN2K0NNbzJzb0RwNlNsSUVPMG5jTDIramZwamU0bHdl?=
 =?utf-8?B?ejAzN1dTUHBWckF3NFNiUjFmYm8yN0ozb1loTERlZ3F4Zm8wS2dCOXpJT1E1?=
 =?utf-8?B?dFh2L0tKU25OVDdyZjFWckV3ejN0SElLWUhBSUVTWVUra0FUcEFvSTkrcnFQ?=
 =?utf-8?B?QmFBN013c0pVOEg4TndBU0E5SCtEL0o1MnFnN05tYjZtNmU1SGEvYno2bkJC?=
 =?utf-8?B?dmhQUVVVTFE2TVBjNzNiNXZGd0p6dStxSEJEbWZOdkgwaUtuVXFPN2JyQkRq?=
 =?utf-8?B?VmRTS2E1bjZSVk5jaUVJVnlYc0lXa01telZURXhUVXQ1WUZaNHJBTG1XWGtM?=
 =?utf-8?B?UE1FeXJxWmlaVjdKdVY4MTFBdWV0dUtKTS9sYkFLOXB0ZHVhMjB5UXVMbllG?=
 =?utf-8?B?anluc2lSM3BBd1VJK2tRUjdvZ0xlQ1NHYUFNVnh3bEtieWN6cU1peFpnZk0x?=
 =?utf-8?B?YWdrVU1DM20rMEJVN3U2RyttL3JnV2xaVmtDSGErYzk4Yy9UdDIvZTZmWGx6?=
 =?utf-8?B?MzhBR0xMRnd0TkFMMEtqa1ZSTUtNczQ4czF4c2JZS3U2aDZmYVFaQ2srb0Q5?=
 =?utf-8?B?TzFVb1ROR2NQSCtId0g3QXZYeTZDQVNjcVczWGFCa1NUdWkrRUwvSHhxUzVt?=
 =?utf-8?B?anVVc3hJcThvUUc5OGZZd0hkV1grcUNxOWhMK1lxTnAyVEJnTE4vZmVkY0RD?=
 =?utf-8?B?US9UNVh5S1o2NDVVcG5rVzNLejUyYWVBRXZYaVlKSm9zNTh2R1dJUWZyMHNC?=
 =?utf-8?B?T0hFZXNpK21uS3NBVnRKdDBOR3A0VmFBSEYzd3FmUUpQOHJuT1d4WGFLMStl?=
 =?utf-8?B?OWpJMU1Pa2hvWjF0S1pwZU9PZGZuUG5peGdERW93ZFV3czVnbXpVRUh5aDdr?=
 =?utf-8?B?UkhMbmhjVjZEZkZ5RGxyZjBOb2gwaG9tdlJtWDdCT295bzJtTTRFK2FVM2tL?=
 =?utf-8?B?dW5PUUVra3ZXSkN3WStZeDFRNkYwUTF0cTUxUlAzWGxZSmRjSjhydnRvT1RI?=
 =?utf-8?B?Snk2VE1JcU5OOTdTU1BtZE9TZWdBK3JLYjhVVVVFSVZUK052N3V1NlpEY3JT?=
 =?utf-8?B?L29LVmhQRWZ0bktNajR5MVZpTjVPYmZpdXpMYVVJcW4xb0dPSnM5UHlxc0ls?=
 =?utf-8?B?L2V1Y3Z6Mnh6QUw2aG9pQzBRMEdDWW10VmEwclQ3QzRtZEZmZ3A2OEF3MlFx?=
 =?utf-8?B?WEd5eGJhK1d4UmVBMWliWW9DeWIxdG53Qnk0S3hlOS95YnpheTl6bUcwVCtq?=
 =?utf-8?B?eGdNRVRqKy9BMlBUNXRLRVZJbkVVYk00bEZZT2JpQXdlSjVMTW40YnF0Y1R4?=
 =?utf-8?B?ektoWmw3SUlIaXJsenoxbzYwbnpnbHB0ekJFRkJaaUM0MmxtcDRSM2NtUlcw?=
 =?utf-8?B?TXpFNHBnMTBpZmR6WG15TDRlSmdWYXI1ZDZIRllaVzhNMDBsWlFKYnB6cjFQ?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c63c7333-98a2-48a7-1aaf-08dd14436e94
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 09:10:00.8459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B4Hm+OZX0j6KtucCDYQupnrpn8g91iZVz8Fa/iJjFyw7w3Fw8KBc/oOTqeHD9RO92p80WEP0U1/YZbGmocUG5Mje5S1/svI2bo3hOUL+2XQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733303419; x=1764839419;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o1VPdkXBd5KcmVibsrSk/YMuqND43vYbW1/T5PSK7oc=;
 b=H6cuT6gDrOxE3cfXA4HZsoUFsXkqqnGmmwFY+JBsd9F/rw/AkJGoMiLw
 jHFDcefhnI/UZK8i/6iP8BnUKaKIBSkprOO8UCwWXN+0lBgfvc7IWM4As
 VcYTFnhWhxcPQ9fW+btNclH+jXGGDtEi9VH1CA08jsYfTjBcdBEygXzFZ
 s7j3eSvEnT6mv27NGzh/NVR4pC2E5dYW2q2IUfisqer+YidLKRfEzQ/Wf
 GMYW1v7VoiD2yTRPckWSVwe7EHZc8XubDz75ZuFUq66fQlY/cUqAalYC+
 dMl3ji0EbVD7gHBWJ2B4A/o7vF19az+NtsZ6pGbl9cZHd09OBmxOVKS5E
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H6cuT6gD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCHv3 net-next iwl-next] net: intel: use
 ethtool string helpers
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

On 11/5/24 06:47, Przemek Kitszel wrote:
> On 10/31/24 22:14, Rosen Penev wrote:
>> The latter is the preferred way to copy ethtool strings.
>>
>> Avoids manually incrementing the pointer. Cleans up the code quite well.
>>
>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
>> ---
>>   v3: change custom get_strings to u8** to make sure pointer increments
>>   get propagated.
> 
> I'm sorry for misleading you here, or perhaps not being clear enough.
> 
> Let me restate: I'm fine with double pointer, but single pointer is also
> fine, no need to change if not used.
> 
> And my biggest corncern is that you change big chunks of the code for no
> reason, please either drop those changes/those drivers, or adjust to
> have only minimal changes.
> 
> please fine this complain embedded in the code inline for ice, igb, igc,
> and ixgbe

I would be happy to accept your changes trimmed to the drivers I didn't
complained about, I find that part a valuable contribution from you

PS. No need to CC XDP/BFP list/people for such changes
[removed those]

> 
>>   v2: add iwl-next tag. use inline int in for loops.
>>   .../net/ethernet/intel/e1000/e1000_ethtool.c  | 10 ++---
>>   drivers/net/ethernet/intel/e1000e/ethtool.c   | 14 +++---
>>   .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 10 ++---
>>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 +--
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c  | 43 +++++++++++--------
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c  | 35 ++++++++-------
>>   drivers/net/ethernet/intel/igbvf/ethtool.c    | 10 ++---
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c  | 36 ++++++++--------
>>   .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 32 +++++++-------
>>   drivers/net/ethernet/intel/ixgbevf/ethtool.c  | 36 ++++++----------
>>   10 files changed, 118 insertions(+), 114 deletions(-)

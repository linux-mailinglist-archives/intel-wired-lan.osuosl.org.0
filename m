Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 060C1AEF6F7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 13:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09F0041D64;
	Tue,  1 Jul 2025 11:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TorwB5gXuAMe; Tue,  1 Jul 2025 11:46:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAC0941D1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751370391;
	bh=BgTNWlnJzZgOEwhfTNVR8vgER4gyRXQGfVsmYdXdKL4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7YDurUOf0vsr32f+dZYrXxqApi8nwftpyIkVOCbNukeUhNmKPBD68INVu2C+QNHz5
	 Szb8v+uv/ncDbt9AhKRGuz2FErk3Bld88wDMosBq7Nt1xf0D6z3OgBecXHwoqWsFH/
	 4gS7ya6kMuXusN+Thsdg2vFcXxovRLBuoQQiL06MlqC2xKVDfK6lxMz8yJ6RXZZGy2
	 eLa6B1Aj7h1k7IqxVmneWYY3aLsUBN8UQEcF3X3xXNfsACNAKPijy9I88+DlmI8qCs
	 x59u2MWyWRozBbdWbGM/tyY9bwt+npUTvIeOPdPk4SsA9oVqbxfrPtokAYK8xpr/46
	 rxzyPztgoSQTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAC0941D1F;
	Tue,  1 Jul 2025 11:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 445EE179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 11:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4151460B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 11:46:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6FXr65XzR0za for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 11:46:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5433960BC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5433960BC8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5433960BC8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 11:46:29 +0000 (UTC)
X-CSE-ConnectionGUID: dEF/l+gMTNOUL0AtkzzEww==
X-CSE-MsgGUID: d4XA2XqGRei0X9qVERyiRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="53774489"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53774489"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 04:46:29 -0700
X-CSE-ConnectionGUID: MY4xvAnoSrqalg5ofK8B4A==
X-CSE-MsgGUID: Mb6Fk6yZTNSvMJDOLHK2yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="154475153"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 04:46:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 04:46:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 04:46:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.81)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 04:46:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yYPzdaUUNdwEWBetEMcvaxpc6FPfqPhhWZYNRED7WvpKEzuPVpunq3Gg6QCxZdzOYngG+dmob0zPq3v22RvxNx4nkxjo0HC0MjaUtM7EB6qYq187FJFZ1jEMYgEIpqAG+XYqjBo4Z99V92jSua7OoYR7164ZLbBbOhgxxrMhhat8KWg2C4X4Un6URSpyg61lx6djY44xr2rz02vKdh2zyiW7nfRtoBeHnOyYwylRCRxthOWUo/wxxKAb17abVQC61+zfnpvvvHzn+VSuDIaGLkLbnjgl7LZf6nJV39/ARdRx0/x3/CG5xxoJlCffmsOUIYknZF7mRJfwqZ/X7/851w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BgTNWlnJzZgOEwhfTNVR8vgER4gyRXQGfVsmYdXdKL4=;
 b=YxRt7/WSHfSuY8ZrrM5jhUkmL+6CYizz86YR/Dk8orPDl28buQvFAXvR9QCmHmPQg4NoLED4DHl2byD37YK5F/f2ziaYIvJiTHkCIrgCdS/ROpQcx2fw/c52snqdTDJGKDHLBt6W5ugWYi/vY0YJhktbY+c9YfrbIrwG9NLoUAOmkheBgKMahPbQBoetyBDJQ/pRFz2YWFEDui9V1Cx/mCTPPdc41UkbXRqMg7BT4RAoAmCsVjnnO8sLQQ7ZiY5FccJHnCzbYgY0QuXm/itxr2C4zXUrUPGBvl0TnTtKaFU2jXG+jRskC55UDE4l3Maocy6/f9RlMi1x6oI4MZBilg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by SJ2PR11MB7428.namprd11.prod.outlook.com
 (2603:10b6:a03:4cf::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.30; Tue, 1 Jul
 2025 11:46:23 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983%7]) with mapi id 15.20.8857.026; Tue, 1 Jul 2025
 11:46:23 +0000
Message-ID: <3023fe74-29c7-4a41-b805-c6b00fb0b3cc@intel.com>
Date: Tue, 1 Jul 2025 14:46:18 +0300
User-Agent: Mozilla Thunderbird
To: En-Wei WU <en-wei.wu@canonical.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
CC: <regressions@lists.linux.dev>, <stable@vger.kernel.org>,
 <sashal@kernel.org>
References: <CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::7)
 To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|SJ2PR11MB7428:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bb38614-7cea-4264-9379-08ddb894e775
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K1pmU2pDMExrdkhCUnZaVTh5Qjk5RlZsY3dBSWNudTNNY1UwOGFvSEp1QjNC?=
 =?utf-8?B?bzhnd2x2enVVNjM4QUpzVmw4K21YMWY2MFl1eWIzVFZDd3JROTQyVWJTcisr?=
 =?utf-8?B?QmxPNFYzQkZNNUJqTFA1QXVWc3NCb1l3Ylhla1BZSWVoeWZiTHN5TTdUWEd2?=
 =?utf-8?B?dDNYREROczQyVjh3SUhPNWx1Q2UvdEZ0NmhFL3JiL1JXWXhCMnN3YURJb012?=
 =?utf-8?B?dVZ4RWNJOXVnNmQxRkdNZlZ5NjBlV2dIN2YxSlhYUTYxUDlybzkzdUdUWGpH?=
 =?utf-8?B?ZnZKbUZOUHNhcFJtc2UxT0c2WkxDbnkzWm5QTDkzVHpCeldCeUJVUkFnajJB?=
 =?utf-8?B?ejBZWGovd1JaYnRZckgzOVRoNVdoa2MvZmxYcFZJVVpFNTVWNmlVOXhvRThT?=
 =?utf-8?B?ak5PNXZhTFBaS3JTM21GSnJCLy9WanVyWDdBYzBta3UvWGRqUHpmRHFTYXFt?=
 =?utf-8?B?OXl2UC9uNGRPczVhN1ZwbWQ0Q0JvYmczUXpIckh6R0NELzFJWnNaSXlKYTR3?=
 =?utf-8?B?QjlrdHBXWWRlT0J1RDFENmdITEM3eGhFKzNEKy9uM2R2Ti9wUXQzQXdTS0FY?=
 =?utf-8?B?ZE1UU1FyRWE3R0hnVUR6SU5GQ0ZQNnZzaHI5NjN4YUs4eUo4ejJ4U3haajhN?=
 =?utf-8?B?akZhYitmUndyVXhtbUNXT0Y5Wjh0eTAyNm9qQW95MjJRc01iYXdaTlZGM0NG?=
 =?utf-8?B?eDJrcFc4a2RSZGVUUTE5bHBkaFloU1dzdnpseW5jQVdnM2lvVXVFRkZtQ016?=
 =?utf-8?B?VXJpNUFvbElIWk9oRzJhV3BJUUlQNTNqUXVHdWVKT25qT09OY213U3FYTGZu?=
 =?utf-8?B?bFdieVR2dDBqbXQrUnlRbms1LzJvbDAvSU4rYWlUK2d3cVg4OXl1bEVRZUpB?=
 =?utf-8?B?QmxGMklWbUsrVEMraXRJYVFrOHBNMFlBYS9YZlp0L24zeTBUVUwvVThseHo0?=
 =?utf-8?B?dVJHc2J1TlE3QloyeHFwVEVjN2kwN0ZBejJ6UzVJTVQ1QmNTTCt0WUF5dWpp?=
 =?utf-8?B?YU5nYzNFNW5DOTZ1NFF2UVhjbU5Dd2Z4ZVJLVUlla1ljN2FEZ2RjMTFiMnlH?=
 =?utf-8?B?NklMUHU4aDQ4OFR0bDVKdzJob3ZhZEtRRktpR1FwV21qSDRuaG9DQ3NNNTVm?=
 =?utf-8?B?V2dXRTBVSDcydDRHSjJtZ3A2MGlkakFHbWJFSms5T29KK1QxQ2VwQkFMWXM0?=
 =?utf-8?B?c3RTS1VTMEM2YURUbHYrQkFOU3oyN2Q0dU1LTE1Hemt5ZDExbk5MZWoySDdU?=
 =?utf-8?B?eEZwc3B5SWc5NEs0RVE4NXpCNjkwNC8zblpkaU9lbS80R3BlTVlnN1UyYzZh?=
 =?utf-8?B?Y2RiSW12QkZ6MHA1R2NyakNtc2JyU3dmbHdCWlZmNFB3UjdTdkJkSmxMbEk1?=
 =?utf-8?B?Z1N2WVJHQ2RhNE9MbE1ycWlZNUppcjFKREZLMjE4byt6bHFHZGhlV3J4Snli?=
 =?utf-8?B?cnVQWWYycFQzRmN6WEZhNW9SaytQZU8yei9qczZZOG9TZDZHTS9OS1h1bVBL?=
 =?utf-8?B?QWxOaUNmRWczYkJROEpsZ3FVWHpUS0dqQnpjMTRXZlhGNWZ1QUpJcHBkNG9w?=
 =?utf-8?B?azFPYVdGb1hIRTdOYWZXSW5VdGZoUVlGUlFENUdNQ1pBRUVuZ2g2SVhTN1NQ?=
 =?utf-8?B?SHYyY3RkREcydko0NEtZc0ZEcEo3ZDEwQ083VXh2OHFMNXJPK09rSGtwU0tS?=
 =?utf-8?B?dXZRc3hWelFYelNUbE5qQ1loZHV6cVk0ZWN5TXlldW5ScDNVSGhMNWR0aXN4?=
 =?utf-8?B?KzJuKzhBQnBwU2xHVFJST0JueDVkMm0ySTMzb1dWbEpGMkJGd04vZHYrWHJR?=
 =?utf-8?B?Q3VrdzkvbGQ4RHJuTWNNWWJZNnkxeW9PSmdGbWgvaDhvTGg5S2ExYVlseHNS?=
 =?utf-8?B?ZkdQOG8rYjlkaEJVc3l1VE1LUzJXbVgvaVlUYUhjMERyODJ0ODJrZmc0azln?=
 =?utf-8?Q?uPx+IwCRUIU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDZRbUdxdXRDZTMwZUNzMVhnRnhNM0hnL0J3a3RDVkNVNE5rRk9pWUJNaGRZ?=
 =?utf-8?B?ZDhDb2RSZDFCR3oyODRZTXRzbzlUSXdCNE9GeW9ONkc5OTA1bkVlK1d0d1gy?=
 =?utf-8?B?L0lKOGRSL202cWkrZDJnR2xMeXorMDhZa244bHZaVkUwRGw0V0MxbXZ2N0Vx?=
 =?utf-8?B?UGRPMUVGVWpSMHpOR2dkMHBmdkR1VUNtTlMxYkJnQVlJZ0ZDb0xZNXZ6MVcz?=
 =?utf-8?B?VTdJUnU3b0RHZ3VxZzd5eFJTVEc4bUJhQ3pCRmZXaGh6L1ZQZUtyeitEM3Vm?=
 =?utf-8?B?MS81SDRKdGI5cHUvaGVxaE1QU3FyOFBWaDQzUzhxaGZtOGZneUdUL2JmZHRu?=
 =?utf-8?B?K0g3eS9sZ2puOUZXdnRVQUhLc2JaYTFOeGF4YzlzeWhWT3E4QU43akdaclho?=
 =?utf-8?B?UnVWeTV0T2ZMeU1UMXV1Q1J2RlNqbm9vQjZXTVhLTlZzSDN0UXIzMG9qR3Ar?=
 =?utf-8?B?YlZaNGhwb2ZKSW9qcUE0MjVBOTh3aTJESHRHeExzc1F6SEZHUGFmYitEV2Nq?=
 =?utf-8?B?YmhFNWVWOHRZbkVFMFRFZDMzSmtuR256eXhPKy9ZUnpBUzNMQUlIVnd6YUZi?=
 =?utf-8?B?Q05mTDloRTNsUVB5elYvOHp3eWVMRlpJTC9uL1g2cUUxODA5SEhIazlsUjB0?=
 =?utf-8?B?ZENQdGZWTHJPcnVPTTRmWlVadHlBelBrZWxRU1JMWXVvdXFJUm5VTDR4ZFlu?=
 =?utf-8?B?V04rSjFGUHY4Vm1xVXNVVzZGRjlqTnhQanpmT2tQTzhUcjBFZ2IrbmtpSHhx?=
 =?utf-8?B?Ym0za1huaEp3YVNHRFUralFOQ0pCeUkyTklnNlE5QlM5eTdKNld1L3VMS1R0?=
 =?utf-8?B?NGVKRDNRbDBIekwwaTVqcS9XY1hWWlhkOEI5aUQzQnVTQnQxN3BXQWVYU25I?=
 =?utf-8?B?RFYvZXFqRm5VU3BabmRKejlKcDVqZzZPMVk2NW5uaEhWdFJPcit3SzcwMTFi?=
 =?utf-8?B?bVcwRDZXUkhFM253ZEZjc3ZSb2ZUck5kRFdZNld0TmI0UzhsWlRoVjBRUExC?=
 =?utf-8?B?RHBoNmNYV3pERU43VDlUZDF6VVlka3dTSUFtbGlWK1dMOC94RDZYbDNIQWo0?=
 =?utf-8?B?cjY4RXJEUXFVb1BSTVZBaTNQZUZjM0dFS3IySy8ySUNKdDdLZ0R1bXpoOTFZ?=
 =?utf-8?B?SXdwazJXSFRjak03Z1ZYdDZ2OXlKc1BqeUg0UWczdmJhN2dNYWNIYmlaWlp3?=
 =?utf-8?B?WjVtOTgxMlBlckVVN3FSVzA4WlJGY0srUFFBd3FOR2ZGeHp2b1R2NlQ5djgz?=
 =?utf-8?B?ZXQ5V3FJeHFoV1VaZCt6VURTQk00bzVvUjZZaDVDL2VReW91UHVEazlER2VP?=
 =?utf-8?B?OVBER0FKUVlyTUFnTFlQS0JyeFlYTUZINUhKTnF2R2FEVmptRzJldnB6cEpF?=
 =?utf-8?B?WEMzNitaVlZDMXNLYm9aVmZlU1RzNVZpdCt3QUdFUm1OZlFRMS9HTWZna2xi?=
 =?utf-8?B?SmllSDNCZzZHRUs3Z2ZBMlRGRlNvb3ZrNVRtMkx3cEpxS0E0cExhOGZTRnlL?=
 =?utf-8?B?Z3lkanJKMDdvS2g1b3JQOUJEZlRqaFVNMlVKZDhWYnQzZ081L0pNaS9FdEVT?=
 =?utf-8?B?MDlKaUsvbjZwM3B1V25iZzZTUXBNbHZqOHR5TGszM0tieTJmRmwrWnZNZmo2?=
 =?utf-8?B?NytUWGhzME4yOS84N2dndlNOelFLQlUwbVFDUWR5bUd6ZStZV2xEZC9VWlhT?=
 =?utf-8?B?emhNams3cWlkMnZjaVYzUFd2ZUdWT0ZtNnNLOUc2UEF5blNvNGZ5VmI0cnJJ?=
 =?utf-8?B?WWc3djdlT3d0Um1KSnVuVnNRSUFKZW43N1RiTDJhNlUyNWdoQ08yVHErOGxZ?=
 =?utf-8?B?V1RvNGhrQXpqd1dDUjh0QVU5bGw0QUEyQ2lSYXA1NUd2Mm9Hd05TTUdpOTNp?=
 =?utf-8?B?RG1nNDZzR0Q0Qmp3QmdCZy9GMXV3T3lONy9vbWpaSVpxWmNwZHk0ellhRUdy?=
 =?utf-8?B?QTJXNDhzdzBFalQ2aUE1OFV0NzBRUEpDb2gwWlpVOHh4bmFyOTgvQW9lMmw1?=
 =?utf-8?B?VzFOTGZwK3VxRk1CUkFxc0tKdHpkNmkrOStwQjNkS2MrYWdZQmVpV2FwQ3hU?=
 =?utf-8?B?NU1vL0ZSRllhTGRmYmFHZ2c5REY4YTE0VjQzdUh5Yy9WUHU3UmZYL0JvdTZl?=
 =?utf-8?B?eWx2YU1hWDJ6c0dHWnB2RllwMTZKWGx1MnNjRUVRYkNWSnc3UXF1WUtLaHgx?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bb38614-7cea-4264-9379-08ddb894e775
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 11:46:23.6963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RwAYGaP6Q5FGILSRA+pE5VIvA+1k1MAEjBfKklKdUQUTwu0vBLuozp7AyXodVL42sm8C2RB7N1DuxwVokNWxVPUDoFH1dITIacnpcfpTQ1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7428
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751370389; x=1782906389;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FG/auWgL1z61mgdBHnlq5Zvxk0QHL20SuhYMhR/B0aI=;
 b=ik26yW8QkkLIc1puoNAawGTRMiR0a6T8k/AB4+fPlgdsojjtMF0uf4XU
 f8uhg+z58U+3Dyc5cgCRZAtnXs2drRML1mphe1AsI43R57Gf75QomXnao
 lYJjzgrWz4Vn2hR0ha9OBfGN6hfN64+aQjRko1VSe7ZQTI4wh9kmbnOrg
 bUklLcGm5juCRMLKogHMiRXXuGgiyZWuVgcdhIbx0MoyiDkFKo2BhPSSu
 nzmpDO64ZSpTpXh/V/8QDDqI/3mSkT5eC/TkpdbEowBC4U3q39PYNa6y5
 ajDwyJhSBhZsGbkwv2zXeFGN341ZewECGj9q+XrWgBYcz/RcVtoVmh5KQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ik26yW8Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] Packet loss after hot-plugging
 ethernet cable on HP Zbook (Arrow Lake)
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

On 7/1/2025 8:31 AM, En-Wei WU wrote:
> Hi,
> 
> I'm seeing a regression on an HP ZBook using the e1000e driver
> (chipset PCI ID: [8086:57a0]) -- the system can't get an IP address
> after hot-plugging an Ethernet cable. In this case, the Ethernet cable
> was unplugged at boot. The network interface eno1 was present but
> stuck in the DHCP process. Using tcpdump, only TX packets were visible
> and never got any RX -- indicating a possible packet loss or
> link-layer issue.
> 
> This is on the vanilla Linux 6.16-rc4 (commit
> 62f224733431dbd564c4fe800d4b67a0cf92ed10).
> 
> Bisect says it's this commit:
> 
> commit efaaf344bc2917cbfa5997633bc18a05d3aed27f
> Author: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Date:   Thu Mar 13 16:05:56 2025 +0200
> 
>      e1000e: change k1 configuration on MTP and later platforms
> 
>      Starting from Meteor Lake, the Kumeran interface between the integrated
>      MAC and the I219 PHY works at a different frequency. This causes sporadic
>      MDI errors when accessing the PHY, and in rare circumstances could lead
>      to packet corruption.
> 
>      To overcome this, introduce minor changes to the Kumeran idle
>      state (K1) parameters during device initialization. Hardware reset
>      reverts this configuration, therefore it needs to be applied in a few
>      places.
> 
>      Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
>      Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>      Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
>      Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> 
>   drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 80
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
>   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++++
>   3 files changed, 82 insertions(+), 5 deletions(-)
> 
> Reverting this patch resolves the issue.
> 
> Based on the symptoms and the bisect result, this issue might be
> similar to https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> 
> 
> Affected machine is:
> HP ZBook X G1i 16 inch Mobile Workstation PC, BIOS 01.02.03 05/27/2025
> (see end of message for dmesg from boot)
> 
> CPU model name:
> Intel(R) Core(TM) Ultra 7 265H (Arrow Lake)
> 
> ethtool output:
> driver: e1000e
> version: 6.16.0-061600rc4-generic
> firmware-version: 0.1-4
> expansion-rom-version:
> bus-info: 0000:00:1f.6
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
> 
> lspci output:
> 0:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:57a0]
>          DeviceName: Onboard Ethernet
>          Subsystem: Hewlett-Packard Company Device [103c:8e1d]
>          Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx+
>          Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>          Latency: 0
>          Interrupt: pin D routed to IRQ 162
>          IOMMU group: 17
>          Region 0: Memory at 92280000 (32-bit, non-prefetchable) [size=128K]
>          Capabilities: [c8] Power Management version 3
>                  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold+)
>                  Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
>          Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>                  Address: 00000000fee00798  Data: 0000
>          Kernel driver in use: e1000e
>          Kernel modules: e1000e
> 
> The relevant dmesg:
> <<<cable disconnected>>>
> 
> [    0.927394] e1000e: Intel(R) PRO/1000 Network Driver
> [    0.927398] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    0.927933] e1000e 0000:00:1f.6: enabling device (0000 -> 0002)
> [    0.928249] e1000e 0000:00:1f.6: Interrupt Throttling Rate
> (ints/sec) set to dynamic conservative mode
> [    1.155716] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
> registered PHC clock
> [    1.220694] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width
> x1) 24:fb:e3:bf:28:c6
> [    1.220721] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connection
> [    1.220903] e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF
> [    1.222632] e1000e 0000:00:1f.6 eno1: renamed from eth0
> 
> <<<cable connected>>>
> 
> [  153.932626] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Half
> Duplex, Flow Control: None
> [  153.934527] e1000e 0000:00:1f.6 eno1: NIC Link is Down
> [  157.622238] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: None
> 
> No error message seen after hot-plugging the Ethernet cable.
> 

Thank your for the report.

We did not encounter this issue during our patch testing. However, we 
will attempt to reproduce it in our lab.

One detail that caught my attention is that flow control is disabled in 
both scenarios. Could you please check whether the issue persists when 
flow control is enabled? This might require connecting to a link partner 
that supports flow control.


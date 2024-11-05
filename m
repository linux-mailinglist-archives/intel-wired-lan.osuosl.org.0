Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6B89BD275
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 17:36:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A1E480FF2;
	Tue,  5 Nov 2024 16:36:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7rrqM-Xq0Y_t; Tue,  5 Nov 2024 16:36:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBEEE80FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730824583;
	bh=yuzrxZWgYY7lmsnEQBDxD8gOcabdBMLd4KDdXNBAMG4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K46+CFZRNA1+YVfhOlwvVw2SwThF4X/zjioNM56oZQM8RwtWW4FnDaEhcqmxAMYMe
	 F2jCa8Kv3uUojX6Y2yYk7YxlIQjmIA859kYhq/B+gfZQf1boKqFzV03JTb/RIWcArP
	 wOy8Llai25DdBNtFqopHiR8O9jT7TGeYZF375GZSDhytda8Ipjh7Ju564ueM+2nfx6
	 A65CYyltYtEEGIxVABxj5GIlqJPYJbU2IG1ahxVascz90d2kHpkqI5zMz348FvYbZM
	 7v4lgOZmXTqKv49Sp1/E3PVi7VSdanbdE9xP2K/bJiPXQ+qPKVvj95nsUcadgPNzKD
	 mcG4MQRkZQsRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBEEE80FF7;
	Tue,  5 Nov 2024 16:36:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EC434B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 16:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC621605B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 16:36:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cwWnizYyon81 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 16:36:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 65050605A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65050605A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65050605A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 16:36:19 +0000 (UTC)
X-CSE-ConnectionGUID: GSfT4oDKSzSUXhOdR7+d1g==
X-CSE-MsgGUID: 4DLg75W0RXaUoYbaqKaxDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30356236"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30356236"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 08:36:10 -0800
X-CSE-ConnectionGUID: 6xiPjpv/QX6WgJuqDv5cww==
X-CSE-MsgGUID: wwrD4zxETgCmPHk2EjGU8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="88648353"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 08:36:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 08:36:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 08:36:09 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 08:36:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cui2ZnL5MH7q0sKRoPWBJ5EWRAqU8K18YMY6vduIeuj72K2eto3z34+JD3uZMdUc9FChdrC0HwA/NPePry58MtVPTZj+/OdwWHYFcBnH6IQOb+gObbb4L83R8P/0+hverAeoHqsNkqjOexmY2eUcSjkHY0gQ948kpkN517z6ptV72C9NEHW5v5pABlHPiAMKw+T4OCvo+8NVnA5F8+NVr3RHNlcqqjvoyrFRnK9Dx3wkCortTBuRxNhvbC9ZWVcHmtgoYnpX0BOX3q1NMN+peVItRcuqstvmrFkcdU/ek6WTwHNK+Nm9G4tTqUM7407yz1RTA2l7YgodGVoMo5isEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yuzrxZWgYY7lmsnEQBDxD8gOcabdBMLd4KDdXNBAMG4=;
 b=w0khpan9PDzqrI/6UryJiDFXCVKfR8jo0oqmhLCmrhYK6BwArkFgrJfWs9Tk0EQWtM61VTBOWxvzw7OY/xsehb6gbkZL0lYVoQ7f+rl2LvkF4n6GMEiyPYl0r6GQOKVeu6OEp27kvrwEbPEZbPk1WVnTvgU1a1kjbl5KZLWCQO9tRtwEza41X4XF6P5bbtWxiL5BEKE8whT3e7nG++eVBs7be15qQMF4tEcKuc5YecGADtSK3NduBtgBo0QAb2envua5PxQ2FAdOg8DhGxXb5geEnv3Id5sRj1vbs4WbgDZFbq4n6RoVgAtZ8kOIQQy/SeAcxQa5HW+AIKQ/LctrDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ2PR11MB7669.namprd11.prod.outlook.com (2603:10b6:a03:4c3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 16:36:04 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 16:36:04 +0000
Message-ID: <d207a82b-45c6-4b75-a4be-6cb7d0af9463@intel.com>
Date: Tue, 5 Nov 2024 08:36:01 -0800
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>, <oe-kbuild@lists.linux.dev>,
 "Yue Haibing" <yuehaibing@huawei.com>
References: <f5a33a3d-daa3-4252-a741-0ba16104f400@suswa.mountain>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <f5a33a3d-daa3-4252-a741-0ba16104f400@suswa.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0225.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ2PR11MB7669:EE_
X-MS-Office365-Filtering-Correlation-Id: 12700e46-b451-4bc7-d5c9-08dcfdb7f0c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUc0NVBSckswRS8wYmwxSjl1ODRoeUFYZU9USEJXOWU4YzBMa3pDVEVFZ3lH?=
 =?utf-8?B?aTJpdTQvQW94RXZYWmlNbmZTZG45aW80L0ZCeG9tVWNGKzNBZ1RPc01CR2NN?=
 =?utf-8?B?c3ZqZUlKcFVLbFZ4VHMwM2doQk4yckdOUmhCVG9VN1h2a3h2SkV2T2VVOUlj?=
 =?utf-8?B?WVRWRThOOUJ6NHpOYVM3VE5WcCsxY1BHN1FoeEFhU1lhZG44TUhKQUlWQ2NM?=
 =?utf-8?B?TFk2VGdGa2JtKzV1NzEvTE1xV1gxV1BMdmY1dWw1SzlQc3NqaDBUSk9JOXlH?=
 =?utf-8?B?M1pkb0ViSmFzNDgxQXhmeHdOTmVmNWFwd1dNbHR4MDJaVUhBd01ma2xkcVhv?=
 =?utf-8?B?b0JDMll4bTBiYVZLU3pDSGQ0bEkyYjNCdCswc0tJMTJONTJ6MTJUTjRmbFdm?=
 =?utf-8?B?VEUzWXFvOEFiVmlRMmI4YjdBNTdOR1VwalVDWVA1TFdhdHdUNFVrTEpGalFT?=
 =?utf-8?B?SzlVUzQ2YkduUjN1ZE1aUjZva3BXalFvZUY3NU9FcWJxVkNEbnRFNzFXSUdK?=
 =?utf-8?B?b1g2Uk9ZOW5SY3pLRjl5SlZGaUtucm5zdU5uQ25TZ2lNYmVCYm9GNlZhdExm?=
 =?utf-8?B?MmJGWFpGM2puUmtvSnY4UEJTbnNTa1Z5SFFWdWVjM0x1UVFQYW41eXJWSDZU?=
 =?utf-8?B?RFQwTkhzSTF5WmZ6TFZWcSsvQ2RXZ2RWVGhaQVM0NFRheG9MSzhpL3dFYWI5?=
 =?utf-8?B?RWZ2WExSTlBUWWVCU2tDSVlwMUwzY2oxRWxSZVlHMUdja2U4cGU1aVc5bEhz?=
 =?utf-8?B?d2xDZWhRYTdycUltdDZta2ZVbEVidUE3UGdaUGJ0R09QSXkzM21QWXR4amZu?=
 =?utf-8?B?U2dNdkJZbjhqRkdTeWlKdStES25Nb1lYKzIyeWdIM0lwUlFUYUorM1FMRWpB?=
 =?utf-8?B?Zi9uUUFzc2taY2tsZzhuUzZmZU1IUTZkSHdoRnA5aFc4bWVmMS9POGcycXpv?=
 =?utf-8?B?dHZxaHI0K3NxMVVMWVZ5dFVCRFM3eTRXU2JBQ09GSGsvTUMzVmMwMnBxeUNJ?=
 =?utf-8?B?L2UrS1FRa1NBQ1FsNWN1U2JnSTZDVnBiL1BkNm82VXE2VnpvM29mWE9YVWlF?=
 =?utf-8?B?b1lTdGI1akpNYzEwaVZXYVZrc1hzM2diQ2M5ajhCblkvQVZxNFlBdU4zL2Uv?=
 =?utf-8?B?QjJaR3BjeVdUUVUzaThrRGMxdWRLRnNuZ1M3UnJZZENHeWphZU5sNkhsYnZQ?=
 =?utf-8?B?Z1k3RkpvbHMrMkJhZWFmdVJGVG1BKytQQ0ZwUGNiUVRqUFQ0T2EwaXBFbjhR?=
 =?utf-8?B?QU16cVdTQi8ycWhQdmpBY21wWUFWUUFVMmIvc2N1VlFuajdvVHlzdlhBdVZ6?=
 =?utf-8?B?aUk5bm41VTBSdW9oTFNzUHRHMFdxZjU4TU1Rd2xYZ1pxd2NnUlNZRHlVT1Y0?=
 =?utf-8?B?aHRTYmpCVzFYVHdhZlJtMzJlT3pzcjZKVEFPa1ZnUVNOTW9hMnhyamJPOUxa?=
 =?utf-8?B?YU1XalNhQXI5K3R1S2Z0TEk1VnJSQTZPcVVZSmUvL2pJMU5LRkY1SUxTTjBC?=
 =?utf-8?B?R1pKcGtXSUNtOGorRFdXZ3hwVXZ4QTVXWndSeDJPOVpwS2J3eEN1OXdOOURx?=
 =?utf-8?B?dFpaZjNiR01kUTFyNHNyMjBJQWtLb0JBSmxVcjZxQTQzMStab3E3QXA2SHVr?=
 =?utf-8?B?WDB5aHE3Ymd4N3FHY3pHeUNOVjRuaDVBaUFESUMwMGROVTFTUXF3UjFHc0Jh?=
 =?utf-8?B?U2JDek1iRWhYQkp3VmkvdDk3Y2dNSUJ2c041NWFITXBoTEFUb2ZqTUl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3hXVDRWOWhHcVd0a2Y1czFma2xSbVNPTlQyd0ZHRW5TejVUeVpJYVFKaVlF?=
 =?utf-8?B?enN5Q2IxSHI5a2owUDlNK3FhbHorbk1OSytBWThVTUJETVFUN0hiS1k3dXht?=
 =?utf-8?B?dWJZekRFNXlsSWJkMUVOZHlGRlVpYXVpSTVHd0I4THdYaHczT2llUUVWdTI2?=
 =?utf-8?B?c0VTeUxseEtkQ09uWElLYTV5ejJiQm54YXpLNzQ2WS9qbWhNMkdPS2tWUzdy?=
 =?utf-8?B?SG5qRGFvUm9QOUg0RmhqdFhGYmNiWGlGQW50QmtObmZ3clZWUW04ZmMzV1g5?=
 =?utf-8?B?T3d4QW54VnBMY1phWU5MM0hiMjRGYkdVZ25FQmJTa1BLbE1DclNaUkJFaCt1?=
 =?utf-8?B?UWl3K2tUc2w5S1N6dXFzd0gvWXVIVGpUWklORHY3S0U3NG1udjE5Yk1HVzg4?=
 =?utf-8?B?RG54d0lWQkRhVXpUWEplRC9EQmVUWkRJZ3hMVXpTcUFqNDRHbjRYbDBHNlpz?=
 =?utf-8?B?SWgzaWhPTjErckU4WFU3ZktUYjlOVVg5SjZtK0ZpOHA4RjJVZ3pSY2xSUDV4?=
 =?utf-8?B?THB2Z1JaM0IyOTdleEhHWmVIMUFZaThBcHRNL1JIaG5oUFB5WVpMbVNOL2Fo?=
 =?utf-8?B?Vi9vQXpoTDdyalRSNWdPUE1manpZamZlUzdyZ3BtQ0dGVWhwUXhZSWF4Qld3?=
 =?utf-8?B?bC9ZUlZiSGRtSzZFOWdHQjlnbld0QUlwR29SdGNmdzdtVVVwYm1YTzVIQXJ4?=
 =?utf-8?B?SjdHRXRUbURnczNSRlNtQXlIQlFETjN5VUg5WExWbURVRjFmVldUK2Z3WFhN?=
 =?utf-8?B?MzErMEdqdWlKWml2dmZaSk9lczBMeEJKN3J1QjBHSS83bnlPREdMZGxzQmph?=
 =?utf-8?B?Sk9yWHZEdElFRWwwdmlCNmloN2xWNUN2SjlnTVIxZGx3M3pnUnRlbHpzWHd4?=
 =?utf-8?B?YVo3K1lidnA3czVwbUpGYUhzU1NsK0wxMXNWT1pjMXJWbzRuSEpLTGZ0Z0lL?=
 =?utf-8?B?OHp2b3A4bWRVVVJtSU8wUVZXSjRnMjE1a3lkaFZEYXVYckZ0RnpZZnRFK0xX?=
 =?utf-8?B?MW41MFJ2eUplVDNDSHJTVjJhdTVWTEhsWmdBQUowSUtGYTd1QlA1TW5rUzBv?=
 =?utf-8?B?WGNLa1M3N1lkbkNKUW9XcGh3NUpGd1d6TnJic1B2ZXZNbjVEZjY2b0tpQmhi?=
 =?utf-8?B?WkZjdzBiYVlEK2lUQVVvdm4xeDVGdnN5aGEzRW9HWk1LVE1pNktycVJFOFJm?=
 =?utf-8?B?bXpQeVQ5QVJXRUIzVC9IRWVjWUZqOVY4bktBSUJDWHppOFRDaUtnUTJWT2VD?=
 =?utf-8?B?YU9neVN2dE82azZqVjFKN3Mrb3dCeDlTdU51WW1YYmNmcStKYy9rQUJtN0Ru?=
 =?utf-8?B?MTl4YlplWjQrcSswdjUvL05nRGZjZFRNdzRxK2lIUlYzRzlTUEJqMnBDNU1u?=
 =?utf-8?B?NzFUNHFUNVlkbS95MktmRFpOU3VvOFVBQ3RIUFlEZnRoaW1rbStJQVNYUWVS?=
 =?utf-8?B?UTNnRXFwck1xbHBxYkpjbVhCVVhGcUx5NzN6NGpFWTdFMUExSkJnYlhpMnlC?=
 =?utf-8?B?cXVMOGM4bXRyYlZVb1NCRUJlMTQ4U29YRzNJRnovY2ZPMEQzK0JsNENYQ1pK?=
 =?utf-8?B?Sy9QMjZqOHgrS0FTWnBYNzZ2Y3FJWnRkTGRPNUcwd21xMjlYNFBodktGdFlw?=
 =?utf-8?B?ZjVxUWxKM1hDbTlGZlVWd2J1T0FjRUxUZWlyTVo0cGU5dDI2d3NYSFdQRXRE?=
 =?utf-8?B?MWJSUEQ2Y3k2RmRib1lhV3RjTG1ZMTBCbzJRakFORkRBN3B3eC93YmNoT2Jh?=
 =?utf-8?B?OG80VEVEMWtnVXJLc1BleEpZWEs2M0Y4aE1Rc0Voam9mZTg3ZW15eWtlaHBS?=
 =?utf-8?B?NlZUaCtWVUpBZFdDeXIzY1lNS25oK0VnNnN6aitnbG9uNXJNWE1wQ3dPY1pk?=
 =?utf-8?B?bVRMR0pZZjZKZXZyRGJGQ0dFSTlrSWUvNzVDYitOeGEzNk5HcElvVXd0Y1Yw?=
 =?utf-8?B?MkJxVWI2NFJSTFVON09RaFUyTGtLazNRZUpGZ2c4VFFDTDRXTE5qZ0tvSU1Z?=
 =?utf-8?B?UEZWd3o5clc1RW50UkNOaE8yMWZ3NHhGdGJUNEdYdG16aHVoWThKaVhCQStk?=
 =?utf-8?B?S0VSVlFlVDhGeWxRWFQ5MGxEejBrZDhVdTlTcXJNRXkwdGtETFJFZ21ha3hI?=
 =?utf-8?B?cFlRdGNaSDE2dnFuWWFHSU1mRmU4ZXIxN1FGbER3Z1c4UXdPSyttVml1djk3?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12700e46-b451-4bc7-d5c9-08dcfdb7f0c2
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 16:36:04.2614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xZ9IralikEF53ZkEKjzAd4V7aOpMrXZ4UiRMd3/rZtbWWWcQe+sILjkbXtOMNzRjogAM35JFo1zuNR2N7IMDg0KEd6OV3F/2uyLruSw4vlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7669
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730824581; x=1762360581;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jsetFZWQ4qdZcUxi5hfnP+sHqyEvhZGDYCS0Pcs/jGM=;
 b=mpq/zVP98h/4PUQdOVsY4v2ZtKsyEoQsCveepIB3mPXTfY0leFkboASK
 VeKKTdLkWdNno8NUn8XOVq55duoNYBkQ0quThczyVHDRex9ITYVT5I9Hb
 wT9RRZ2qrpffBC2o0b/PVEbuzMDDBQjtI0CNjp0h/h9p9vh+5Nq2qZ5WC
 Ob6+6b4zHClAQVJSt2kESOwywXJFKh9i4FuNnuYPr4EPDp+8HboUAxBL2
 ZIJ0X6I6hiCTj7cfbHA9ewzPF2DdH3HudSPvmsSRBS9JhioTwZlUthSoo
 P4tm1GY181OhFvD1tszbZrM3QeiTEXTTDO2xmMw1wSxiPl4h3sOWPdohk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mpq/zVP9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-net-queue:dev-queue 9/14]
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2377 ixgbe_clean_rx_irq()
 error: uninitialized symbol 'xdp_res'.
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/5/2024 8:14 AM, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
> head:   278dfaa171a0061a341f6b5d44c2c9913a2b7fa8
> commit: c919a57ea9cdd6aa02e0e411d8fdb3e3485353cc [9/14] ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()
> config: powerpc64-randconfig-r071-20241104 (https://download.01.org/0day-ci/archive/20241105/202411052110.vjxFpzue-lkp@intel.com/config)
> compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 639a7ac648f1e50ccd2556e17d401c04f9cce625)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202411052110.vjxFpzue-lkp@intel.com/
> 
> New smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2377 ixgbe_clean_rx_irq() error: uninitialized symbol 'xdp_res'.

Thanks for the report Dan. Looks like the old version wasn't dropped 
from the *net tree when it changed target trees. There's a new version 
on *next that doesn't contain this issue:

https://lore.kernel.org/intel-wired-lan/20241026041249.1267664-4-yuehaibing@huawei.com/

Thanks,
Tony

> vim +/xdp_res +2377 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c

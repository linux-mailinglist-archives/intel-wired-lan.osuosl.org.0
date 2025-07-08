Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BC5AFCE56
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 16:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B32880EA5;
	Tue,  8 Jul 2025 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id krm0CilmQ8qq; Tue,  8 Jul 2025 14:58:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54B3480EF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751986689;
	bh=IyFjKcSjLyRwPWHKoZ/Mmv8FsRNo+26gRVnGIZwoA30=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zaWNMmbANmX0mQnrjWRuuaU3Rv2MWuf5se/zqyBqQvmH74eBshwrx8wvveQL2K4E5
	 mwDlpYLj5zKIGE36lc/w3vprDFLPd7TnWa6lqrqyjbVXUzGNDQvOlwQkGAb6e3KiDK
	 V8vZqWoRJaJvkbbhxXko1BrzfU3EveBtZIGdwa8yBX5gYKQjNo1jXytWZFCvZIz2x7
	 GQjulgMMHGjljcorsk1Zp8P+RqDOaJSKXekC/33XSHRnAnaL7WGmm0k2KJHeKhe9EG
	 VG/mnJtDWn7fbHJsX3H9FJvlp3ph3LdZZins3X++dg9R0zOTpiXk1YDn4P84X+maaV
	 TfBLo2G4FZBMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54B3480EF8;
	Tue,  8 Jul 2025 14:58:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E4C212E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BACF40A73
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:58:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xdGB0iJ3PkrE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 14:58:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 481944066E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 481944066E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 481944066E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:58:05 +0000 (UTC)
X-CSE-ConnectionGUID: /VDZXR1CQCyKhYdRpIg7Rw==
X-CSE-MsgGUID: j3x8z0+GQ2+UHo378NQGgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="53436274"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="53436274"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:57:59 -0700
X-CSE-ConnectionGUID: kOv3vnvGRZ2Kk21gn0FH9w==
X-CSE-MsgGUID: KfLJQ7GPT9qmsVv9KyGJPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="159558808"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:57:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:57:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 07:57:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ooCZ14WF+soBiAjjgUJorfZIEuQDbbxOSU+Me8AZK9nbPD8bdcZMUoj1FQ9doZlAI4LQbGZD3v1ZKSCQ+g3PNU3yULuc4saX1WQdQU2dRBDk4p8FOzbigymCDVStCVjOI9PKtFJpgZZsybCmP/1X/YIuQM7FFNoPHLnlLntOEFSucrofetPXnBRwkMTVnumLY10p0Mg9+udnY89vNRfWk89rMRfQSmHtfa9J7JL/8CQZ+cNrsP7T+mdTwDHBWgWkb+7FXU5UhvVCQylp570UiOXoJCyMfJkYgC0AE3K52b5rgvytfIuRglfaG43ybOf8XvkoeQe2R+TsgiLCU5sTzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyFjKcSjLyRwPWHKoZ/Mmv8FsRNo+26gRVnGIZwoA30=;
 b=f0M//xErhRdgcMuv+jTX1+uQgQodnqQpckU3eXHK7olTMhRYDdxKXi/s/u2g7o6eq4SdtJZmYTcQV+fzpfwNFMTWf4hxCFeQFrq91lE+cvhl/gZaG3KIC5O1Z8j7Gs7lsTKQaMzBvwGXLhaDP4MYMRhI+im1UYlgADt+slR3EVa4QrTPnpxy3JPwEBUyWvzU0Evz7dSQODQU+BigATNR2WvCwbv/LzD2gcHA0lermC4r82fsav3Hdiq09ljIqYfkvHewKtTBNbyI+jzBSVMUZZCHtFEVzK1E96nx9wjDnGlhb3pR32GGqjQuTQOlizy1KueIXk75sjw9kD8mp9zTlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Tue, 8 Jul
 2025 14:57:13 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 8 Jul 2025
 14:57:13 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Cao, Yahui" <yahui.cao@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 0/8] ice: cleanups and
 preparation for live migration
Thread-Index: AQHb4J/nfmUjJqknZ02K8Ny7kvw5VrQQcoaAgAD7rwCAFwGjwA==
Date: Tue, 8 Jul 2025 14:57:13 +0000
Message-ID: <IA3PR11MB8985F3418E321B1CECD4D3CF8F4EA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
 <7960d4ec-ef0d-41b5-9589-c59c7e49128e@intel.com>
 <47a78150-711a-4aff-b18c-f77131131acf@intel.com>
In-Reply-To: <47a78150-711a-4aff-b18c-f77131131acf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH3PR11MB7300:EE_
x-ms-office365-filtering-correlation-id: 2fee07c5-7c24-4efc-097e-08ddbe2fb904
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MHc2OTQ4amNDcC9oOGVVeFd4Yy9rbU5RMURXWFh1Q042Mmd1alQ5cG45d3RC?=
 =?utf-8?B?U2xYUmhuZlM1Ny81KzhITGNWZDRwT1BMY21IV1VKNkdOZkduNmNuZFFOT01P?=
 =?utf-8?B?anZVellvUUh6V3FTM0RPb2Jyd0lIQ1M3U2hJdyt3Q09TRkRYQmhXM241YzJO?=
 =?utf-8?B?V0p2UHp4QW1EaFBzbjA0WmR3ZUNXTDRXK1pjMVM0VC9mZE5qSUg4YkZSVlhn?=
 =?utf-8?B?REhITU1nck0vemNIMmE4aGpDbVFHaWFDUVlzMEc4a0lvRkVFR29OT0RuSnFQ?=
 =?utf-8?B?aEpMUGpCQkFyZnh3TjFjaFcxYzVTc3FMczBwZTFydWRPcU5BWTU5WjZDdkZ2?=
 =?utf-8?B?ZDBKMXFwNGx3WUhCT2Nkc2Z1aFZJcU9YNnVLSWt3Y1Y2YXFXZldJc0FUNXd2?=
 =?utf-8?B?WkN3ZzNHdjVCc3RFeE52dThHalh6Wm9NKzA2aG5oWElzL0FtTFcyUDh3YjRw?=
 =?utf-8?B?N0lJckZHWDdrRGlyTlptRWZVd2FONmdkWnFxcG9VdzBVbUZmRWhCbnRUdHZC?=
 =?utf-8?B?KzRCdmZLNXk4VmZMTjZnV1BSSjhocjN1cDc1WDR2L2xsZE1qU2U1TFhla3dh?=
 =?utf-8?B?d0g3a0M0bGRqRU8zL09DVTA0bGZ3NnhuWVh5N1JveU9PQzkrd2pmYWtSNndM?=
 =?utf-8?B?MXQ4THVWUVZzS0FyMzRsaXZvcW1Fb3ZxVlhaOGg5ZVc2V29sMXNkSVpsVG4z?=
 =?utf-8?B?RFcrNllTWHBuZW9pcUVnT1QrUnJIbUxXRW9sSUFrTitWRTFHL2J4emxEdENY?=
 =?utf-8?B?U2dvWExuV0RueVNnNWxqajlNdkRtMFlVYkpaelkzWmlFa1FWSVhPRVZ1cEt3?=
 =?utf-8?B?S1NJMGxEOFhoZkQzaUpUZzI2ZUl6MDJMYzRMWklpamZGWXdjOVJpS3oxdzFC?=
 =?utf-8?B?dkMvVVQxc1Q2SkhsV1lNMmIrd05JK1pCMEdFSUFPOWhsdWYxRjB4N3A3Szlp?=
 =?utf-8?B?UXpReTNpYW5wOFNuMkJqN1FIKzhuUVVHRXArTmFyWDBVZ2dlRVkwdllpUi9h?=
 =?utf-8?B?SDZ3b0RjdE1Tb0RYVXMvRXhOdUNvbjB0K1VRV0Uzbm5SajgrOGRrd0pZajN1?=
 =?utf-8?B?UVM1Rm0xRlRiZ2xvVkNrVlZjUEJCNlBMempsbUFIOFQrZ3o1ZmRIdnZxaW9V?=
 =?utf-8?B?S0ptRHAzY2pJM1BaczJkTVNLOWpFb1lKUXNwS1EvNkdJa2NYRkcvTkxxTFFZ?=
 =?utf-8?B?R1N6eEx2WFhoSDNOdlg0Y2J5MGxDTStIRUpKWmRHTDJ1eERJK1FFeHdJMi8z?=
 =?utf-8?B?dUswMG1vNXY3WUtucmNQdkFwMGJ4N0RLQkpVeW5DMHQ1dDhkM2M4bGUyY0ox?=
 =?utf-8?B?a0k2TUk1TGZpblFKYXFRQ0pWTjRVVVpKalk3bUNkV3JKUUUzRy8rVWp0Tnh5?=
 =?utf-8?B?R2JkaTNBalJRbjhJSFhRZ2dBSUkxbXZwOEc4SWJQeXIvbUd6M1ZsRzZ1SG1p?=
 =?utf-8?B?SjAzcHFoTjU0alBGTEw3Zmd2Y3lKM3BBc0w4T3drOWlKMUovNlJubEQ4cWpJ?=
 =?utf-8?B?c000UW4wSE9HS3pQZ3pWMnZ5eXFJMEtwRWdORmxhRTdCSTI0eGRzdlFzZEFi?=
 =?utf-8?B?NXFSVHJWeDhIM2x1aGZyU09xN2RLQlJOWWx6R3ZNd0h1b1hzWE1hMHFVZm1k?=
 =?utf-8?B?VDBVZU9aOW9HUmJDc242dFIzbWtsQkk4WGNtcy9UY09OblBOVGZnUlIvUUl6?=
 =?utf-8?B?dHpMbzVnOTNscE90QTA4N2lIWDNyTEJZQ3NKRzg0Y29xa0h3U2ZBb1UzNjJz?=
 =?utf-8?B?eVJTNTFZdCtFU1NIYnZ3REV1RVNwS3lSUjV0a2ZNSi9HRnAwWTlQMHp1cmsx?=
 =?utf-8?B?Nk9McXFQdGlVK3JmT3NQaWFWTkRxeFE3MEgzTnVwVnpHUDE3Q0VQUnQ5NXhE?=
 =?utf-8?B?WlpEL0c4ZDh1M2hsVXpkejd3OVk1V2lIcS92czVRMWJubjVPeWtSdG5ORUpq?=
 =?utf-8?B?a1E3ajVObms2SmpzWVNsTmgrZ0M4YzlxWk1URlBFeWtzNmF5UTU4TzRNd0hY?=
 =?utf-8?B?Q0ZQd3M5VlV3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1lWTkhxVVJ0Yi9RRVhUeUtvZS9hSWVkbjFiVkkzSjBPSWloMmxRdzFGOUlt?=
 =?utf-8?B?aEdEdk04K2x2UnFNUnpCb2drUWN0c1hVamJoOWZHZTlZK0RCY1dkWUNhWmFh?=
 =?utf-8?B?OWhqTHJuamFpcDc5dkhQVEpkaEZSajFwTElHQlZ1L0EvaFRDRW0wYkc1WHRF?=
 =?utf-8?B?aE9ncTM0eGhvWTJISk14UU4reVpCWjY3THFoUEExc1M1WW9rVzhJSzJaVTla?=
 =?utf-8?B?SHZQbEVuK0VNeGVGUk80dUFwNVpUOW81WXRBeTRXUTVzcmdXOFRyTDhPUWJs?=
 =?utf-8?B?aEF5eEdCVVhFWG4wdmt6VjlGS1RzM3lJTDdMZnRtRy9YdFdRV1l0ak9OOTA4?=
 =?utf-8?B?QkhtWkVVMzNJNThWK1c1b1FHMU5MQWZWZFBMU0Z6OEdROEcxZHNzWXdsMVp3?=
 =?utf-8?B?NW53TXNva3l6WmdOK1Z4RUdCVktyZ0h6QnpCMnV3KzF5Um92dDVYeXVTa2tO?=
 =?utf-8?B?Ujc5S2QxZm1oZmhjUVFkUlRsQTVHbjhQRnZRS1ltMW9NbVRtL3NiYkVTSGRN?=
 =?utf-8?B?elp4d240Tk9vVXg1WmhablM4Tkw3TmRaZmRMcXIvYmh0d3J2TnY1S012UlBn?=
 =?utf-8?B?bGs2dnBqSFErNy9vWVVnMUFjVFBBek1aekpocHRSYTdOeUdwZVpmS05mUjVt?=
 =?utf-8?B?S0Q5dnZ5RkRmTmpaYUM3Vkh4QVRwVTZaaXZhbm40Yzl3ZkV2YjEwUDRteVlR?=
 =?utf-8?B?T1NQaHNzRUxhTVg3cXpSQk9XazNHMEdGQmVIOWU0MmR4WVdUeWh2U0FweWto?=
 =?utf-8?B?ODAzUWhXR0NoYWIyYmdXaUJWUUdrelRNR0p1TnpKc09ySUxrcElXdnY2Z2l3?=
 =?utf-8?B?d2w4akRLRm83Uk9ka0Z6bm5oQmVRczhqZE1ETG5xd25YWkphdzhITHFsSmdE?=
 =?utf-8?B?dGlocXFnRG0xRXBjVDZyMHpJbFR3UURKNTk3ODAwL0R2RkVWRzZOeitPbXNP?=
 =?utf-8?B?dzduQ2MrTzFWZ3NlQTgzemlxNWl2WWhiSU1PeDMwZXlWR29iS3RKOTR3QjBt?=
 =?utf-8?B?N2lvdmJ1RndqK3ltK1g5Vk9TZTY0aHFreEtnMmI5Y2NoM0hGcStTRktFWTdE?=
 =?utf-8?B?MXd5YmcveGo5WTR3SFA4UVpNdHZLdDNQRGJPRXQ0eitoRWxuWVBydGloS2Jy?=
 =?utf-8?B?ai8xelNCd0Y0Ykp5WHI1b1prUWVxYjNnZVoxY1l6UXFRV09BbXh1QmNXdm8y?=
 =?utf-8?B?UDhJbDQxaWR3R042c3EvbjhSeklhOGYrb0VEN3BCbWtkOE9ORFNtcTN5S2Q0?=
 =?utf-8?B?SVl5OWM3WDVWcFNEWlc5QU03YjVaSVFXNjZnTE5UcEZjWklCbXBYZlpuMmRS?=
 =?utf-8?B?T04yVVNweEpJcmdXTEhESXpxQStrNkVPdTlyRzl5NnVUMTNSaURTNWo1Zzl6?=
 =?utf-8?B?QUZtNURHUmxaN2cyZmNjUVBEMFR5NHVON1dGVHMyTXp0blcwWldjRENrMHk4?=
 =?utf-8?B?aXFKbHNhdGpMUDBBc1QvRHNmK1VpelRjOEZwMnJGdExYTEMwQ0ovNnN6eEN5?=
 =?utf-8?B?RWhTWmJPRUl4dlhMSDZPbGxGN0REZEMwQU0vRk9jZDVqbEpIRjkrbHB2R1Iy?=
 =?utf-8?B?UUIwOVNUeWh6dHl3WDFBWjlUV01Nc1dmNVdEWTZXTVdrZnRRUWZRVWZvVGRj?=
 =?utf-8?B?RDFncjZNaHQwdWRvbldRNHZNa21ZVkdacjZoZ1RyYTU0UnAwU05BL3NqN3k3?=
 =?utf-8?B?RFRuU3hOc1A0ZmNhYnAxeXlTbjVLb1UyZkQzRmZxL1A4OGxGbWxnTFBPOTJ6?=
 =?utf-8?B?TkVkMDlMaGZvakFHSFY1bEQ5U3R5ck5PQnl2VHRpSFpFY3hWbzFBUVYxVGRk?=
 =?utf-8?B?dWF5YlJnYXEwenJDczYzSitrQkN4cDFCZEl2b2RIdkdoSVBIc1NkQW0wTFc4?=
 =?utf-8?B?RFQrZWVjS3lZNHprTGs5UXh5OFBrd3Y5WWRJQlUwaHk1RjBOQnBpVTl4V1Rp?=
 =?utf-8?B?TGpDbDBOaTl1SWpLTzN3NWJwd05qUlRPM1lmZHk0M3JwVnhMemVvZytXQnVB?=
 =?utf-8?B?RjZXcU5lVDA3RGJHdVRGL1ZSWDM1bVlBcWs5QmpUSjQ1UHIrZDNZUVJjK015?=
 =?utf-8?B?QXg2VVE1b0o3SkVsdzN0NmduYlFZNFNBM2RiTDZnOVFEcFB5NDcrTFQ5VVhN?=
 =?utf-8?B?TE8wTnBTQUU0V2ZHZ0FiWkw5L0oyUlVneldWL0dEeDZYZnl1L1dvRlEwdU95?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fee07c5-7c24-4efc-097e-08ddbe2fb904
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 14:57:13.3146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KIyl86mxMkmWeQSgyXW7HxXWeAJyrDM00kJtkr1Xvx0vmXxZ73Rx14j1NreUn2rWUqmz+Ru2xF0BxZp3/WL50JW21DWiwwR+rLHZCMTsQVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751986686; x=1783522686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IyFjKcSjLyRwPWHKoZ/Mmv8FsRNo+26gRVnGIZwoA30=;
 b=V9GxMNPIYUAh9aBiD2jB0cWdmEE2TMoNOkuh+W6+HprXBZVy14EPmRkQ
 K5/yalfGMFlZ4OZDjJHclnawioeu1DFpqd0SO8OoEJDg8dNWB6s5mCjhP
 xjYrmWdxQNTE3nV6GE+FhIj06yKsRsSqVVccoYoRPtHVO4zsjrDU7LqXS
 iWmiiYc2wk8mF6BSAbAW6RFz7Q3epVLn0+J7Bsgn27Ph0i5uwHg48U+fv
 BB1gqWVntJTExFL0tOQJfnSFwvwxQAuALug2zWERFDxuH5yScY9qjLfTp
 hi2NY+0DL8GmfrQ6QNAGf3L6VxPTxcz3+STkkNMuNsl3EwnyfCtLZzzRd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V9GxMNPI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/8] ice: cleanups and
 preparation for live migration
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
ZWxsZXINCj4gU2VudDogVHVlc2RheSwgSnVuZSAyNCwgMjAyNSAxOjM3IEFNDQo+IFRvOiBLaXRz
emVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBDYzogbmV0
ZGV2QHZnZXIua2VybmVsLm9yZzsgQ2hpdHRpbSwgTWFkaHUgPG1hZGh1LmNoaXR0aW1AaW50ZWwu
Y29tPjsNCj4gQ2FvLCBZYWh1aSA8eWFodWkuY2FvQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9u
eSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnPg0KPiBTdWJqZWN0OiBSZTogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IDAvOF0gaWNlOiBjbGVhbnVwcyBhbmQNCj4gcHJl
cGFyYXRpb24gZm9yIGxpdmUgbWlncmF0aW9uDQo+IA0KPiANCj4gDQo+IE9uIDYvMjMvMjAyNSAx
OjM2IEFNLCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6DQo+ID4gT24gNi8xOS8yNSAwMDoyNCwgSmFj
b2IgS2VsbGVyIHdyb3RlOg0KPiA+PiBWYXJpb3VzIGNsZWFudXBzIGFuZCBwcmVwYXJhdGlvbiB0
byB0aGUgaWNlIGRyaXZlciBjb2RlIGZvcg0KPiA+PiBzdXBwb3J0aW5nIFNSLUlPViBsaXZlIG1p
Z3JhdGlvbi4NCj4gPj4NCj4gPj4gVGhlIGxvZ2ljIGZvciB1bnBhY2tpbmcgUnggcXVldWUgY29u
dGV4dCBkYXRhIGlzIGFkZGVkLiBUaGlzIGlzIHRoZQ0KPiA+PiBpbnZlcnNlIG9mIHRoZSBleGlz
dGluZyBwYWNraW5nIGxvZ2ljLiBUaGFua3MgdG8gPGxpbnV4L3BhY2tpbmcuaD4NCj4gPj4gdGhp
cyBpcyB0cml2aWFsIHRvIGFkZC4NCj4gPj4NCj4gPj4gQ29kZSB0byBlbmFibGUgYm90aCByZWFk
aW5nIGFuZCB3cml0aW5nIHRoZSBUeCBxdWV1ZSBjb250ZXh0IGZvciBhDQo+ID4+IHF1ZXVlIG92
ZXIgYSBzaGFyZWQgaGFyZHdhcmUgcmVnaXN0ZXIgaW50ZXJmYWNlIGlzIGFkZGVkLiBUaGFua3Mg
dG8NCj4gPj4gaWNlX2FkYXB0ZXIsIHRoaXMgaXMgbG9ja2VkIGFjcm9zcyBhbGwgUEZzIHRoYXQg
bmVlZCB0byB1c2UgaXQsDQo+ID4+IHByZXZlbnRpbmcgY29uY3VycmVuY3kgaXNzdWVzIHdpdGgg
bXVsdGlwbGUgUEZzLg0KPiA+Pg0KPiA+PiBUaGUgUlNTIGhhc2ggY29uZmlndXJhdGlvbiByZXF1
ZXN0ZWQgYnkgYSBWRiBpcyBjYWNoZWQgd2l0aGluIHRoZSBWRg0KPiA+PiBzdHJ1Y3R1cmUuIFRo
aXMgd2lsbCBiZSB1c2VkIHRvIHRyYWNrIGFuZCByZXN0b3JlIHRoZSBzYW1lDQo+ID4+IGNvbmZp
Z3VyYXRpb24gZHVyaW5nIG1pZ3JhdGlvbiBsb2FkLg0KPiA+Pg0KPiA+PiBpY2Vfc3Jpb3Zfc2V0
X21zaXhfdmVjX2NvdW50KCkgaXMgdXBkYXRlZCB0byB1c2UgcGNpX2lvdl92Zl9pZCgpDQo+ID4+
IGluc3RlYWQgb2Ygb3Blbi1jb2RpbmcgYSB3b3JzZSBlcXVpdmFsZW50LCBhbmQgY2hlY2tzIHRv
IGF2b2lkDQo+ID4+IHJlYnVpbGRpbmcgTVNJLVggaWYgdGhlIGN1cnJlbnQgcmVxdWVzdCBpcyBm
b3IgdGhlIGV4aXN0aW5nIGFtb3VudCBvZiB2ZWN0b3JzLg0KPiA+Pg0KPiA+PiBBIG5ldyBpY2Vf
Z2V0X3ZmX2J5X2RldigpIGhlbHBlciBmdW5jdGlvbiBpcyBhZGRlZCB0byBzaW1wbGlmeQ0KPiA+
PiBhY2Nlc3NpbmcgYSBWRiBmcm9tIGl0cyBQQ0kgZGV2aWNlIHN0cnVjdHVyZS4gVGhpcyB3aWxs
IGJlIHVzZWQgbW9yZQ0KPiA+PiBoZWF2aWx5IHdpdGhpbiB0aGUgbGl2ZSBtaWdyYXRpb24gY29k
ZSBpdHNlbGYuDQo+ID4+DQo+ID4+IFJFVklFVyBOT1RFUzoNCj4gPj4NCj4gPj4gVGhpcyBpcyB0
aGUgZmlyc3QgZWlnaHQgcGF0Y2hlcyBvZiBteSBmdWxsIHNlcmllcyB0byBzdXBwb3J0IGxpdmUN
Cj4gPj4gbWlncmF0aW9uLiBUaGUgZnVsbCBzZXJpZXMgKGJhc2VkIG9uIG5ldC1uZXh0KSBpcyBh
dmFpbGFibGUgYXQgWzFdDQo+ID4+IGZvciBlYXJseSBwcmV2aWV3IGlmIHlvdSB3YW50IHRvIHNl
ZSB0aGUgY2hhbmdlcyBpbiBjb250ZXh0Lg0KPiA+Pg0KPiA+PiBTb21lIG9mIHRoZXNlIGNoYW5n
ZXMgYXJlIG5vdCAidXNlZCIgdW50aWwgdGhlIGxpdmUgbWlncmF0aW9uIHBhdGNoZXMNCj4gPj4g
dGhlbXNlbHZlcy4gSG93ZXZlciwgSSBmZWx0IHRoZXkgd2VyZSBzdWZmaWNpZW50bHkgbGFyZ2Ug
YW5kDQo+ID4+IHJldmlldy1hYmxlIG9uIHRoZWlyIG93bi4gQWRkaXRpb25hbGx5LCBpZiBJIGtl
ZXAgdGhlbSBpbmNsdWRlZA0KPiA+PiB3aXRoaW4gdGhlIGxpdmUgbWlncmF0aW9uIHNlcmllcyBp
dCBpcyAxNSBwYXRjaGVzIHdoaWNoIGlzIGF0IHRoZQ0KPiA+PiBsaW1pdCBvZiBhY2NlcHRhYmxl
IHNpemUgZm9yIG5ldGRldi4gSSdkIHByZWZlciB0byBtZXJnZSB0aGVzZQ0KPiA+PiBjbGVhbnVw
cyBmaXJzdCBpbiBvcmRlciB0byByZWR1Y2UgdGhlIGJ1cmRlbiBvZiByZXZpZXcgZm9yIHRoZSB3
aG9sZSBmZWF0dXJlLg0KPiA+DQo+ID4gSSBmaW5kIHRoZSBzcGxpdCB0byBiZSB2ZXJ5IGdvb2Qg
ZGVjaXNpb24sIGhlcmUgd2UgaGF2ZSB0aGUgZWFzeSBiaXRzLA0KPiA+IHdpdGggdGhlIGNvbXBs
ZXggdGhpbmdzIGxlZnQgdG8gc2VwYXJhdGUgc2VyaWVzIChpbnN0ZWFkIHJldmlld2Vycw0KPiA+
IGZhY2luZyB0aGVtIGFmdGVyIHJlYWRpbmcgZWlnaHQgYW5kIGFscmVhZHkgdGlyZWQgOykpDQo+
ID4NCj4gPiBmb3IgdGhlIHNlcmllczoNCj4gPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVs
IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiA+DQo+IA0KPiBZZXAsIHRoYXRzIHBh
cnQgb2Ygd2h5IEkgd2FudGVkIHRvIHNwbGl0LiBUaGFua3MgZm9yIHJldmlld2luZy4NCj4gDQo+
IFJlZ2FyZHMsDQo+IEpha2UNCg0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFs
LnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQoNCg==

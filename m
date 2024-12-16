Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDB99F29C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 06:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9BE181F3A;
	Mon, 16 Dec 2024 05:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qA7bXfwK-zKi; Mon, 16 Dec 2024 05:53:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB21781F44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734328418;
	bh=ZH3xf3loyFKkC7VjCOQLYgKZKvadjjM1dix7l7W6Jyk=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UXMjU1XjaKmHCEiesHHS2m7nJDZzWLK2XpGklOCyqonDeoNh58kH4Z4VDm+TwC/0v
	 3HCeDhPXpG25XLhd7AO6w2p84mYF1YPYnqR+5vjTKwIIdQDFuC03/Lgdlct4Vcp+1I
	 xUw2WUoIxjlAG1gf5tfmtyjSQ8C8wRJj3mz+XCpWPZc4dKJMVM3y9VUR+Xr6VjQihR
	 Dh0nUG0NrRJMlK0ripLPHb20iBvYX68mQckcqeIeG4cskswcGKZcdn8TlM75yOlSqX
	 BxjD76J27zDXRksUu+FjNFxI6k4xAT3BwnrYQ1A7/tjk8H2CkLqAJ3elNTT3EQUGzY
	 g6yQPYEPSFL1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB21781F44;
	Mon, 16 Dec 2024 05:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B0D7C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3CB960A65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:53:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAbdfm8WEIOY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 05:53:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04723608D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04723608D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04723608D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 05:53:34 +0000 (UTC)
X-CSE-ConnectionGUID: nj+WAtutQdWTlhnxqWzpgw==
X-CSE-MsgGUID: mD0MqmkFSqu7yITI0nVDUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="46110897"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="46110897"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2024 21:53:34 -0800
X-CSE-ConnectionGUID: maYRfH2FR1CzrNXG91RhIQ==
X-CSE-MsgGUID: qQeETYTPQym1aOh1Dcqh3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97892949"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2024 21:53:33 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 15 Dec 2024 21:53:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 15 Dec 2024 21:53:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 15 Dec 2024 21:53:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZWtf/2o+mQN/AUT0i9+Gy4jYmZdh0aHpoI9IDZdFdxUwHhXYc7TChXLDybRUCN1NhzvZhliE2zuL5bVUhJ5Cc+cbvQqd7olEfCHa4LNQjKrjIbapVBXLUaKvDF7ppBltiqhVB19nDXwQciM0zsAAH60f2EeL8NzkO2uPgez2hLnsv/72pq55aVyUc4C+0gWFoMHlfjsqXuw/fDxKumeiwFjd2X4ccIrPSYFUTVYSfIlMibM19vpPf1W1Cinp+IapckzZAlNNSWlpFF24PLSUeEccj361HvKLHPuJVF+hYL2PgfeXct3yrSdSScsA3YkqeSSuwE2X+1hq7U/RyrqH1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZH3xf3loyFKkC7VjCOQLYgKZKvadjjM1dix7l7W6Jyk=;
 b=SW0Stqo72YEqpPm5rZsQYa5m3gQ01ppsnW4ZXQhidZsMrQQxNFG3TOUCMyqFHuS6xui+xxl4SYBHqOGYiEQRb5x7HhAaPyC00EunXMDg6S4DAa4sUFunMexLQykkHnonvFaxYoshRGLktjQ7iszPhPoi6YVSzp5Q+Yp7bthOEQBEc6PUw5HJKY3rWu2tR6IH3RmdV4P7emU95powOL9+haLsjGg6KnJdz8N9SBa+sQQd751akWk9Z59YGfpPf2bAw8e8/jCxnZV5fgXQlGcRn7T/rcGwWSUogV0sbi28fy6zCTVkMHJ1N4kzSPk+FZ73N0raTU5Je6JflrS5NJlQpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SN7PR11MB8264.namprd11.prod.outlook.com (2603:10b6:806:26c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.20; Mon, 16 Dec
 2024 05:53:16 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 05:53:16 +0000
Message-ID: <a1c44976-9e88-4d58-bad8-34fd397ba626@intel.com>
Date: Mon, 16 Dec 2024 06:53:10 +0100
User-Agent: Mozilla Thunderbird
To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
References: <20241216051430.1606770-1-acelan.kao@canonical.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>
In-Reply-To: <20241216051430.1606770-1-acelan.kao@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0117.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SN7PR11MB8264:EE_
X-MS-Office365-Filtering-Correlation-Id: 63817175-c490-45ec-7938-08dd1d95ef4d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDVYTjJ0Ty9aZTdjSDFSbWRnYkVCRm93SlVoamkyZjMxb2RDVlZyS0hyaldD?=
 =?utf-8?B?M2ljYVhOemlndTZRRUNDOXF0a2FWeSttWFBIMEE0cGpJTG9Kc3hoeEoySEtz?=
 =?utf-8?B?TWlGQmg0Nk8wS1EzaTgzSUpDYW1jNVhtekZrMDlJRUI4a2lCeFoyNHR5MVVS?=
 =?utf-8?B?ZU1qVEFVbkJFb0g5OW5NKytPcG9qT05pUzF0ZVJha0xBSXJiT1VuUEVHKzc2?=
 =?utf-8?B?MUtYOEZjODdiSFVmalFrS2ZUeFNKcTdoM282REJzTTZsWVZGUkNya2xxenc4?=
 =?utf-8?B?ZXNrZ0pzNTQ5bXZaamRzRk1lOWpEa2c1a0ZrcjJ1Y3pZSGN3aVRqbHYza1V4?=
 =?utf-8?B?bjdyTnBSU0NTRnZXVUhjNVNCZURxMFJOeTFyem13bEhqZFhoTXBkMWJYL1FY?=
 =?utf-8?B?dDByVkNkR2RWVE9OOS9aQmZMZk5idWhhYWJIWGw1ZTFJeThsQjI4N3NpQk9m?=
 =?utf-8?B?QzRMQ043aVMrVGFpN3NiUDNkSVl0aWVkcXNWUk5TQkl6RXl5NmZRbHVOU0xP?=
 =?utf-8?B?RURHMTIzdkZJM3hDMzNKOTJwSkdBWGlEVTJ5MjhLODFFUm4xME13R1AvcGVN?=
 =?utf-8?B?bDVnRnNKV1UraUNKeXU0UGEyek9OU1V2WkMwUnoxNE1meDlRcXNIVU00ditq?=
 =?utf-8?B?a3RGQ3lYbFRjdUxMWnI5SFhpY0g4VUxDcGVDL2E0MW1WSkVhVzdXVVRoSGVU?=
 =?utf-8?B?RVM5QytsQll4RTZUQXdsVlJQZ3lmdkNBSFovRmxDYml3bTV5ZjM1UUZ5L2hn?=
 =?utf-8?B?MXA0bktoQnBtRXZvOEgya0VTVXJqZEpFN1lEaTUwak5ZRWJwRHJ3czgyMytC?=
 =?utf-8?B?Y2ozWGRaSXRnTkFaVWpCL0JMcjgrSmM1QmlTa212MVpMS3hxNHpSdWtxSlQ2?=
 =?utf-8?B?WlcySWtSTURVMzhzbXh5amZnalBYVHJza2ljQ3ZBdkNuQ0dwRDJLbWlCTHV1?=
 =?utf-8?B?VjcxbUpESXMwaVVaK0cxaGMwcFAzNGE2Z0UrbE9CYW5GNlVOZm1PeWh5cWJ5?=
 =?utf-8?B?L0w4RzJjWUhQK0I5L3BIS3hpS0lqY2wvVnI0VjR4VUpBcE1yeStwYlQvd1Yv?=
 =?utf-8?B?YXBjeGVibWorVytQTDFabkMwTXB6QklHamMvYkVvSFhkdUpJZFk2N0RBUWNX?=
 =?utf-8?B?ZWVFeUxHUkMxSDRHeEtXZmZjODdCSmtwbGU2Y1FBaUl1enpkV08zNngwV2c1?=
 =?utf-8?B?ZEJRNXY1ZGd6MWRUckVlcjdhS0ZzUTZhZ2pVdHBPbVM3aHBqb2YrS1E1czNo?=
 =?utf-8?B?R2tuQXVBSEtJWDk0NUxXU0lkYkdtejgzSUdrV2UxM2Z4TzBKR0JmTitFak45?=
 =?utf-8?B?ekEyTDlpZGJ0aFBqNk5sYWtaNGUrcHJubGxiQmZlRDZBaDdVN21lOHlzQnhK?=
 =?utf-8?B?NFhGbE5sRWdxNzJ3QVJHWUs1bCtOVFgraVNJOUtUQjJJZ3F3RW1IRVdCOWhG?=
 =?utf-8?B?bWwxZjZIWlV4SkxUelV3SCszWG4zay90THpEb0FMSXZhcllRQWhmemdGcStq?=
 =?utf-8?B?c2ZaV05vZzFWL2ZNZXMvQ0dKM3c2ZHhRaUY2dTlOK2kyNTdqL21POVpsVng2?=
 =?utf-8?B?RDkyRFhyR2NYN080cVdZYWJ5ekt6K2dIenlqRW5zdDhHdm96L3QxaXdYaDNs?=
 =?utf-8?B?eWg5Y2k2MFA5RjVCTGNzNHZPdHRzNEFXK2VwM1BnZjgya3M2a3J2UlcxQXBh?=
 =?utf-8?B?am5pWldMOG05Z1owdXhRMFg1TEV2VU5mWm45RVpXSDFmbldtb3pKK281bnhF?=
 =?utf-8?B?QkdnOEJWbXROS292Tkxtemk0bUJxK0hMaTJHK0RWczVMNW02ZEY3dk92d2Nu?=
 =?utf-8?B?UXVVYVdKZTdhS054ck1zU0lRSVFzTXRHS09SYTM0VjY2QkV0TVdTSUR0cmMv?=
 =?utf-8?Q?Lp2JDUKfnemxD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzR0T3pTbmlzTzN5aEpGcExrVDdvWFlLSnZiSzlMQWxvSkJOREE0cVBVSnpk?=
 =?utf-8?B?cFJ1dll4ZlYwRXVIelM2anJ0dDMyQkc2ejJVWGU2TDFSRTNIY0Zaa1hNU3Zr?=
 =?utf-8?B?MWZKektHZVVjL3dHdVAwczlnQ0dKV25XcWpIOWl0bmYzb1FlL1lwK0NVaCtG?=
 =?utf-8?B?RXFKcVNvL3l4S28xT0k2N0NrTVBCd3JQNVlJNzFaQU9jdVI1TFRZbGNlTkcz?=
 =?utf-8?B?c1hPaVZyZVZpU0N0YmJVR0MvajZHNkZqeDdTZ3Q3akRFU0x6ekx2RFl5dzQy?=
 =?utf-8?B?NFV0MGsrd2QxRElSYmExN0VBdUpuSTM2c2JFVWVja0lLc2xFWHI5cFpPN1Ez?=
 =?utf-8?B?WExFcHVYdzFyQml2dUdnRDQ5a1pwQ01rUjBkdDdPa2pobWo2V1FmdWFsZ2xR?=
 =?utf-8?B?SytGL21wK3dnMHprd2JCN0szdWU1OGlmSUNiWFVzY29OU204YjhvVUVFTnkz?=
 =?utf-8?B?SXBITmdnNm9ubWwyK2JmRm9WNncwUDZwSkxndGR0aVRsaktzZXREc2hYbWRp?=
 =?utf-8?B?ck1kbVNkQzBDRlpidS8zdEhVWWg0M1pwL21QNkI3SzdtektHNG5TVU05RkFi?=
 =?utf-8?B?MzZRWGZlRlN3dnplamJHSzMxQWV3NWdOTGJlNHBqWlZoclh2ZUczQ0lSTFBM?=
 =?utf-8?B?aDFnc3ljMXFyNXdCRU5BVnAwN3hMS0FGd1pCa2hNM0xSeFRsMmJxSDZLNW9u?=
 =?utf-8?B?ZWlsdWhDQ2l6bFJ6UHFaSFR4RTJRaHl0UmN1Ky8yZndMeGJ6VnhTZzFwc1JL?=
 =?utf-8?B?bUxhU083N1IwcS9OSVJRZ2srT0haWWlWWGVjaFlZNHBFTms3d0RMZlpJem1u?=
 =?utf-8?B?ZHo3QWE2eEQ0VUZndC9PRytUSmNCKzljZXFIY0l2VzJVcjcxSGo1QUE5TDcw?=
 =?utf-8?B?cHZ6cWNDVEdYbzNaUUtIVWtaTm5qNzlUTTJPNzNDWmpYMU42NzZpbHhpK0pX?=
 =?utf-8?B?MGR3bHkvakRTMU16anNuTHV4UDRHVFpOMUIwUlh4bWUrRVV4bExkVWpqcW1n?=
 =?utf-8?B?UnNNK25JZ1FCcjlNMEduaWFpSkxraVliRy92S0t6R2ZIdUdyMUcxbW9TaGJV?=
 =?utf-8?B?cnpIY3c3Y3dzeEZLampEY3BMY1M3WUJQTHUyS0d3TEpSNGwvOGY2eUNpL0tr?=
 =?utf-8?B?Rno4MFAxUUYycWJya0dCd0N2ajZiK2ZQZ2VYQjRnN1F2djBldlQrcFVOV0JB?=
 =?utf-8?B?NXpoVHFsblE0OTFuOUI2bTZsTTdRV3Ayd09ndDNhOEJ2L2dUdzcyUGw1ckdq?=
 =?utf-8?B?SWJDd2ZaT2l0Rmdjbm56YWdsMkxhM0hYNldTcTVsdStXVE9LZG81ZjQwY3A4?=
 =?utf-8?B?OEhWRGp6RnpLRlhwU1RpZkJ4RExqZmI5SmZzT2dTV3F4TkROUnE1N1JiZmdU?=
 =?utf-8?B?bXhkbVdmOS9LQnJ0M0pTSHVKblN4QUtMQk90UGhKcnhZbDBXYlh3bzhiTTZy?=
 =?utf-8?B?ZjVlUmNHZUp5TFU1blJEbS9NNno2UnBWY1IrRTlMTnN6MjZ2amFPMTNYZ0lT?=
 =?utf-8?B?c2dUaTNhRTJvK2JRdkJBYWpkQVpDRXNHaGhCNVhkWEd0UkVqR2taVDYwUmx2?=
 =?utf-8?B?MHRkbVE2VlptdXVvbGlxMkt2YTZ3cTl2TVgvOVVxQVp1QW1mbDVVSEVNTEtV?=
 =?utf-8?B?UEMrS2hVVTFpcndVOWlJeXpHV0k1d280TG5RbjZVYU5GZkd6RFhLQk1PRkky?=
 =?utf-8?B?a1F0TkVVNnhUTWQ5ckwyM3g2WHBzNGc0MDI2Tk9ONXVXSzFQVTRLU0hUU2s5?=
 =?utf-8?B?dDJ0cUp3N1g3WFJkc3ozUHh3MDBBQStMS0E2bDFTQ1JDMFFQUlQ5bnJPQ0ZJ?=
 =?utf-8?B?Rnp1YTQrbll5anBYc25JQ0J5eDBJWWFlZ1FZRlYxWVFqWW0rM0hGUEo5R3pQ?=
 =?utf-8?B?eFNRYVVPKzFpWjFZN0RLWVZpRGRac05UYTBWMmtvOVdpSnFkRkIvcDRqRmN6?=
 =?utf-8?B?UllxdlJPZ0JkSm1LODhPK1IvWiswQXhSQVJpVFlPcXI3Slc2Q1cvaGFEY3I1?=
 =?utf-8?B?YWk2eklNcElOdGxTMHUwZXZJVkRCckVhM3NlN2Jqbk96UzN4cTFoRkVESXY1?=
 =?utf-8?B?ZEZaa2VXN3FMS1phM0NWekJLd1F6SUVYcmxVK3E1V2pqbFBDVmhyclVwTW1J?=
 =?utf-8?B?cGxFcVMrenNiODNjMlBRQlVZRGFGbTNlbnlZQ1pCdk1DdHJBRE5oTGJCa2dP?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63817175-c490-45ec-7938-08dd1d95ef4d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 05:53:16.0456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ETJGhSWoyjZ4+YMXebzqhQw3RwK4IYxL16PX8HhCjhD2NepxiZ3Wss4D4mek9m4q5PdUsAi3QRV0n5P2hU+XMmrqBMHCFlL3PqmBPfa9CqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8264
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734328415; x=1765864415;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cOL4PSgH1VX3AX/UAaEbUe62M1HGz1NrJWYvGDDajCY=;
 b=mRwWczMoo2XYIZmPXTiMPz8riozbR5rVIUlYmh0OvAigrxrM5Pq3/l2h
 RpMYB/zsIV2DTbx8MrXu+UHRCzPvvpIB1XB1DFI+BeodQhoXgod7w/DNM
 7w9D50gsKxdMt5L193TQuXL90I176+mdsHphr5JISi7VuEUKQkf2B4zVc
 c2PNtVrmT+fx3cEuN5FDC7h5yQFTPQhX5v4IEs5QL+1LljCgMpNPjAg+u
 RiXbmWLefgq3LiTKYZba/Q1JwD4vjymNnDKbNiwAuJ5TC16V/Jw0o+JZG
 gzex4kBOFbuhBMUUbUZx/m57ud/JJk84B9mJD64NH8LhQPKuHyl88lpdp
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mRwWczMo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Return early when failing to
 read EECD register
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

On 12/16/24 06:14, Chia-Lin Kao (AceLan) wrote:
> When booting with a dock connected, the igc driver can get stuck for ~40
> seconds if PCIe link is lost during initialization.
> 
> This happens because the driver access device after EECD register reads
> return all F's, indicating failed reads. Consequently, hw->hw_addr is set
> to NULL, which impacts subsequent rd32() reads. This leads to the driver
> hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
> prevents retrieving the expected value.

Than you very much for the patch and the analysis!

> 
> To address this, a validation check is added for the EECD register read
> result. If all F's are returned, indicating PCIe link loss, the driver
> will return -ENXIO immediately. This avoids the 40-second hang and

It is not clear from the patch what part of the driver will return
-ENXIO, you have put -ENODEV in the patch, but it's ignored anyway.

> significantly improves boot time when using a dock with an igc NIC.
> 
> [    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
> [   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
> [   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity
>

Would be best if you could also attach the sequence after your fix.
Please add a Fixes: tag.
Please make [PATCH iwl-net] as a subject prefix. Please CC Vitaly.
(But please also wait a day prior to sending v2 for more feedback).

> Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_base.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
> index 9fae8bdec2a7..54ce60280765 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.c
> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
> @@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)

This function is used only in igc_get_invariants_base(), which ignores
the return value you have added. I would expect it to propagate instead.

>   	u32 eecd = rd32(IGC_EECD);
>   	u16 size;
>   
> +	/* failed to read reg and got all F's */
> +	if (!(~eecd))
> +		return -ENODEV;
> +
>   	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
>   
>   	/* Added to a constant, "size" becomes the left-shift value


Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OicGLf6g+2lcegMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 22:13:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C59CE4E0157
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 22:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A6E560EAF;
	Wed,  6 May 2026 20:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E30_lie8ioJa; Wed,  6 May 2026 20:13:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F36EE60ED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778098426;
	bh=Aj6wpVxJbXSSTMghaCwK4PU3+NRflPe7NST2umUPqDU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=od3fc0x6Z6a9tKQYHkIFOT6XXpaZMk1VMGE7WUj+jQhXU92m5dteQXQXkabgEO1nA
	 igD86G5jfwxFu87eKYCSKKpFlr3S7a3D0D3BSU3eA6K5irbr5voyQasVbhvHCgpIiS
	 uE8CC4lMOAaAoDvptHUC+aXEkG7twhu+si+hbqxssk9CUOBSHcR7Akdgsxq2ZMthzH
	 dIRNRkfvLG9ARVb4rL9Z2YcXW10dBxBU+fAftYqgGVioQ2jeH7B9PvSL9lL5oczi1H
	 DrAfeXuL5NgaHuJ2wB6nDu5eCbvWzDs39fVlQ6pR1JfelhFonnryU99P67CZGV7o7n
	 XRfaX+ilwJppQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F36EE60ED8;
	Wed,  6 May 2026 20:13:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F6F7280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 20:13:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C7EA82FD7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 20:13:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K3HHax7oWfSm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 20:13:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8842B82C8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8842B82C8F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8842B82C8F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 20:13:43 +0000 (UTC)
X-CSE-ConnectionGUID: wBD8VYlRQYWhziV2C2qa4g==
X-CSE-MsgGUID: D3rKpGLtRge6eTZiD4SRKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78975852"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78975852"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 13:13:43 -0700
X-CSE-ConnectionGUID: VuWyAVICS02tcVa3VnEr+A==
X-CSE-MsgGUID: hAvqRqLzSBeHrf+BrgXBCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="233140831"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 13:13:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 13:13:42 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 13:13:42 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 13:13:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LddH+l7FstQJp1kkLqffGUt5GhTx62eDvYnsumezjRzCgzN00WPHvHVI2udkWu0c7QpyOpYJ/1YBWv7LvMUkGNIKB2yhLI4ZLaX3E8Gj1EBVTe/D5JaLRF/TC8WKRO/O/VglhbyNU/dz8EEoq4m7Es+3EgNj/qxsiu0mxrISrAQF7pPvgRw6/QbGgUUGKw8AcqrMacztmwsPEaqBMc90FXZqpTdZn53c4b9uhL+0HHXuvQcZ3U4/cTyCyi+MC9lVXuZYgoGApKVzZ3iH9gPoGl62li64AYGBWM5FRiVNW2+1PUHNsun6/bdR8uSAWhn/Ql4tMc8vJIUamREtZCYTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aj6wpVxJbXSSTMghaCwK4PU3+NRflPe7NST2umUPqDU=;
 b=ixBqUvNIMnrdmBryD6HS8x5A8qli1NktEuM+mj/CjwDOECGHNDnWbdxpGb0N5rFJ04ab5zee9jPt4KRgW6AOkps7bZ+CGgkYyHWQ0QsfYY4pZRSOu/KRNyWJ5bPrw2mXeIZw5rZ6WnV5MjuKZ317TxFvhOEBk3MA/3/rIhXKdD4M0l4+4w7HI11Wuzn9jWEs43VvshdAcO2fIldek1ybgrw83gmusb5FnltLIUwzveGcLyDDnocw9M/0Ni97cjaWyVZ3nKYS5d25QcURJ6qRfxCnRNPW7UPlE1Jv0GyF6FSJ6uiVwYXOYI8qllZscxzJ80RpDtWE4RryXgUthq82sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by SA2PR11MB5196.namprd11.prod.outlook.com (2603:10b6:806:119::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 20:13:39 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 20:13:39 +0000
Message-ID: <56f5f3da-31b8-4847-b274-ce140bf39617@intel.com>
Date: Wed, 6 May 2026 13:13:37 -0700
User-Agent: Mozilla Thunderbird
To: Thorsten Leemhuis <regressions@leemhuis.info>, Dima Ruinskiy
 <dima.ruinskiy@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, Linux kernel regressions list
 <regressions@lists.linux.dev>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
 <b60a7ab8-dbab-4684-abf4-4dd2a9024f8d@leemhuis.info>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <b60a7ab8-dbab-4684-abf4-4dd2a9024f8d@leemhuis.info>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0086.namprd04.prod.outlook.com
 (2603:10b6:303:6b::31) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|SA2PR11MB5196:EE_
X-MS-Office365-Filtering-Correlation-Id: 10b4abe3-9e6a-48ad-35d1-08deababf649
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 3pFnqhfpgdAvZ1zOAC3QbW2jEMgVSsDOiWp1ElAYsngZiDI6TpY8HppG6wie9dTRk8wQYjktWNmaazWcn7dBTE6VQDhebzOYUZbZvQswoO09rbnE2TIROhyzsPvf24pqFn022Hz5oWyqg0wOVf68JHb/PbafrbM9NIziWcp1HxMkYvi0EJ1lV1Wf9jEHbm0pKKUTjwLBIoC83tWx2NYBwKi7S3TkdkjOstZl7id4nHTu7vYOn20RwUCxog+hqQEm850lhqq17l7F+Zl6I1ljmXzdKpmbW29ap29jr6IaHmJWKCO6RqxTt3oyOTN/IQXnzkN7Q2QhsSAntpSXY7RQD6Z+EGCNLSJst5eLATcBaNsTI7DWtt2ZiuU8L9yifNa/bsiPy3eirR8xhazUZSyXwuDIHuum+6wAUuA9JbBXVUi7zKZnTQ3TUqvmRpkPUfK6cQArO0tNNgNd7U847zT8/vxj+3dWvqDU4WO/49C7PygG1uXWth+12/wFSISxyXzSsVawS0hJKehdRywyON+I27L7zbeRVaqlXby1d70AymDRuE/FPXtUi/JOhEYE0ECFQ+rsSPZOZ4HJzofT1uzABajCda8tD6nkOKnHVpCsv4nLSbBOSccUFtYu9ONechl9dPDFhly0OFqK24uQLgwk5t+pVMz4I/MdE41ut0ihIDm2gUc6w3+YqWINlNlYZW0J
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUZBdXZTbkVVQlJvUitHU0JRN2J1Wk9PKzh1dFFvRnErZFR1V1Z0VnVNd1BF?=
 =?utf-8?B?MWpnZUlnQm52eVRCRjZHeFl1RHdVc3llWEd0azg5WUkxbkpEb3I2VXpJOWFW?=
 =?utf-8?B?NVJHL3phd0ZPUXM0RDE5TUJxbTAxQlR6Ri9hRk4xZVZYb0YzdTRoSGtFWWRo?=
 =?utf-8?B?VTVFUFVCMWxROFV1V3JNOXpBN2hIcXZ4SVVwcUZ3VXJNWmNpRG50NFdsMy9K?=
 =?utf-8?B?b1dvSXBpWUpaNUg4WGFPMHdqbEc2R2JaMTVUMkMrRVJMV0I2UC9BRlV4c1ZK?=
 =?utf-8?B?QWIxYTA1blV6cURaaVkyazFvZm93Y3NIWGR2cVpRcDRWMVczZHVtQmZnK0Z2?=
 =?utf-8?B?UWpvRGNQenBKQ0s4S0cwbFV6b01kZGdVdFNmcmlPb1BlN2V2ckV0d25od054?=
 =?utf-8?B?VkJwbTFZdnJ4dWxPcnEzOHhTWU5GMmZwSE9SVzVST3laWmptMFNlZWZuV2hk?=
 =?utf-8?B?NFMySGZoYy81cDE3VG5MQldyaFozenJ6dk1HUXBkRFpZOWp1MXRSWXlySE5W?=
 =?utf-8?B?cmJTSndOTnNIYi9NdEIyeGs0UWhEY3JYSGdoZDdsT2R2MEkxM0N5OTNBWFhn?=
 =?utf-8?B?TmJ4T25tY3NoL1pJV3d1Z1QvV3ZTU2pOQS81QmNBSUNNOGlFQU41bTliTFhH?=
 =?utf-8?B?WTVPMmZKR3pVRzFTSVBId1F2N1RGREY3S1MrOE9HdER5MTAxWU9ubGdYUzBr?=
 =?utf-8?B?ZEVMWUc0dlhpRHE4VGlpTXNpNzZJd01JdXVzcmMrakEveFEreFhBNlB3SXJ0?=
 =?utf-8?B?NWl4K0lyNlhORnRFRkRpeUxIbGpNZXI4WkdJbGEvTHV5SXhkNjV5ZWJhV1k4?=
 =?utf-8?B?bEhpcEExRnJ6Nk9CdlVuc0N1YnM5NXI2bUxBTGM3d09ndms1VGNQdUg3NlZk?=
 =?utf-8?B?c0pFM3pLKy84NFBXeFdlSmpUeWRVbWhsZkZPK0V6M1Rta3h1cGhUM2ZJTS9X?=
 =?utf-8?B?dzVUcWRTbzNIUUYwRjhRbVVNTmFDWlJtM1VMbGIzWWpnZGN6enVvN0EvK2lT?=
 =?utf-8?B?U2UxazU0bE1XcVNrYnY2S0hsTUorY2svMFdkRkp3MDhMWWx4YVpPN1J4eVpM?=
 =?utf-8?B?QURVOFdudTZjVzZ0V25vTktwb0tFempuamxBZ0pvM3VvRWJ1ajNFL2hlT3lY?=
 =?utf-8?B?YVRGVExqa1NpdFVWaXN6d0hTS3IvSHBTZ2ZwUlYrMXp1UTY4Uk9KN3QzMnAv?=
 =?utf-8?B?Q3pEYVdlWlhTcnRMT0FCRHkvRkFGT3hRUHg2eXR4bzRwMFdKRktCcXBBY2Fv?=
 =?utf-8?B?Y1RGeW1zMVFFVHliWXFUQUJpUlIyQm12R0wyMmhKWWk2cCtZWjM4bDZXbG5Y?=
 =?utf-8?B?dlA1dEpLVk53NjA0TnJtMTRUbGlxZXBlWUoyNnArSGp0dVpBVE5sZENTMThh?=
 =?utf-8?B?elk2TFBMS1BLL01YY3lxSTlkcVRNVDkwdG1qZ25ZelhpMTVMcUp0NFZIUXUy?=
 =?utf-8?B?SnNuNXNjUWpWOENDZmg2KzJuKy9jcFhFWTkwb2E4ZmVpdnp5VVYzQkF1cnIy?=
 =?utf-8?B?WEpiT3pPaXFIZVF6RjJXZ25UV0JUTXR5RzVJYzIvczI5YVU2S3hoME8vdzNp?=
 =?utf-8?B?YUcxTTZ5U1dLTDc2d2NHeGhBVGtVNU9VRldSMnlQWjlXb2NhWGdMamhEWi9I?=
 =?utf-8?B?bWxwU1JsWTJ4dmZwZnQ5d3JVL3J1a2ZwSXN6aG5kV1VUM2d2ajJVKy8yUFZJ?=
 =?utf-8?B?dFlKOUpUOXBKVldLOHlyb2Y2N0hHQUovR29EVno1d1hETDBnRnFVTGhXSnE2?=
 =?utf-8?B?TUJNR1JycVczNmx2Ulk1TDFad1FERWhtb0dNUVA2cjRJVTY4WDBRcC9sdXZP?=
 =?utf-8?B?ZnltZHJkL2hRRzZmYTFNNUt4cDlGOGN0QXpHSkFLT1I2dUs5UXEyczBuWjFT?=
 =?utf-8?B?RUdBMC9Ldzl1TEV6d080MUFqR3FEK3RpMmRpWGhxQmpFWlNJVGJ6MHUrV3Rk?=
 =?utf-8?B?dEVaRmo1QkhITXlWQ1hORzZFcTMxdFJtQmJtWVBuc2JXeWR4Y3UxR0NZTUk0?=
 =?utf-8?B?WURXbmI5TFN6OUJWamRhVjVjd3ViOFpXdVpTajEycytodmFCQ0NHUWIrbzQ0?=
 =?utf-8?B?YW8xM0d5enFaelAwK0ovZ3QvREVGMlE1bk5UaUhzbDZla3Bwd1hLM0V0MGd3?=
 =?utf-8?B?Q2J3S1pyeElrV2dwVXowcDBNdVFrVFN1WVhJSHVxNmdOSDVvbC9CdE5RM3pQ?=
 =?utf-8?B?Z0k1M1ZBS1pHNHpHSTlObXJHUFVzTUFWMTl5a0JOMFdHQWRydGx0RnZCTjRS?=
 =?utf-8?B?bzBPMkN4ZWxRTHBNYjBTZTlZVmJ6V2d1cGR3azJ5ZE4vM1ZrOFpER2NNZkVT?=
 =?utf-8?B?aG9RQi9RalUzcVMzUEFsb3AyOHMyUDRRNDRua0xNU2c5VVVUNkVZYzdnb0NU?=
 =?utf-8?Q?tLAC2SCE+sEx+nZE=3D?=
X-Exchange-RoutingPolicyChecked: F+4ymyTpWbmoW7gswr9NBbRpcmkmdnT7B9B7+tGpgBnMFbw3XTie+owoCRp3wK0XP8QnpOX5C2hnf2PgdZrm2fs2RjhrW7KevCHWBzgT32t61uPlZnfz06IusmdPShK/R/dq7mqKRvW96oOIymMDu6ZuUkub7suybf8o8l+KSnV370RdrxQDaVZOPhCuaTrO9YMGOrqBavDDsSbYvifGQgvF6IoPgQXEmPWMUXD/zxlxwGGrhp1Q+Y2L/YjaP0EZrI09jvNm4oLk1pM/z85cPrn0zXqScD3LWJK/9ziE+0kqlALuzUkARSyxsLSDH4Bb/T8W+jNVLp7paNYb7QRKnA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 10b4abe3-9e6a-48ad-35d1-08deababf649
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 20:13:39.4514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ozdDWj1w5eOp0xovyXBOdf57FGn162B84EWPj0nWL4Dbf+3vze0WAmBBg7Ap50P3644BuRowcx5JTQFNJGEwGJOFNtZmCCUCvX1N7UkRURc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5196
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778098424; x=1809634424;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aIIqNlLAP2AxihKSHlNCd2lHZlLq0Zs41+skwJcANHg=;
 b=T0oUyrbvpaAagoTc+RaWUrliy9JzVxhqx49EfqXIaHYAsFovd7xHcS/I
 ZvR2cfLnMb0XOu2HbZNmAJpyctsKKCFS7FHafw44w2bbzjqLv4gbs9ZY9
 6XHXs2YDApfsJwVJaqafa8gDnz+P6ohPfUp9HmiK3XmbJrmrn6cYefamY
 Sj8bkCbEFbRavd/mcINvztUkQJmpnkPf+diyDqh/atk0puhIuGanpCIVa
 goXXO34D62mq+w3zMVT0devTzlPf5DBmmHEAa1lsAjjWt1zOze4x7oS08
 aDybF3US8S4JURcoTBckZG8InWXd9hxR2YLmRKsmOVMvcys9pfwrXsYPZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T0oUyrbv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
X-Rspamd-Queue-Id: C59CE4E0157
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.29 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:url];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:regressions@leemhuis.info,m:dima.ruinskiy@intel.com,m:anthony.l.nguyen@intel.com,m:regressions@lists.linux.dev,s:lists@lfdr.de];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.841];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,osuosl.org:url]
X-Spam: Yes

On 5/6/2026 2:59 AM, Thorsten Leemhuis wrote:
> On 4/17/26 12:43, Dima Ruinskiy wrote:
>> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
>> disabled K1 by default on Meteor Lake and newer systems due to packet
>> loss observed on various platforms. However, disabling K1 caused an
>> increase in power consumption.
>>
>> To mitigate this, reconfigure the PLL clock gate value so that K1 can
>> remain enabled without incurring the additional power consumption.
>> Re-enable K1 by default, but keep the private flag to support disabling
>> it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
>> be disabled by default on known problematic systems. Currently, this
>> includes the Dell Pro 16 Plus, where the issue has been reported to persist
>> despite the changes to the PLL lock timeout.
>>
>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html
> 
> What happened to this fix for a regression first reported in January? It
> looks like it fell through the cracks. Or was some other solution found?
> 
> Ciao, Thorsten
> 
There has been a bunch of back and forth discussion and varying versions
of a fix for this. Its still in the Intel Wired LAN queue, and is
currently waiting for one the E1000E team to report testing completed.

Thanks,
Jake

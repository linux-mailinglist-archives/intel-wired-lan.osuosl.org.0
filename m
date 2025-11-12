Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB90C52974
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 15:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D43840AF7;
	Wed, 12 Nov 2025 14:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W21RgJe0Hd1v; Wed, 12 Nov 2025 14:02:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 469EF40AD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762956129;
	bh=JTDsVsFmg3atOCOrP9CIHYlryQWiw/w5dEXm96hcgqw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k0AXIc01n8FHT+IQHDzQsk8551Y807Z5C+zWwwe7FfZiS1Cbom/4KzLzFuQ1u/iXT
	 CLNMxzH7KgtmMhxItZ/JqnYfeyoObcT1NdaI7DI/b9LYjSJn7QH+22wgHNewUUKFmY
	 RfIN+rRzH91zuz5efKlkmtCfNgel/PtfNmCTnVI1hi4XUng3VAzQ0P1aFg1mf9NT98
	 DpfmXQZ/6tbSZKgnjxIpkWcjIdCiCH4N7wisNvvfpvU0OrZ7WTXqnCNTIASkj34TkW
	 K611TUowRaLpMFapcob3sA3r71IMcHXz1LnlOlmZW7Ps3VYaVgG2VtBI0/MkkyO6cg
	 0PKbAc+oRBqiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 469EF40AD6;
	Wed, 12 Nov 2025 14:02:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF981FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 14:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1878408B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 14:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PREcEcuYOK4C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 14:02:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF712405C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF712405C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF712405C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 14:02:06 +0000 (UTC)
X-CSE-ConnectionGUID: qxZaQH+vSfWBj9nXrPGBmw==
X-CSE-MsgGUID: FdpB0PFbTK+uX+sJ71NQyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="68652586"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="68652586"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 06:02:05 -0800
X-CSE-ConnectionGUID: 8VovosLZSvO/YOY1bAwX8w==
X-CSE-MsgGUID: sGpAQC/DS9qB030NUCAMuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="188997532"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 06:02:06 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 06:02:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 06:02:04 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.58)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 06:02:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mJiLko+olUGpPOMXSy25CraFimAutGT8K7mH1RAlqDc71cd9EyTA2zZZreJr5vLJPvmipqeG4SIUNub9eBPTI+y0wiGhRgZafito3jJ4Otq/0s/OBd3iIyIayQD2eyWbEIsdDG5939kMKejpcQlZ3XnQ9rAaQAZSeg+O8jaKx9zSyBwpuS8w+bT1P5yZRjYw5XUNdE+opNJuIm3vdaSPpiX5JBf8xvyX9wQ11hk/+Yej/QKfPfbIPnDBDEp+uGUDuggcr1rqRlwrKKgM4yy/WFUCAyCRHpZZhFTZvFBtJBHFe7/kwabu2Tw20JAXQMKzmy1c//jlAQgLIR3DoKJwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JTDsVsFmg3atOCOrP9CIHYlryQWiw/w5dEXm96hcgqw=;
 b=xAiJctj0b4R+VVHwhw3mzbfkcCRNerlzLWFK6tUfINQisR6JollyANcvFlemHuetXpuvdghdKy4LdAh8vwAT7ivJ8jmiNmShpMLAaY0lC/bsd9J/W3xe5TDRRt1pBB+tjbinrfIxYCXmJP0HaGWh+uTY1yui9po8A2HKPaJgxbCyy3ixEDOp6f89VebWs27nHmUxY0KqY6t5eEoXuTwBIrfqdn37+8L842AxVedAkWYZ8M2xb6/PUPs++o4YGa+U907hg+McTCgJtMF12ANkcbXCkbfjiWz4xQhFbooiAEouDuN6pZz5Qo4p5NvBR8pQbIfO2Z7y0FsrFBZOzQE+7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8502.namprd11.prod.outlook.com (2603:10b6:510:30c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 14:02:01 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 14:02:00 +0000
Message-ID: <8f726e9a-84c0-48fa-adfb-492dc9f32eeb@intel.com>
Date: Wed, 12 Nov 2025 15:01:56 +0100
User-Agent: Mozilla Thunderbird
To: Cody Haas <chaas@riotgames.com>
CC: <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0344.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8502:EE_
X-MS-Office365-Filtering-Correlation-Id: b12349fd-1c87-4052-569e-08de21f40ced
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzBwUTR5djN5TVlJbkRiQjBwMTRoV3BaSjZRQUJOMHpBSUE1ejI4Vyt1b3hz?=
 =?utf-8?B?OTExZGVKbVEwUHVGUjdQSUJsckx5dFNBb0x1T0tZWnBzNjcvdSs0dkp5T2xT?=
 =?utf-8?B?OVpVZU9wSGppS3M3akV2Nzg2V1BNRHlIamJaUzB2b05UeTZQWmtWTkxodjZm?=
 =?utf-8?B?MTREQ3Y1ZWFFb0JOWjljQ0o1cVJhMUpDZFcxRGRJRVkyRDVBYkhxRGlIQVRJ?=
 =?utf-8?B?Ujh6dThaTDZEVU1Yd0VKbUdET1NtK0pzSy83eWw1N0d3a2w2L3BWYUZEY3Nw?=
 =?utf-8?B?VnRlb3VIMWw4anVKckpiUUVUZjNxMmhyU1JNeHJSRHh6UWd3M2wvQ2w0NDYw?=
 =?utf-8?B?U1FJamRwcnhJU1lPVDhBTEpaZnlFS2FUeS90a1FPbzZkdm02RXhHZmtQMXI1?=
 =?utf-8?B?OW9BSVZVSlZXb282RDFFeDJHQnZvTVVZOFplOEphb2Z4RVp2dkREczkvbjBT?=
 =?utf-8?B?bG5tWWhMYVhEQ0pqUWUzTEJvenBIeUVKRm9mZlVPNlJTTWtqVzBzZE1PVTB1?=
 =?utf-8?B?emgrNERsSjBtTDlVOUtDMHFqR294SnJjTGVFdU5wcjN3eVd5OERORjB1Z3Fh?=
 =?utf-8?B?ZGNEQUZEZUNHWStwdmtkaTBDa0R2dTJTOHA5OHNWUjlpblJmeDhvdzB0Tm02?=
 =?utf-8?B?bFB2RE9yemFsZm5DQUhoTW83L2F6WW5ocFpwc1R1VnkxSzZOSjI5emIvMG5P?=
 =?utf-8?B?ZWNYcjM2Yi9oNUxTRWhoZ3FGZWFqQU5BYkUzR01DRUNxeGVHaVZKRDlQSnFm?=
 =?utf-8?B?alRyMUtMZDF4QWpicElXUEdTNUxiRnEzblUrSHRmK0VGZi9XNlRYYkpyVGhB?=
 =?utf-8?B?d0svTjRLSml2SHQvcGw0bTFKcm1jK3gySm16OGZKVTlhZElMdGYxbGlxNmIr?=
 =?utf-8?B?c0l0R2JCYnFtdG5MZHd1ODlybVJET2ZIWmY1WVZLMVQxb3A4MFBzMHhpRm9h?=
 =?utf-8?B?UkEvcHA0bWY4a0wyd1RRazJFYTFNblZDZm8xclhGUmUzTkJYYU1BejhEV3lx?=
 =?utf-8?B?cCsyT0NYYXdjLzhmTXIxWlFFaVRBcjlvVFZLMmx0TXdPT2ZMeFhuRWg1eTFM?=
 =?utf-8?B?NnB1azAyb3pZK3ZVSGFaS045SmNDZXVFdHd2ZEhQbkJXU1hjRm03T1E1V2po?=
 =?utf-8?B?YUpraENORjMxMHA5aEJZVHBmZTJ4VGpkaU5pRW1KNGlaRjdMM1FGdENKa1A4?=
 =?utf-8?B?eVRJRk4wNHRZeCtvdXVURXZHQWpmcExWeEUxbXdOZWNvWk9QMW90dis0U0pT?=
 =?utf-8?B?RVdFa0poUmNlRjdRNDFzM2tFbjBqeWIxK0xoUTVKTVQ3Vm90eHk0WTVnSG54?=
 =?utf-8?B?NXZVQ3lZN0R5alVPNS84OXIydXUvcmp5RWRGOVpkOEJQaEFXNTIwcFlXaWw4?=
 =?utf-8?B?aXhJOE5OWk83T1RiQkFtQTRSdnVDQ3BQbDk2ZWpYdmIzUzBlRVRTRTU0Tm1Y?=
 =?utf-8?B?RXNEcVhXYU0yOFlnTHFFQXR6Vm1ZMmMwZXBGajFhMXlrQzROVjRCK1E3MWpM?=
 =?utf-8?B?NTdsVEdXNFhDcmova1ZGd05NNEd0S3h1d3hzY2E4bC9FaHZYTWZid2dKb29S?=
 =?utf-8?B?RGhpd3pJd1JoWkx3YVFyYlhjOStIcklaM29NOHErVHZUdlkxT3JXakRvL3Zz?=
 =?utf-8?B?ZkEvaS8rbXRzbnIrdER2T1dZNC9kd3kybmR2SEdTY01FcjZ3VmRCRmtETnEx?=
 =?utf-8?B?anpOYlVwMmZZUlRGM3hETWZraFVRWko4eTYwN0V0elNCS1VLVmJlUnZ2bEdV?=
 =?utf-8?B?MVhoVWlVaDVXYUh1MlBma0dGWk5sUkhUcFFKUUd2Vyt3NGFWdVRjYUpiNWZF?=
 =?utf-8?B?bXRSQkdGTGlaOWhiRGoxZndoaURGWUxlMnM3V1NmN2lWM3ZNYjRDanZSZEx6?=
 =?utf-8?B?Yi9mdGliRW5UVkd2ckNsbnZUQXF2dzBHN1hjZnZPZlZsMkJYQkhiYUdVWWNS?=
 =?utf-8?B?Uy94SXJXUmE5dzZ4eGRVUTdxclBmdHFUVVJXV005R3hnbWJmMWJhU3p1OWRB?=
 =?utf-8?B?azIraFg5QUdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mnczcm1ZMmRjenRhbzFadmp2c0IrM2hsT2hqSmxwVDlYOWFBTWxKNENtNENx?=
 =?utf-8?B?amdOTURGejM2YmdxL3JqUXBhMUhOSHc5QzhhdjNuTzQyK3A4U0NOSWxZWEYx?=
 =?utf-8?B?RHJ3SHJ2R2g3dkVocGxucWlhMzhiUkl4L2VMR0o0VEdRNVF5am9uTHdwZ250?=
 =?utf-8?B?azJQanRWbFMwMTNRYzI3QWVSTStIQXBIczZKVnFWOWM2eUV0WmZuTVBvN05a?=
 =?utf-8?B?blptcnAyMkNHckg0TW01M2ZlaFFCdWc0VUNiZXBsSlZtOTNIK1VzQWxxcWxH?=
 =?utf-8?B?cytzK3BqdjhMRzJGT2gwZGJaOW5tRUJzcDNUaG5KclJWdFIvZ2dQL0RBVjFu?=
 =?utf-8?B?VUhOcFMxNld5eG1GQ2t1ZzFzSkpUTGkrSiszbS9VRHRvMFRSaHVNN0hrR3hX?=
 =?utf-8?B?RGk0K3NJSHAyZTZoemtlNHNGUzFqQWVPREJIVzQ2RFFDa0VNSzl3OVlSS2Q0?=
 =?utf-8?B?b00rTUhGVEFScnI5bTB0TkVqYVlWOGI1L3J6aldPSEpOOUJhMzFWeTdoM0o3?=
 =?utf-8?B?M01xd1pTTk5WZkY5NzNidWNLbnc1dVZrRUljaG1OUVBlVEZ4YlFxRGhQZ1NW?=
 =?utf-8?B?WnBVUHo2V3NLb3ROZzFFbS8xVGtBYVI5ODNLRXFYNEVWYTUwMSthYXpvWCs0?=
 =?utf-8?B?ckQzRHZ5QmlGcVFhc1NJYkVQLy9iRU9Xbm5SWlhObUQzRkRWSlg2Q3VqaWxX?=
 =?utf-8?B?RzhLN1NYMFNyY0IrK0FDOWQ4K1BCci9HdkdhdWdKRHByT29IK1RVdFp0dUJV?=
 =?utf-8?B?dzloeGR1MHl5LzZZNFR6VC8ydnk4d05WekxzWUc0dmFQak5NTEpBdTNZd2hX?=
 =?utf-8?B?cUpDUVcvZW55TDBCZVpXRUE2d2FJU0pGVHNYTzk2WkhSVFdFN2FOa3ZHTjBF?=
 =?utf-8?B?VmhyVW5hZWxxemVWZzArL0YybmtOTkpOaUVsbHlDa3JSM1VjVUNGaTNNMisr?=
 =?utf-8?B?Zk9tLzM4b09ITEgrSjNzVzA3UStqdTI2QVZQanBSZzV6VEtNSkZIUFU0NTFm?=
 =?utf-8?B?aERqL0wyVWE5b2FZaWNKVURFLzdiNjk1SlJpaHFYTDc0c0hLVlNxMVV2WXRN?=
 =?utf-8?B?M2ZTdk1ybzlvRGZlMVlKVUZDTFNJdHpVdStvM2hidWVrcGw0MlJOSTVSemFx?=
 =?utf-8?B?L0YzU3FrQVMxVWhoUmtObWhYYjZPL3dHT25sWGVzaVdEQ2J4MlcydjJRREM3?=
 =?utf-8?B?OFJtVVY0YnI1RkNZTWFPdFZKZUVaVTlheVJXUkV2VjdWY0xMOHZBYmhpVVhs?=
 =?utf-8?B?MWVGUHVpa1VlRnRxc2pUNldTL2J2YUlWV1A2Vk5QSjM4NHY5WUt0UkptSWpO?=
 =?utf-8?B?VlRTQmUwK3ZLL1NOR2tvWnBLcDhQVy95ZjJuN2FrVGNnK05YSkdLWHVCUVVD?=
 =?utf-8?B?KzViaWJ2emJGTnhQYXU5VUlkNlA1N2FwQ2N5ZDg4azczZlQyVXVIMDIvQ21N?=
 =?utf-8?B?VHU2WmVQRnJlejlmanM5M3lnSTF6Z08zVmp5S2V3U1ZlRWhQOS9KZWhZdVJH?=
 =?utf-8?B?ZDd6VDNuNlRpS3FuQy9BVDlMNUpyejNhMmdSYWQvK3dWM3BlUGJrdFhBRWVw?=
 =?utf-8?B?TFRxTDBkd2ZHRHRqTmtzNnBXWDdlUkZIaU44anM5ZDVUc2xjNUxjRFZJWHVn?=
 =?utf-8?B?alVDTUtTRlBKM3ZCaUk2L1YvTGh2T3NmaE9Hc2xaYUk5M3hJcnFmMHJoaXZp?=
 =?utf-8?B?SnRIaEs0VE4rTTdYSDNRQlQ1NDU4c0RIenVYV09GdWFieXhSUUxaRGkveEdE?=
 =?utf-8?B?TWxneFYrcStGNGxJVXNlNFJnaVpUYmxsY25GcXA2dHBQYStsbCtDRjBEbmt3?=
 =?utf-8?B?RkRxTkpGV1NhM3N4SXVhdmRyZzBYbmxSSUZVV2xiYUhzc2dLQmtzZitLMkNj?=
 =?utf-8?B?c2RKODNkaHNkYU94YWx4TGNFeG5GdjVGbU9EQ1RpRzBjaUx6L0UvVkdOcGp4?=
 =?utf-8?B?VDVxQ1p3bnVjWnNDaWZ3WDZxRGthR3I5MlROa3F4c3Z2ZjNZekVFcVhOWVhM?=
 =?utf-8?B?M2dOUkhQR01tOXRZMUNGcG1MZlQ0VVpBQUVpZG4wYkRudXNtM0VsQUJYL3NX?=
 =?utf-8?B?Y2FGdE9UYkt3c25YMDdKZFRmeGVZbktNdTVsRDRBVnF0MWhLcS9XVVZQYWpB?=
 =?utf-8?B?UkJ0ZElza3hkTGtUTzl4Z2dsM3FFZXErUDBKbzd5NDd1SmY0OTRUR3kxM29Q?=
 =?utf-8?Q?Ln1jMr/Fzn3HBlKpsgR3GYk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b12349fd-1c87-4052-569e-08de21f40ced
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 14:02:00.7881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GrI2ga7FxWYp4Yf/uYrOGwxNxauAgC6eIUg0tmIvEdzDlzffgLxNxogn61P/kqbjaCNEaemqK3YmWUXbRsTJikadxDsYisKuCyB/EX9uY2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762956126; x=1794492126;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ryjJj1nrRDIwBbHpCJG2bUNee7765NqVPdR6TnenWss=;
 b=Og4Lko79OoVVcCY/94s33s0MNBvMf7VAZp7Kjeli4+RFIwrVnAUdqri0
 nTalud8iPBuZQCuUpVva8ucsv4W2uAHvk6ZACEtP/4TDBQLSmBJkPPGa0
 rjV9WnYF2WVthjhjm7LnKFyB8OY+jIZ7C4b9vXjLOFUxTUy/D0WTFNs32
 P5O362flD2046EBlIOuHiSttoUvzcAGQD86Tj1s26ymJM0p0aMKiO9E2S
 YnDqE7G/Hzai+dBYAXF19THoWSGhE9H9EMf4pBWackScxACwdVS2ymCO9
 Q8glgASxaBOOYG4DczldOo8/BNKAmKLnwFKVWIqj6CyorZJR5Wzo0BR4S
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Og4Lko79
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ethtool_get_rxfh_indir will always fail
 with EINVAL for ice driver devices
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

On 10/30/25 19:40, Cody Haas wrote:
> Hey there!
> 

hi, thanks for the report and sorry for delay with answering!

> I believe I may have encountered a bug with the ice driver. I'm currently
> evaluating a few e810 NICs using the ice in-tree driver for kernel
> 6.16.5-200.fc42.x86_64, and noticed I am unable to get the indirection table
> using ethtool_get_rxfh_indir via ioctl. Doing some tracing it looks like
> ethtool_get_rxfh_indir calls ice_get_rxfh, which then calls ice_get_rss_key.
> In this call sequence the seed passed into ice_get_rss_key will always be null
> as ethtool_get_rxfh_indir does not set the key in struct ethtool_rxfh_param
> *rxfh and ice_get_rxfh passes the value through to ice_get_rss_key as
> *seed without checking if it is null. Then ice_get_rss_key(..) will return
> EINVAL when *seed is null.
> 
> I compared this to the behavior of the i40e driver, which is the driver we
> currently use on our devices. It looks like this can happen on the i40e driver,
> however since i40e_get_rxfh has the lookup table (lut) that it creates
> locally it will be able to retrieve the indirection table via
> ethtool_get_rxfh_indir.
> 
> Is this behavior in the ice driver intended? If no, I've got an idea on how to
> go about fixing this. Do you have any documentation for creating a patch
> for the ice driver? Also I've never done a kernel bisect before, and the
> machine that's running the ice driver is quite slow at compiling the kernel.
> If anyone knows when this might have been introduced that would be very
> helpful.
> 

This behavior is not intended, and a fix would be much welcomed.
Here are bits specific to the networking (vs general kernel) patch
submission:
https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs
For Intel Ethernet, please use IWL-net or IWL-next as a tag, and CC IWL
(as you did here)

Regarding bisection, there were a few rxfh-related changes by Ahmed
Zaki, you could check at those points instead of full bisection

> We're currently evaluating these cards on a timeframe so any help would be
> greatly appreciated.
> 
> Thanks!
> 
> Cody Haas


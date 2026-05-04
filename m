Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJvyMfEx+WkG6gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 01:55:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1F44C501E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 01:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A70B6407F2;
	Mon,  4 May 2026 23:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4u0YsL6M7YYh; Mon,  4 May 2026 23:55:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC55A407EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777938926;
	bh=8epX1+XeSwANuqc8//OgYw6lHQUHW4kw9pgrWu0If6A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jz9r47b2uBFDtiZ5ONzkRq6oJwKURT4/5TYv1JdABQ1nlxtdTOj54w651t5DrW7M4
	 rdF8CotE20NXAPU+pWbjG638frHuGo3SWgYEloDqAKmn7MfmOTgfc8s+OONkrVYKl/
	 94e8f/1qu6aP2oXh4pvTV2bTMiVNARS/ViDnXikz711hzasExdMcnEJdYjVSfMderd
	 1Soalxk1eZ7/ZK8nk6LHTsBARKZFRRvqWXCx2kCj4NOoNefUDzXNUBmnOgWrawZiWZ
	 AZE3iPjHhI+ieAneyuXpfOaMxa1QAICc9LAN7KgES9Wn4bX1g8vduOG7pN/0inanF7
	 6i8zhLV3iPSdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC55A407EE;
	Mon,  4 May 2026 23:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C566D2A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B75C8407E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:55:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RGxtLOCHYMrq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 23:55:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED5AE407AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED5AE407AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED5AE407AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 23:55:23 +0000 (UTC)
X-CSE-ConnectionGUID: kup5piLlSsKnjGmdKE2iuw==
X-CSE-MsgGUID: +fxOEwBsS4KwyZauy2h/zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="89499296"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="89499296"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 16:55:23 -0700
X-CSE-ConnectionGUID: t5fGvDSaR1OtpiUCBopFMA==
X-CSE-MsgGUID: XCIcQCdyTvyFoeMygIIrDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="234641495"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 16:55:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 16:55:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 16:55:22 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 16:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CW2e6HZ0iCVp3YNR5ftq5i3QSgaLa9S6TGQwqwTf/X/uBw94GG5+ms3stXoe138kjUhwzFE/GgQ1i1m+bBntbbC7o8FGxyPMOCO1jLrFN7E3UEXFTs5OZ2yyGyXAJHoUc5VQT5H9KmqkOVa+iGBmXNE4wllWgkD3F7ThnzYP9rJgMKpOyjhOPA7IdCqwrT8kaZp9U+M+OOer2EULZgFkdAZGXAXBtnhQZGOl5AkF8KjNx2cRWmd241AuFk2z82DGwa6yroHp187wMp6F2mRQF21dqvxCpBr2EY3kgNWzn+ERMRQvuxEzOKbx2e5kFyI0rSevw3KUflyQFqd9FFMWOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8epX1+XeSwANuqc8//OgYw6lHQUHW4kw9pgrWu0If6A=;
 b=cDOiChnYdLQcEvS4s43RiXx+hhqU26poF3qfr95P91Uta/XtVynDLnCYVlQLO5hoBEmL4vGjxiaNWeXAI5OK1IVLQx1b4z/YA4B8SO1Rs0Oiwl6FFBBh5CuvP5WCVpviJ9yRB+bBFsgovhkiyW3D80tj/LXRTIv02vzzph9ExIy07bvJjuRHX7fw+M7hLmSjATD22+0seSZgVK8MOzn+S0WbudgN3ZVFK6f3cjfHzIzrF3AWhT09Tol1ygMk4KCDtyNgTWSJPjcVLVLWPAnL5r6JerbUwVl4bUZbw9TtnyGywd7XQ1euTWJt/sOUWDGD3wW9L7EtUf/3vtbaPXHzvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Mon, 4 May
 2026 23:55:19 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 23:55:19 +0000
Message-ID: <84d098ca-dec6-4892-9dfc-feeecfaea714@intel.com>
Date: Mon, 4 May 2026 16:55:16 -0700
User-Agent: Mozilla Thunderbird
To: Bart Van Assche <bvanassche@acm.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20260320212824.264252-1-bvanassche@acm.org>
 <32ef1813-b69d-4d9b-80e6-530a6d431d39@acm.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <32ef1813-b69d-4d9b-80e6-530a6d431d39@acm.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:303:16d::10) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|SA3PR11MB7655:EE_
X-MS-Office365-Filtering-Correlation-Id: 0608a16d-c4b9-4abc-4fca-08deaa3898d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|13003099007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ffzSj1YrFc63ANvQH+EDR0L0LmBpxWkpeF1xmnr7DS1/mtmebnTS/JKKDOiE4Gi9C0GNhQCJFjp/STRMgY4vWdR3OuJe4XxwZdlell+7CieZtIobErNR4gG68RI5LCZjhpMyfWb2ElZTNEiJmVlnEny65BJkf+nV8G0lEC1MmVm5g9skaag3AT50ADH3QsWVoz29CNW7XT1R4fz3vxPMpCKqT0Su2X1m8nvWauXQooMi5y+x8vewFYTXo9PLrkIt4/lt2HqXPEzFyhlGyoY54/0Uy0xLIpMVTtUJ963eUqNOb6E7KsKKfc8CX7QJ2N5Rl7QMVUzWE6V/a8cxvATe7iBYQ0UR0pCkiSiwzgYcXZ4QYN396LkEl0D15hfIXa0hec7iQYfLhZI0ZaCglFC+eGz/WADKE7EhdmvUUg9KlDNsTSrT9Dmv2vkmdkHJCieTpx+pd5MMramYKeMenYMrH8zQ8INwovYOW8Z4d9GAqVb6eATUsNxdLAeHFkg+t2Y6xqQaAy2qCM2qX5My49PaRkDQ/xnc+f6g5jko0Tiy7vXDB5PzSy9jWElN55Ha6pwArMOgYG/1+Bj9IQmcJSO8SOJOxaMetbdrHQ3wJCh4MfMvqfK7BV4Sy+KRAm18OeyxxZc84UhCLi/lXGP7nNyWS4tTMwmdIuoKmJo8/FI0owrOERodYCkM8g2xQLcWCQNWJSGmoOwx8Vzb7uhQjqx7yg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(13003099007)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elZtdW9IazJldEdQdVhiQjdiQUhhUW1UU25IRFpMOCtHZXo5bTRzVTFBODZU?=
 =?utf-8?B?R05BNWFMM2JwQm50SFhzNmIzN0VwUFprNTBRQVZxWFpuRkprRlBuelZuaUhZ?=
 =?utf-8?B?eEdyNEI0Y3JtdU90cFdsUkJSdkRrOEFZTitQOUxJd1FPd0VHb3lLOFViQjJi?=
 =?utf-8?B?SVBac0hxcXdpcEs0ekQ1R3dtZjJVbmFJWUhFbWxRbUs1TUlnTjM3M0gyanVD?=
 =?utf-8?B?UHczRVdJNTAvb3c0OTNmRk9ZeGRoK0d3SW9EVWZuY3VMNFlpZXFKZzljNHRq?=
 =?utf-8?B?L3BOWVErSDFZQVlucWlMaTYvN25UTlMycHhOS21Kc3Z2YTBVRGF1elNGUWo5?=
 =?utf-8?B?MUZrOFBlVmpreWlWSUp0QzNsMUpGUndQemtXS2xDMDhkekZCT3hLajh2SFRo?=
 =?utf-8?B?d29MeFdzelJSbXZqd3BPQ1RyeTVwNnNab0NaQmtRaEp3WWJQS28rTmsyeTB1?=
 =?utf-8?B?Mzd1S1JFWlhMTDVtZEJxMUMwbU13S2ZBbFJueCtDandQU0NhWWpIZmZ6a2g4?=
 =?utf-8?B?bU1mZDdtMVFPNmVZdlQzVEcrZmtKNGJZby9HQXExYUF3UDcvN1RqRjI4NDN3?=
 =?utf-8?B?R0RqRWxadEY4VkNHZzlnTWlVWUVicUc0YTc3SWs4K1VvdU5NcEQ2ZVFFYXZV?=
 =?utf-8?B?S0VWODVYSWw5UENCcE9lSDkxMXFvZkNoUGNEWXI3NE4ySk1VT01yZHJlWkpj?=
 =?utf-8?B?bjIrTnFONGpWckhJUyt1aXA0dG1Pd2dtM2VTNVo5Z3Q1YzR2SXErZUwzVi85?=
 =?utf-8?B?c3NDS1pOQm5kRlpWdmV0ZytDWTFPNy9WRzlvTWVnOGJYZzFMbklyamZrWnd3?=
 =?utf-8?B?a3oyeEgxR1d6N0I2WER0endzRnROK2RmRURMVUJsaEd6WUMxaUxDeThFTXNZ?=
 =?utf-8?B?OWVPRDBpeDVZdlBmQjg0MFRTTWU2dEJjSGVyeWtYUzFXS3hNTHc2UW5pK21N?=
 =?utf-8?B?QUZENGRJM2dTNlJ6Vm4zVVNHa1JZSkdBdkppYUNUbmh0eHdhOHI2bFQvN2hp?=
 =?utf-8?B?b2Z2VkV1ekNMVGdJZmhIblBPVThpVzFNUjVzRmJVM0FZM0Z2TDBUZ3NMV2xq?=
 =?utf-8?B?N1V0MzlCNUFnMXFZTkkraVhpUXRtcnhaNkhMTFl2bHB6dHhlcFRld2dDUnpD?=
 =?utf-8?B?ZjBCeU40eEk1ZzVpNVVmb05xMHJGdkVEOFdQSTY1RW95SzZMekxxUGVmL2J1?=
 =?utf-8?B?aTYxODhlRWtTLy9KMnUrYTFxMmEyanIyeHkza3ZBSGNrZU1lTEVveFRMSTIw?=
 =?utf-8?B?V2tvMDV3Mk1DZ2R5RXBha01uT0c1K1B1QitUV1dvY0FxUStiQXRBNlBiS1Vm?=
 =?utf-8?B?VHNVMUZ5aE9oSnFlb3dmVkkwTTJna09pc2tpajlqM3p0VEYwSmVNaXZpNWNw?=
 =?utf-8?B?MmRFUmFVeHJ4WFRQUU1HRGZOaUorc3FJVTJXbytWTHRKRkZGSmRiQVViY1Nm?=
 =?utf-8?B?OWVaMGx3anF1L1FCMUtLTkpEazVDWWhGTndlRDNYTWZBSCtybGhnQnlPVmR1?=
 =?utf-8?B?Mk9IeThyVUpDWW1TbXJPZDBEUjlUNURnMWM2MHpVS1BEOXJLbXRZaVg2Y3hE?=
 =?utf-8?B?aGFMSjFqUDY4SXhKUDdWeWdNT3JZY2FobHB6clhzZ2JXMXF1QUpOakdLQ0ZR?=
 =?utf-8?B?aWFGbW84aTMvM29kUnJQMWN1amxqa3Mrc0JpUGJNTG5iOFkwS1JPR2pyRTc2?=
 =?utf-8?B?dWh1ZWFRTjRCVXlJYWZHb21POUxHaDliSHdBVlZjcGl4VTMzZHZwMlNmRFoy?=
 =?utf-8?B?WlRWUXBBTGtNSEdsbnA0dkZOTkFvTHJqYjlTM0MzRnVtSW1BTmxZRjBpY2R6?=
 =?utf-8?B?akZXYjJhZm8yOXJheSs3aU9CNG9RblpRN0FzbFBNcHlUa2lEZmRZdm1CTE5Y?=
 =?utf-8?B?MFhaQlJ5Zmd6QUFQdVcwWVlucHIwWmFjc3JOOGI1ODN0NVZ5cFdEWjEyRmQw?=
 =?utf-8?B?dGZEOXkxNG5VVmNGOUlhVUV4cVZMM3g3MC82SmczVWFNWGVEdUovZmRqbzFi?=
 =?utf-8?B?a1hsNnl2Qnh5MzZlV2U0RUNLZ2RwODBSVFRFa3ZNOUF6VmlrWG5MaEJ5TEhZ?=
 =?utf-8?B?aUNMdG00N2o1cGg0Si9iNkk2cng2cUZSVUV3SHg5OGc1NlkvSHBWQkF6c0JR?=
 =?utf-8?B?RklNUFdmTlFFQWZTTStSTUFlajNmcTVOWXArK1poRHdrUUxLQzA5QldxVjVt?=
 =?utf-8?B?dXBENW42Tm5EM2NtMzgyaVBKWHp0OGF2VVJ0Y2t1M09NaUs4enQ1VnhqUUZ0?=
 =?utf-8?B?MUFzbDNKZGZMSlp6eXRXVWlneVFoaW1ZS3hiZGZ0VzBnVXZ1dGdzSkM3VFow?=
 =?utf-8?B?dkpyRXgzb3NYRDYvNm9qZUlHMDdpY1V2Y0pFa2Y3YU13VXZpVlVmdz09?=
X-Exchange-RoutingPolicyChecked: YaMRHR3H/QzyfpDyvNVzSaa7AYQ7oaZ2djgtE9n0a3rFM4fOfVmVSdXr7PK2DTMD1X55xXjTuWNRPZZ7lPKn033U8EaDq25h6FsY4fjE6iVNvkhRKXAjU29T6oqFEAnwlSv4kRuj8dF9eoPDoiNcWagmwetKHa0/w0e06++/tjMfexs63k5DcH5xSpwIzX4CNlKctxWi49o4hGy3Ia9PpeCE7I3SWhbIuAE08xNGw8EYo0SM/JoH7tQtbldUFNj4ox9J/ucddk04DRBGLUv7IZ9YLInFXVobJHkCj4/fokiDWQwp/d8gqDz6dH6f+tppAEA2uyAIbrpXNEvWVgsH5Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0608a16d-c4b9-4abc-4fca-08deaa3898d7
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 23:55:19.3721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ebJC6TALpW/wLsWTtBqaIR6E0mHQaYxbxCxYq+2pU3XKsRpFQ08DeNiy/vHBcIJHxHHhYbBRVDVbtjJn0RwC0POjH9xfg/sHGLJkvv8l58A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777938924; x=1809474924;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fM5BFTJmK3vDu4sd4HLX29nB+qIcKLJ7Ds/+xALpEyg=;
 b=gipl46jZ/73u1mwLGGpysgJF0W2Rq5lXp7HAGGG7bGM9X2s7vtuUHAGO
 ZNgzoV0H6E8cAs70UEGhLeQs26PvR4xWzA4Cg+UtjDGFkcyQcFEamRgPq
 ci6CF78htdbYY4/ibOXy/3rL0P41ztgVk8tspxFOPHfnAoAh0IQiB9Pt8
 Xu55N9/XDfIjwBnX50M+gnrp2D/3uXFQ48Ky4LyUluFwYxtH4VNUz/10o
 BaEDI2prZYJtcmETvFFeNcd8coVz2jmmD2i523wx4yFS2q6NgG4NCFrIG
 vdqpgHheNO72SYOS4AsOqUgL1hAxx6FCVCUOvTW4zgl7DmhGpiRBjbPJd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gipl46jZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
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
X-Rspamd-Queue-Id: 1A1F44C501E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,acm.org:email]

On 4/27/2026 10:49 AM, Bart Van Assche via Intel-wired-lan wrote:
> On 3/20/26 2:28 PM, Bart Van Assche wrote:
>> Move the mutex_lock() call up to prevent that DCB settings change after
>> the first ice_query_port_ets() call. The second ice_query_port_ets()
>> call in ice_dcb_rebuild() is already protected by pf->tc_mutex.
>>
>> This also fixes a bug in an error path, as before taking the first
>> "goto dcb_error" in the function jumped over mutex_lock() to
>> mutex_unlock().
>>
>> This bug has been detected by the clang thread-safety analyzer.
>>
>> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org
>> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
>> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
>> ---
>>
>> v4 (this patch): Changed "[PATCH] iwl-net:" into "[PATCH iwl-net]".
>>
>> v3 (2026-03-20): Modified patch description. See also
>>    https://lore.kernel.org/all/20260223220102.2158611-20-
>> bart.vanassche@linux.dev/#t
>>
>> v2 (2026-02-23): Combined the two patches into one patch and
>>    increased the amount of code covered by tc_mutex. See also
>>    https://lore.kernel.org/all/20260223220102.2158611-20-
>> bart.vanassche@linux.dev/
>>
>> v1 (2025-02-06): Two patches. See also
>>    https://lore.kernel.org/all/20250206175114.1974171-16-
>> bvanassche@acm.org/
>>
>>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/
>> net/ethernet/intel/ice/ice_dcb_lib.c
>> index bd77f1c001ee..78ded6876581 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
>> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>>       struct ice_dcbx_cfg *err_cfg;
>>       int ret;
>>   +    mutex_lock(&pf->tc_mutex);
>> +
>>       ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf),
>> NULL);
>>       if (ret) {
>>           dev_err(dev, "Query Port ETS failed\n");
>>           goto dcb_error;
>>       }
>>   -    mutex_lock(&pf->tc_mutex);
>> -
>>       if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>>           ice_cfg_etsrec_defaults(pf->hw.port_info);
>>   
> 
> Hi Tony,
> 
> It seems like this patch has not made it into Linux kernel v7.1-rc. Do
> you agree that this patch is ready to be merged? I checked that it still
> applies to Linus' master branch.
> 
> Thanks,
> 
> Bart.

Hi Bart,

I am covering for Tony while he is on vacation. This patch only recently
completed our internal testing round. It unfortunately took a while to
complete testing due to our existing backlog of patches.

I'm preparing to include it in my next round of patches to submit to
netdev's net tree.

Thanks,
Jake

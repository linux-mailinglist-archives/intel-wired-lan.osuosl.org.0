Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBF9C87651
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 23:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E84983E96;
	Tue, 25 Nov 2025 22:48:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNTL9W2xUouM; Tue, 25 Nov 2025 22:48:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 588D883E8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764110913;
	bh=9HzfnICxAkzNiU1jdJWkB0sl71kAbilUs8/+FEcOD+w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XkLfNaQy4qRM3btzQgNh4msbDIwaVYnngSnXQ3uYWf1W+44iaQIswZb1WlD7WOR0L
	 yEmQLACXcVpgPewh1fOTko/wxkYENoaFHnguah/yNDj9IxM4xVTZvh3f2WbHfoAjVa
	 jHQXGYPambb6Y16R+RxmFIBoJaTltujeTDIEzNBQ1SG6rSs1UGtpWa5kp2q3Rd27A8
	 t+G5yLx6gXCKHTTSK+UeIuH4hTU1gQHEbk0qbGTdjfVoTbEr6QmbGkV1kXxH/1CrvT
	 ESEK1G4jhxOPK0v6RsECxczdrvhtQHlryIOio974hykMd9tZR9d4/rxP4t+DexZkrM
	 Fa6f6KDu/ebyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 588D883E8C;
	Tue, 25 Nov 2025 22:48:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EB9D71A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 22:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD34B40546
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 22:48:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FEZzx4xm_KO1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 22:48:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D66BA40541
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D66BA40541
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D66BA40541
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 22:48:30 +0000 (UTC)
X-CSE-ConnectionGUID: yzgLhZNRSmKtzHX6wje9zQ==
X-CSE-MsgGUID: zHSfd4qqQtKta62B8h6cQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77251819"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="77251819"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:48:30 -0800
X-CSE-ConnectionGUID: g+cOlVuhRZGw5Xag7NWGAQ==
X-CSE-MsgGUID: ykf8cI5sQ7qmS60dLW77DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="230032275"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:48:30 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:48:29 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 14:48:29 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:48:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OR9ypqykpNcGthhrX+vkywI79kF8ms6a1V9Rcf7Yok14+0xMipbC1x5tlybsfl1l4sVSmwJx+eEiySGlnMlebLWL+dWfna1HplzFkieygMb+RLzOCb3/+s9jN3mV/5TOkmEfchWwLberXneSgeQuJKbWfArurPXrcTKGmhKGK9pgMdBlwJFih0ahNj7LyNmTynmTNwkXeOaFzWeV3KpTYRZ96428cAfe2cJsTHy1YSNi/2NyE9Nc+DMxMMZpcN2cR8lzuw7ljYwVLo7QDFoRjmmqaHxgw3871B7SeEm/+HpiHW8GSARJVh325C6/9U36O/sRJpdR2JrsBWug9Dq+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9HzfnICxAkzNiU1jdJWkB0sl71kAbilUs8/+FEcOD+w=;
 b=QatAnqqsoW+YR3B5NWotkatdY6XrIkYLPGG1hPDpRINHg1pBQtZ3zhO0V0pWnYja5l7k+qgY0pWJ5hCk2KOuLPCHc/m2x9X/NBEKSl+4FJBN+F9776bYgP1rUrIyn0PGpK9vHrByluGDDIjS653fKGQXxEo8w6MbpbfAYpLm47eGoHoHPNz9yVbcHBIRjifeHzQbtYdd8uz6fsSZq+FZSnH6Z77InRMA/zDWplNIfspnNtjEcId/tAvy6Betc45qcUwOAO2klvbKEdFjyY5dVGv+PNxGsGOBwidBXAhkLUxNv9F6RxU6V/eiECBvQYmpYQzG6vc12Kz7AVuPcXAqRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB7699.namprd11.prod.outlook.com (2603:10b6:806:338::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 25 Nov
 2025 22:48:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9366.009; Tue, 25 Nov 2025
 22:48:22 +0000
Message-ID: <5b824df7-205e-4356-a33b-9937a1367517@intel.com>
Date: Tue, 25 Nov 2025 14:48:20 -0800
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Markus_Bl=C3=B6chl?= <markus@blochl.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Richard Cochran <richardcochran@gmail.com>, =?UTF-8?Q?Markus_Bl=C3=B6chl?=
 <markus.bloechl@ipetronik.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0244.namprd04.prod.outlook.com
 (2603:10b6:303:88::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB7699:EE_
X-MS-Office365-Filtering-Correlation-Id: 6571bf29-2079-4557-db9e-08de2c74bcb8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VHNWVEdza2RRemR1U1JXYmlSZnE2bVRMa1RZZ3VpTjhJZEtScnF1TWFoZzRq?=
 =?utf-8?B?QjFhMEY5aWtRK3hZaUJodjNneWsza2N1OUdyNDI3V3pjN0U3VGlGMGN3ZmQ3?=
 =?utf-8?B?SDloZy9NbngzTWdLb0ZmcGJEa0pwKzFucFpHWFhxRHV2K2wyakN6ZUdYc1oz?=
 =?utf-8?B?elJHRHZ2azJ1Um5LRWZPQ1orK1JNR1JmYjJSY3FNY2tveWFjR0ZmRFRUK3dI?=
 =?utf-8?B?UVFxQnBoZ1pwTHpqR2t6ZXpqK2NTclJOZVNzMFVveTAxUm4zeGFmQ2JrdmR1?=
 =?utf-8?B?QlBTMWlSKzM0Sy9jM3FkQnhrZm45QTVWaCtKbCs4QUY0VGJKeXc2WFRRTTdl?=
 =?utf-8?B?VnhkWlRXWG9LaE1jTWxqT2YwRkF3RjJkV1dPUEZxSlRzS0szRXlOUnZ3WGhr?=
 =?utf-8?B?R1N6WkJuUzd2L0h4Q0NnKzJNWjdhRHBLbzR6YjVXZGhUaVd6ODJNOTQxcE1N?=
 =?utf-8?B?ckdQWC9TY2xEZjk1MmtlV1BNWEhKVGlhT2d6QXJzR0VMV0hrdjRTOG5oQngr?=
 =?utf-8?B?Wmxua05nWmVWRkVIMGYybUtsdm9wV2t5dVFCblNNM1oxM2gwRHhDWHA5SmZW?=
 =?utf-8?B?dVE5amlwWTEzZmdmNThiU2U3MWlRL2lEdy83dU5PY3ZhODlXaC92NEtEVkhq?=
 =?utf-8?B?MjE4KzNxU3lwNVFYVlMvVWR1R0JXK1ZsYjZ4R3RLSnpIZWhVR0lJMnV4bkNB?=
 =?utf-8?B?NnR6VmNmSTk4NFZiTHMyVDRCKzBvZGxycHpoWFBaMEl4VGY1QnF4amFLaUhl?=
 =?utf-8?B?c255YncvdE1aRTVIY2ZtTmJTR2xwSE00Yjd3L1doOUo4OC9pT2lTd1JLUUtp?=
 =?utf-8?B?YzluOEQ0d0p0RXN4RU4yVnNTV1B5WjFoWVgwS0Z4OG02TVBvMDVjRmkwZkRn?=
 =?utf-8?B?QnBkN3Y4YjQrMnBDSVNnMzMzVVpuVnc3Z3dycnBnWkdXNVdtaW1TZDlHRWZW?=
 =?utf-8?B?bmNUWEtSWHhLMlBGS3pGU0pvcndBZm45bmNYakpWMzBsd0FpOTR5K3NQZlE1?=
 =?utf-8?B?aWlHdU9yY3Vja0lUdUFKOGd5RnBZOTRvMEl1VFNVY0Y1RWJSbFJUYzkxY05I?=
 =?utf-8?B?OFBKdjZiMmNQbmp2Wm1FNjg1QzdrTVNnRGpGTjNLL0xYak9tN0ZjOWNHdzJQ?=
 =?utf-8?B?UTh6NGhFcFB4QmRpa0lOdEpkZTVYdHBUai9QeStwSjNQVk1ndFBwYldPV1Jk?=
 =?utf-8?B?cTJVbmo4aytWZWFJd2xtd1B6aGRmdHJDOXloYkpub3Y5SHR3aUZncjcvQTZM?=
 =?utf-8?B?aFEzUGl2SDFmMUl2OUJhMGVpcElHWFdobUVOblRtRXFHU2pRVWlxUDFwckdn?=
 =?utf-8?B?SWdYOE1DUlB0cWRDTDNqdFlhaUN5S3B5Y3pUSytUNWhYVG9sb3lDcXd0elc3?=
 =?utf-8?B?L2hyODVlWEwzQWg3Z1Z2cUoreDMyTFA5ZFhUKzhpS29hNWJrOTJCd0F6UEQy?=
 =?utf-8?B?ZUlZK1g1VERXTVJKa3hzNWh3YVJxVWxXSTkzOTNtRWx5NVJUS3RQQ21rLzlE?=
 =?utf-8?B?NmQ0YWRnTnZlQ1F6VEJEazNvMTlXd1EwZE9GSEE4OEhKNURqU0YvN0dDak5v?=
 =?utf-8?B?U0VXbzdnd1BIMWM5eGFwK3BIKytNVnFwNVgrakJxNklVWGZOVkcyM2tXdEpm?=
 =?utf-8?B?UFh1QytuN1F4c2ZPVzVFdFliWWhpa1A1Z2JEcUlnZ1NBL2d2TVFXamZaZ25y?=
 =?utf-8?B?aW1VMHRTQ0IwdHoyREx1TjdrdHJ6bHdhcjRBTnpRVGJNQ08xdGdPZVFiTCtD?=
 =?utf-8?B?VU1OV0JGN0R1QnQ5YVpST2E0dVhzTVRKZ2ZyK0tUWUYvOUIyRUhkR0hyRTI4?=
 =?utf-8?B?RzhIRitXQSt3ZjVRcDZGazc2WUNNK1VKSTBPVEd4ZVAycTBBL0wya0FmT2pM?=
 =?utf-8?B?UVNJS0NvcEZScEtBcmJTR1c2dkhraGZYVDlxQm5VRGFVTi9DRTZibkZ0T0dN?=
 =?utf-8?Q?UFpUdtuGdEK2XkMkWgUJsPdIT25ZB6lq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZStFSXdsbW96NTZSR2Z5Um1VZGd3eDdMS3JQa1Vkbnkvc1JhdUFKVzhlTVRS?=
 =?utf-8?B?ZmpwdXNIdks0UmwxUXM0QVFKY3Q0MG9WN3dyMzlOTkJDRW52TE0wam1sK2Zh?=
 =?utf-8?B?UDZlN0tFWmZGdHJVczYyVmlnN0FpSW91aFp5TmdQTGhuZThFaGQ0UVdhYUx4?=
 =?utf-8?B?ak5pVXlUSXU2SFBFdVQ1T0JUZjB2R0lBcjFmaWg1Q29pWXVCSW4vQWJEa0dH?=
 =?utf-8?B?emlMVUZnQzhEbUV2S0dWRVIxMXFMcnlXQldIZCtmRXAxRDloYjk1T2VJSmo2?=
 =?utf-8?B?ZWFLNGtPT2VrZmtWcEVrRnM5RlppZlpkMHhtaWNMcFpmNmE4d3NLdERlR1lL?=
 =?utf-8?B?REtaMXpwQ29IWVNrS2c3aVlBYjljVCtkenB4c1hpQVhBSCs4a2ZNQ2V4T1pJ?=
 =?utf-8?B?TVJrVmE2VFBINy9COTJNUDhFWUROL2Z5cjdvZzAweEYreXdYSHNVOXRDSjZK?=
 =?utf-8?B?UWhmeFJWYWxzcFpzVnRYNDNoVElRcFphcEhHd2ovWGc4T1g0YWl1UHVNOVZh?=
 =?utf-8?B?SkxjSVpUb0xQcUlkQ3dOUkZPR0Y5Q2ZVaHBxWGFRYTJPcm1LVCtCaTQ2Y3BL?=
 =?utf-8?B?RXQyKzNveS9YWnNMMTlvR09Xb3p4bmtPeTlVdVNyV0VseWRxU0xWMUtvTzdn?=
 =?utf-8?B?TDQrNmtGaGpoTitWQnVIczFCNTJkMUdNckM4eGlzZXhYRmVYUUlSbi9qNnFB?=
 =?utf-8?B?SUZ5MXV5bnduOHg0cU9IZm84RGowdEsrVzF3ekczWlJvakpiaGg0dEs5dGsy?=
 =?utf-8?B?SXBKbDVCelhCZ29vRHh5TDdiQk5RZnNubXRFZXM0cERmRnVTOW92SkpwZGQr?=
 =?utf-8?B?WFJRNktRb2RXUVd5L1pqUlVuc3MzY1hFdVM1WWIyUE5mbUZXSWZCSUtDUTNK?=
 =?utf-8?B?a092ODZVTENNakdJTGxjVFJUNGt2bTkxZTNESEpKVXJVQkIwMXRwN3V6ZlB1?=
 =?utf-8?B?MFF0bWlkL0JhWEI0amQ0MUZKVjRFNmlvaUtZZTFUZUhmMU1sNjVLWHN3ZEQ0?=
 =?utf-8?B?OW4vK0lRT3hkck9SS1laa0R3TDcyVStwdkJQcmgzRnBJNTdzRnJ5d1FuMWhV?=
 =?utf-8?B?L1k5c0pLRXZyeGJFSUlSMTNVMEVuMmhLZkFCOUUrend3ZFNERkxSSWNDM2lG?=
 =?utf-8?B?S2FlUXU2dWtacGE3dFYwNlJLTUYrcWQvVStrcmNrN1ZkSTRheTBlQ3dCU2lx?=
 =?utf-8?B?VTZsT293VnMyZTVRR1hQcXMyTlJzUXJ0OW5OUWN1dmR5b1I0TEN0dmI1SXVW?=
 =?utf-8?B?NDBVSkFXRy9NL3JjeWNpWG1velRLVnVoSFhOMWNKMmk0aHY0Y1lnSVpsSmJZ?=
 =?utf-8?B?QzdVbkFyc2dYTFE4ZnJhTS9DUlR1dSt1ZWNHd3ZiWFRnbWRBb3A5YWZpOU5p?=
 =?utf-8?B?ZUx2RGE4MXRvMHVkQWw4VmhvbHdKUXQ2NlRHOHdlV2k1eFd6dEVDVDN0b29W?=
 =?utf-8?B?YTQwcFdlYk5nUnFlUnlSbUZMazVGR0RXYkJqNUJhdU9ZUzlvMEl1ZGVUOXls?=
 =?utf-8?B?SHBVRUpHSlJDOEtsaDA0SityKzN0eGtqUXNWZkRya1lKM0JMb3FkdW0wenBp?=
 =?utf-8?B?UVZyaS90aUlrOUpRa21SS251UFBvYWJGWFFHUlpiNU80Vzl6eGlMOUl5Q3dX?=
 =?utf-8?B?d1M5eVhVZExlRjB6dk9LYWRhb2lUblBITGw1ODBCU0Fnd2swaGUybGVPMDBK?=
 =?utf-8?B?bHFrNENMZDRsd1lCajFNWGJ2WkRlaTlqdktmYTJncENNMEY3RFdZb1VoVU9P?=
 =?utf-8?B?SGRGRXdxdlZJVTVPbEN6UGY5cXNuWjJNTm9VZTZPbTNpNnorY0FIdmtHTWkz?=
 =?utf-8?B?TmxaSC94UklDTHJEc0dGaGFIUnJFRkpscm42ZFRaZitMejd3U01qSklpUG9N?=
 =?utf-8?B?eEU5R3U4NFAwM0VrSW5VWjM1QVF5aVMwYlI2R04wQjJoaWwyUUJjZlhSRDBP?=
 =?utf-8?B?d0FQWXpPMW5oQ2ZFR3lNR3NXVVJJYjFFL0pWcUo2RTRYeTByWFN1bjNIc2Vl?=
 =?utf-8?B?RWViVHVYTkw1Si9CdVYrenJITkQwN00wMWhreFZZazZLbGV2aWxIejRxOGhE?=
 =?utf-8?B?NlZYRnJ4enVZYVJ4QVRDYjJBNEdhYkhDYWZ4QnNQdU5WSHBmMVRGRzNZWndZ?=
 =?utf-8?B?cnNXSlF0K0QrSDZxR2RVWU9tYXpxTE1vQjVzam83SVBXa1JYZUZjdWduTnV6?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6571bf29-2079-4557-db9e-08de2c74bcb8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 22:48:22.9073 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: imTlWlrYdCIjVO5OSfY8P/nCjDcBqmok90SXeCqtCIHfkhSDRdvMRp1Qn6lxIZ+vU89BUm+xS0Q2+fWQOg6jRPd25cVl2A1cSz2JZ67Aa3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7699
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764110911; x=1795646911;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FptioBk4dWXikShwzzPcMT12ds5ltwdsidbGa5+DUDA=;
 b=gyr4DptcHcMCaelfdhTobPe2ZvZJge4vf5NxDYUpcqVodmcFf/y+grVW
 xxaVBaRQ9wyy9ms0vTJl4uaoEWMGT4Jw/EMvWw2G1A+c6PQaL/ljPQ1hk
 n6gSbNK1Tlhnz94v6ha7JJgdr0melLpFxKeVgzgTIIvMZLgWLUXFRiU1p
 zP/eNrebBXeZmVmxScFtDM9ZiyAZYzY9vHRNslMo1JyOwS3tPUlJNwSew
 uf7fmjdxMO1kHrgb82dL19UDYj4KATUIV8HqPYqGwi/xBIvExjuv2Cu+9
 bZ6Yx4t4HH+hcE8PMBYB9qPy8hN8vM3cpWnxOigpJJSkD0aUhXU8ptfTM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gyr4Dptc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix ptp time increment while
 link is down
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



On 11/19/2025 8:09 AM, Markus Blöchl wrote:
> When an X710 ethernet port with an active ptp daemon (like the ptp4l and phc2sys combo)
> suddenly loses its link and regains it after a while, the ptp daemon has a hard time
> to recover synchronization and sometimes entirely fails to do so.
> 
> The issue seems to be related to a wrongly configured increment while the link is down.
> This could not be observed with the Intel reference driver. We identified the fix to appear in
> Intels official ethernet-linux-i40e release version 2.17.4.
> 
> Include the relevant changes in the kernel version of this driver.
> 
> Fixes: beb0dff1251d ("i40e: enable PTP")
> Cc: stable@vger.kernel.org
> Signed-off-by: Markus Blöchl <markus@blochl.de>
> ---

...

> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -847,6 +847,65 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index)
>   	i40e_ptp_convert_to_hwtstamp(skb_hwtstamps(skb), ns);
>   }
>   
> +/**
> + * i40e_ptp_get_link_speed_hw - get the link speed
> + * @pf: Board private structure
> + *
> + * Calculate link speed depending on the link status.
> + * Return the link speed.

Can you make this 'Return:' to conform with kdoc expectations?

> + **/
> +static enum i40e_aq_link_speed i40e_ptp_get_link_speed_hw(struct i40e_pf *pf)
> +{
> +	bool link_up = pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
> +	enum i40e_aq_link_speed link_speed = I40E_LINK_SPEED_UNKNOWN;
> +	struct i40e_hw *hw = &pf->hw;
> +
> +	if (link_up) {
> +		struct i40e_link_status *hw_link_info = &hw->phy.link_info;
> +
> +		i40e_aq_get_link_info(hw, true, NULL, NULL);
> +		link_speed = hw_link_info->link_speed;
> +	} else {
> +		enum i40e_prt_mac_link_speed prtmac_linksta;
> +		u64 prtmac_pcs_linksta;
> +
> +		prtmac_linksta = (rd32(hw, I40E_PRTMAC_LINKSTA(0))
> +			& I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK)
> +			>> I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT;

I believe operators are supposed to end the line rather than start a new 
one.

> +		if (prtmac_linksta == I40E_PRT_MAC_LINK_SPEED_40GB) {
> +			link_speed = I40E_LINK_SPEED_40GB;
> +		} else {
> +			i40e_aq_debug_read_register(hw,
> +						    I40E_PRTMAC_PCS_LINK_STATUS1(0),
> +						    &prtmac_pcs_linksta,
> +						    NULL);
> +
> +			prtmac_pcs_linksta = (prtmac_pcs_linksta
> +			& I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK)
> +			>> I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT;

Same operator comment. Also, indentation looks off here.

Thanks,
Tony


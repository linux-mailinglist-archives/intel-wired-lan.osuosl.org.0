Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Br1DM47tOGqzkAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:08:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9176AD86B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:08:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=La0jnPcE;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB92761CA1;
	Mon, 22 Jun 2026 08:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3QCpYTHlc_k; Mon, 22 Jun 2026 08:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DAF561CBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782115723;
	bh=V4mXmNoYu92lik/0/yVuqzDibaXb/zIp+hGR/I5EBrI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=La0jnPcEYkA7dQqsTxdnKloHUWau8LpOq5rHZrV2DiZZAFOmQON/1cfdvLx1c8krQ
	 4EL8TsJQ19M/10yCp7039iXvHGp3taBIskU3mVpeq77WvGnnCRligGKSSI9hC8rvXw
	 MakVG+1I9B21OjMd74sd2Ftbd8xCXh8m7RxzXMru0m4NwGNqjueglY9a5FchZiBeuz
	 ZGmOAnjgsegN2hO56H0je1ehwqYCvqMkUtpC0tF3fDBP36lVOZ/U/GamCCN109J3Ha
	 UEphYB4FRndKRaaa7swYaoHs46uWHAsyqAgsU0EXXbKbsz1k5DgIBzPc1b4Rv6jfVG
	 a4qnKJmT854Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DAF561CBB;
	Mon, 22 Jun 2026 08:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 121A7F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03AE361CA0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b0LJvC1dyBhD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 08:08:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=moriyax.kadosh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1628861C92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1628861C92
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1628861C92
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:08:38 +0000 (UTC)
X-CSE-ConnectionGUID: hec0hObDQxGQQuvbI0D2tQ==
X-CSE-MsgGUID: giuoVzb4TvqgSnli0GM0Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="82848159"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="82848159"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:08:39 -0700
X-CSE-ConnectionGUID: im4cyBSYQq6NnhfFLcMOQw==
X-CSE-MsgGUID: Ko/h47gdT4OlCMqnSQ5FOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="287280861"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:08:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:08:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 01:08:37 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dl1useCYIYyyMBSRpRvO5gZJk+khjGRdkP1k1gzGkgcxPEk31K3b06COigKfFFHP2vH4reFudUqGUIX7pAh4NTV/H5d3yCV82lE/vM79SHTzKmCGyPU6dZ9KAd7S1luCK+NJ8uYKH4Cfvf1Re/zifSSNVRpQWfIRQ05x4aVT5G4CQ4kA72r6qOwiuW2cVdgzrbymdUY+2x/4Xlq/oV+ws+L9eQEOYNOMF/jtktf9ksDWXMfZVw0t10u6Pe1c7pKv1LhwOxoxH/2THWZTOlTGz4EqQ7QdUS8YrJoCDcVWCEbHWTKOibonmPrkHLoYccxwVVCcAdQSf2x+2YJPcraTig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4mXmNoYu92lik/0/yVuqzDibaXb/zIp+hGR/I5EBrI=;
 b=gWEkhsaJKH3YuRDhB24sVSGBFri42Lb1rzzRbidAeIArtCOCgeAbGqBrUKMUHSV0B4PeocCboXW84TrC/tMSyG4Z0+/9GPvwa/dPYo83DgbceoSMc+MlMIli4kwfjFjY/ajHvRhj8WAxdh5R1HlsIUQO0f2UTxjcUrDR8Y2u5jM4MYUSKj8aZM+KORW5fVH6I3mxDn0O3ByvwFw7JnqrydheL3QEk/92RCbDqo/jIu5q5RTC9rKCDhMfw0L/fxaLyQ6F+B/0nYFMXkiL+fbKOv5Jhloxh+YCMttD+XFTe44KpKS9CsKu5600WleLgtZi2kCz59nyXgexVps2I/AbwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 by DM4PR11MB6094.namprd11.prod.outlook.com (2603:10b6:8:ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.19; Mon, 22 Jun
 2026 08:08:34 +0000
Received: from SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8]) by SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8%5]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 08:08:34 +0000
Message-ID: <1bd437e4-d1d3-4fd3-8e5a-5e1148ad9686@intel.com>
Date: Mon, 22 Jun 2026 11:08:27 +0300
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, KhaiWenTan
 <khai.wen.tan@linux.intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <faizal.abdul.rahim@intel.com>,
 <hong.aun.looi@intel.com>, <hector.blanco.alcaine@intel.com>,
 <khai.wen.tan@intel.com>, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-3-khai.wen.tan@linux.intel.com>
 <4d8d9eaa-d9bb-4589-a37d-31d0da584335@intel.com>
Content-Language: en-US
From: "Kadosh, MoriyaX" <moriyax.kadosh@intel.com>
Organization: Intel Israel (74) Limited
In-Reply-To: <4d8d9eaa-d9bb-4589-a37d-31d0da584335@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To SA1PR11MB8448.namprd11.prod.outlook.com
 (2603:10b6:806:3a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8448:EE_|DM4PR11MB6094:EE_
X-MS-Office365-Filtering-Correlation-Id: c2fa63b6-8dc7-4786-04cb-08ded0357484
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|23010399003|22082099003|18002099003|921020|11063799006|56012099006|6133799003|4143699003;
X-Microsoft-Antispam-Message-Info: nyTMLfOIlMFNs8uYHisixFiY3QnlPGbf/RXQPtqUmNLZA1+Z1jgfWX5guNzbaByWl6sk6XbsXPcbtZB9EoeBL0jcUPvfJaWDHiKVasSfarAqk8dYabxl90RsbPm4KaJjc2qM73BcPp0mGVIMwXkczDPsjeOqw0IfylpzQN9u0Z8NFhJtqRobrmdPgFSG/+Jz5BB9lIKdg9oozrOTSmc/VtkUdQER1c3NO9+ZMLNC8zqhnyUV4inc1x6Xt7SOqPDunuyNepy6we2QfR661iFcqE0SBS0mI79TM/Vtcgnahfp7DEAxAna9+4wb3pC2rYeXbe+VfIEIQ5CunnEVQR85gYt4A3MRSnf/G321A1KmPThbmhYz/tru942UvacKur93igG3hMroAcwTuTeOA4zCfyHliH3diva8bFNSaQcAXUW/8fep9ifgFuoZfG7D8aVSart1FrWXGrHjZ/CSgC6jN0sjUqTnH54EE3nhLe/cphmS+fCSAEyKJTCr1ftFwAWPp1+9MM5eRAb590F8tl//iwkL5O0xU0v5zqVypUB9rKOU1lymlaSAZSFQ7FQdlC7WOpjj1MB9YVnTLitGm1om6WKc51Fl163pyn8p9ZfdSC1PDgh+yUYIgM4/od2A0UWFsO9z43Az21fAKpZloh7U6gL65vN26ejQxUGnrf26ZVC4Eft+w9CTT0SpNVUzOIixnk9HOw3ZoduYYKbMLNLT0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8448.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(23010399003)(22082099003)(18002099003)(921020)(11063799006)(56012099006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDdITzlOVGNiVzlTWHY1MmdlNGJOZUozVlN3L1JOUEI5SlE0ZzdlY1NPbUJC?=
 =?utf-8?B?V0xJSWlGcjJkdTZGMStRN1loSk5jdE1CWXl0ZGo5SEs3MGNjL1R6eWJGMmJI?=
 =?utf-8?B?YmE5T3hUK3k5MlNsTERBd1VySElUbEZBclptaFJPWHJCd3cxdFRtWkRPU2Yx?=
 =?utf-8?B?NU02am52ZUR3M1ZPdncwRzJjQzR1OGFyeU1aekZ3L0FMSW5rSW9xZ2tuN09B?=
 =?utf-8?B?eXlvQ0hNS1NIdGtBVlJLbGZubEZGUWhUZlZ6MTNheHZPb0tyYXFpSXhScXg1?=
 =?utf-8?B?MHJOWW9DZGlxWlpITmdDdFFQVHBBcUxjYmZTU3J5dFhQd3IrenRCWU5FU040?=
 =?utf-8?B?SU9nbUdKWEZFOVN5ZS9YM3VZSXRPdnVoZ255SGM3YVdlUEhPU0FNcFFCMndT?=
 =?utf-8?B?UUdvb3ptVnZzQkZ4NElNNERraFlFbVJEOFRVQXlRL0J1L3FCOVhSSFo5UmRE?=
 =?utf-8?B?MEhaaGR6VG44c3UzT3BCSG5yKyt5MVdrVDd1WWVyeisydVJJRjNuVlNscTlq?=
 =?utf-8?B?WjVwNXZhV2E4Q0lmRHd6WEc4ejFPMS9lSlRSa1dhMU44QkJkSEFUU3l3cDB3?=
 =?utf-8?B?UWlEcjI3ZmppVmZ3RDhHQXRZRmFnMGYxL3dCZzNmd0o1c1hBbWRYWjFCdi9l?=
 =?utf-8?B?L2pJTC8yTlV4d1NoU1pqeER2a2FrUktzUDh0Z21JM2dFN3NqNXJtemxhem5W?=
 =?utf-8?B?TlFnU002aW1WU0p2UDNpSUNkUFpyTSsrbmFJNWlpMnQ5Nk1xUDNqT2xJa2VR?=
 =?utf-8?B?L2pwS0ZyQ1J3S1NjcDl2a2w3cjJhSUVKd0d4b1dLZ2c1Uk1Qc2NYYzJhdVZo?=
 =?utf-8?B?R3BvOGIydURneWVRRWpwN1UvblNha1Uyd2o0Z3pIcnJibWcxQnRmdUwxdUFM?=
 =?utf-8?B?NmRqMlVONEIzSUFDTENiTlNPSHlSblZFYTh3YmgxcEdMbENQYWJ5U3RneWsw?=
 =?utf-8?B?TFJ0T2wrRFN4eCtKcFhGc043alc3Y2xPRXV0ckYvd2NvNWNFNmFsRmdQOHVa?=
 =?utf-8?B?Q25vbGNzKzNIUjk4WXBvWkRrbUgvQy9waFByTDJNZGd5dUxzSEVSNWRrVzdj?=
 =?utf-8?B?SjhaaHluSzdpUTkvT2pDY1g1RmVOUnVnQk01Y3JTQ0xFdXYwSk5VWnFVcTRJ?=
 =?utf-8?B?VkxPUjVnbEc5cXk0akRoRHhKOXNuTzd6ODNiSDZvVmNsS2VPQmR2L3ZPLzY0?=
 =?utf-8?B?OVZ6VUNqc200U2tzbUpUWCtKSUJHcW9QNHRKem1ORGJ3ZDhvWGFmc3NkM21T?=
 =?utf-8?B?M01TamJLVXJhTU1UN3BoNTRtdmtqazduWEJ4QlhLM1oyMUVRZnFuS2s4YlAy?=
 =?utf-8?B?VHN1WmRCeWxaOWc3NlFjR2Q5dGxhZ09WV1VRNUJ1RC9LVk1jeHZFcFJVQUIr?=
 =?utf-8?B?NFFQZFZ1Nit0bERrTGVpTEhUYWZYWjVrWkd3MFhwRGZ6bG5Xdzltc2VmT3JD?=
 =?utf-8?B?TzZiSzkrZzJtam00NitLNWg4aUF1TC8veDMzWVYxcExYN3UrL0xXQUkzMUJ1?=
 =?utf-8?B?cXcyMGc3Y2xkRFdReFcvTEw2UGJpNWtiOWhJd2lCUStCZnNtU05CMzZkRVBO?=
 =?utf-8?B?aDRDUVhEZjFnenBhL2hXVUI5TmFGeXZtaVE1eVJIRHk1Q2plZzR5TU5pVGIv?=
 =?utf-8?B?akxDSVNWQU42NWFtTVgvUHFiQkdRUHpmblB1QWxrbUpzWHFqdE5yVHh6cVh2?=
 =?utf-8?B?dXBrN1hYRDRFSFRqNjRwWjFkeHN2ajJQZXVvc0ZCaFVEejVsQ1JNTUZ6TUwz?=
 =?utf-8?B?MFQwWUczSURQMnJvM0lWNXdUVG1JVER3RlpEQUJNNlV2WVE0WElJMlBxR1JN?=
 =?utf-8?B?eEdaR0Z1eDU0NE1iZktIUjNxTy8zWnR0NjM4SDQ4c2dQeG9OUHYya2FkM1RB?=
 =?utf-8?B?N3RhNUsxSEpTZmhMYU1OTUVXeGhlSVBUaGJ5NDdxd3NRSEF0QjZ1emh2d1hw?=
 =?utf-8?B?MGFZRmJ5VnlzcUtscll4ZEc2YktzbEVsRDZQcnR2WHRNRUZKTUliSjluVlV6?=
 =?utf-8?B?a1YxUDZtODVBeUJWcE5FajNGdEhoYmZwbDNHZ01UazBMWVp5Rk5wb3ROcTlp?=
 =?utf-8?B?QUNxQ0VGOEIvSDBYR0tqZU1zZjlVajZvQ3ZWOVdITWh3c1hmM1hjNHpPSGh5?=
 =?utf-8?B?V0pmN09rM3gxSG5CMFF1OVQwWk5QNFdHamR4aFMyZm9rS3VNaUIxZmFxaTAx?=
 =?utf-8?B?eUFwcW5BSE0vOFkxNUdQUFlvNXkybmpLMXFKZHc0dTVMY09nSzJTOTh5QXF2?=
 =?utf-8?B?Z1huMnNZU09RSjIvU04ybnk2RElWdW1jQXpIdVRjdWJPY1oreFByTzl2SnMr?=
 =?utf-8?B?RXB6aVZjaXlQMFFIeUdUR1RsRmM5NUIxUzBjNjB5LzVablFBWWwyRWVpK1lD?=
 =?utf-8?Q?j/i6nMyLlFr6eMWk=3D?=
X-Exchange-RoutingPolicyChecked: b8xh/4dtS9QF8tZRXjRKXk8otHkphzHAO0NapZldFQEAJrMDih7ncyHZ2AAFu/TbHZYtU6UBwW+ZAtpzzFKsfEKDm1LgRwU2hlYNrsmp1wHTML5qBWfnY3maBFqzTsZ7tc50iJ9W6rg1Ozij34uDtkLaV69RAVDVC0qA5H+DZqZxC+EKNVuWFdT+ikWQa+W3BRWi/1jRlxs11D1pptV2tn0g3pARAUObbXlPEs0fmQwI/fyuB2zy/0iv3+odqpfrREBq4OOAlji5YUCgToNha+5RLVzb4HhcCIKGIn6FHi80E4PPIyaNXFIGRRZGCYrRUEWJLFbudkjytHpRKqP6PA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c2fa63b6-8dc7-4786-04cb-08ded0357484
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8448.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2026 08:08:34.2819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3KRajQoMTu2hxdACXREhS+RJvGnYggRiJyw5qNiWvZ/H3RdLZ1MI0Zo5jfO3tCgmJ+D/OIGL1gJbK8MvnHm96Ci2MGtSxN/qOvx2BKUpnqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6094
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782115721; x=1813651721;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8QoRVtZvDadrXhjsXgWDvC03XYocRGf/rPuHSxsyS/4=;
 b=Dcd7RHqkj+8wuNCWvWuZ4EikYd4rnU+zAoqkO/sGGSYD2CV/c73eFK6i
 CK5UjvQBh18Kznm+dL0mJUYvQqRsK1eM1mIQwkYLt7ypJmnMuJK5EV3kn
 REy/Ni8WnRdRvsbavR1puV3A97n0Nbh0/1HXQZOI5QOoML3W7m5EE5wGF
 gwXZFJv9Xbyy+Xo/pyGLP0xDMEhRGDzsugqJbr3RCr3o8DOf/AOUR2ftA
 Y+ny1Z0EQHN4bQlCaTriFxZwF84TQ40+J6VVIzUQgc3kwpfOpyHyx2GSA
 L0T11BaqDZBJW4jFhncaVlPU8Pdet0wn5n3r3gNuv7IINUUXV0Jks5aX6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dcd7RHqk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/4] igc: move
 autoneg-enabled settings into igc_handle_autoneg_enabled()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C9176AD86B



On 14/06/2026 10:17, Ruinskiy, Dima wrote:
> On 08/05/2026 0:47, KhaiWenTan wrote:
>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>
>> Move the advertised link modes and flow control configuration from
>> igc_ethtool_set_link_ksettings() into igc_handle_autoneg_enabled().
>>
>> No functional change.
>>
>> Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 72 ++++++++++++--------
>>   1 file changed, 44 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/ 
>> net/ethernet/intel/igc/igc_ethtool.c
>> index 0122009bedd0..cfcbf2fdad6e 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -2000,6 +2000,49 @@ static int 
>> igc_ethtool_get_link_ksettings(struct net_device *netdev,
>>       return 0;
>>   }
>> +/**
>> + * igc_handle_autoneg_enabled - Configure autonegotiation advertisement
>> + * @adapter: private driver structure
>> + * @cmd: ethtool link ksettings from user
>> + *
>> + * Records advertised speeds and flow control settings when autoneg
>> + * is enabled.
>> + */
>> +static void igc_handle_autoneg_enabled(struct igc_adapter *adapter,
>> +                       const struct ethtool_link_ksettings *cmd)
>> +{
>> +    struct igc_hw *hw = &adapter->hw;
>> +    u16 advertised = 0;
>> +
>> +    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> +                          2500baseT_Full))
>> +        advertised |= ADVERTISE_2500_FULL;
>> +
>> +    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> +                          1000baseT_Full))
>> +        advertised |= ADVERTISE_1000_FULL;
>> +
>> +    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> +                          100baseT_Full))
>> +        advertised |= ADVERTISE_100_FULL;
>> +
>> +    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> +                          100baseT_Half))
>> +        advertised |= ADVERTISE_100_HALF;
>> +
>> +    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> +                          10baseT_Full))
>> +        advertised |= ADVERTISE_10_FULL;
>> +
>> +    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> +                          10baseT_Half))
>> +        advertised |= ADVERTISE_10_HALF;
>> +
>> +    hw->phy.autoneg_advertised = advertised;
>> +    if (adapter->fc_autoneg)
>> +        hw->fc.requested_mode = igc_fc_default;
>> +}
>> +
>>   static int
>>   igc_ethtool_set_link_ksettings(struct net_device *netdev,
>>                      const struct ethtool_link_ksettings *cmd)
>> @@ -2007,7 +2050,6 @@ igc_ethtool_set_link_ksettings(struct net_device 
>> *netdev,
>>       struct igc_adapter *adapter = netdev_priv(netdev);
>>       struct net_device *dev = adapter->netdev;
>>       struct igc_hw *hw = &adapter->hw;
>> -    u16 advertised = 0;
>>       /* When adapter in resetting mode, autoneg/speed/duplex
>>        * cannot be changed
>> @@ -2032,34 +2074,8 @@ igc_ethtool_set_link_ksettings(struct 
>> net_device *netdev,
>>       while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>>           usleep_range(1000, 2000);
>> -    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> -                          2500baseT_Full))
>> -        advertised |= ADVERTISE_2500_FULL;
>> -
>> -    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> -                          1000baseT_Full))
>> -        advertised |= ADVERTISE_1000_FULL;
>> -
>> -    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> -                          100baseT_Full))
>> -        advertised |= ADVERTISE_100_FULL;
>> -
>> -    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> -                          100baseT_Half))
>> -        advertised |= ADVERTISE_100_HALF;
>> -
>> -    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> -                          10baseT_Full))
>> -        advertised |= ADVERTISE_10_FULL;
>> -
>> -    if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
>> -                          10baseT_Half))
>> -        advertised |= ADVERTISE_10_HALF;
>> -
>>       if (cmd->base.autoneg == AUTONEG_ENABLE) {
>> -        hw->phy.autoneg_advertised = advertised;
>> -        if (adapter->fc_autoneg)
>> -            hw->fc.requested_mode = igc_fc_default;
>> +        igc_handle_autoneg_enabled(adapter, cmd);
>>       } else {
>>           netdev_info(dev, "Force mode currently not supported\n");
>>       }
> Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Tested-by: Moriya Kadosh <moriyax.kadosh@intel.com>

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHqmGoXG+2l5EgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:53:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD88A4E167C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:53:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 520FD40EB4;
	Wed,  6 May 2026 22:53:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xo3yUqe3EPf1; Wed,  6 May 2026 22:53:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE00F40EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778108034;
	bh=3guyIw8eyFpmK2zHKF08AijvsmaoXUbzm1wZ1F8xBz0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v3u5i7lqRc6BioqdugoUFnFEjQr7LRNF8kfAb0W2IftsgJZYUvXzu3ixlPHPRBRN8
	 hbd9WrIzbWiodimom1vwzCZMmaj2vh3VjxgCWdUOoAv2XblGQJKFU5+qungH+pESLn
	 YF3G68yyGKxfbXlUHONhy44CaeHfZUGI/AtGREP6exsTm50PBIadPrGQhmYKnQ9n/8
	 0cv/P9WF94zpn/1gC/AcvqwCbkBw0S4QhsamRhgpkVj7IQhndolzbbpYvTOYyqW9pZ
	 OQhA69hAe9RhLatNFsL/rbubEp8SLubEPBTRn8z95UW1gY5codaYV6hzYufdXQXSgY
	 k5PW6psvljIoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE00F40EEF;
	Wed,  6 May 2026 22:53:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B6B54280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:53:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8BEA60872
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:53:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 31c_efXQSMBG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 22:53:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB73D6081F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB73D6081F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB73D6081F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:53:51 +0000 (UTC)
X-CSE-ConnectionGUID: SOzJl1FZT8m/JHO1MiKxXw==
X-CSE-MsgGUID: DOCqV54wR4O8qJC+jYo32w==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="101727033"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="101727033"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 15:53:51 -0700
X-CSE-ConnectionGUID: 3w8IUvu3STCjy25dmBTSbg==
X-CSE-MsgGUID: Sl7TEPABSY6oX3DBK1ySog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="231905913"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 15:53:50 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 15:53:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 15:53:50 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 15:53:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nQiwCbBVAXP4vBXk4DstymuzRRuMBGyzyTYDYSMAt/LJCy5WDRRAnmMQvtHEw5LlbFJTODYGZeedlTx+wrTyh79/zBizacOn33DSzigAw4b9GQjMWq+02ESdbEPxVNcjiCb47Zi4DuTlSwP1OOBIaAmPpfQ9BR5GIaJJ5T/2sG5gyKfwxTtVqgMjNkxNhc4sV0qadGEX55LG+zttyq35yU3fBDn0ltbKFfZiNGChP9Chw4Jc5QBfsmiSSKC+6UkRaC9tdkX2bwiEP2yn3wDwQB4UudkJlxik+sXfQ+dj8ZhINZYw+6qFOIjugLRnJbmeq9U/dtFxMNuGGtgImjVhVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3guyIw8eyFpmK2zHKF08AijvsmaoXUbzm1wZ1F8xBz0=;
 b=SXryuGjeieIWD6S1haOLZDtJiClVFhK/wUrYxXmdaUz3FDUUufUHVUWAOPstRmTfiT/J4Czt2gV4f/AryG5bmdR122kkWXsZlpDmVBC6qpNVaKFTy5i2sKKTwfQT12nK208AX0riA37K8bQbGvF8L9Wfh+AFY86PAhklysQCUHoGEGK0zA/W6PWYWJ+DkSf6vkvcWYCXI46vXEoTbpSxmNK9sb225smJQCoVT5/wndGnulPZ5JZ0pT+5LlJJMfWJPOFAq1IypskdaSe2yAytcLaluA+cCV/kmJmlAs3UefktexHRbJl0FcbwlfJX+2qY3piXNO7i+HtT7HMt5/BbnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by IA3PR11MB9205.namprd11.prod.outlook.com (2603:10b6:208:573::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 6 May
 2026 22:53:44 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 22:53:44 +0000
Message-ID: <823fdc0e-d8ff-49f5-b270-3ac6537c749c@intel.com>
Date: Wed, 6 May 2026 15:53:42 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>
References: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0011.namprd02.prod.outlook.com
 (2603:10b6:303:16d::28) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|IA3PR11MB9205:EE_
X-MS-Office365-Filtering-Correlation-Id: b02e7edd-9b10-4e12-1378-08deabc25376
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: o0/YCrbCS6xpg4vnu5v9/EBi6ucq1uAcYDOci9NFprNvT7Co21uSqEWQNy92doUTKX9TOcDr/mUj7a+q/5ZL3zh1ML7K35Hlbz5K3rHGk2ozP5trJi5nAV1FoyrUwasYr+ACGEPfQBFhkCU8/JJdpRsGsKLj1J6fT0YT9EyAJOUC6Sx4ueY0I2iKBUAmkAVvzH32T9y/Zf5ut1Zv9maylCNs1tHBMH2sGf5ivzm4wE9yy7M2UVdkAcow2ONkAPKND7hwn/yw15Y80xI7OK3Tl4IN1r+0cmsIlKVM6UZwbfU+zTuKHGQ4Ayn2oIcGaprByu9Cne8bDOuVPhVCpOsAwWuNtBRhEOqWN6Q3TbpNCZ1FZ6bViD/BSecc6PzB4gZzXuYinMROXOah0w/J1NxMuPdwCoN7XDHYGpCDnFapV1iV2ezD7tVHur7b+C7NhfRMLQjPPPn7aMGbWJXKKd6xpCFJP1PY04fhdsoO5WpDkCKYlLak2AtsOHSrN7+EvbSIxrro6MkDKGSR+74hMuHSXEloMM+7MvGraSj+n0wxVIw80DaytUqF/KLfjRCBg/8cnR3WVBsMSDag9MWJVszEdS/aSCPVUlYbs4NQXDvQBsvayjKJ8okfrU4kDBieHsLb2GOLeSPwfNcqMbjTYue8+nfP9P44qNA3h8L60mxijePxHT4MYeKdV9nzYSQ377qm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVM1RmdCbEsybjNqTXZ2NzlKMUtrU1I2Qk1CZXdxeFo3b0JnQWVXdXlzUUJ4?=
 =?utf-8?B?Y1pBeFFYM0RtK0JYNG56aXNETmR4aXVWeDRFWFh6c3hjOXEyNUowQ0hZTTZO?=
 =?utf-8?B?Mmt5YXFwdDFTV3ZWMXMvaXVNaUJFeTV6NDRUenZTNHhjeVJqVkNIazVqZmcy?=
 =?utf-8?B?UkVWTFV0bFloNHV3WXQySzk3SEVrZnRsMzVIMzF6OU5FaTVKaG5VbnN1c3Jx?=
 =?utf-8?B?bFVHYXZhOFBlYkd3alg5YWhDcFo5SG5Ca1FxK2hjSmJ0UU05aUZEaEIrenRF?=
 =?utf-8?B?Z3VMNlVpeXFSQlRSdVcrKzUxcU5yM1NHVGtYZFd2WjI5dFNWMjZhNTc2dHdP?=
 =?utf-8?B?aDA5bFdSSVRTc2VVQW9kakZDZkJXRkNLRmJndFp2ZVdTUFM4dVRrRFhvSXFS?=
 =?utf-8?B?ZVh6cG9Hc3ZrV0V1Q2dXUlZLOEZhNDhueEQ0bWtiOGZOV2ZPQ2IxZWMwRDlE?=
 =?utf-8?B?emEwcmw5aTl3ZHV1RzhQejdOcjB0djlscjJVYlZKOWhwWjQ4Y2F0Y244anls?=
 =?utf-8?B?L1lXcHhxQjBWRGFuaUIwR3JrdHhib1pJUk55VStwZ2N4dmM2RzVSY0NMbG0z?=
 =?utf-8?B?NTJqYm84MStJM0tJcHplNDN0NGo5U3hDeXZqZVQrVWRqOFYrVlMrQXlHQ2V5?=
 =?utf-8?B?QUZsRmVsT09HMXNoQ0lXUkxKRDloTWhka3FtSWpwWFp0eEcvZzNtOHJ2VHIr?=
 =?utf-8?B?VldUQlhRZzY1TnJ3OFQzN2ZVTFBlUVJPUlg5d2xrc0V1Q1ExZncvd3BEbWx2?=
 =?utf-8?B?bkZpWjJKU1U4Y0pQejU2YUFCTlVZMWt3L0p3dS9VOTdYUnNvOWkyN3BTdVVI?=
 =?utf-8?B?TXA4RDZ2ZGwzQzB3ZFpCK2g5VElmd21yeGZ4Q2xQZU1MdVhaUGN6bkxZL1ds?=
 =?utf-8?B?QzRmQkhPWFJWdHNNQnFMeXdHNFptY3JYR2N0bE1DMGZwd04xQ2VrMVFINzhs?=
 =?utf-8?B?SXRuNlNwZGVMMVhKWkpEUnluOHFGYXk4WnFLZkhFdjVpcEVCTDZVcExKcjI2?=
 =?utf-8?B?elNTZDFHRlIvWEF1Q0lMVzZVMzJJN0pKdDZEZG14d0YvbUFpUWVMZFB3UjRz?=
 =?utf-8?B?T1NXcUZwV2JRdVVNaXlEMHY5c2llTjFqMkwwcXZMcTdTT0tuQ25CWXdKT0Y5?=
 =?utf-8?B?YzVjcWpnc3ROdFpSU2VrWjVJa3pYL2F3OGRJSVNodTNRS083Tmdic0ZmVkYr?=
 =?utf-8?B?V3NRZnZ3NmRoVVoyZDdkM2FXUElJbklDbXNNV3UycGZzMEx4RVE3VElmNlQw?=
 =?utf-8?B?a0dZK2tQam9ueGVYcXh1SFA3b002TU95ZHBDb2lmdnkrVVhtNnN3Z09tRTRO?=
 =?utf-8?B?U24vSi8rV2kwYUxQc1RJd2xxT0YwY3FaR0RhcmtnOXVXbzBsa2xlV29ML1Vs?=
 =?utf-8?B?NG5zbUxtc2lyQkNpUWhLUzJnbDJkWndFbk5tYUpnN2dkOXg1b0tsU0xXdFBI?=
 =?utf-8?B?R3JFNFRzVHhSNnBBY21EQ0t0cldIME50ZWRSSVJIaWt2dG4zcVpKNjdYTUh1?=
 =?utf-8?B?UThWVVJ5UnFjc3Fpd2d1QURRRlBxT3J5ZTlhQUkrMWVJNTRJWWpQc1FkMVF2?=
 =?utf-8?B?WTBEeFRRa2NpOGpPZkFnUXRVZ2liVnU4N3lraStwT1RtRUoxL0JYbytZQmJR?=
 =?utf-8?B?VzJDR3Uwc083NjFVaUdHUU84WFUxOHJZaTFpandUWXJISmYzQlZuZ1pJdm9z?=
 =?utf-8?B?aHdNUEhhemEwTHpXT2NxU0dCdURmY0tVMmRPU0dMZ0N3eHZKeVhOTEkrdG0x?=
 =?utf-8?B?NTJ3N3lZRVF1NEFHaDk4TVNBYVB3dWptTUR4UUc2SlFZcVdQUmpRK2xRWFhU?=
 =?utf-8?B?N0dOSzR0cEJUaHpwb0g2STh0U1hzNExDM1N0elJrRzVxWnVFUXBIRGNLUHBR?=
 =?utf-8?B?WEYxRVgrNHl0ZTdSd3NvQW9lU1d6MGhYSVE5YzhDNHFEOW0yTHFlbU4yQUQy?=
 =?utf-8?B?VVlmaEVrNkdNNmpWQmZiWVc3aFdJNVBpK3NiTURKd0JJclM2VjduY2FUejho?=
 =?utf-8?B?WGE4SUloUDl3dlYwRWZKNTZsUU5ub1VzSmlXNWtZdGhkT3hORlhyeGwyZUhS?=
 =?utf-8?B?VmZQcjRzbzNRT0tYZFNMOWJmNE03ZDc3STYxRHBSazZiQkJkbmF2QTNuUjdi?=
 =?utf-8?B?N1VKK1BOSVF2bFk5UHF4L05xanlKVkNIY2ovMXNJdDYzbnlMZTlBU2lJR1hv?=
 =?utf-8?B?NzRoSkxZdVRWemFRU3Btb3F0MEE0a1RyUjRDR3BwUnlSWGhoN0xaUmxvOGpY?=
 =?utf-8?B?WjQ3QmVpQ1JMOUdqNDhLMjR2c1JrUGZ3YUU4WXhhOCthVy8weW5kT0NVTGxB?=
 =?utf-8?B?Q1dtY0ZPOGViQ3lud3VEYzNNeUJuYlVIWEt4ZFg5RFNvYkZURDZtV2ZUMVc3?=
 =?utf-8?Q?tuvdEcOtHNUrDls8=3D?=
X-Exchange-RoutingPolicyChecked: bQyVRK2OdGDWQ/CNH41G9cX3LsU6w1dWo/Pj4fuudN72T4zslzDimNxEVsZKVgOiLgPjX/z/l5cPM8E1/l9KmbCwEcMhn4MdDCaRolyZF+1MgkIJC4spFlDzkYZUpq33FXeA3bPNZUC/W2sIi1AAAF8leaUNVMUhv+yufb4ZUF+wQ6Yj/f0zVjteiZ/ldCEgAOCN6FO7VQO5CH2xutLlgnHvoAnVidesskLQuJL5OwfVgKkhHyOpsclf3pNeBD8dtGtM6il50A2c1SXoAWLumgROgo2FKf5EOIhS89DthKL11o0Eb/c57MT+glwtVJCIiF+2ijbgTbD1ZKOuIR0zcg==
X-MS-Exchange-CrossTenant-Network-Message-Id: b02e7edd-9b10-4e12-1378-08deabc25376
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 22:53:44.6918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3uQpOBiRAJ1qu1vRDxjSVbOxkQED9fP5RSURHzhXPVQGm7xQoEnSrKcQ9oEgMKM89VR7gs8s39QCPYmmI+h5ulfWR+mHekFNfRUPWvEiI+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9205
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778108032; x=1809644032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ybAHhvJ5Cf1UEcXFKxFLMh8XGqNKCVWcYbN8BFYqFXo=;
 b=X8ibYc4WQI7TgKPxlc79EOGslzHsvn3MDkE7CJGAdkMH3geCapux3jHx
 qWuVfZk6KhH7QrqFBOx25C5i+7wL0bToaem7AaDKyL8HwKDuirEG1xcIq
 EdnSyBE6/o4NuIVtliIVSUQXzGTYOw42W7xF3Kh5B3CBr5uzDjZtHCYnM
 SSgV6R5C7hgiaE871TkWvO7qVrO2Bhr+itnLN24dIFvYDfLeJLpzUw9ZF
 CrnJJBlCSJwJKx3R5w3Fx45/RB62o+G7XGdRqciJig9gAn/C4D0karL9O
 jOxsG/EvNvgEbllohOfNdBAleYqWrm5BBmO1dopXLfmb7G+y9tL6MUlgT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X8ibYc4W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: five small fixes
 and cleanups
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
X-Rspamd-Queue-Id: BD88A4E167C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.39 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.854];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	R_SPF_ALLOW(0.00)[+mx:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: add header
X-Spam: Yes

On 5/4/2026 7:24 AM, Aleksandr Loktionov wrote:
> Three correctness fixes and two cleanups for the ice driver.
> 
> Patch 1 corrects a kernel-doc comment in ice_ptp_hw.h that described the
> ETH56G MAC Rx offset field as unsigned when it is signed (trivial doc fix,
> no functional change).
> 
> Patch 2 removes the PF_SB_REM_DEV_CTL sideband register write from
> ice_ptp_init_phc_e82x().  PHY access is enabled by default on E82X and
> the register write was a leftover from an earlier SWITCH_MODE workaround
> that is no longer needed.
> 
> Patch 3 renames ICE_SMA2_UFL2_RX_DIS to ICE_SMA2_UFL2_RX_EN to match
> the actual active-high hardware semantics and inverts the three use sites
> in ice_dpll.c so that the logic remains correct.
> 
> Patch 4 replaces the static per-type frequency tables for CGU pins with a
> single DPLL_PIN_FREQUENCY_RANGE(1, 25 MHz) entry.  The firmware defines
> an any_freq capability for configurable CGU inputs, but the old tables
> restricted users to 1 PPS or 10 MHz.  GNSS pins retain a 1 PPS-only
> entry since they are physically constrained.
> 
> Patch 5 exports ice_dcb_need_recfg() and calls it in the four SW LLDP
> netlink setters instead of memcmp() on a non-packed struct, which is
> undefined behaviour due to uninitialised padding bytes.  The redundant
> memcmp in ice_pf_dcb_cfg() is removed since callers now guard it.
> 

Some of these seem like they belong as net fixes, not cleanups
targetting next.

Specifically patch 3 and 4 I feel should be separated. Could you please
either justify why those issues are not "fixes" worthy of net, or
separate them into their own series?

Thanks,
Jake

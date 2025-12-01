Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BCAC9936E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 22:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B5B611AE;
	Mon,  1 Dec 2025 21:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxs-D5LMUi_3; Mon,  1 Dec 2025 21:41:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11724611B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764625284;
	bh=mxgMnBaj3s2rUufRTg2zr9J1UQ8pBUYQSpgLU/9MmGc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nvj0PoKEQnbyiTJWE6SFWHIN8XtLQn6JZ1J5DyRD42rDA9fe1fBpASmRIOnEaZmi/
	 TH53Sc1heSQD4u6lXi7DO11FPR4XthD/nqGdO2WsQYvO7RCRk7SXTeoBoHJPX2xCMi
	 QRofYXGP1LmTqLulFvvGayTo7b2s2TaNh8vri7eYr9yjWyhVjLCfTsTA8KJGZK4X7y
	 PxAR1qzDLfdJlhW7hjB0+QO1EVeZRYRiMd8xh54KgG+ktyKRpdrCXyj9Ak+sHrVLeo
	 kzRN6AeFOo7fK2GbNpTjs3sCyalgXMsbHWWGIdRUe1KGlgYRy/NoUdJd5s+0t0Ihdv
	 x5VJZCNp0jswQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11724611B9;
	Mon,  1 Dec 2025 21:41:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 03B63E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE30B6119E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:41:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iXfD2Sjhw3es for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 21:41:22 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Dec 2025 21:41:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C511F6115D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C511F6115D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C511F6115D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:41:21 +0000 (UTC)
X-CSE-ConnectionGUID: 2a2AmOSZT5ydY7P/q590pQ==
X-CSE-MsgGUID: HkoKCe+TRgCB0V3wVN7zug==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="89227356"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="89227356"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 13:34:13 -0800
X-CSE-ConnectionGUID: wHfGo3YZRqypMwRXOc3YhA==
X-CSE-MsgGUID: 3Yc/jSgZR0WYSSSzGAggpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="194982745"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 13:34:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 13:34:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 13:34:12 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 13:34:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6IPVnXgr5X8hKQgJ7Shy2IDSXrRmV86gLNsN7kyQ6/hwDMGzEcM+QI2/KNpP/v3wjZwgccGZGxklpKik7+iPAum1+FQMtpSDSGzHOboYfutey5oOeHq4Mu1o1f+skQdneJnYf8I8B0AKnyBaCJ1KyvTAdmqMtVy/uhecqgGIc2ihjxWAVs1QW8Ai1LGrcdlSmIgQ8AnyhTbPy1pclRhLpaGgIozQBUIL87ccn8MKs/xoGJ7k1WKQ7BEPjVLc2OwpEKKdxfa+Jki22FDj1kVDqedO7Eb6l6fhDGxGP+WMiXzO0cPn68kGLfDnBskyVNiDIVz2g9usD5H9AsODwXUHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mxgMnBaj3s2rUufRTg2zr9J1UQ8pBUYQSpgLU/9MmGc=;
 b=tfTDf0QmSSloPxYfgcIoj55igHd+MrxHmuKFuW9DZjMieVJEpm6rX3ZpxaEBRac7sec8+wO8bCvGjbIb8Xpxa/lsmRwhh6+aUg3f5mSmFR3st3/0Xh5GVZScx+jYRMMgkZo8I9JIsB5IIuCK43flrmuXxz7sqj5szZmBGsTEyZDokzthp/H3rW6UtUj7gIcyloZjCpFh8bQzLXTvD6gDf3vFuXgJoEhxuxD1LXSbDP5LTdAtZR6tMUYK8M7dPr9ChuRp5Hw8AE86FtTmoio9lruSG9LaM4Bn9lvG5B5fY4Qy+yB9n4YAKAIJcmu0jTzj/KiWa5PrivJhCiSB5t/n2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by SJ2PR11MB8472.namprd11.prod.outlook.com (2603:10b6:a03:574::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 21:34:09 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062%4]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 21:34:09 +0000
Message-ID: <6141a603-5b59-427b-97e1-c26432f040e7@intel.com>
Date: Mon, 1 Dec 2025 13:34:07 -0800
User-Agent: Mozilla Thunderbird
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <Aleksandr.Loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "iamvivekkumar@google.com"
 <iamvivekkumar@google.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-3-emil.s.tantilov@intel.com>
Content-Language: en-US
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <20251121001218.4565-3-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0329.namprd03.prod.outlook.com
 (2603:10b6:303:dd::34) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5690:EE_|SJ2PR11MB8472:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ca4c431-d9f7-43cf-c698-08de31215cd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFpnNHdEOVRobFlBb2laTjJET1pNa0RoeWUyYldjdkZRc2o2WVRvUmlscXor?=
 =?utf-8?B?eHdqc3BMbmJGbXRRTmFyZUV6VkQxT3ZyOGQ4eUJTNHROempFWjkwc29haUFH?=
 =?utf-8?B?bjByZUxlSnRZeEZ6ZHp0MFEybnhBdm9ZTk12em9YZm5GRVdsc0w2V1N2MHdC?=
 =?utf-8?B?dldFSUt5aEI4K1dEY1lubWVUMTNhNlJJZzZiZEFESU5SdGZaVkxaT1hzQTBn?=
 =?utf-8?B?Nm9LRVNZdk5SdEpMa0xjRUdoSGttaXJTYlFRNXZ1c2xYTDg5VDdSZlg4eksz?=
 =?utf-8?B?U2tKTFk3emMzRllvTFM5Qkw5Q0R0YkJ3ZHNrdkNzOEEyYUFnbG1ENFpldmpq?=
 =?utf-8?B?UXVEMUxwc3FIRzN5LzJUeXpIRlhRM3A1Tlc4VGREQlhBdnFBWXJoRkoyTkRQ?=
 =?utf-8?B?ajIxQllTWG1ObWpoZWhrTnF5Q1pLakZXK0RLaFJyWXlFMkVvTFJMSUpKOHdO?=
 =?utf-8?B?VzUycENIay9XR1BrWHZ0VkpIU2duZFV6RTU0RUhVRGEzREVKb2JBeGdDQmRF?=
 =?utf-8?B?ZjZ6aEVTT29CY3lPa1ltUStNcVYraUpVKy8yOTRVdWpyRmtzUUUvY3l4dkdv?=
 =?utf-8?B?dm5qdzlyRlprVk5yYXE4ak1qUXYvcmMwckdXQTBYbmlDRHkzemwxNWZRM09k?=
 =?utf-8?B?Z3h5ZUovWmpSd1lxeWZxVHVNcXR0WldLaUFjR0tQNVMrblBFRzRkMGp5K1Bt?=
 =?utf-8?B?WERoZHppK1owNlIxY1JwNDZsc0dtWU9qS1phYVhCQzdaQkNjYVZiZXlNaS9L?=
 =?utf-8?B?SHZ2Y3RSeVY3eG5YMFFsaFRqZkNva0FzOXFTSDZWc3Y5ZGJRek1aQVJ5L2dt?=
 =?utf-8?B?Y0Vqc0grcmxGMXBYSXpQOGd6VXpOMERxTkR4Q21DNjB2Tnc4YWxueGRkSzZ3?=
 =?utf-8?B?TEh4NWFoRUtEa3V4ZHpuejdvUjdlNzVLQXNSQllBVVU0UnJwMmZ4YVdnenA0?=
 =?utf-8?B?Mzc4OUVKb3F3VHU0Q2M5TVhydWZOOWtQM3dDNnBPdnRtMDR1Q25wSlJqdWVn?=
 =?utf-8?B?ZGJaWjBSZkgvaVB1YTYwWWUxZWRKLzY2VUhOQUd6Mnd2SDd5RmR2TnBwWi95?=
 =?utf-8?B?Q09oendlZVRrRGtlaW9Rdks2UVpibkRWYnM3bHpHUm1jajkybUd6NVhsV0d1?=
 =?utf-8?B?N3lYVXpoUjhwWVlmL3R4dnNSSUo2d25tajBGbWYyd0F5SzEyRksxY1pZZkkx?=
 =?utf-8?B?MGRDRnVMSGIyQSt6R1dGWXpMTVNKUTZFOERPY0ZVN2RSMVRqMThic2g0enFB?=
 =?utf-8?B?cUNsdWFKbGFXVnFhQ1dGMEhaZ2lmWjhIbVR2U1NqUVlGMWpLQ0JiejhTOThQ?=
 =?utf-8?B?dnRTc3VyRXczVWxtcnVIaUorYTFERUlpRGdxT1B2M1hKRU1vazdEZUpBalRl?=
 =?utf-8?B?ckQ4NWlyUEc1MUVVeFFVNXBvVEluM05rTGlJZndjK3cxMFl1Q05BU2ViZ0NR?=
 =?utf-8?B?MWJuVEJOT0sralhudisrYTNzdkp6bXQwZjBQdUJ2SEN3ZGpaME50dU9FWGc0?=
 =?utf-8?B?cDJpaWw0N2NaTTl4Q2ovNXBJK0R5Zms1U055eFVvT3FodnhjaEpZWHlQcEtJ?=
 =?utf-8?B?WVVaOTZWL3MrNy9TaXlQMWpxUktLZkJBVytxamp1bTk1R2c0S0o3SS9PZXIz?=
 =?utf-8?B?WUJ2UXI4dWhTY0ZtTlpGRjBHUU5TTkNpM3FuVjRCOG9ONXpRYUppK3d1TzBW?=
 =?utf-8?B?QnBiVUZkRUdwVFc0Qy9RUWlQZm81dXlVdnpxbFd5azRaS3dwbTgxcTZTZ2pG?=
 =?utf-8?B?K3pJRE9TU25TNGVHSVk2bzc4SmNzQkhwRVpnRVNTbDFjZ1owaWpqNkV2K0Ux?=
 =?utf-8?B?a0hud0M1RTFnL1J4MkZqK2xBTXlhNWxPNHUreXNnS0pVbis4OUQxeHBWeFBW?=
 =?utf-8?B?dWRuc09HNlMwWDA4NTVUVksxQ2ZINnpLa3FRSG5sZGpQeGpDM3pLaUF2NnBY?=
 =?utf-8?Q?ZqpG8Jutj6k42W6dP6E54I5FW+mj2Iuq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUVlZ1FvSHdielkxUWtjS3UrQTl2aitobnc1Y0hJdW9uWCtRNDZOa2h5SnBr?=
 =?utf-8?B?MVE0MWs3RTBFQ0o2dU1LeDZrU1ZSLzZ0SUY2ckZmWGtTWWxSVGk3WWdnZmtj?=
 =?utf-8?B?Zk9KOFF5eTZlUDcyOUM2S0lJQUZGbkhyUE53a0luYUdOMlVBQm5YZzdSNDQ1?=
 =?utf-8?B?TzFEU0NYQXRFTDFvQ3JjempudjY0Uktzallscy92S01TcDNsdnBzeGNQQUlI?=
 =?utf-8?B?eHJkYnB2OWhwSTc3ZWJsRGFZeWNSMjVKTXdFY29oMytqY3dNWEtqSUpPU1BZ?=
 =?utf-8?B?U1FHWUl6SmJRYlJzalNieTZYZys4QkpXU3hFbGVXVE1Qc0NoUWJ4MmowNDhq?=
 =?utf-8?B?aHBTcm92aDg2TTVIZDRWQjA3TzZBemRFWEpHdXpMT0hERnVrQnFvTmdvc01W?=
 =?utf-8?B?TTVMR01raVBGNTdjRERDSWtuU2ZiZnh1Si9xc01DcHFkVSt3cjIyVGo1ZzZD?=
 =?utf-8?B?MngrckZlTk02ZUprTFVFaXVGRi9hbHg1Tm01RUR0bEhGamZ3cmNoWEQwSkRW?=
 =?utf-8?B?UnJnWXp3WnlKQ0lkYlFrelYrVjJGcmdQRXFYVSsyN0hJcTJkbVEwTkh1WVNO?=
 =?utf-8?B?c1pLYjdzWERrRkRoVUF1QURlNjNITW00VTVDQWFJNHZnVVQzdll5V3VZSExE?=
 =?utf-8?B?bzkxeVdJc2k1ZzFNVzlRUSsxU1NybEFDRW9yeGtYYVBZWjJDVm8vUmcwcUNv?=
 =?utf-8?B?MEkrUHVuYzVDd1VLditQWi9SSS93QXh3WEdBNytSaFVEeUJGTW9TNGs3cFNZ?=
 =?utf-8?B?K2Q3VGtuSGFVTC82NVN3S2xURjdlUjJJS1JzSnRqNE1SbHlObU5Pc3k4dUdP?=
 =?utf-8?B?b3dNbmFPVTEzZFl4RXU1MVlFYXNpVm9tQjFTRUE0a2pySnE5SkQ5SGF0VkZR?=
 =?utf-8?B?RnVSYmt0bWMrem5INWhSSzNHdlQ4NWxUa0FCZGNoZzVDM01LdnNVZCthVTk4?=
 =?utf-8?B?V1JjSkk1a0xVOVp2MGN5ek8xaUNqd2xQcjQvejltNDV6NVF0cFAzSzhjTDFC?=
 =?utf-8?B?QUNoVzdLNDR4K0QxRWJqcFFoNmRQM3FXcjJ1S0l3ZEtPbG9BdG9HNUJ1NkFH?=
 =?utf-8?B?THZVb0lUSTFUU0VFcSsyMmN2VnZwcU5jcXY1dGlqa3pOOUJSTXFSWFdWZ0Nt?=
 =?utf-8?B?RGFQdkN6UkNweEcwL3A4OHlzbklXVU9HejdHbXdPeUo0NXI2M3ZhdDRmNjRs?=
 =?utf-8?B?YmFMMWN2OWxWQi9GalA2bzRUczZYZWxFYng4R1oxaEJmSEJiamZLN3JEMHBn?=
 =?utf-8?B?cDNJTGMzOXl1Uk00ZmVMRG9iOFJyQ2lHSWRJTHgvYzlIY05oYVRiZkNQS3px?=
 =?utf-8?B?ekl3dm9yTERDVDd3N2xxQ1hNVmR1V1VWTEVISDdHbVRiZXJYcCtrZ2xhVUlp?=
 =?utf-8?B?QjFtVElyRWduQUdjYjdraXZ4TVhoWlh2cE1SQUUwQ3ZJYXlsMXQ3VEs2QUsv?=
 =?utf-8?B?QW9kdVMvMVFqYXQzaTY4Vno5emlXREhXWW9PdVZXd0w3UHRYZG1OMWE0bSt6?=
 =?utf-8?B?dXh2YTJzcFJBZnlZdm1tRWhjdTFFT2x4aTNIV3hQV1lNbWthZWFFL1ZvLzZ6?=
 =?utf-8?B?a1A4cHM5TUx0UzFrUHRRdVVweUVlV08wdnVEUDVVeElNdzhGdzE5RVlRbk5i?=
 =?utf-8?B?Q3llU2xiVWNybDd1ZUFnQncwbTg0ZDA5dkJHd0lycEVKRm1JeUxXa0MwM3Z5?=
 =?utf-8?B?akNLck1jSzZiUUhibFhqaG4xQVAyMUxvUUs1SkFBeFlkT0lJL3B6am44STIr?=
 =?utf-8?B?NlN4NVhkMXdTTUxNUGdXNnFHYitBc2NsQ0dZQVllZVRXUEw0TE8rekxvWTlR?=
 =?utf-8?B?d3pvYkdKWnBiTGRmeTFGcElGMUcxaytCV3NhU0Mzczdtam5SUWp4cDFrcjdV?=
 =?utf-8?B?SkU2bXNtSndhcXpoQnhEUTZ2WkMzOHNqTG9MZUJNdWU3RUFrdDNuWkNJYUEx?=
 =?utf-8?B?OUx0WWtxeVE1NkE5TEJRcmVoZGp4SDRkckpEVnpHRmdtVmtLZnZGYjJiQnhS?=
 =?utf-8?B?eVNRRUNITWViZGZMeG9TR0lZREEvUkMzV3hTc2Y0cTZuQnlEbEVwbmp4TDlW?=
 =?utf-8?B?d2tRUXdDMXltZnQyNHZ5V1dTRlEyWGhSZVl2bm9mY0VkWXJPdENuT25KUnIz?=
 =?utf-8?B?aXRnQUtVN3BmZitDWUQvYlFCbVNCb0FnNjlJellzSUwzWWNTU2FUU2ZjMkEx?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ca4c431-d9f7-43cf-c698-08de31215cd0
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 21:34:09.5942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7wEjEemvWYG0wxIhsaK0+gAu/YaqsuSePPPBXBCEX572sdoWDaWIy8YonLhyZF0WqbjfOLma0bXFjbeheFvnKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764625282; x=1796161282;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t7g2TOiEp+SqbIlmcURaO/zRVCvydY51N+8mKKasgDg=;
 b=Wl4t2cSl0TnKm396Fm9+f9Cy3aF0Zdk0UZ+BQzOFqxj4sv7Ssw2P+dam
 AUvC0lZ/xCCzs1yiVvkrZ3akqZx56Eol+mHse3qWlYJQI6dy7TosxBL3U
 yjTPUGKeTko5Qo8PUMiwS0ZLdLiJAeWcRs19/anj/MxvROmksi17+29F8
 198adUHBBiDf6O4lfRLo8LYfXjCL4/wLJ3K4/yAHOJcelNcG4ZG6YPD6D
 dyE75FXPmHZ862D3m6fUBF/bAw0qnQiaoZA2H5cuYM+wEXp9uVxoDvNjg
 KCNMFIjJhRP5xU/juDhIVPfH+huVKWpnA0+UjdQSPmgOVeZFpvcn1jWv/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wl4t2cSl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/5] idpf: detach and close
 netdevs while handling a reset
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



On 11/20/2025 4:12 PM, Tantilov, Emil S wrote:
> Protect the reset path from callbacks by setting the netdevs to detached
> state and close any netdevs in UP state until the reset handling has
> completed. During a reset, the driver will de-allocate resources for the
> vport, and there is no guarantee that those will recover, which is why the
> existing vport_ctrl_lock does not provide sufficient protection.
> 
> idpf_detach_and_close() is called right before reset handling. If the
> reset handling succeeds, the netdevs state is recovered via call to
> idpf_attach_and_open(). If the reset handling fails the netdevs remain
> down. The detach/down calls are protected with RTNL lock to avoid racing
> with callbacks. On the recovery side the attach can be done without
> holding the RTNL lock as there are no callbacks expected at that point,
> due to detach/close always being done first in that flow.
> 
> The previous logic restoring the netdevs state based on the
> IDPF_VPORT_UP_REQUESTED flag in the init task is not needed anymore, hence
> the removal of idpf_set_vport_state(). The IDPF_VPORT_UP_REQUESTED is
> still being used to restore the state of the netdevs following the reset,
> but has no use outside of the reset handling flow.
> 
> idpf_init_hard_reset() is converted to void, since it was used as such and
> there is no error handling being done based on its return value.
> 
> Before this change, invoking hard and soft resets simultaneously will
> cause the driver to lose the vport state:
> ip -br a
> <inf>	UP
> echo 1 > /sys/class/net/ens801f0/device/reset& \
> ethtool -L ens801f0 combined 8
> ip -br a
> <inf>	DOWN
> ip link set <inf> up
> ip -br a
> <inf>	DOWN
> 
> Also in case of a failure in the reset path, the netdev is left
> exposed to external callbacks, while vport resources are not
> initialized, leading to a crash on subsequent ifup/down:
> [408471.398966] idpf 0000:83:00.0: HW reset detected
> [408471.411744] idpf 0000:83:00.0: Device HW Reset initiated
> [408472.277901] idpf 0000:83:00.0: The driver was unable to contact the device's firmware. Check that the FW is running. Driver state= 0x2
> [408508.125551] BUG: kernel NULL pointer dereference, address: 0000000000000078
> [408508.126112] #PF: supervisor read access in kernel mode
> [408508.126687] #PF: error_code(0x0000) - not-present page
> [408508.127256] PGD 2aae2f067 P4D 0
> [408508.127824] Oops: Oops: 0000 [#1] SMP NOPTI
> ...
> [408508.130871] RIP: 0010:idpf_stop+0x39/0x70 [idpf]
> ...
> [408508.139193] Call Trace:
> [408508.139637]  <TASK>
> [408508.140077]  __dev_close_many+0xbb/0x260
> [408508.140533]  __dev_change_flags+0x1cf/0x280
> [408508.140987]  netif_change_flags+0x26/0x70
> [408508.141434]  dev_change_flags+0x3d/0xb0
> [408508.141878]  devinet_ioctl+0x460/0x890
> [408508.142321]  inet_ioctl+0x18e/0x1d0
> [408508.142762]  ? _copy_to_user+0x22/0x70
> [408508.143207]  sock_do_ioctl+0x3d/0xe0
> [408508.143652]  sock_ioctl+0x10e/0x330
> [408508.144091]  ? find_held_lock+0x2b/0x80
> [408508.144537]  __x64_sys_ioctl+0x96/0xe0
> [408508.144979]  do_syscall_64+0x79/0x3d0
> [408508.145415]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [408508.145860] RIP: 0033:0x7f3e0bb4caff
> 
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>

> ---
>   drivers/net/ethernet/intel/idpf/idpf_lib.c | 121 ++++++++++++---------
>   1 file changed, 72 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 2a53f3d504d2..5c81f52db266 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -752,6 +752,65 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
>   	return 0;
>   }
>   
> +static void idpf_detach_and_close(struct idpf_adapter *adapter)
> +{
> +	int max_vports = adapter->max_vports;
> +
> +	for (int i = 0; i < max_vports; i++) {
> +		struct net_device *netdev = adapter->netdevs[i];
> +
> +		/* If the interface is in detached state, that means the
> +		 * previous reset was not handled successfully for this
> +		 * vport.
> +		 */
> +		if (!netif_device_present(netdev))
> +			continue;
> +
> +		/* Hold RTNL to protect racing with callbacks */
> +		rtnl_lock();
> +		netif_device_detach(netdev);
> +		if (netif_running(netdev)) {
> +			set_bit(IDPF_VPORT_UP_REQUESTED,
> +				adapter->vport_config[i]->flags);
> +			dev_close(netdev);
> +		}
> +		rtnl_unlock();
> +	}
> +}
> +
> +static void idpf_attach_and_open(struct idpf_adapter *adapter)
> +{
> +	int max_vports = adapter->max_vports;
> +
> +	for (int i = 0; i < max_vports; i++) {
> +		struct idpf_vport *vport = adapter->vports[i];
> +		struct idpf_vport_config *vport_config;
> +		struct net_device *netdev;
> +
> +		/* In case of a critical error in the init task, the vport
> +		 * will be freed. Only continue to restore the netdevs
> +		 * if the vport is allocated.
> +		 */
> +		if (!vport)
> +			continue;
> +
> +		/* No need for RTNL on attach as this function is called
> +		 * following detach and dev_close(). We do take RTNL for
> +		 * dev_open() below as it can race with external callbacks
> +		 * following the call to netif_device_attach().
> +		 */
> +		netdev = adapter->netdevs[i];
> +		netif_device_attach(netdev);
> +		vport_config = adapter->vport_config[vport->idx];
> +		if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED,
> +				       vport_config->flags)) {
> +			rtnl_lock();
> +			dev_open(netdev, NULL);
> +			rtnl_unlock();
> +		}
> +	}
> +}
> +
>   /**
>    * idpf_cfg_netdev - Allocate, configure and register a netdev
>    * @vport: main vport structure
> @@ -1064,10 +1123,11 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
>   	idpf_idc_deinit_vport_aux_device(vport->vdev_info);
>   
>   	idpf_deinit_mac_addr(vport);
> -	idpf_vport_stop(vport, true);
>   
> -	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
> +	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags)) {
> +		idpf_vport_stop(vport, true);
>   		idpf_decfg_netdev(vport);
> +	}
>   	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags)) {
>   		idpf_del_all_mac_filters(vport);
>   		idpf_del_all_flow_steer_filters(vport);
> @@ -1569,7 +1629,6 @@ void idpf_init_task(struct work_struct *work)
>   	struct idpf_vport_config *vport_config;
>   	struct idpf_vport_max_q max_q;
>   	struct idpf_adapter *adapter;
> -	struct idpf_netdev_priv *np;
>   	struct idpf_vport *vport;
>   	u16 num_default_vports;
>   	struct pci_dev *pdev;
> @@ -1626,12 +1685,6 @@ void idpf_init_task(struct work_struct *work)
>   	if (idpf_cfg_netdev(vport))
>   		goto unwind_vports;
>   
> -	/* Once state is put into DOWN, driver is ready for dev_open */
> -	np = netdev_priv(vport->netdev);
> -	np->state = __IDPF_VPORT_DOWN;
> -	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
> -		idpf_vport_open(vport, true);
> -
>   	/* Spawn and return 'idpf_init_task' work queue until all the
>   	 * default vports are created
>   	 */
> @@ -1807,27 +1860,6 @@ static int idpf_check_reset_complete(struct idpf_hw *hw,
>   	return -EBUSY;
>   }
>   
> -/**
> - * idpf_set_vport_state - Set the vport state to be after the reset
> - * @adapter: Driver specific private structure
> - */
> -static void idpf_set_vport_state(struct idpf_adapter *adapter)
> -{
> -	u16 i;
> -
> -	for (i = 0; i < adapter->max_vports; i++) {
> -		struct idpf_netdev_priv *np;
> -
> -		if (!adapter->netdevs[i])
> -			continue;
> -
> -		np = netdev_priv(adapter->netdevs[i]);
> -		if (np->state == __IDPF_VPORT_UP)
> -			set_bit(IDPF_VPORT_UP_REQUESTED,
> -				adapter->vport_config[i]->flags);
> -	}
> -}
> -
>   /**
>    * idpf_init_hard_reset - Initiate a hardware reset
>    * @adapter: Driver specific private structure
> @@ -1836,28 +1868,17 @@ static void idpf_set_vport_state(struct idpf_adapter *adapter)
>    * reallocate. Also reinitialize the mailbox. Return 0 on success,
>    * negative on failure.
>    */
> -static int idpf_init_hard_reset(struct idpf_adapter *adapter)
> +static void idpf_init_hard_reset(struct idpf_adapter *adapter)
>   {
>   	struct idpf_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
>   	struct device *dev = &adapter->pdev->dev;
> -	struct net_device *netdev;
>   	int err;
> -	u16 i;
>   
> +	idpf_detach_and_close(adapter);
>   	mutex_lock(&adapter->vport_ctrl_lock);
>   
>   	dev_info(dev, "Device HW Reset initiated\n");
>   
> -	/* Avoid TX hangs on reset */
> -	for (i = 0; i < adapter->max_vports; i++) {
> -		netdev = adapter->netdevs[i];
> -		if (!netdev)
> -			continue;
> -
> -		netif_carrier_off(netdev);
> -		netif_tx_disable(netdev);
> -	}
> -
>   	/* Prepare for reset */
>   	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
>   		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
> @@ -1866,7 +1887,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>   
>   		idpf_idc_issue_reset_event(adapter->cdev_info);
>   
> -		idpf_set_vport_state(adapter);
>   		idpf_vc_core_deinit(adapter);
>   		if (!is_reset)
>   			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
> @@ -1913,11 +1933,14 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>   unlock_mutex:
>   	mutex_unlock(&adapter->vport_ctrl_lock);
>   
> -	/* Wait until all vports are created to init RDMA CORE AUX */
> -	if (!err)
> -		err = idpf_idc_init(adapter);
> -
> -	return err;
> +	/* Attempt to restore netdevs and initialize RDMA CORE AUX device,
> +	 * provided vc_core_init succeeded. It is still possible that
> +	 * vports are not allocated at this point if the init task failed.
> +	 */
> +	if (!err) {
> +		idpf_attach_and_open(adapter);
> +		idpf_idc_init(adapter);
> +	}
>   }
>   
>   /**


Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFbsMH6dpWlvCAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 15:23:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1328D1DAB6C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 15:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0510C41C30;
	Mon,  2 Mar 2026 14:23:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4tfEWl1ofj4; Mon,  2 Mar 2026 14:23:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51DDC41C1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772461435;
	bh=pmj5XsF2m3O5MSyrUcWb5Xu9g6zTKfbODESxPWppAks=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pc0LOV1iKdH35HCueMsKI4cKBtcDJa0lc1yEVZkFZfM+sZWgYkwQzN6gvnWIS76Ta
	 hLt/occo51OTt6AnDgO0/o+YTefBrj16Tdo68Oz4M3FabzMUR0KT5egZwvDw6mVGW/
	 St810N3JUIl/EfuSD3/fBR7aL3I3PmowcBIEv78XabfotpOzsrhZdQwMCGE+m+OgFP
	 EO+ZeFbAdg2Eu0N/gq2UvqkeANsxOvy5PMu6suHr12YsiQPQvIbBup3St/xmI1jceL
	 mhDEUJi6ai8orKdSvtgcqJX8471uj0FpljbO1OkJ1Nl5Ss8F56qeMwGivkrpB9qccJ
	 6xylF1wiQ4nCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51DDC41C1B;
	Mon,  2 Mar 2026 14:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F021325B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0FFE60F81
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5n8muqlaxRfp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 14:23:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06D1D60F7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06D1D60F7E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06D1D60F7E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:23:51 +0000 (UTC)
X-CSE-ConnectionGUID: yhILrh2gR2WKvz52PPdFbQ==
X-CSE-MsgGUID: lPtO+OvcS9SAI44nSwyxxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76069770"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76069770"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:23:51 -0800
X-CSE-ConnectionGUID: Dsu19VLeS5GL1MsyBsefCQ==
X-CSE-MsgGUID: 9wM73wKmRfWhUF7+P+NP/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="216804484"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:23:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:23:50 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 06:23:50 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:23:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TFxNOAp0EoyVBs1grfP/HOSqUwZJqtIbiCYsdRsfKgxt3jrgbZlbrEr8/cG07iVRDorpkqTTSSTOniydc0F2ewLCdC9hhygklvpG6ROCiSY574pzgXy260r4jMM58BvlX+bHU/K4liJ2rwm9nMes69BmOnwo+cjfN8hILJMq9LYLEObkZEwleleYYZs/EapH8teeo6diiEBAKdYVYIDJHCsdldRlvzOZGqpcU49wq3U00WPrMD9bQDtj5ctmj3FkkP/WQQlacG6hySIy+Qnnb5cv/r5KtEmtJFO+XgqnvXIOQ5DammsOSqqRNShXQo9LVPS5j+RjNOJ7/ywRfZpAqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pmj5XsF2m3O5MSyrUcWb5Xu9g6zTKfbODESxPWppAks=;
 b=R7XXhJyVu2iZ+oOjG697b+wHsMU6f7ngYqwuR3LSLc4MDv+NA/B0b1DgWQc6G9Hrf7FavBQGXAmteBDp15ns2PYonZZ3LhzFsALTpG6k7kvCqeOi7nIm+PBrECdQq9wDUJoaHM2OZeAyFPzBCbdXiIzjJcL8zgDYoJ2wOj61cPXFIU5+dCvZvXqteZzH3v0P/T7VJ08wB2eoRoEzLb8t6YK1GrvfPClngxd/ZtadQJcM7dkRUOebkh9w/w8D9RMJEbeJJW9gNPx1NnyqQXcZYP+NBmNL3Jp2Aa6dpxgEqv7TIcy+1kZcHDCtJ0e12E9xwOQawCUneeYc5NmJM7E8zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by BN9PR11MB5323.namprd11.prod.outlook.com (2603:10b6:408:118::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 14:23:47 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%6]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 14:23:46 +0000
Date: Mon, 2 Mar 2026 15:23:27 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <aaWdX7f3yxi8gd6s@soc-5CG4396X81.clients.intel.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-6-larysa.zaremba@intel.com>
 <aZb7RZMA+7bxcmrL@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aZb7RZMA+7bxcmrL@boxer>
X-ClientProxiedBy: VI1P195CA0083.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::36) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|BN9PR11MB5323:EE_
X-MS-Office365-Filtering-Correlation-Id: 414b664e-9fa8-4413-570d-08de786750c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|7416014|376014|7142099003; 
X-Microsoft-Antispam-Message-Info: sYX2AqFyjQupd/gDWbmb7CiK4qUDNKfbfco71EUr8VthvwU3zCoRK0jCc8ehhwz4PZEAJ/aDUdpHfjXjSnxzVidY4hZhbnGj4el3yXQL8BWirkXYau626Mr1HVPz4hcTUwy7YlnBczFGAJERier17tIbdGJjWuieAISIAqwQnYx1RAUVnLUANjpUOBGWKupPHc15BWJd+FNJDYIDm9SxNf7UoIw9+zE61TjWla9xazV8uNPLwomViTlmEvNOJxgyymEbqNglNVtq5qX+mA7IKrgKPDTGgCEYpsH8jAVNNECOfZv1gY/vwGEyt6+DqW6CWgDolNV0JefwPnrTLoyGInR6BzdZpslehoNASpdtIjkSk1tDW0hmrBCsK61u6Q6bFPOl531kWhylGaFohW+hnbJL1rki734/gIw2s3ZV0Y7P6HnOqWFdNjLGfrFOs8p7ZBzb0CWPhixD/AVzRIc22OLg6imBtIjl3+4nOe48zIUIUeNxP6n2VfydsCS1Yn6nye99EMAD/Ym0RJ1XDwMOfY3jCXJVoR8XmN24PS7+/5kC9feu2qLRPmO8DwOwoFtP6onDz5e66v8no2dniCZ9hRdtwkwNuj2XGsdjCiDOuOj40yG2J2i7e0vLxUirVBPV+1B3rzEXFPaPXymJeBPDQfRkHhont37XCebhA9h+ZqP9BaTo8FLuHS86URBJnf0Ij53rXrB5Wh/O1O4KW88dY1fnO0ua//+oj6QmBx9G8A4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(7416014)(376014)(7142099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yC+dSIedwV4syeB8GFxX17GyeUR2J1JC4Jpn1ZzbMG2vamtp6/MzH5u2rEXb?=
 =?us-ascii?Q?lLJEAuVJAlSPZkwfJP5W6iG7Zgdl9SV59Bo+OnMjOsBZdqoRG8fNn+jVZ726?=
 =?us-ascii?Q?Eqr3PFCKFR7MPzao5jXJuKIssPhv4WU2Ibd9U1Ca0P8sPRQfZLoCeG228BrR?=
 =?us-ascii?Q?FYncKeDdjxst2RlpfQR0186M0l9Z4gxej8JEItsDEH4/UYzT2rNWuMcLqasH?=
 =?us-ascii?Q?tbu/8Lw4XrDQ4O6ExX+dLCCtTojzm36kvzIKuSurRCmTzSCgpNJ0uMAYeI3Q?=
 =?us-ascii?Q?Z+lY9Wi6V9KAbXQUqGJqBYHwKy4UAukadGTH8WbGoJGf7pitYLmJEG6BIpIX?=
 =?us-ascii?Q?4TUgXfod5ICRqQ9pzGZZR/Du7fQdtASWjwfCtmMT2LhizYIc75O9jNB16WPT?=
 =?us-ascii?Q?hif36oD3pJBdJoQ8VmBWDKenpvAYgoysOuCtm+SyRrGeayqYen/BpgPSswrn?=
 =?us-ascii?Q?mPcV5iLJmjDfmyMwUwXLYjhDkriF0lZYiNHS9xV+V8l60sF0asD8Yl6MJYXS?=
 =?us-ascii?Q?RnU+JK9gDLX1BN6s++I1HT9dFEQ3HEkgJBudKAk2T3sdOmYGwv+nh33dcJat?=
 =?us-ascii?Q?mDip2f85L/c4eXElAfiddOJQkBSOMl9jS78X38S5nAy9FLHRSdbOBeObMMX6?=
 =?us-ascii?Q?5b0HF3sAxpi8RRLEZJOl1EiRJc2c4zL2MHNvMskSwX5MTiwoQO9j/t3w4I5C?=
 =?us-ascii?Q?w//veg2v8C0NNd9vWGmD4TUFMe0pUejKSIMHfMrmyl0ojKdYKf9a2DiLJHgI?=
 =?us-ascii?Q?csLI1J1iSolxPVQgvO1fDJFEP954XfR7tWxtiLQwZEPFf5aK+ccupTWIyIY9?=
 =?us-ascii?Q?ghPBTmu8s43DVbbwjIaqDQJs4qigM0IyQ5HyAPN6STIFG673RLynq8ObIShe?=
 =?us-ascii?Q?ocJpAD5SKsXE40YLy600DC5iAWQic6GBgBsq4qjQkRARvlF0ZOW3Zc04fn40?=
 =?us-ascii?Q?4ne78mRDZTco1+vcA69b7t9MuOdq7wkPyHkax/MmsUmgGkzYlG/DeGCoKaUw?=
 =?us-ascii?Q?VN7H4lY5qeJ1Tz0CYX84NBNr9En5p8aJbUakxReB0zrUCOhYZul46HadOuzl?=
 =?us-ascii?Q?wh5RVZEtXIGzh6tbQPaMGTbngqy3gJaPu6TByoYmaMBiWOcrkO+Tq5Vns223?=
 =?us-ascii?Q?0gMRknhwN9UrW3CcByobopP1IQDzaFwSX0rVUKAQWC45dUcV8nW+cUrBTLQR?=
 =?us-ascii?Q?TYvTYcpvGXUt/C58hHaGmW/m5NMLsmxo7x6OxL1htjriwv3k9OE5IJtFcPRe?=
 =?us-ascii?Q?AaZxb4Wxy4zWsZ9HXrDK5zV186gjUR2QSpZQPFOh1Dpq4T3FPtH4Y5XHXnQg?=
 =?us-ascii?Q?xlkbbjLPV+BD3qX2s40/8CV9HmwNlgUsptyHoQ6+tjfUBjeOyuMBg3agtMN8?=
 =?us-ascii?Q?feCwR3DX8/0Jc5LgDx5WZwta00ALpuz61WmlbEWRU7VJZRE8ceCU6osp4INA?=
 =?us-ascii?Q?ThFKSQGos+HnjCJ9eb1NTTCzy+MHQtRc34mSDOdtfQDUTwBn9EI5K+9pl1e9?=
 =?us-ascii?Q?ooKq6Jo5je2ndnHgPDkLbDeA2va6Q5s7Icy66JDUBYq1nb8ZFenZnvro0052?=
 =?us-ascii?Q?JM7vJpEpQxMFUzuJH7s0zEEhS9tN/xxiY3PVGBShirwwFU5ayMcwjkJVq4jG?=
 =?us-ascii?Q?H7DQFpnhVrpoEgzct57aY6elVHDVbYIULFWLViKmumz5tIEr8ek4HZEVIRJt?=
 =?us-ascii?Q?7e6QyblGc2XAG/o/3Yl+2+tp6Yx7/Q1yKwP6r6XgbDOupHz7wCyrRSGgmG2m?=
 =?us-ascii?Q?S0MudOWbSobFcEX/RfklVNJSzi/8t5D6MUF6RiRCvw+6otstQ89Wmf/U9pKQ?=
X-MS-Exchange-AntiSpam-MessageData-1: k8pfDQ9+hdMFdB78uDAfHvcORDFOoJBV1yo=
X-MS-Exchange-CrossTenant-Network-Message-Id: 414b664e-9fa8-4413-570d-08de786750c6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 14:23:46.8315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y1/HFY+lblX2WhRg0UE/2J6K2Q0s3uo1hm0e9ITLBZQueNcC5Nm8ow/taK4GXpGv1vNPw3JG+wObXmhOweWICcqVj6B2lECtKWcTVwkpMxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772461432; x=1803997432;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ngAs0F/HPIWvv++5BGVra7FCYbwuox7QxsdLmbRc0GA=;
 b=hvwquiQ9qZOvhOoXRsoZBv6KEOEpw2/NYKMI5S2lco1i4f69n+dbMzwa
 92HzsCHMwuIdQBkIEhmVi4A7kfr1oSIBJslvIv/wZU+i782yYqzzpZaDo
 EeVe2LU+sVSgA/tneQLTUnBx2nnHWAeZ/AdPvfBhFElajVPUWrP8r/gol
 LIqMJy9vybVpjk8+TNwAsS6nO73vcn1rZVPnYAMhX/7tmQzc+nLg+WikK
 tQz0pMwxzTeK3lUwWwhc6zPcSl2OoPR0xtMY637a1lDdC7ImZ6yXuYYC3
 XQq8l4+iQ1LK1e7/AxjpqZ0eC9603hqnoZpvWaXo/1DDbQi09EASMdw77
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hvwquiQ9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 5/9] i40e: fix registering XDP
 RxQ info
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
X-Rspamd-Queue-Id: 1328D1DAB6C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[140.211.166.137:from];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[43];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvid
 ia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DNSWL_BLOCKED(0.00)[10.22.229.23:received,140.211.166.142:received,10.7.248.13:received,140.211.166.136:received,140.211.166.137:from,10.64.159.146:received,2603:10b6:806:340::7:received,52.101.193.12:received,192.198.163.13:received];
	DWL_DNSWL_BLOCKED(0.00)[osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.22.229.23:received,52.101.193.12:received,140.211.166.142:received];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,intel.com:email]
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 01:00:05PM +0100, Maciej Fijalkowski wrote:
> On Tue, Feb 17, 2026 at 02:24:43PM +0100, Larysa Zaremba wrote:
> > Current way of handling XDP RxQ info in i40e has following problems:
> > * when xsk_buff_pool is detached, memory model is not unregistered before
> >   registering a new one, this leads to a dangling xsk_buff_pool in the
> >   memory model table
> 
> What is 'memory model table' in this context?
>

I mean the hash table where we register the allocator when registering XDP RxQ 
info.

The paragraph is wrong, we do not have such problem currently, as we do not 
register pass any non-NULL values as allocator. So I will correct the commit 
message.

> I believe you are referring to a case where XDP prog is kept alive on
> interface put you close one socket and then bind the other one?
> 
> > * frag_size is not updated when xsk_buff_pool is detached or when MTU is
> >   changed, this leads to growing tail always failing for multi-buffer
> >   packets.
> 
> Good catch, i now see that i40e_change_mtu() only does the link flap and
> i40e_free_rx_resources() is not called in this path.
> 
> > 
> > Couple XDP RxQ info registering with buffer allocations and unregistering
> > with cleaning the ring.
> > 
> > Fixes: a045d2f2d03d ("i40e: set xdp_rxq_info::frag_size")
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 34 ++++++++++++---------
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 +--
> >  2 files changed, 22 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index d3bc3207054f..eaa5b65e6daf 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -3577,18 +3577,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >  	if (ring->vsi->type != I40E_VSI_MAIN)
> >  		goto skip;
> >  
> > -	if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
> > -		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> > -					 ring->queue_index,
> > -					 ring->q_vector->napi.napi_id,
> > -					 ring->rx_buf_len);
> > -		if (err)
> > -			return err;
> > -	}
> > -
> >  	ring->xsk_pool = i40e_xsk_pool(ring);
> >  	if (ring->xsk_pool) {
> > -		xdp_rxq_info_unreg(&ring->xdp_rxq);
> >  		ring->rx_buf_len = xsk_pool_get_rx_frame_size(ring->xsk_pool);
> >  		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> >  					 ring->queue_index,
> > @@ -3600,17 +3590,23 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >  						 MEM_TYPE_XSK_BUFF_POOL,
> >  						 NULL);
> >  		if (err)
> > -			return err;
> > +			goto unreg_xdp;
> >  		dev_info(&vsi->back->pdev->dev,
> >  			 "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
> >  			 ring->queue_index);
> >  
> >  	} else {
> > +		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> > +					 ring->queue_index,
> > +					 ring->q_vector->napi.napi_id,
> > +					 ring->rx_buf_len);
> > +		if (err)
> > +			return err;
> >  		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> >  						 MEM_TYPE_PAGE_SHARED,
> >  						 NULL);
> >  		if (err)
> > -			return err;
> > +			goto unreg_xdp;
> >  	}
> >  
> >  skip:
> > @@ -3648,7 +3644,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >  		dev_info(&vsi->back->pdev->dev,
> >  			 "Failed to clear LAN Rx queue context on Rx ring %d (pf_q %d), error: %d\n",
> >  			 ring->queue_index, pf_q, err);
> > -		return -ENOMEM;
> > +		err = -ENOMEM;
> > +		goto unreg_xdp;
> >  	}
> >  
> >  	/* set the context in the HMC */
> > @@ -3657,7 +3654,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >  		dev_info(&vsi->back->pdev->dev,
> >  			 "Failed to set LAN Rx queue context on Rx ring %d (pf_q %d), error: %d\n",
> >  			 ring->queue_index, pf_q, err);
> > -		return -ENOMEM;
> > +		err = -ENOMEM;
> > +		goto unreg_xdp;
> >  	}
> >  
> >  	/* configure Rx buffer alignment */
> > @@ -3665,7 +3663,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >  		if (I40E_2K_TOO_SMALL_WITH_PADDING) {
> >  			dev_info(&vsi->back->pdev->dev,
> >  				 "2k Rx buffer is too small to fit standard MTU and skb_shared_info\n");
> > -			return -EOPNOTSUPP;
> > +			err = -EOPNOTSUPP;
> > +			goto unreg_xdp;
> >  		}
> >  		clear_ring_build_skb_enabled(ring);
> >  	} else {
> > @@ -3695,6 +3694,11 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >  	}
> >  
> >  	return 0;
> > +unreg_xdp:
> > +	if (ring->vsi->type == I40E_VSI_MAIN)
> > +		xdp_rxq_info_unreg(&ring->xdp_rxq);
> > +
> > +	return err;
> >  }
> >  
> >  /**
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index cc0b9efc2637..816179c7e271 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -1470,6 +1470,9 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
> >  	if (!rx_ring->rx_bi)
> >  		return;
> >  
> > +	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> > +		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> > +
> >  	if (rx_ring->xsk_pool) {
> >  		i40e_xsk_clean_rx_ring(rx_ring);
> >  		goto skip_free;
> > @@ -1527,8 +1530,6 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
> >  void i40e_free_rx_resources(struct i40e_ring *rx_ring)
> >  {
> >  	i40e_clean_rx_ring(rx_ring);
> > -	if (rx_ring->vsi->type == I40E_VSI_MAIN)
> > -		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> >  	rx_ring->xdp_prog = NULL;
> >  	kfree(rx_ring->rx_bi);
> >  	rx_ring->rx_bi = NULL;
> > -- 
> > 2.52.0
> > 

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKGvEp3/y2kJNQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 19:08:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E38536DF8F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 19:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F364816D9;
	Tue, 31 Mar 2026 17:08:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o_h_fjKGCVJg; Tue, 31 Mar 2026 17:08:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0946C822AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774976922;
	bh=W6HxofZvwjbj/YwdTEC3dFCdcS2FEZTwPWomYASUGco=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T3YLGbEAjkyezhS7CLHupxSw2NtdhD6rH8JhCaw7JyEe9s84hl7apLC5jiaz0CxAZ
	 cqZTF57g56Ls/iKO5tf4gPgH3fdkaD/p9kpU1y1jBxtJEIYJvj+4NpzHUpvdiuo8Bf
	 3xuHFZRjGoUx+qUGc6ujFcNLhM8B2i7sd+12aUefs+kLaOScmoXpjnU1f+AFpni0Rs
	 jRAOhPjzwU/njRq4nD2aPVbf4wlFpqdXKspGhQCOcdHj1sHh3A/ev6bQBXZwYMtg9H
	 MIrutKLuF2ai2bWk6QznHwZqxTYViYJsKeWO5gKbrFml3mzkx1wZAayl+mVRTO8Rb2
	 q43rrSz/3KnWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0946C822AE;
	Tue, 31 Mar 2026 17:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BF6AE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 17:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1DF441089
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 17:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IooOKcv4veyp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 17:08:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 13B8A4010A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13B8A4010A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13B8A4010A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 17:08:38 +0000 (UTC)
X-CSE-ConnectionGUID: wKnQI0t6R7CSzFq/4racPw==
X-CSE-MsgGUID: 5T2QKw55TBO/IF7keM/XvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="79859364"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="79859364"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 10:08:39 -0700
X-CSE-ConnectionGUID: F/BVtM1OTpWQq4rPhCGvMw==
X-CSE-MsgGUID: DUccMtQmSbCX2M/HIWN+cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="222022921"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 10:08:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 10:08:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 10:08:36 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 10:08:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cr7IJZQaPbaqCVDfGmRHS0IQvRi6QqZVZKUoYFWc5Wb5pSwUIv9EzXQLuW97S1UWmNX5rdi5OjwoaRceBlc7dTFaU4WyLvbLgDPMZnbGDECkRx6fL5d3/JXH5B390rloChbY0JUWYkeIBCQRtotRkXfHhCGFO3GzaZf9DqVBoXOrni8Ht50JXEO209WG7keo579ik+LFOY/U9M01qsRl+17RNMTl4zySbLgD/EcF+/iEYhYjwSHiPebsaKIkJKeTtqdMg58/x0KkPy/GrS3n9drqiCgfl2x9gZYwL+f8vUIvCiQrrBlIOLmPP0NgQitnWb+PWITe3YqNqgxY07Pv1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6HxofZvwjbj/YwdTEC3dFCdcS2FEZTwPWomYASUGco=;
 b=gSl7NIaFrj10uHWIRUnvtRoO3lep0liwEtfcI8YmP+kwcVpw5UVZq6mIQ/vQn1uUOt4pyqqUN3fc8hW+oMCetJYz5cIHpOZgpZKuw40BE4Mk4lV5iyRqaMQ6Uk0f6IKY9fKoc7Gz1jZsAHICBFQy3e1dsD//QB5yRnJITEePdjt7uukb8dIREt9LbcxUFE5/+eIdkThEfgk5zwh7KAaDxHAyWkbl8zUk/oyZVJYJxvzXb1W+vvRWElr2zc7BefnHxTVQgzTtjjO16xOt0U0d43p1tN5gVMKgEv3oSsLyavg1J3AI71BhoRftJqNc3lHjY8yfjae1sF0SbyJE9iaz6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SJ5PPF1FF629472.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::818) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 17:08:28 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 17:08:28 +0000
Message-ID: <204df338-cd68-4e55-b77a-9c7e47162026@intel.com>
Date: Tue, 31 Mar 2026 10:08:25 -0700
User-Agent: Mozilla Thunderbird
To: Byungchul Park <byungchul@sk.com>
CC: <netdev@vger.kernel.org>, <kuba@kernel.org>,
 <linux-kernel@vger.kernel.org>, <kernel_team@skhynix.com>,
 <harry.yoo@oracle.com>, <david@redhat.com>, <willy@infradead.org>,
 <toke@redhat.com>, <asml.silence@gmail.com>, <almasrymina@google.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260224053546.62757-1-byungchul@sk.com>
 <20260226010811.GA16777@system.software.com>
 <af90b7e6-de47-485d-9e1b-31612456ef9c@intel.com>
 <20260331081145.GA54972@system.software.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260331081145.GA54972@system.software.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0174.namprd04.prod.outlook.com
 (2603:10b6:303:85::29) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SJ5PPF1FF629472:EE_
X-MS-Office365-Filtering-Correlation-Id: 03a08159-20c6-4f2c-ed56-08de8f4820a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: IRyVKcRl82Fp0mO638h8sK1iymnLDxPiz20JKlNLyuvrN1x5+EJZDM0mQwRzYFYE+ifXo0SQjFxICCiak9hBGEzXaMuR5ZsX3SEe8tAAD2jbSS9GcSi94jNEZequeOW9LuLRh+m1bQYzt6tpbQTvwQ1UA54iYsdJLAbyvaUZMhXA0iLBf1yViGT/0ucKiIRGGtTuYcMjo5/la0zjgDrmtjdpS2yVNQYS95JNXGbwVJEW969AZbjx1SFE3zFmN/YJ2nNzmfH53SQeXdywiIK3GEktPAnURq6yIuyjLWcmhQtrVDPFrWNhHnzU3pxy2erP0MWTO6EXUv7dBBEEJYsBqRnpMf0WFYychHjrLgvuqfvpZgNmKiZBz0sxGH/7naMTfLc97X35C7FDvTZCBXPJNmb++qVSsX0+la3eb0zuKapuur6aZKMVvj7KHNIWTu6g+Ja8dUn0PU2kSPNvdl2UDeoESMOHuMxqqeJxB4r6/0iSdmWDCTipBxwwOSfjzDwFBlePvhfchdtTOGsMBY+T0/lTKGY0+pGJ0WS39o7/F6Ww5n5/VZIJlcbY1BvaIWXB1jXsnLFrOjC3xCI2OphBNwriciMvNjNTVntsxFKpOjrAqmhvCZ9FwctnkQgnNGJuKmGxiK15FffMKPHPzxbg2XZVvbrr7itCjZHLJ0737PKXgAmN4hej/i0Ag3vAZG6hAarAnvyHRSN7jfNwOow3WZma4R1Im0yioNF+yFYwfAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFhqRnp3ZUUyQVhsdzczUlZUbU1IcnR1SExXNUp0Q0FzWFA3eEtJRlZjamZh?=
 =?utf-8?B?b2Y2N0lSRWhiUTRJWk16ZGVaaWlYWmJJVHRaVHBNNHNzMXhrb1ozOG9DRWpO?=
 =?utf-8?B?eExZN0hVbnpsMyt5a2EvSS9uNDQ0a2xxT1dZVzRiTnlHWllTQlU1eDZuZE9V?=
 =?utf-8?B?V0xzV2NZWWRKV0ZxU0RJWHl3N1BhUi82a2dtSGZlVzJ5Zk9WWEp2UDdXYURy?=
 =?utf-8?B?eFhYOWx1R0ErT0VrSUZKQ1J4Zmt1VWRPNUZtNFA5czVadFk2QTcvUjFCeldK?=
 =?utf-8?B?YkIxUnU5bXdPb1NqbzdQakMwTS8wZWZtSnlUd1ZwT21SUzI5ajI3aFI5SmlU?=
 =?utf-8?B?Ly9tMXhGL0VZeHJuSHErTE95Wm80VzAzTEc3WnhENnVqNWZkTkM1c2F2cE9v?=
 =?utf-8?B?eVhTbVR5NFR5SlN6THpFRHZGZGJCeFBYeGJ5N1d2SVBSWG5HOEhMZTYzVWt0?=
 =?utf-8?B?ZmxmaWpwaFNYM3lhUWEwQURtOEE0Mnpieis0bDRvK09wOUJrSmRGN3Z3WExU?=
 =?utf-8?B?RjJ0UzhOd1JRWU51UU9tVG4za3JSWklDTW95TUFteUJXc2lHYWNFSlVtZmh3?=
 =?utf-8?B?VWtoZHlkWFJCNEk5L1dOUk4xNjlvakpVUUwrZHFyQUZDWEtkZFdpUWovV0xz?=
 =?utf-8?B?VE1uVjFXMjB3ZXArd3YwbkxYdW9CejZHU2p2UnNoZCtvU1JUWW5MazhiNEdL?=
 =?utf-8?B?SUlCOW1UeTErdHFYalowUTZYbXFla1k5U3dLMjQ0cDNNaWlkZnJDR1BFYkdl?=
 =?utf-8?B?cVdrWEZLQW1jWEJFb3ZPRzZXb2E3QjJML2NtaVVvdXdkR0toaXF5eWpDa2Fl?=
 =?utf-8?B?N3dIblN5L1NXVnlhd29NemtnOGY5UkJ1Yk5vVld0Z2d4d3BZeXhOeGliZ0JT?=
 =?utf-8?B?WDU3djhVeTZaT3c4ZWYvVHh2cU5OdllOUnM4TVhDRmdGbmJGeTljOWRXVGhr?=
 =?utf-8?B?QjFWQlVDMStQTXRZWVUza1IyWkpzd1gzbU80a0NUUThzYStiNzk5V1haam1D?=
 =?utf-8?B?NkpBM3B4VE9mUWRqMThBemxhcWpTUVZDdmxsR3ppVTRkb2xzTk9FNHZwYzdM?=
 =?utf-8?B?Y1l6U0RsQ3F3Kzl6MUVUZld5QUtucEZYRDR5b1kvdlBpVldmcm5PN3EwQVJr?=
 =?utf-8?B?UDRHUUhndjVvRDQxejJYcEhhZisvNzg3eHloMkliQmREd1NMckxCT0pkUDNE?=
 =?utf-8?B?MDdDS0JWSzMvSkI3UEpPaVRObnBvR3hibW1XTFZUU3JYMEJtSGxzY2V6WnZw?=
 =?utf-8?B?dkREbEFoTGVRN2dva3UwNkN2NFBZcjQ5YWlMenVoRkdQYURYZlYvY1l4Wml3?=
 =?utf-8?B?M2hYcG5pZ0dRU24xRUQ1bEhOVkpRTUhVV2N0bjRuWWdHalBNcmlqdFNmMXFw?=
 =?utf-8?B?VC85RzdpVlRWNldudXQ2WkhZelFxNHlic29SdVllUFloM3dKMmRkUlR5VURN?=
 =?utf-8?B?RFpRQlFvcXFkaHdSSjRyejlCT1RHU09MZlRnNDhIZWhOVy9GOFhjVk13NGJq?=
 =?utf-8?B?ZTZSODNsZVEvdTVmeUoxNUpRWGRWM0wzWmY5c0o3dWFYa05uNWc2V1pndlpP?=
 =?utf-8?B?M29MNmJ4TjltQlNNeFRJeDV3c2JxbldGRXh2aFRqN0FJK2o0Nk93NWlVc3c4?=
 =?utf-8?B?LzQyRENyUWgxd2NiUnpCQTA3TklKQTRZRFBybUVjaXQ4emE0V09MTWZxNzhx?=
 =?utf-8?B?Z3IyUUpSTC9rckJOaHFINHo5YjRmaFNSc0l6QXoycng2WDJzUUZkNVpuQjlr?=
 =?utf-8?B?RU56bTh3aml5ZTNjdzcrVklxTmhGNlRBdEJpNm91MVJKSmltNG5tOTQ5Z1NL?=
 =?utf-8?B?amo2MllUTjBWL2YzdmZvK3VoT1dscnl2Z2Q0S1BWaytqeHpZcnlOTzFxNVhS?=
 =?utf-8?B?RFBjNGdJNzR4MXJqelBlNzhuS2d1MGlLTWlxZHRGOCs5aDFYKzRVMS9FRWJy?=
 =?utf-8?B?S0ZEa3dHM0VubnJFODNZaGVJWW9GRjYzb0xGcmdLeGRFMkhCSE40RDBKTzEv?=
 =?utf-8?B?ZXkwWmRxK3hwMXRwUTBMWFBDcUw5aStwTGI2b1hwNUN6RlBKdVh1L0lnT2NY?=
 =?utf-8?B?QmVwcTl0UXFTaDJMaWdlNFc5Q3hCc2x6RjJRdzErZjFvWVJDeG1wL2VUcURZ?=
 =?utf-8?B?Ym1XRmpQZWt6SnNicWVLalE5MTJqdkVtam9PalVWWlY3RWVsUmJYaTJnVGls?=
 =?utf-8?B?TWEvYjljRjlBVW96R21KWFFjQTZ0UkE4ZUpzL0RWZFJZcTRjZEowQU9udnBU?=
 =?utf-8?B?VnJoTW1vb2dETHlPR2piNUpjZTVFbzQvMythQWN5RkpPbUlRd3JvQ2xLWDFT?=
 =?utf-8?B?QnZCbXVnMXJlME9TTjdZd01WK3gydzMzaldFQVJ5Z01YNTNxbGdCZzFYSzQ2?=
 =?utf-8?Q?L8Th2JGOLI7QTthQ=3D?=
X-Exchange-RoutingPolicyChecked: PfMd0HYGcokM69qP+gzyiP2Oee+TQI46j2unalv0H+EHWpmKmzBvm1c+qPJp/5jeRh8ILKbQalFhrdZzNFLPUekozk4H7TR2kxG/FyQgT1rw0AFdSMzT8/y2b4hVcnjQVe+wfU02R1nDbec4rIGL4cLFnpRrF4vxCVWiBvHmn6P+hnr31aBnRIL7B0XpVEdOPN+L6muyq0EgTPRVSXhSQAVirjKSXbZCs3kle0E/+vq85AA6NGJdzo/qMENA9RWsy7wnCuSiquBK9+hP/hq6S9lqRr62+J6PH8moQmVeYuFyFnLeW3X+ufM15Lay5SzI0VBeBH6vvts325MUJfocjQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 03a08159-20c6-4f2c-ed56-08de8f4820a4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 17:08:28.4124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t//1uAwF89u81Rz7LjFqie9g9BbaHxroBOZ4hHB7LKzMFHAlqgj97Y2pvoXlEYHTG82cNTPzbY1k7BOuX0iw1CE9JZoLgbPzLD33V2g15w8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1FF629472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774976920; x=1806512920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ic3sqKSFiFpvSWxTXLxAy7aWKQHASExXTPcWWtO+eFU=;
 b=Y1YSrLX3i0Q2WO5YrQ/hYyca69Fwzka7mIdvX/omO9/NpjPz4g7KLdFw
 Z3W/SNKX7NAClTbRuvP/1aJdS2FyTSd6F65Sn21J1fT1wm57FyEO/Jvdv
 fVL0u+nUSZXnfW/i5L33i9T7ZuXA7jlzc9hbFdEhBDy/kNFkHuFPZaABY
 Pvd18fH8ihSw44CIdg8d6x6Itt9wHUoYfNbzpppS29PMv+fg5iXq0DzmK
 mdCvoJnsd8ZtwZPI2BEOjcnLuRIZ+6UCdrpiGnCCP8ZZrVcji/9LTKBsq
 8mytYeBISNKlE5+N5XtgGe9B2yzOlWcq9yo2hTE55x5ZhIYhyHBykgiq2
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y1YSrLX3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RESEND PATCH] ice: access @pp through
 netmem_desc instead of page
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:byungchul@sk.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel_team@skhynix.com,m:harry.yoo@oracle.com,m:david@redhat.com,m:willy@infradead.org,m:toke@redhat.com,m:asml.silence@gmail.com,m:almasrymina@google.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:asmlsilence@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,skhynix.com,oracle.com,redhat.com,infradead.org,gmail.com,google.com,intel.com,lunn.ch,davemloft.net,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,sk.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0E38536DF8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/31/2026 1:11 AM, Byungchul Park wrote:
> On Thu, Feb 26, 2026 at 10:13:14AM -0800, Tony Nguyen wrote:
>> On 2/25/2026 5:08 PM, Byungchul Park wrote:
>>> On Tue, Feb 24, 2026 at 02:35:46PM +0900, Byungchul Park wrote:
>>>> To eliminate the use of struct page in page pool, the page pool users
>>>> should use netmem descriptor and APIs instead.
>>>>
>>>> Make ice driver access @pp through netmem_desc instead of page.
>>>
>>> Hi Tony and Przemek,
>>>
>>> Is there something that I'm missing or something wrong with this?  Your
>>> feedback would be appreciated.  Thanks!
>>
>> Hi Byungchul,
>>
>> Nothing wrong. I plan to apply it today.
> 
> Hi Tony,
> 
> Sorry bothering you but could you tell me where I can see the patch
> ready in a tree, maybe yours?  I failed to locate it.
> 
> This patch is very important for the project removing pp fields from
> struct page to go ahead.  Thanks in advance.

Hi Byungchul,

I actually heard from my validation about this yesterday. They're seeing 
issues on the loopback test. We're working on isolating the problem to 
determine/ensure it wasn't due to this patch. Hopefully that will be 
done soon and, if not the problem, I'll get it sent out shortly thereafter.

Thanks,
Tony

> 	Byungchul
> 
>> Thanks,
>> Tony
>>
>>>        Byungchul
>>>
>>>> Signed-off-by: Byungchul Park <byungchul@sk.com>
>>>> ---
>>>>    drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>> index c6bc29cfb8e6..c16e54dbe75b 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>>> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
>>>>               rx_buf = &rx_ring->rx_fqes[i];
>>>>               page = __netmem_to_page(rx_buf->netmem);
>>>>               received_buf = page_address(page) + rx_buf->offset +
>>>> -                           page->pp->p.offset;
>>>> +                           pp_page_to_nmdesc(page)->pp->p.offset;
>>>>
>>>>               if (ice_lbtest_check_frame(received_buf))
>>>>                       valid_frames++;
>>>> --
>>>> 2.17.1


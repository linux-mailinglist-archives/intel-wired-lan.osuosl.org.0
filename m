Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPBzKVZknWlgPQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 09:41:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76952183E53
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 09:41:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A860E60BBA;
	Tue, 24 Feb 2026 08:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SnguX_r3h-BQ; Tue, 24 Feb 2026 08:41:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B86460BC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771922515;
	bh=qaWsgJGNLUIM5+hO/mgmityLHD8C+1+gdI8K74e5lpM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E4n3u0X7DgCSk6M8oXhtxktzAvwfqZWcLSq7lv9qpEGA/jHuWwjFCk5TjlMIOFKag
	 HsAb/6gR5I4reJ5sEhRt5akr+iyUD0vQN5JF5prIq/3QnDKb0qGYn8fJ3rlCxGpBBA
	 BGe7odjFStLyYQ0TqTUvUGMkV/N7Y50N1X8TweD9Yau9T7vEK6nVoSJbm85LG0FWZL
	 vSkcTZc/USHxGnOKalYzmytAnNFq1j1TNAjuKexFxYajLY4X7XFhzSq2e/cIyckz3U
	 HEgsCW3hIVl25YlbPc45yLACiJtm6ITxNHAUKlNEIqK1mSBzY2nj9QDV01gsU3jKn4
	 z/YeFmkSSzJEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B86460BC1;
	Tue, 24 Feb 2026 08:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 043D2237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 08:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB3F640331
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 08:41:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xlpsxnmr9Z5t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 08:41:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 515DC4020D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 515DC4020D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 515DC4020D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 08:41:50 +0000 (UTC)
X-CSE-ConnectionGUID: PQXKusS4R5yKsFlMRir8nQ==
X-CSE-MsgGUID: A/cAEde9TS+tSjYcp17Isg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83553267"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="83553267"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:41:50 -0800
X-CSE-ConnectionGUID: 449ly2rSS6q/mqSCRTXstw==
X-CSE-MsgGUID: 6WtpslO9RGuH6ZAbDgP6Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="220355673"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:41:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 00:41:47 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 00:41:47 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 00:40:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WM4+fEGCn6r8xsQDkyDyWXgFJ7PqPbpb/jlYd7S6oMxuaCBJF+MZ6m66gF17M/tDZks57TDJu9YisR+BYJe/L7YsGLHXXJT/tpAv/l0iarP2wwvOspHK6MDwT1K0hvcl8b+gDzrHoFHbZvderbSFE5a4gbUD39eTfTQ60wP4XAygYoGw6++HJTKCGFJyoC6/0t4vKlquW1wPH5PCgTvpAVJ+5vLYGKivw3qCcYnlqakvOrtjt7qxdpuMMhJdeVvUyBOUoTo0IITwqnH5Bx+t+az/9mi8BPcuDogMH3zOlSYUfeFDnQmMzC3AoP8QXj6rbP1hrLBa+OQSVrIFkZ/zAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qaWsgJGNLUIM5+hO/mgmityLHD8C+1+gdI8K74e5lpM=;
 b=zS9+AlY33LqjOTxFAnQOQ+fJ42WnSOrRkIn2/07LBX9nGE5/OAbwwudp+z18FlX7Cc3XM6r5z6Ys4OHNRFZ1SUSjq9od2/Mkl7lxjR5pJ02g66zmv7fj7RHPGYpetoJP9Tmrbejg4UIJHwj96dZJ1zA0xc8z51aOQqs1WjG6QwjULUBTJMQ8cWwHczOqQAsVNIbFgFUKWftcgd5lG6h5Po6OyFr6RjuTNhEwnC6YMTGM1SyVXiMo1c03SEK4RQdKy0LfCUUepNapEXNZJAdOod8L+HdK2P674yAgR7fcr9C1kgiTqJJ8lXjKSfrU0KKMIvJVnLcl9U0e76kRL0wQyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ5PPFC15A51B16.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::851) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 08:40:57 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 08:40:57 +0000
Message-ID: <51a3c969-6fca-415f-a27c-d1ad8c9d3c71@intel.com>
Date: Tue, 24 Feb 2026 09:40:51 +0100
User-Agent: Mozilla Thunderbird
To: Bart Van Assche <bart.vanassche@linux.dev>, Bart Van Assche
 <bvanassche@acm.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
CC: Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng
 <boqun@kernel.org>, Waiman Long <longman@redhat.com>,
 <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, "Marco
 Elver" <elver@google.com>, Christoph Hellwig <hch@lst.de>, Steven Rostedt
 <rostedt@goodmis.org>, Nick Desaulniers <ndesaulniers@google.com>, "Nathan
 Chancellor" <nathan@kernel.org>, Kees Cook <kees@kernel.org>, Jann Horn
 <jannh@google.com>, <intel-wired-lan@lists.osuosl.org>
References: <20260223220102.2158611-1-bart.vanassche@linux.dev>
 <20260223220102.2158611-20-bart.vanassche@linux.dev>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260223220102.2158611-20-bart.vanassche@linux.dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0164.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ5PPFC15A51B16:EE_
X-MS-Office365-Filtering-Correlation-Id: 75becba6-19a7-4a46-b809-08de73806e05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXhodkdhVjBFd0xFY1Y3d0ZvWVJYa29MREwyaFFwNy9lLzBzSmZyeWJHVVV1?=
 =?utf-8?B?UWVFN3pRVndBc3R4dEFrT3VRMXFqcnB6NFo3aUk5d2JHZ2hlMnFpYnZialhP?=
 =?utf-8?B?Qk5uK0pQQks1Qi9GVjBzYXFWZGxBcFFOZnlMMUtUSDhQZkxFOTN5VUhma3k2?=
 =?utf-8?B?Ynp3NHR1Zkl1QjhDNjNWZjNURllUSnlkOFp6S3JaWXcrUmNFYmNkek0wMHZI?=
 =?utf-8?B?K0ZXTUM4WGl2ZnZZQ3lNa0dFa2ptRkV2cTd5WTFTZlVaY2pUaExMTHVLZTBZ?=
 =?utf-8?B?ZDM5cFJIRStEWXc5alpKOTJoVWZBK1crajZSLzFkbVBTcFNCVkZlK09UNlpE?=
 =?utf-8?B?bXcybG9PRXZaWUc4SXU4a0ZrTHpPQ3ljL1B0WUpITXFWbkZGRlM1bHVnYnZP?=
 =?utf-8?B?Z2YyamltaWJXUDdaZko0RWdRbkJYOEM1NzA0d2RKMWRXT0hsK2ZSWUE2QTI4?=
 =?utf-8?B?bVIyVUh4WEQ1QzFYUitrYmM4RTZlbHVEaXJWYzRITXFTbWxuZzUxUlVUYyt2?=
 =?utf-8?B?Y1R1WE5xS0hoYXl6WXo4Nk5HMmdQTnlHQ2JDT29UYXFWaU01OExMb1R6ZTc1?=
 =?utf-8?B?Z0ExTC93bXY4NlhMYnBUbXdDS0lFSnA4QlBqRUZlYldKazVvdjF6L1l3enNW?=
 =?utf-8?B?VlpQM2NTRW5Da2cyMnVIWXZESUtjUm9HbjJOMDF2cXlVbGhOSHNEZmkvQVlk?=
 =?utf-8?B?VnNUQlVGTTBKYXprL2EvRURwTllwL0VnUHYwSzFVQ0xPUVdDNk5VcW5uSi9D?=
 =?utf-8?B?T2MvMjdsYThNOEw3WEFiNzRWdzQvVjhGQzhjMVlXK2s0QWdQMjFLc2lCaURZ?=
 =?utf-8?B?RUxaa1R4bGFVV2VreldvRWFDQWFvRDdROC80UDBjZWFrU3l5eWx6Y3dhTmx5?=
 =?utf-8?B?TXVqZ0R4U3RDcmRFZGd6WEVFenNZRVRFcElqbEdKSUc5Q3BZRVdKdlhRUUp2?=
 =?utf-8?B?ZDYrSG1mbENrOVpKelNDeHNlUDJIU2VGQW91aEZ1Z0tlVC9ETCs2KzZjWExT?=
 =?utf-8?B?Q2VBR2hWY21aVXZiWS9hVEsrNDNhNDZlWVBXWmpwM1lSYlNuT3hJc1o5UFZq?=
 =?utf-8?B?ZzQ2b2NINkY1Vk5SRHR6MTRlSVF0anpnOTRaVXloVkRUaldyWDVGakNhRU9o?=
 =?utf-8?B?bEtYSFIvT0NxcUpLd0sxdDQ1eWJYVnVhaWpXNnlmTmRIU2JNMFBUaHNVc3Fu?=
 =?utf-8?B?NWQ5cUx1cDJQUmVnbk4xUC9KREVrZExKV0pyamQ0cDI3OU5HdUt1TkZiMWlM?=
 =?utf-8?B?SVBVVXRuLy9RSUhZMmFRQlR3cVNJVVV5cVM0SE1FcDJTdmd5dWVCakd6T3hh?=
 =?utf-8?B?NUo2S3Z0NzhabFVvRHM5YW9DTWg0SGI1L0NJZEFJTUo2ZXRJRUovZ2U2SGxG?=
 =?utf-8?B?WnV6Rld3T1MyUUd0VlErNEZKZXNHTjJHV1ZXcHlqeGordWYyL0pxTks4Qnp4?=
 =?utf-8?B?QUVCYnRCSXMxdFhISUxiejFLV01YYmU5RldPS3NqdmwrNVAzc1J2UEYycWJx?=
 =?utf-8?B?Mnk5bGhGYllCaml4czdZc2pMTnNldVRwQXNXNTA2WFljZHc3RVU5T2dBcDlo?=
 =?utf-8?B?cHh5N0xDZm9lbDVQSTFIMjBYQ0tGUkdBN3paejRKWDRmcWNkNCtlWm4yZ25Y?=
 =?utf-8?B?TVFxVGRuRmRyQW9kQ1NWalcvTzFvZXI3RFFzZWl6bmVRRVpkVjFwTGF6NFZ2?=
 =?utf-8?B?a2NBeGdPa2d5bUtnWmpjdjAzem1NbE56amNHeGNBdzZPdVdZa2tjRzNITFhz?=
 =?utf-8?B?bUZDK3FDTW5mYllyN2ZmUXpyS2xDcDRhRVQxV3NmOENpUXhRZjc0UG92K1hO?=
 =?utf-8?B?aUtRKzlLWWd4aDVzbVp1T1FEZlY5MGh1MHEvV0s0TDgwbHdDdjQrM2xKSXp5?=
 =?utf-8?B?SENrcko0NkJJVTlqb3V0aWpOYVNScUpuMmpKcVBFVzB5VzlKVVc1ZFNLVVdp?=
 =?utf-8?B?TFIrcmdBYUI3UCtKM0hPTENZQ3IvL2pSTUErWVBxZXMrVUJUNS9hYjNMdk13?=
 =?utf-8?B?TEhVUklnV0tyeVRmRndhN2xhRCtvM1VHczd1ZWdqWi9HaTQzUEtqcFh2UzhJ?=
 =?utf-8?B?R0JxUzVzZFJyaU1vMWlBbGJHWUdmMjZGei91Q2d3KzU2UDY5YWIrTzZlSCtO?=
 =?utf-8?Q?FuS4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEF6eTFWMzZac3FJNXRqU2xrdk1qZ05OdDQyRHpyYjNIZU80a1dyb1B0Z2k0?=
 =?utf-8?B?L1JvNXJlRTJCVDVqcjdRSEVSNlZLdHhtYUdPSVI4RkxzS2pheGhTdEZOSVNW?=
 =?utf-8?B?SVlqLytxMlY4T3IyM25DYWx0eVAzVHBwcFJIM2pPNEtScFlZUmVoV002SkRN?=
 =?utf-8?B?Z0p2Mitya080SkhwQUwzc29XWERsNERwL0x2bkVJbGVKZUlQUFpDWU4xNGJW?=
 =?utf-8?B?d2JBZ0hZcFdtbTVubkVleFRHbEpVUlg2UGpBRFRkRkJLd2FJTE1KU3d4elh4?=
 =?utf-8?B?b1dNdk1zdkNmWUtwa28vR1EwcU0vdGVWUmZ2OUFNQmdZMnRnbVNqU2lmNkRB?=
 =?utf-8?B?dUYwSkdYUGZ2bkxob2NWVUxHdU1tVUU0RWF6SHdhb25Ld2VWdUtxVFVPb212?=
 =?utf-8?B?aVZtWWNUV0tqRUVSa01YZzNhZmhVRkFFVHpobzdLVGtsR25lblRFVFBzckpN?=
 =?utf-8?B?SGpzZjhVQzFpaXBaQW0zZVkwSFd0NXNpSHZudG1Sb2grM3NwOFhKb3ViWVh3?=
 =?utf-8?B?bXNxQS96S3c1Nkp2T1F6LzRjTHBiTGN2engvWTFzS3hPdDZDdnRITlZCaG1s?=
 =?utf-8?B?NXB5QUxpRWlDYzNpR1dyTkNYV1EvNkYxdE1rN3dVOXFGTnQ3d0lVWGpyWVF1?=
 =?utf-8?B?NXdvSDBpZVhnVUVEYlpudlNqZExpSlUrNitWZ0pOZHRGOHluWlJPL1VnWE9E?=
 =?utf-8?B?a0NuQ0R3RWdPcENXWHZmTDZmN1lvdkdqcEFnR3VsU1MrcVUxNlBhWHlBdDg5?=
 =?utf-8?B?ODhvRVJ6NllKcjRpdHhxVHNyMnh6djl1WDVvWXZ2SFBYSDdJRHBaMDV5V3FZ?=
 =?utf-8?B?aGtUMi9yb0ZWZlduS1VpdC9lYnJYMHUzQmt1OXB2d0F3M2cxajloWlNBakVF?=
 =?utf-8?B?VTl0RXdUUERuZ3BvSlVVaDJUZjZnekpUcVpzWit3SG1NLzhQTmV5S2tXMnFj?=
 =?utf-8?B?ajhTUFpUakdMamxKNjR6TVZmbTNTTjl0ZmNLTFhhUUZJZmVGMTJmd1RlMWhG?=
 =?utf-8?B?eWVPWmZ3Qm90V3pNM2tuSFpSc3MrOTZrRjlKNTBpTHBlYTNCYkxBZVI5WDFU?=
 =?utf-8?B?QzZnRm1RYTRzT3R1eXBuRjBuMDROTVhoV3RyQUduYkxac0hKY29aQWExd0pw?=
 =?utf-8?B?Z01PNlhMZCt0dko0ZlQvbEExRHlObVVxbFRaOGtvSUM2QVMyMFhOYjNrbTVV?=
 =?utf-8?B?Y3RXWFZFTDVub2ptRUVxSEJpTDNlVUNFS3hVK1hqc0lkcXVncHAxZFJVbDM2?=
 =?utf-8?B?T1ZDUGxLNElDTklPWW9GeWVrREI4RDg1TE8wMkcyRkFlUGVuaE9ySklReXRv?=
 =?utf-8?B?Y3prcVMweG4xeEY5VXJaUXZGOVE5bDRTMCszTkFzekVSQmQvU2JyVmROR1Qz?=
 =?utf-8?B?T0t6cWJCQVFSK0ozRGhnZHN3ZFI5OTU3eFVqMWkwNTdWRVlnNnhrZnJVWG9r?=
 =?utf-8?B?MVJpNFhyNUh1dEdreG5nT0RUdmo2RnM1S0F2VWMzbGFiTlpTbmYzMkF0WVpk?=
 =?utf-8?B?c1ZQYjgyOEtac2pPTm1YSklpTGFKSStsZWFod3VwRE1hOEVtZGUyWXpXSGMv?=
 =?utf-8?B?dkRRWVVTYTUvZmNKYTJPZnFwREl4TG8vVTVvU3dNSUlXaFRkQkVjZEt5dStz?=
 =?utf-8?B?T2lpTGJOakdKWjBOMitxdW9oVndpL0hDSDYvOFkvenF6YUZRanRQV1JZMmdU?=
 =?utf-8?B?eERRcFpJeG1BMXVvNVA3VGw5ZHUwVHlSQVh5Y1hUWnRNd1ZWYytSVlFvOGFT?=
 =?utf-8?B?VGNjdGp0ejRZSDlVejhmalJSQTlIRklJL1h2K2FEemhxV0hXV2VGUnFHNi9K?=
 =?utf-8?B?MjgwalpRODJEVjI4elhwaW10S3l6a2FReWE3bFcybjQxUm4veU1RSVBnSWdt?=
 =?utf-8?B?aU9vSERLUjdKaVFSOGZpc3F2VmFIRFFQUG5zaUxzNjhjQ3FVT3M0b3ZJK2ox?=
 =?utf-8?B?S1ZxZkhPd1d2ck9JU0JrQzQ3S1dyR2FETlJwTzVIWkJpNHZJYVNnQ2RVK1I3?=
 =?utf-8?B?bFFuNWpnVklqeUdDNi9QTlZ6azNERjNuWndqdEZ3M3dFYnlyS1hwMVVsSmVl?=
 =?utf-8?B?S0ZYSlpyZXhDV1hBb0tFdFFSNG1QQ0F6MEdDVFZUUHh6bCtzVVlIZVpoN2pk?=
 =?utf-8?B?dG0vNGRoK2VpZEQrQk0vWXdUeGhKWVArbFdnZFJ4TS9aSXlUSUV2eGlmKzJW?=
 =?utf-8?B?UTRXamQwSENqWHN4aDdGbGF6U0duTnE0MEZUdE9SRVRpMm5QcnNPZy9SR0JM?=
 =?utf-8?B?Q0FSZXNlVnk5K2pwNXVQSTQvb0J5cDBJK05ZRTFMRmRiZm9XVEMwZkNYT3VU?=
 =?utf-8?B?MDlGcWpjMkhGVElQdzNJVzdPVGNaMmtpNzFlYUV2M29ESVFTdk82UUFjSE1Y?=
 =?utf-8?Q?l39nksiHdiswr7PM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75becba6-19a7-4a46-b809-08de73806e05
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 08:40:57.3587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LnGx2wbJFrVGhxgCxp1SjQspZP8nT/x7P1eOY1B5/zFxGOc7ygeMAs0KyG5Z/x7DXEA9AB51sUjIghI5B5jmN96FQo4xX7fgZ/RkvRbkdKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFC15A51B16
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771922511; x=1803458511;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M09wZnVOLN+uGU0i+e1+ghiGlDK1RXw2BzwlCy0tJ0c=;
 b=KBaMhcKnJBL20gfUHAdPuTextPTvSwugd8tQeoPovsyNmHzCenGKCf+E
 OpfdN6iIMlhcbds5cetnwelcWnbhq+q3DUdYUdhRaqV3vF4PaOaAoNLqK
 fhUc7vHU4Lol59eb8mr06uR7jd3y/X2vWZzjCL6AMm1AYyLmlyO1yGR3H
 V8rs3Olawa/Fie5MYrHGvIp1swvgIQkqbOta0rADG8KmRmtMy/vOdCC90
 kya2+mtcSQyIPjvUUNFs10U3pj8RWMGl0hLgSxSyV0Mx8o3+gZOgauUZd
 JmVqsBT81wm166B8N1xKdjWnCbpCqHsjJKnpNbCF3k60aEbUaZaBsPjOq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KBaMhcKn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 19/62] ice: Fix a locking bug in an
 error path
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bart.vanassche@linux.dev,m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:mingo@redhat.com,m:will@kernel.org,m:boqun@kernel.org,m:longman@redhat.com,m:linux-kernel@vger.kernel.org,m:peterz@infradead.org,m:elver@google.com,m:hch@lst.de,m:rostedt@goodmis.org,m:ndesaulniers@google.com,m:nathan@kernel.org,m:kees@kernel.org,m:jannh@google.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[acm.org:email,intel.com:mid,intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 76952183E53
X-Rspamd-Action: no action

On 2/23/26 23:00, Bart Van Assche wrote:
> From: Bart Van Assche <bvanassche@acm.org>
> 
> Move the mutex_lock() call up to prevent that DCB settings change after
> the ice_query_port_ets() call.
> 
> This patch fixes a bug in an error path. Without this patch pf->tc_mutex
> may be unlocked in an error path without having been locked. This bug has
> been detected by the clang thread-safety analyzer.

Thank you. This is a good catch, and current error path is obviously
wrong, in the way you have described.

 From the commit msg alone, it is not clear why moving the lock up,
instead moving the unlock to match the lock order, is right.
But from the code, I see that you are right - we call
ice_query_port_ets() again under the lock some 20 lines below (L566)

Let us know If you want to enhance your commit message (including the
subject), as it looks like a big quasi-automated series.

> 
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index bd77f1c001ee..78ded6876581 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>   	struct ice_dcbx_cfg *err_cfg;
>   	int ret;
>   
> +	mutex_lock(&pf->tc_mutex);
> +
>   	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
>   	if (ret) {
>   		dev_err(dev, "Query Port ETS failed\n");
>   		goto dcb_error;
>   	}
>   
> -	mutex_lock(&pf->tc_mutex);
> -
>   	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>   		ice_cfg_etsrec_defaults(pf->hw.port_info);
>   


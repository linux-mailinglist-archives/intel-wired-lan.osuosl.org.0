Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E07C9C9E4A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 09:45:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED1D640FEE;
	Wed,  3 Dec 2025 08:45:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7qpzdrZn7ZMw; Wed,  3 Dec 2025 08:45:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A553412BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764751535;
	bh=SAW4OlCWRa3oZbguHje3T/tCnJjXmG5p+SNgVgOWwRk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CsC4o66Jr8Ic1sIphoUCqtVh7u9IDW6VoyaZQYGWvJq/VeK56ogRWNxG++oNub12o
	 RJRcM3yA/UZoBp/K6T/tp1J2YpoUhpe8pXPa1f1DURi389q4qugYJQidExHzYZPMSp
	 G0qZA02sqYcZW1ivYucIRuxN75G3NwMmCj5sMg6PSRe/8pMzLZ8VzCsW960WuVXtTM
	 LkFRIZ9v/KIvqyZPF5zHWa0UljbThzy1rQHlL2qXUDpIwdI1yOWHGm4oAnZbDU4yE/
	 qE3lKa05OH6Grh87mt/MVV8uQQ/vJ1hecKA9przYVGjQXlW7nHwXMGH9rklCBU7psK
	 Ufo+67Txs1eyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A553412BF;
	Wed,  3 Dec 2025 08:45:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 120ABD3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 08:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 046CB40FDE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 08:45:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k82TpT23Skyy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 08:45:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7B18D40F41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B18D40F41
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B18D40F41
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 08:45:30 +0000 (UTC)
X-CSE-ConnectionGUID: ZWu4WMbjSxGEV7Tg4CFLUQ==
X-CSE-MsgGUID: dSNNfwxtQNO7swdANca5aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66628847"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66628847"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 00:45:29 -0800
X-CSE-ConnectionGUID: IvKRyLYFRnWYd/xbSwBKdQ==
X-CSE-MsgGUID: qb6j31fWRxKygGttn1wtjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="193700825"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 00:45:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 00:45:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 00:45:28 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 00:45:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qndi9i2CYRCV0lss5EF28dIfXJlkogOpuunTPBcJHazCplyH2NZTbVqnah1lMVcMFRUsftvkTNUP9u408m0MaKUyeFqPSZ9w2mp5/WfJ4tAohrAdb7xtcy3evde62tkNOiS9D25PeCNlY/v357fsYg2tm8/AKpYBAXufQyd4d4eoPKg63Ce5jmtvCD8aIAFUSPWuS9BKZw/VcrFdWZkqISjpBE6JyYy+vtQNFsy2XuHpo/F892ZHOw8RpYu0kApqKR7o90LCpFcjorF9PGhqsmq6pY//lz9fNGOLqha9yBE8iOmqkQxSqb1KMR8cXd8zIv6H4T9g9mm6xaSeHy6HDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SAW4OlCWRa3oZbguHje3T/tCnJjXmG5p+SNgVgOWwRk=;
 b=wHEWdOy75PX+/LIE4tp6chH843s9BSeCkbTsjD3TGiB/j9d7eQ8VUgiOF/2BTKdOe10kPmn4AXuVVqRvSMh9Q/UUQdgXE2I/KBm1p4eL9GAhisPbtz2subGO7Ubvyurf1/yYHwmpV1rhQN8r/+eElfhknJcItjBOW4IoSgzptfRtkJ2CyHi5Ijq+LrYV4hs/iiH6yP2dw5x10IIHu3gVv2YmL4pZccdp+OTlP6tPyijTH1JIUJm2mTenbnWtCU+YWu6LmqTakX2EYx4IJnR5Zt5nCfUK0kOfiihouK0jhyOGOjtEqGr1k7XqcLMsmqWDV9SJZbD2FZfngcXvshR4ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Wed, 3 Dec
 2025 08:45:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9388.003; Wed, 3 Dec 2025
 08:45:24 +0000
Message-ID: <df193ddb-4591-417d-8d62-42d99d6d468f@intel.com>
Date: Wed, 3 Dec 2025 09:45:19 +0100
User-Agent: Mozilla Thunderbird
To: ally heev <allyheev@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Simon Horman <horms@kernel.org>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
 <ec570c6f8c041f60f1de0b002e61e5a2971633c5.camel@gmail.com>
 <eaf30e67-ce1a-47ce-8207-b973ea260bf5@intel.com>
 <f34adbc99606c1f9157112123b7039d2a5bb589e.camel@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <f34adbc99606c1f9157112123b7039d2a5bb589e.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0004.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB7470:EE_
X-MS-Office365-Filtering-Correlation-Id: 684b1e06-fdb5-4ebc-8b56-08de32484ccc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUQ2Z0w5Y01xTXlYWGhaeUo5SStZTWJ4RU1VU2svZ2c3NHZsbk9ETHQrRCt5?=
 =?utf-8?B?WlBlR3BnTkxaMFVyM05QUyt5MnRYVytIY3RVQkZBSXgvckd6eGticG1hRlNv?=
 =?utf-8?B?SDRxd0QrM0M2WmNPbUhLazB4K3ZKbDRRTE5Uam91Zy9lQXdTQWhROG0rNElo?=
 =?utf-8?B?cWkrbStKdHNzeVcvSTFibTEvSURaVituS3lFSDlOVEdJdnp3bm1ablBhcjdm?=
 =?utf-8?B?M2hmWTdva2s2MlQyWWpWWEQ1WHpPUXNUNzhiT0VyQmJ1c01VN01hdlFHMkpY?=
 =?utf-8?B?Mkh5OWltNjF0UUROZ1RwSFd5RWlrVU9uTnBNaUUxK1dpbkF4ZHAydERZcUJo?=
 =?utf-8?B?L3hybWJmSUFheCtBbUpvdFBGS3JOWnE4N0lNRHJ2RDJuYnlrWEk5Tmg2NzA5?=
 =?utf-8?B?bHFrc3R4aTZEUE9uQ1Vsa0I4RzlPVWN5N2lmVVI4VW5UeEhySm5ybVFJa1oz?=
 =?utf-8?B?emxkWFhta0I1bm1NVk51QS8yUFBhZnBWM2R1c1BFR2gyVWN6MWVKZTNWL2NO?=
 =?utf-8?B?cjN2WTNCWXphMG12eXhpNFZ6L21KWDFXcXNaelFhMjU0aDB5SHNSeURVYThN?=
 =?utf-8?B?YXFoVkJVVWhTUEpkUkplZU9kRWxCNHdmdWRCRGNveEtOd2lSYnNmZE9IbGxj?=
 =?utf-8?B?RThhWnlFaXcxRHc0NjFxSFR3d2lLaENNeEQrOTNrWjFGMGgvb21YYjM1QkEx?=
 =?utf-8?B?ZFpCOFpjMVgrVS9vU3BJN1pNNjUvdTRnc1lQOVRqdTJYNm9HbVZHSkFBeFJU?=
 =?utf-8?B?NmJUN1BSSnRheTN1akVXNUVXOXAvUUw3K3BwQ1pSUWpyQndpQnJaSkVwRlJ2?=
 =?utf-8?B?ZkxCUno4R3o5OEtTRjFQd2hOWnoxa2k4QW9tTnF3ZG9SdXliaEgwalBTT1VP?=
 =?utf-8?B?bGJmMzZJd0FqRXpqQWw3ZGlENHltUEhXdzVOVlljN2tuNnpCMEUwYWRndzNs?=
 =?utf-8?B?djZrOG1QazEza3ZDWTF1dnJuZUhVNGU5ZklwaHNObTVMNkVxZFg2bFBwVUc5?=
 =?utf-8?B?TnZlNkJxQ2krRDlUVG5DbmNBeGNVZCtsS0NKS0VWZGM4RnYzRE04M0ZnM2Rl?=
 =?utf-8?B?QlllQ09LWFBUSnlGRDdvNk9yQ2xtQkIrckZ4K2taU2NqOEp5VEpTSVN1ZFZC?=
 =?utf-8?B?Z1pFWEZpczZSZ2tzbDBYNGFSZDNORmpoN0E5V2lEZklsWjMwbmp1citUT2hJ?=
 =?utf-8?B?ZG14ellRcDBKeWtvWm5qcEZMSGVyT3AzRmlESk9wbkY2d2ltM2hGRGprM3hx?=
 =?utf-8?B?Z2tjMlhIRmdQc2NiOE9BOGNRTVJsQ0hlY1drYUt0bk5uQTZDMGk3VzdUQVNz?=
 =?utf-8?B?ekRZcFRIMmhhVTBFSWZiY1RJNlhpVlRmdVRCZ1FMZVdTWmJ1MnJuaVQrL3V2?=
 =?utf-8?B?bCtMWHBxK1BKTVZxSnljVmQ5YzFIZUZWYzZuQk1XWHB0SE85RG9wdWpPZGhT?=
 =?utf-8?B?bzRsUVhtK0NMcU5FNThVY3ZtKzdHVzFMeVl3WWdKWjlCTHpxRjZoMXBxdEVV?=
 =?utf-8?B?d0JlNWUwWlg4VWJncS9TWTYyWXp6cFFPMmhmOC82Zm9uNVBXb1NDY2p1SHJh?=
 =?utf-8?B?d0Uxc2M0K1NhUVNjVVhmME1iZEZaeG1iRE1kZ1ZQMmM1NzlScFlPemRpTEUr?=
 =?utf-8?B?c2FrK0QxdXpKTU1KSldnZy9rOWJDblZmMDJyNXdTSnV1UUo0T3gyckhsZ01w?=
 =?utf-8?B?YjlZeFIwWjhXQmR3LzdobGZmaHljSnlqb1VjL0Q0ZjNMRURPMTUvM0pETWpO?=
 =?utf-8?B?T1BLTStnRUFWc0k3eHp5REZyS2xtV005UVpQT2pQM0tHWVR5L3liZGF2d1NY?=
 =?utf-8?B?RUJ3Z1pDYTdseVhYaUdORW8zVXdFb2dGMjdmR0xMVHM2RC9LSlU4QnZLbkZF?=
 =?utf-8?B?VkRBaE1pd2E4Y01KWmZPWnA2aU1iWTlTOUdyOWVYcEYybEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zis0d1VsTDc0a0NoTVllZExqOWJIV285YlYxWlB5eUdnSGFrVXU2R3lpT1Ji?=
 =?utf-8?B?WTBCZXBOTlNjTmhIOXdOdEd6aDlVN1RJMTE3ZVhrQitXTnR5ck0xSnJBQmxH?=
 =?utf-8?B?VXF5RE92cGZXTmU5R294djdPeXdwYmY1MUZzSWRNaFRZcEV1WVk0V0t2SUt0?=
 =?utf-8?B?Q0FjNDVQSENWUXVLOTFBWDBPS3duUWhGSktXNmNLK29NQksrMnNkbHlNeW04?=
 =?utf-8?B?WjdqSDZTcW0zR3dGKzVhQnN0SUFJSG9LK2k1NzI2WnJnNEN1UUEzK1ZwYVR6?=
 =?utf-8?B?SGZDdDZEbTcwQ3JFN0trbHd1SVRKQVFYcHQ5cmVyRjErVnl3TC81RElZYnhD?=
 =?utf-8?B?Rk4vd0VwS0FBUS9WNWtDVk1odXRLQnY1V25qaXJBOURNaHM3RXFCeXJnT2xT?=
 =?utf-8?B?dU9JZ1UrbDNpeUZiRk85ZEdROHZzZmZRWElHTEF3WlExZ1YvUURhSDlvR1JZ?=
 =?utf-8?B?K09ZeEdmMGpEcXpaNXNUdklpeUZFWkhYaXdBbzVRM0lkVmtBMDI2Rys0TFhh?=
 =?utf-8?B?NGZnT0hUTUVWa2psT2h6UTNQdy9GaGs4cXRzRkxMTlQ3RXhpNWVrMUdVbjhG?=
 =?utf-8?B?VFNRdlc5V2FkVnUxM0FWQm1PdVRobGpXdElTSHFXQnRxazdVMG9SN0MvR3Rp?=
 =?utf-8?B?WEtkaGt2dGdjMzFvTk0rN2tHcWkrSU5NdnVCV1BBUDZCMXVsdTJ6ekRlRmds?=
 =?utf-8?B?QkNjRzNBWld5SHRuRnlVOGY0TVUyb1pwalRaNnhDaTFqZnoxbUczNGZ4bGdO?=
 =?utf-8?B?MDZyc0hERzZxTzNkc3RTVXhxUnBjVHV6MFJJQXMyMzVsNHprU2Q5Um9YbVlZ?=
 =?utf-8?B?aFQwZE55bFRrUXUzYkFDQUtMS1BvalFXU2pubCtBajNGVXhkbktzM1FaQ21W?=
 =?utf-8?B?VC8xd0EzQjJjREY5aCtiTmlsMmpUdmQ0cjlJT1BTb0xGbGEzellUcXlwL3Z1?=
 =?utf-8?B?UjZra2RMOXN4cCsvTVlyc2xwMURmSW9uWit2ZnJ0T2wzSmNnOXM0alBDZi90?=
 =?utf-8?B?MWtGTk51ckVTUVc4UVNaQWQwc0ZWb0NyMm1JU1pwWUtLSG5RZkErVDV0Z2RL?=
 =?utf-8?B?ZTFnM1V0My9uNUUvb2NDZHBENE55eGNtc1BFN2RST1l2Yk1hMFhUNXNFRlBK?=
 =?utf-8?B?QmlzN2lLbUpMQ1M5R0doTFhaT1pLNnhMcGJ5VFgvR3l1MXdsc3hsV09iV2E3?=
 =?utf-8?B?N1l1dG1RTThHU2JhWm45NzNRWUN4UjRjMjR0clN6bGFWOWRtd0xMWjhZUmxI?=
 =?utf-8?B?SC9Tcm4yaURxZUlEVHR0TWlnWmE0MnBmL1c1eEtXdjE3d0s5UTJtSTJ2ZTRR?=
 =?utf-8?B?L0x2WVFFMHZNVGRLMDhrZWY2c3RNNHRWT2pJdlFXTzFPWGtOL0wrRTlWOVho?=
 =?utf-8?B?WlZvU2xDbDF2UjlVcm9XRTdaOGxsT253RWp2d29hMStqVFBqMDA2ZGdmK0Ra?=
 =?utf-8?B?dzNTSVdUaDR6NzNSaVNuMHZWeFB3RTlvb2hVZ3VqSHg1a0pCeDRjWFA4VDQw?=
 =?utf-8?B?UDU3WXV0L2xvbU9ZZ3BNMjhXdmdnWFY2L3kzSDZOK1NlbUhsWWVKdVpvQlJa?=
 =?utf-8?B?TmxDYk40NmRYL1Vyd0pialhJa095SysrWVA2V253WmdxaEp2d0ZUQlpTelVJ?=
 =?utf-8?B?Yk55Z1kzZlUrNjFhR281ZmxjdWRkdnlSZXM1eS9WVUIvQlVIVGhMc256T1dB?=
 =?utf-8?B?Y0RYYy9mQ2xLRUVwZjNXMG5ERjlITTd4czF2eGtNU0Rlek1NWC9EV1NHYU1E?=
 =?utf-8?B?aUdvWDB0ODRKeUJBTUF5K1gwUUFZZHVhczF6bTRIcmV4Y0xPeXp2SUJabFov?=
 =?utf-8?B?NzFMK3VNeFBTNFJNMG5wZ1JncHE4SUIxdkJXWjZWY3FmckNFcEVLK2ROMVlF?=
 =?utf-8?B?SXUrWmR0MFl4UmNOdDQrTnc4bEh5Wk9CV2E4aEpMT3d6ODROMEtodExBeHVw?=
 =?utf-8?B?RVRCSFNRcFR4aHo0ZlFmaW0xU1k5NSt6TG5sM2RsMXBxOTgzZHdoN1lDU2Nw?=
 =?utf-8?B?YnNOQ0pudWlSL0gwWUpFM1QvcGQ3NERTTGRaODhGRElnd3BzcVNkL0h6WHVz?=
 =?utf-8?B?ODVibkpSZWoxbWFkem5mZktKWDh6cFZrSDBqVlh4ZlhPNVJWYWVpUER3VzZl?=
 =?utf-8?B?dWtSc2h3NzQxRE51MXFsK1pRQkpRUGx2WFRKallmUU9tQkkwbVVTWlRvOXA1?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 684b1e06-fdb5-4ebc-8b56-08de32484ccc
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 08:45:24.4875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jZvY/YKLuvWvZDbEpYrXaom0hCGNbj54gGkWIpxMGXxI+FijlkmD3bngxh6CPbD9k1fBGuNNksNI2nEEtadI8hqgC6LfL6KjzZGrHks2l6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764751532; x=1796287532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JTg913N7MtGIzDeDmGo4+TkQYef3exJBEmd0WYw9LWQ=;
 b=ZNgp9W6+v3FFuHQcvPAw2e3vlOyxjyGPysYNrfQVVVtUFqa6x8PV+tRr
 pcewmibYuXINh7VRg02fiVK8tOQwHZOrkVAsILzdi/dDYwka6FSw+h0QM
 CVPdFfq/AZ4gBUO0D2DJYOQn6vKqR4l1fxWJpAEPurtGjoxnvDnzdDA1g
 XxF6NH5m15tAmBfhZWgjAoETZVbVXCwYpc+opa1GZBorq3P9+rbC5QujD
 3jSwRPT2cfN4XvxfGg2QzaWApu6EJPTTa0vKGMSBR4F09+p8QwQrZWNUI
 SHvMObggcyi7GfASa9P79Y1HpLqeDAJ4SqW5wFIREeC3j2TXROJ5quate
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZNgp9W6+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet:
 intel: fix freeing uninitialized pointers with __free
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

On 12/3/25 09:09, ally heev wrote:
> On Tue, 2025-12-02 at 10:17 -0800, Tony Nguyen wrote:
>>
>> On 12/2/2025 11:47 AM, ally heev wrote:
>>> On Mon, 2025-12-01 at 13:40 -0800, Tony Nguyen wrote:
>>>>
>>>> On 11/23/2025 11:40 PM, Ally Heev wrote:
>>>>> Uninitialized pointers with `__free` attribute can cause undefined
>>>>> behavior as the memory assigned randomly to the pointer is freed
>>>>> automatically when the pointer goes out of scope.
>>>>>
>>>>> We could just fix it by initializing the pointer to NULL, but, as usage of
>>>>> cleanup attributes is discouraged in net [1], trying to achieve cleanup
>>>>> using goto
>>>>
>>>> These two drivers already have multiple other usages of this. All the
>>>> other instances initialize to NULL; I'd prefer to see this do the same
>>>> over changing this single instance.
>>>>
>>>
>>> Other usages are slightly complicated to be refactored and might need
>>> good testing. Do you want me to do it in a different series?
>>
>> Hi Ally,
>>
>> Sorry, I think I was unclear. I'd prefer these two initialized to NULL,
>> to match the other usages, over removing the __free() from them.
> 
> I had a patch for that already, but, isn't using __free discouraged in
> networking drivers [1]? Simon was against it [2]

you see, the construct is discouraged, so we don't use it everywhere,
but cleaning up just a little would not change the state of the matter
(IOW we will still be in "driver has some __free() usage" state).

TBH, I would not spent my time "undoing" all of the __free() that we
have already, especially the testing part sounds not fun.

Turning all usage points to "= NULL" is orthogonal, and would be great.

> 
> [2] https://lore.kernel.org/all/aQ9xp9pchMwml30P@horms.kernel.org/
> [1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs
> 
> Regards,
> Ally
> 


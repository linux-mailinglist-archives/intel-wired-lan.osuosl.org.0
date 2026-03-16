Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MExbLcNguGlbdAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 20:57:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FBC29FF74
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 20:57:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A11240CD0;
	Mon, 16 Mar 2026 19:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GLY9FODMGhXG; Mon, 16 Mar 2026 19:57:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05DAD40CCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773691073;
	bh=KHLhLdVKn3YzSeRCeWXRpoAHoY21QmqmP9/8hdMqQEw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ouNGaEimShxVdv5LBA1Rb7QnrKHDJV4nXYW1YCu6U9ZsN+oshAAOMsQgZbpXpiMsk
	 m2Pwh3B2c0NK58kIeu6HZ5l4TS/GdzowgDAkWhFHQ6WaNdiMT/a0vLqBBHJFQNXxTA
	 1528AfrYGF8QmpcYNsb5AFYyghfnjrHxSzUOBYiTqxlP5NkmCl8rRgiwoDLSBSlErm
	 +JmTMSr7W59nwOxAVK8kSOz93cvxq7tDGN7ZQ8RSBo0Dn8TFko351FNZi2gBqa121h
	 b77ucKe46WbF8vM7JPIYy7UcWmbXd4TKGwm7LkYzWK228AWil77BBlGgZjHH9RS/8k
	 +qnI+Zu9wZh3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05DAD40CCD;
	Mon, 16 Mar 2026 19:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D819FD3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 19:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C99F840179
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 19:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkA9PBvJJKv3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 19:57:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2317F40086
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2317F40086
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2317F40086
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 19:57:50 +0000 (UTC)
X-CSE-ConnectionGUID: BdUe9agpT3meokZ0QIIMbA==
X-CSE-MsgGUID: 1utJoKw1Q06PjCpCd7v9UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="85344864"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="85344864"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP; 16 Mar 2026 12:57:44 -0700
X-CSE-ConnectionGUID: X9JkbETgR0KBd9raOsBVTA==
X-CSE-MsgGUID: svpl7pafRguxcmzYMYZcLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="218235749"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 12:57:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 12:57:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 12:57:43 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.25) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 12:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gciq5g+UhVhwFPcMkXJWrKfVIeZyLbz6bEJtALdIYPPAZyMuV1QR0Ci8w5fvsKkaAI3WatSwAkmVhvTdLTBejmHp3eQF5vifC8JZvBQ/YSxxUlUotGQwj/9xUDJH34cqcBpBhnHH8HrZVAno71x5PUtkOkmVyAz+GcNumyNfhFE48IBeI/8DLE2eiH3df2Lb20ZkP+K62GSbf0Wf6X1IEBewEKW5wDFHnElZP1+GNV728h9GKJEl9N1NuBBhF1ue9Ih4OLGFNBBZih1/WI7hyZRFdfbCJmNcs6k78SkDydA1qbjoduASDbds1Fo8mL+M6GIYfeEW05N1+sBd6xau+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KHLhLdVKn3YzSeRCeWXRpoAHoY21QmqmP9/8hdMqQEw=;
 b=F32VFrxu8BInU2zlWdQ9DvLgpMZzVAqxhz8Fg2WIQo8YFklI5ftvqtTDyFQAdi/FmR6ND+fzDWgjCJdpTnV87GPYFKuCtim8/f1Ctel3fmJFvl47cY5SkYd73ZQmuEWy2b/ZzqyaRGa8g1CnnGx8/sgKjzeVpZjARHrvwnNk4QOAWqPNAP6NFkvAMvrv0ZY0n8CSGQrrBLvwArGfdiI/93mWOk8dZEZxVmGYpS/AZ0k4ACY1dG13KFnNjfN1B5ddOgz/7joyz1XQOcf72IJ8/LcdxYsmt7Wgjb79tSCAsKR+yIBPpUZZHh+pMewOUtVd1Pkabb9I9Ndpm9+2jvhUsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH7PR11MB8250.namprd11.prod.outlook.com (2603:10b6:510:1a8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Mon, 16 Mar
 2026 19:57:40 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 19:57:40 +0000
Message-ID: <48fc11c9-b346-4828-aedb-f97debf2c459@intel.com>
Date: Mon, 16 Mar 2026 12:57:37 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <michal.swiatkowski@linux.intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 <jacob.e.keller@intel.com>
References: <20260315125451.3741843c@kernel.org>
 <20260315130150.12829f88@kernel.org> <20260315132245.1a7efb20@kernel.org>
 <f770c976-8688-4192-910f-5996e1850deb@intel.com>
 <20260316115915.19a6cd6a@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260316115915.19a6cd6a@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:303:8e::8) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH7PR11MB8250:EE_
X-MS-Office365-Filtering-Correlation-Id: eeb35d99-853b-4cd0-af8f-08de83964758
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: LcqA00RaZhxjEtGlrqSbeWLv4lexCiBpn++mREVtPEwsQVEtrL0gudHVrprJXIsCv9jVLxC+jx5vvS+owgUNCmNoVPuFmUK5vKgF+BZGtpT/EF5Oc1OZGSpUnHvgNp5bzac9XLOztX2FDHzQ3eKZCrtvkVGgGeMhGNSqDBo8ZzavGJCIG4gaiawu0zm0yFo4inworjIg9+LACgiN6mR+7zSqAsdN2pgQ0s+/G5TKRbXl5YS8Q2RX4o6G30RhZBjQMZ9E/iFgtoiIC1cIyVSzv5aDe/s6g5utNQkJ4objY0tV9GXXINYy01uwuytbOVu6KuHc699gdWBQs9ycKfJ1WUrgSt9rBPzIZhxorraCg7vAo0t/inKFgcCSjkRYV8xGGb3F/n8HMGR/pGPY5mc/wh8VGfg1IgBDpNmC3JW3OYBQfdJQFgI7JA1seIbMrI5goV5koMwroX70v5hGNklIap3jZizXcD8U+92sYuPTBHC8LReBjaRQ3okWYrsWJo3ria0zdQtfWJ5/4XlmN2i+RDj9d7irIpIWGAYqM46u5/8l73j7jfHmPf8Tm7aLRiLxo6A8+ND59WInFiX2zv0AZbKEIUM9IR2A0KJ18ymvx0DDOruZz1zilMdochvaFEk/9G6AYcap9qzwFxqRnHg8O1f/e/u4qboYFrtkvyFAAdoja8wYvApyxg28ziOOHqSqgwHyjmg/9RclQr+0yoXLCWXdt+q5HGeK9/N+doCzyK4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3YyL2FQK2dhWmtSRyt2cFBnU2JmUnJhd0VpdXpKMFB5ZnBZa2FYbzRUUklL?=
 =?utf-8?B?MnJuYXJON2NFZ3RIOGtMMGpvdFdvV1ByR05WR0xVazJIWFp5TCtteUtGcmFs?=
 =?utf-8?B?MUhSM2IzazFXMnNWL0ZHbUFlYzlaTG5sY21WL0xSbGJFb3J4Z1B5MVpmVEg4?=
 =?utf-8?B?cld0Nmh2MzN0Zms0MW5ydzdJSjEvUXVxRS9kK2NqUTZia1RNR2ZaR0VYOC91?=
 =?utf-8?B?TCs2NzJ1OXFCbi8xYVF5NGNKanFUVGRHZEJNVUtKV2RzdUpYZGNDWXprKzFy?=
 =?utf-8?B?T3ZQWnJlTWtXSHVnSyt0R1VkVHZEOUVqRnVKUDIyc3F6QThpS01YTWVvcHgy?=
 =?utf-8?B?bTRhb3FLcXNTa2dXSm1scVM0TGR5Z2hLSENRQjVQa3BGaEUvbzMva1AwZGtl?=
 =?utf-8?B?cFFtK2VaYlQ2L1NlWGtrSjQ5VGZYVzhjM29ZdEpHekxEb3VyaUpyaVVFekNv?=
 =?utf-8?B?YUFSRUhwR2ZkZnlFK2RzcWx6L25IN3hZb01PVVQyS0xsYm1tVXNaSHUzd05w?=
 =?utf-8?B?SFNpZnJhb3VWTXVtc1YyNVRnT3c2dWh5Y1RpY0VaWnBXNWNxcEwxV2xkT0Fx?=
 =?utf-8?B?cmEvUktocnhhMXIzRis5Tm5GS29UNmwwUWNiWHBGMXN6VHI4eWpnSWR4R2Er?=
 =?utf-8?B?dmhRd2dkVDhWamM3blJrMjJPUXdlNjVYWUhaeHpEbzlFaDQxWGF4ZDYvbE5W?=
 =?utf-8?B?cGZHck9qenVEYWtjc0NuWHVqR0xuL3hMa0RFd3J2NE8xNmRxNElEM0dpZzBP?=
 =?utf-8?B?SnVQYTMvS3ppT251QnZmcEtLSDcxSkNWUVFEZjBkd2RWT1VScEM2NDdXeERZ?=
 =?utf-8?B?ZnUzc1BVbFhLTFo2UHgvajNYYUM1SERYWXVZeE5DRUwyTEVaMzF1U3NlT3hj?=
 =?utf-8?B?VCswRVA4eWpHZkNOY3I3TlpIdlRIZ1ZteFFwMTlkbWgzV2hLcHFLQ001aFBB?=
 =?utf-8?B?R2pmayt5TTRZRFpZNlZ0L0JoRFdDSlV5UzZuLzV0TnduRVduckdQSDZYd0FL?=
 =?utf-8?B?c3E2R0VjZzhITStOSkdMVDE3dCtVU1BPd2RwTUU2amNlRU5TZFQ3WVNIYzN0?=
 =?utf-8?B?d2dtVkNmWUl3aHhYaHA5QU51eUlxNG0rSGpubHZldE51TGJmT1BlQzZRenZj?=
 =?utf-8?B?cE83K0hLLzJ0VzN2bTRxd3BRU0RMVlBvNldHQW9nWmRtS2QzMWI2Ny9idU1E?=
 =?utf-8?B?dzR3Qlh5TVV3bVRVZUd6eEh5U21XSGxsaDF2cDZ0WWx5bEJYWjBjVmJ2bS80?=
 =?utf-8?B?N2pjK3lXbFk5MDB0ZDRWN2hVN1k4cHVaRW1rZXZqcjY1c3NzbGdBS0NGSGo3?=
 =?utf-8?B?TjBMZENtMjc4Wmg5MkRqNnBRcXN2TVRlT2RhWWVBOGhEK01sSElnOStmOHVn?=
 =?utf-8?B?elBaUzkzMDlQeStGdXJ3MlM4bjBMS29vdzRLRWpWVFRlQVFNL0Z0M0htSmpB?=
 =?utf-8?B?ZVpwZ1B1YXdRZ05QUE5pYWVEK3hOWjdzeThoYVhaQjBWOURwVGVydDhWNGFB?=
 =?utf-8?B?aGdpeXpweW11SmRpbVcrUkpQS3llRlc2S1ZvUlY5MmN5RUk3czB6aHg2NXQw?=
 =?utf-8?B?YmtsQ0hOdjNGRGhlMFo5OWdBVzFkRlh3c04vVVFvZVUrY3BMOWNpVGxuTzV1?=
 =?utf-8?B?SnpqRXlBNHNtdHNvZ05zZDluV2MyNzgxcFR6Ry9lUWRIN0RoclRDQ3cva0Vl?=
 =?utf-8?B?b21iRzV0VUxob1RRM3pTWnlmdC9LV0RDY3BYcGdnZHZxTDYydjdxNGM5RC90?=
 =?utf-8?B?YnM4RDhVVTZaN2FoTllxMzF1S1pIaHdxUW9VUi94NXpuc3JYUmN0R0pUbjlR?=
 =?utf-8?B?eGR6RXFyZTZOcWttMEhUUkdXbTFJMzFFSVlidEc0ZGxLKzlIN05rWmpnWUtz?=
 =?utf-8?B?RW5HUklhMDVkU3E2cU44MDRDcEovQXY0aVdsZ1lnUVNyazR1QUxyRnVGaVM2?=
 =?utf-8?B?blY2WjFReE9zT0tJYWNHQ29oT2ZLbzFuOElJSXFUUk1QMFVDb1RGVjBuWkxQ?=
 =?utf-8?B?ckYrV1ZEVDNTcUlscUc2aDZKdzRiWW1vb1I3SXV6dFMvZ29icFZ3ZXJYQlYv?=
 =?utf-8?B?R2l3d3BKZFJFMEY4NlhxUGpqMGw0Zk0xVDVhMWluWkNRQkxBQVpDay90dVl2?=
 =?utf-8?B?Wmg0aTdCOHh2RWVrV0tWWGZiTFNUS2ZNS3UzM1o5ODcwNVh3bkkzMHZxMVVH?=
 =?utf-8?B?aWpQV3FxYTYyWGY4UTJyOXg1K0k4clhUc2xpbmJ6S0VJT3oxTmRiemxlS01R?=
 =?utf-8?B?aEo2Nk5Kd2d2VXZTczM0dmgrbmduSDRaTjRzdS9lbW9WN3lNaDI1bXFBUURT?=
 =?utf-8?B?UklBbm92ZWhmTG1mK1VRV0l5UFJXVkdwZ2JyMkpqb252OTZmQk9oV3MwWS9w?=
 =?utf-8?Q?EVNP5+s4kbUGuoa4=3D?=
X-Exchange-RoutingPolicyChecked: GChwscJVt4b0sZwXfFklmkPCdeHGkahU3JOiz6MqTdlUGrA5/TAcBOPqEomamAFEMszMSlQT46jW72s7j9+fskHIgJGUR7CgtM7CbSCzEluSUFgnZNJ4D/lovKomgZ1Fn5FOirYC0VEH0FgHp5h6lQx8eKeCYJikbTlS+g2dQxJmPJb8h8mLe9z5pI5HbmLS9uEbWdN82MJf0AzOOrebA8xjm600ylE1569Xs4iTDP9buRYe1vUxFI4jbdUNv4cCGXKoDgV27vK3vld+0Cj71X/2NLsuMDTF1dhwTxYMaOuB/w6UZi+yIy7BJ29FPMfMa50KpPEroOikAmVkN6fvrQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: eeb35d99-853b-4cd0-af8f-08de83964758
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 19:57:40.0290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ovXk6Q4xMCsTeZaysw/64ly2KbpFHCQvB8TEETzBOZ0DunllhLJ93fY/uVo1LUYUABrHDE5/tiL9Sxr8I8NxdtNA9LJ9Fr6NB0Z05deKNLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8250
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773691071; x=1805227071;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=88R9aA0mMvmsD3nVZ8IgUZJ/L+7XNcud6JQbPW0R9lc=;
 b=LRikKatGE9ws0Zl+LZ1MXShmqs8+18zraXRGH4ae6xGtHrubpw1xoCpJ
 FAPhmPPMyVI7pFRyytR3Cq1ofDZG9/s5GGSU6srvvt1A4UoHiSycubBGC
 4ARvy8OxitUzP26aEQNaaoUVM7gb0mDmCAQJRlcpl3rr8K+VIs1CCg592
 frAaffqiBMzGqiQ8o6KiBsr9SHWnW6XLYNFk+xRgIUNo2jV4GMs/HZZ9C
 zzlQJVhsDq23Sdhvfj19RcY6MzZGYkM5L4IUfpjrrd7gJjzzZo6hLbZ2s
 s0kIA2BVy5Sdz2x7x+JQ6xsUcZuk1V6EdQo1vAu8LW7rrBfELyVhEXDMw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LRikKatG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice crashes when not enough IRQs
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:michal.swiatkowski@linux.intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 08FBC29FF74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/2026 11:59 AM, Jakub Kicinski wrote:
> On Mon, 16 Mar 2026 10:29:56 -0700 Tony Nguyen wrote:
>> On 3/15/2026 1:22 PM, Jakub Kicinski wrote:
>>> On Sun, 15 Mar 2026 13:01:50 -0700 Jakub Kicinski wrote:
>>>> On Sun, 15 Mar 2026 12:54:51 -0700 Jakub Kicinski wrote:
>>   [...]
>>>>
>>>> Hm, maybe it's not just CONFIG_IRQ_REMAP=y
>>>> Enabling it makes no difference. Let me try to see what state the IRQ
>>>> allocation machinery is in on this kernel. On distro kernel ice gets
>>>> all the IRQs it wants at boot. But it also barfs something RDMA so
>>>> I can't really compare..
>>>
>>> I think it's ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
>>> It clamped the number of allocated queues but I think it meant to only
>>> clamp the default enabled queue count. No idea how y'all gonna get the
>>> extra IRQs later or whether you intended to pack multiple queues per IRQ
>>> so I'll let you figure this out..
>>
>> Hi Jakub,
>>
>> Thanks for letting us know. I think we have the fix for this in the
>> pipeline [1]. I'll try to get it tested and out to you ASAP.
> 
> Thanks, do you also have any locking fixes for i40e ?

No, no pending locking fixes for i40e :(

> It's doing even worse, after running these tests:
> 
> [   66.614062][ T1267] nipa-hw-worker: [1/36] Running drivers/net:gro.py
> [  138.058617][ T1267] nipa-hw-worker: [2/36] Running drivers/net:hds.py
> [  138.856172][ T1267] nipa-hw-worker: [3/36] Running drivers/net:napi_id.py
> [  140.195848][ T1267] nipa-hw-worker: [4/36] Running drivers/net:napi_threaded.py
> 
> The machine locks up waiting on the netdev instance lock.
> 
> Looks like on your own NIPA instance this test doesn't get to run
> because ethtool is ancient and doesn't support --json for -l

I'll see if we can get these updated.

Thanks,
Tony


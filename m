Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6550A2348E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jan 2025 20:18:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAE336FA06;
	Thu, 30 Jan 2025 19:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kOZ58M2Akt7q; Thu, 30 Jan 2025 19:18:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10E6A6FA46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738264691;
	bh=F8t9TKm6/1xpmz2XFz1Ci7vniZG+a0fLq63245sMP9I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qFGrS93l2khzDSiAlXYlvtEzLnq4e9h9d4uBZP+Ndmvi/ZeKp0vKaqD+6PfTBhUIC
	 KKI2mz8BJBqG5Mn4a6NM179BEnBpF9/Kp3LXpb6r69EuXNwjRS2dgIF11DS1QShlto
	 VI0jiwLuLuDYpwm9r/DbhStX6F6uGsNuQN1wlzFCsaoCJ5Bnuu3sNiYtNchPm01iS5
	 ajtY0apyDr0trGZaObphskgvpcWbVgaa6HYbmD74ipZzu+NUK3gClbijPVKDFwd/nd
	 Tn2I8DeJ5D053ot0yHfogsIJAlldxoFNf+oRBE2Ci96SCKkdPON7jnN4tENTfEi4z5
	 3CFR9cy4JhO/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10E6A6FA46;
	Thu, 30 Jan 2025 19:18:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E553416B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 19:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D501A412B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 19:18:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CT-0pP-5-YUx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2025 19:18:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B3EB540F85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3EB540F85
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3EB540F85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 19:18:07 +0000 (UTC)
X-CSE-ConnectionGUID: iTn4qGWnQHOjdcOT7T59Nw==
X-CSE-MsgGUID: pADA+BYdQOyOo6xc+lI/Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="39099751"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="39099751"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 11:18:07 -0800
X-CSE-ConnectionGUID: 4EV41lc/SYuxwsnKWlyvyQ==
X-CSE-MsgGUID: SQaLH+G/Qmq7Luv0kVe7zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="146606217"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 11:18:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 11:18:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 11:18:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 11:18:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yjk9INE1DOHUVTBQ+iFMhuHgjreEwMJgdgs6zc3y/KopjxlkNkp2wiiuVq+GGNQ6BshboSqqbzudiAqxy5wICzuk22omKg0rQsb/fbThoeroHJ/qomabXQv0fKCscmXqR/Ww5v2yrHyBSqqd8oKY+u43tXuC5spXqS9+hekrIBPF5fA7hGBFrhb1YF3neUdzsZuDu0Cfmo2KR4oB8bAp+ZKkUE2GaZyP5VYAYrIylmuyYUk3N733i7KokTRFTiuLEEStcXlzHPgS3vV2cJLfamEvTsHXHw8Q1Oowok0wGjz/JiK1NrDRgb3RsoRUsxA2ODOuIHLGgSZVsdEm0w6xpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F8t9TKm6/1xpmz2XFz1Ci7vniZG+a0fLq63245sMP9I=;
 b=OUwZlglgznQtwkbT0k++2ZSpIp2lJFQb5f3tmgyd83XHSDyulRa7dFBzHiAlcA4aHJ5MFfcwELfrJT5PnXTZ6iq1i9gr/Wy/Hv9VHQ8l4gqk4/nrrxQ5z3raOS9dn8yh1G2fbZkh8niiVzJfcNNGHUTpw6SZb/4pHd5f7/iLI1KpdRB3Fcc4Z6DYwusce7hrEJYDkU6m35Qk76d+9lB4TSx0UTXPfzPgNUr1ExYljBkiUoJM3KBOBVqV8D9UD3afpqiAx9AvtD4Hmsqkz8MbB4TncpeMd6WHjvI6xOii+AiQyEP/pD9JAv2wV8Lv64+klg0Lt+FNEU8EG9jKedcXAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MW4PR11MB8265.namprd11.prod.outlook.com (2603:10b6:303:1e1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 19:17:36 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8398.018; Thu, 30 Jan 2025
 19:17:35 +0000
Message-ID: <531227ca-89fe-4398-8cba-3647be509454@intel.com>
Date: Thu, 30 Jan 2025 21:17:30 +0200
User-Agent: Mozilla Thunderbird
To: Stephen Hemminger <stephen@networkplumber.org>,
 <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>
References: <20250130091111.46358882@hermes.local>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250130091111.46358882@hermes.local>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::10) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MW4PR11MB8265:EE_
X-MS-Office365-Filtering-Correlation-Id: cbf13108-d89f-4fd5-fd22-08dd4162c0ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGNkM3ZWdlJ5MTBxeEk3SzcwaTNkWEkwRkxFWHNoZ0dNdW1STGdtYm9PcG1W?=
 =?utf-8?B?M3R0SUFURlhRZFNVOW9ORzl0enkwOHh6OUIxMjFFQWo0Z2ZIQzdROExoVzF2?=
 =?utf-8?B?RE83K1VRV0lHOXpVU3MrZGVTVlhWN1IxVmZKdGVRdExKbEwybFBtK3RHUjMw?=
 =?utf-8?B?OG9haEpzRmt5OFFhS2pEZnkwZHRDWVBUS2V4NTdtNzRVU1A0cUo1YlVLUUxx?=
 =?utf-8?B?azYrQ1NhU1NzTXhTUUh2aS9PcStDblhVV2lHQUFMK3FsdVM4V1YydzNVaWd6?=
 =?utf-8?B?RjlsWExwanlvQklCaW1OajBGMURQdVlRaHcwSHk5V1dJcmk2UytYbXlCNEVs?=
 =?utf-8?B?SzJ6VG5yVVdQK1k1ejhCZGxKNWI1WndxbjlTWU9kOWV4TDZ5RW1Dejc4bXdH?=
 =?utf-8?B?blViTzFmYmZSSWJUOXBpbDIxL1NSTDBJWWVMYnJ3RTRzR0NmaWx3eUpKblYz?=
 =?utf-8?B?QnhUQytRWi9WRjZhNkx0aGR5VXMvSGlHOXFtQ2Zrd1JsbnJ6Z0NqTlQwNVRJ?=
 =?utf-8?B?WGlpYWpBblBvWm5UdC9aYXlTeHphbm9ITGlKeGlJSkNmNi9JL0tLOUpWbGlh?=
 =?utf-8?B?VmhiZkJxOUxDQ0FOQXJGYk5LVU9zSHp6bktoTTZiejB1eHpDaUw2UFh4czRv?=
 =?utf-8?B?Sy8yd0tuMThXRUY4eE15dGNKcXc3RFdMbU9DcDkwMWlSYktJOGNSMkxmM29z?=
 =?utf-8?B?dzFJMjlWN3VJUnQ1eFVOYXNOdHlmVlU4RkYzUmlzTkRTU0VydDJoaWQ4MlQ4?=
 =?utf-8?B?eG1JbHBFSnlUWHZXcldsZllDcTFHNU0xWlV3MTFSakZRS0k1M2pRcUc0VVF4?=
 =?utf-8?B?ekI3N09YTGtjUTkxNjNaWGpsQnpPSUJIZlRobzEvenZvS2dQWUpHc0RBOSt2?=
 =?utf-8?B?bUpEOExQUDdXVkxXQ1h1Yyt3VndFdGhzZ3ZUY2dVSzUvaVRvWkJjTU1kZXQy?=
 =?utf-8?B?OW1mMzJhRW1pS2w2L0EveS9SRURJZW9jUVlFcDFpV3FYWmV5NjYzUDBVenJD?=
 =?utf-8?B?cHlkSW1nSkh1VnkzYTZqR050b2pPU1lIbW1XTkFvS3RGSkpkSE1BV1N1Zmh6?=
 =?utf-8?B?clV0bGFZaTk0ZG8xSVBPYkh4ZjJtaVVzR1hVUVRjVW1BbGozeXJWZFBnRWJ2?=
 =?utf-8?B?eGgzNkNDNDlibk03VmE5TWRYem9YWE5rYUROcGg4dTJta3lBbEt0QUw4ZktF?=
 =?utf-8?B?S3BwNVI5R1ljQTM4OXpQcDVucFJldmQzWEdCSUg2U0g1OE0wRGhJSjZtVmpL?=
 =?utf-8?B?RE5NZ3c2MldIZ0pZZWo5V0VyVEpWSG81eGVvT080VzhNYVQzOWFZM3RrWm41?=
 =?utf-8?B?TDk0Q1FRWEZiVldxTWZxUjFxbUZheXJCRktjSzlSWEpJYlFSeUhBQzBPbkRX?=
 =?utf-8?B?WURSYmpWMnYzenMrcERwcW1uZTV0SHdKZFVWZkpBVVdaTVVvWjNxWHF1N1dJ?=
 =?utf-8?B?M3ptWnZZSURJL1RFdUhaYm90b2FITUNqdThyZFZ4MzVQZ0Z3QkdZWGJ2ZW4x?=
 =?utf-8?B?MlZtQjB6Nll6YUlpbjdDamZsRldwbEhlY3A2Vm13SjEzdmFub1JZenNoY1hZ?=
 =?utf-8?B?M1JXMlRGUlVYbmxiZHlqYU1seHVtQnRQdlpydEdPZFJHRWV1TGs4S1QzVGtH?=
 =?utf-8?B?d2JsbzFVMWNnTndjd2tsOFJmN3dsbm5KSmU4OHIwOGRQc1pjeE9taVpPU015?=
 =?utf-8?B?U01JOCtDQ0hqVG50dzhHREpyemtMSWxmNXZVTGUzWFBLVVBvaTRXM2JuTXZk?=
 =?utf-8?B?Snp5QU5PcFhqbFZUd0lUamZIWUpCSDk3ZVF1TFFXaytLb2lnbWYvMzNoYmp5?=
 =?utf-8?B?T1lMV2piR0xKSHNXRmRIQTgyV2pOc3JZK1lrWEVxUmEzczhYL1Z0eG0xMHU2?=
 =?utf-8?Q?4auhHK7qvWTEU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2Z2ZUhjUFpsSUgwbHc0eVZNVmlDN0pVUU12QkRkK0tsNmo2ODhKUlh2U1ov?=
 =?utf-8?B?UzhkV09qQUw1dDJuSHNiZ1BpWXpqdWhHOVBXZFNlUGViNUZOeDRwdGJvZVo2?=
 =?utf-8?B?Wk9Oc0lDdUk5V1NCYllGQ0RvMzQxcXNBK2ZZRFptbnNpQ1JOQlAwK2NUYzJK?=
 =?utf-8?B?M2JIbTNHR0ZMU000OUJ5bHVKM3RoZkk1MGNjS2F3d2ZEM0p2OGYwSmI0Ym1H?=
 =?utf-8?B?UitxUlpjaDZxWWo3OHdXVFY3SHhwUVQya3pJR2dtT0lBZlNEYVM4YUEvRi8z?=
 =?utf-8?B?enRBTWpHYldNUHVBeDVhRE10YXp6cXVTRzE3azV3dStYMXkvR2svV1piQUtO?=
 =?utf-8?B?VzJlMHVabUU0THgzeWJjMEY1czhrbGx2U2w2WjZBUCt3bDFZVm92aDlZTmNw?=
 =?utf-8?B?U2NMbjBFYTNDelRGM3dqMnAyOWN1MjRTVXBYcUJxYVd3bkdhTk8xRTVwQ0VB?=
 =?utf-8?B?cTZ5S01Sc3RJU2FsYjhBZnBKNG4xUUVwa3Y3bVlXazNLeEU4RDZEUThza1pL?=
 =?utf-8?B?YUZKY0l2MXhIanY2MWVMdVNWbEg0NUJoWmNuT2NyZ2dwQndYa0dTUkZxNFc4?=
 =?utf-8?B?UlNWWDZ6NlRqZmxTbWVDb3pSRGpNVWhhRmY0U3JXTzFNVGRKOGRITk5MNmRu?=
 =?utf-8?B?VjlBclZ4TlBvdW1tZ2FZVk5FVi9lZlQvekE3RXdTVHd6UnFydjZaY1VzLy9I?=
 =?utf-8?B?WUJpdVNldWYvMVE4QWF3NXNpTjh6SGFwcEwyK1lEQlRwWnBQQlQ1K29UWDZG?=
 =?utf-8?B?TGQ5Q01yVFJubUprUGJYNHVJUlVIVms5K29ERjlWaFQwVDFtcTVZNE5oWjlF?=
 =?utf-8?B?bDIzUzBBYjN6azlBdWNxWmtCZ3JiLzNUMXBGSUEzeG5UeWlBY1lXdUxWUW1v?=
 =?utf-8?B?b1dob2l5UW85b1crN1JSTFVnTGwyZWUrRHN3U2MrQUVYekdQaWI0MU00MUpG?=
 =?utf-8?B?TXpld2pncWpQbDUzQWkwQTVGT2RGQVpCMzVsVDY2N295MWJtNkN3OCtRakhM?=
 =?utf-8?B?a1FzZFRPOEJ5bjl4dE9wN2tWRVluUi9LNzV6RHZRcUNnSlJKc2tNWWgyWHdB?=
 =?utf-8?B?b0lFYktVbmorZ1ZKaGlFTW1aYm9GaWJaOWQ2YWJKUjgyMy9wWStjZWJvRmYw?=
 =?utf-8?B?SmdQOTIvNUJ3SytJUmI5SkRJRDNXdEFVL3J1OVZjdDZUcEFpQ0VhTTVJY3pa?=
 =?utf-8?B?cys0ZFJENUxOUVNzOHg1ejZCYzIzRU8wRU1tbHR6dkdxODVmNUQyMXBpNHdV?=
 =?utf-8?B?OHM2QUlpcE5PbWx5NzFmTmRpNmo2T01JV0k1c0QrOVd5WmJ3djJuMjA5Zk9B?=
 =?utf-8?B?Z1hrS3E4OWFDUHhyd2hIWW9lRjVWd3p4N2g0MzJGK3k0a3hBVW5EV0I5ekRp?=
 =?utf-8?B?eEtBOGFGUUR4aE54QUMyTnM3eWZoaDN2cE9uOElmTW5aUStURzNUTEV6VXNC?=
 =?utf-8?B?Q1BRZDdlSi9LNUZZNk1OQWZIZk9OM3o1eTIvQVZ6MWFmbVNFbDJ6U1d1b2Rs?=
 =?utf-8?B?SHFTZGNpOFduN1BmRlUrS3YxK2RFTy9HaWRBM2hFRVlKVGxQckN4aDRQZEdy?=
 =?utf-8?B?eUtxaWhrR3Z5aldPVE0rMlFFc2d3WjRtVmNQVVR3dXJoWWNiNU05UFBZTjlZ?=
 =?utf-8?B?ZFVHYkFlRzhndDNvaFVUZHBVTVRBLy9CVDVpVytNekVzSG02OE1HRDRhVmU4?=
 =?utf-8?B?dlNJWGY2SEl6SkdyWHhDb0FGTUtMTGhPZ0xiaitTWkhKU0FuYkF4bVNCSGVv?=
 =?utf-8?B?Q1FaVC9DbG5LNXhGVlJGRU1nTUlONXB3V3I3blM4NGNEcERXZnk3anFkUXZS?=
 =?utf-8?B?T2lFZmJzbGk5YnhkZ0gyWHlrb00zbVBxQnVVUmVwMEhUaVppYXArdGhSc0dL?=
 =?utf-8?B?WTJnSlI2WnJRaEtTMEdublFQcHdVZ0x4ajljUjd0WTJUNnJhcXNEeDcvZzJw?=
 =?utf-8?B?bVFReEp3NTdLRHpmdjN4WkxmUmdiRldLaldkZnRSZ1NRRWJadlUzditybHhP?=
 =?utf-8?B?WWEvbm5ydEZlOERRZkxZNm4zR3I0TStWdmpQOGJHT25XS3pXakd6MVh1Zmdr?=
 =?utf-8?B?NDVJaXBhdkp2MllVNDNtOG9WdVhJMTd2MEt3SEsxeTlSTXZGYTMrcVdNSWhF?=
 =?utf-8?B?MnNiZTdzcEJPMUtjRUFrQmNKN09vTnkzL2lURytnL3ZvR1hCbGFWSlF0ZXFQ?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf13108-d89f-4fd5-fd22-08dd4162c0ee
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 19:17:35.9146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jMu4DmFEzhj8F7OiErl2X0WMcaDCcOqTcuAVGKMuDJ3egPZfIFPs+ch4jmTHZ03eHFkZB4jY0vRQCayRfAozZV8H6VUudgdzU1n82FGpfOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8265
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738264688; x=1769800688;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A7FsKHoogTUou/FO+1xs3UwrBYXuOuwaUgytMhfuf+I=;
 b=F1Us6C5OJDmVGsa/M6NpN+GjrFPmLsWuMLJSQ2YQPp262bP+sEod/Y9e
 aYWvNEb7RA73akNFcvB3/vzhSNIySpJD13+huygr4axStrFfsxkyQ81g8
 AeCAPrx7gQYzaORzz25WaEZ5cLCb76fowu65yD/AdjHF2Hb8bcCYM/s3e
 u8oTiF7PgbIVtzCiNzq8WaB2PMKmQ/fqOz0fRNPwqaqm+fpiX0Sv3oU+1
 IaIizEPGe/Jcgce8pi9qLpjV6iKSvW1JfzLlN8e26sg1JyUsOtapF1tl8
 FeVL/zFypY4O+KUZ/rF/s9EMt7PsptE2TReWLXbq12gNzbJyPEYdX6Qq/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F1Us6C5O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] suspend/resume broken of igc driver broken on
 6.12
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



On 1/30/2025 7:11 PM, Stephen Hemminger wrote:
> I am using:
> 
> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
> 	Subsystem: Intel Corporation Device 0000
> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
> 	Capabilities: [40] Power Management version 3
> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
> 	Capabilities: [100] Advanced Error Reporting
> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
> 	Capabilities: [1c0] Latency Tolerance Reporting
> 	Capabilities: [1f0] Precision Time Measurement
> 	Capabilities: [1e0] L1 PM Substates
> 	Kernel driver in use: igc
> 	Kernel modules: igc
> 
> 
> Using both Debian testing and my own kernel built from 6.12, the igc
> driver appears broken after resume.

 From which system state are you resuming?

> 
> After resuming the device is down and no address present.
> Attempts to set link up manually fail.

Did you get any errors in the dmesg log?
What is the firmware version on your device (you can get it by running 
ethtool -i)?

> If I do rmmod/modprobe of igc it comes back.
> 
> Doing a bit of bisectting but it is slow going.

Meanwhile, we'll also try to reproduce this issue in our lab.  Could you 
share more details about your system so we can create a similar setup?

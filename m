Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34945AB0B79
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 09:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA67141391;
	Fri,  9 May 2025 07:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vs56C0yQpNse; Fri,  9 May 2025 07:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFD93412AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746775236;
	bh=z+cEPb2jRTlNYSLK2gFbntXmKFOKarCcKbHoQA2OdPs=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nVTwHrCLuwCJQGn4zcIAWzMDRAxlpZX9cdxuZyMSEIZG6TiexgPyOGno5Io86rZpj
	 6zOR9GaPi8XlVjDY8a5/EsPU2hsWpwv2/HbION90AAHCAq4D4wEuMXOT74jce+HM0e
	 WhhEHBhQzTN9lsWMT44Gy4Z8DAt4s2G8bOQwfakIWwJ1XDb1hp8w+ZAV1gP8KjdzjQ
	 /pCoyqxuwpRqLBsOpOr1EgD88H4rMZM+3BjcC0BBHDtFCjxaR8XMqzNh/FbA4PQlYv
	 6QAgC3aMYvXcpXsOWCWkMST+gDYEMZK8vwrnpwwX4Tn88J5NiVEhkC6ZJG4sjqPwxl
	 E3wATMg+U4oHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFD93412AC;
	Fri,  9 May 2025 07:20:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 14A0215A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 07:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEB9060890
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 07:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gny_I8f3WN_i for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 07:20:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E65E4607C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E65E4607C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E65E4607C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 07:20:33 +0000 (UTC)
X-CSE-ConnectionGUID: 25usysnSSquAF+AKQGDwLA==
X-CSE-MsgGUID: p90PhuyLSAWLN/X9opieLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59588572"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="59588572"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 00:20:33 -0700
X-CSE-ConnectionGUID: dejKciFlRIGr7NxAi+x4oQ==
X-CSE-MsgGUID: sBOE5+uBTTCWuWT4vWyAXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136494413"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 00:20:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 00:20:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 00:20:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 00:20:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ipAGo5lUKEnP45ybTPsoJRHQM71Kdw0YLvNwMM06wiY2rveY4d/lk2fY5ruJ1lbQhbbYwjXLwFi3PFYHdveqNafld9MX7hZErEXrBJ4h1rtYax1/mjLe3K0tcgY0aIsHYrK9XV+l/gtyynaPDdwJqK9Wu9rGnn1uogjimaRb7C4wcCi9WMX7fFO75c8Gl3I3tREm5fNqPpb0H/Op60FCp2OLdyCdAI9F7glzqffV2t9leGF2Veg190eBSYTEZpHJSGj6kZMpNf1Ul4czTNk1pb6LpHJa2POJQ5+edGSwf3KUJiK6E+7SHYQwAu1btjrLW70tbE/9FZba2VzcQFs84g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z+cEPb2jRTlNYSLK2gFbntXmKFOKarCcKbHoQA2OdPs=;
 b=ARck31dQnVCEGbMRLBdf5EAlwZbs4MSrnkgb+4Elp00lALQN8kab5kQfJSffd9JdUpR9TTOpV59u2TrBBYlrLF6va5LCxzYVK9sLG5tgbEFv7Lp2wXolfBSZmQUu/WmLMsw/ndwuTuDLUXZfDJBXNKiddrSn+ZCjvpzCQ19ySs/jd5GcFQ+KBVFJHumaAf8U57KbnWCqj1haCYkPyl2SUWYHHurRgjTCKeiuUTEojynbdizR0R7s1JV/sKfWLSmvHUHU70ZfqcNN8xdIbCA5GhPDDV9cNiWV8Gxq6rgCbh4TdpMDzFIHZFyFm5V/Ty5CaYfCgOh62hOFuqplfcDWSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Fri, 9 May
 2025 07:20:22 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8722.018; Fri, 9 May 2025
 07:20:22 +0000
Message-ID: <c637f316-8953-4119-a262-2ff3d15aed21@intel.com>
Date: Fri, 9 May 2025 09:20:19 +0200
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>
References: <20250508125252.3997364-1-anton.nadezhdin@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <20250508125252.3997364-1-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0243.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::8) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA2PR11MB4921:EE_
X-MS-Office365-Filtering-Correlation-Id: 765c80f0-b225-4256-4946-08dd8ec9f5da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3ZXbFJCUm0xclBYRWRIUmNPS1pIZlVxWU5DWlNGK2dZTFFtc3Z4MUlodEJ4?=
 =?utf-8?B?UHQ1dTdoV0JXVDZKODJQbmg0cFNLbHNhWjJoQndFV1VCVlJyOExhNUZvZmVk?=
 =?utf-8?B?Q1NXTlB6cXZ4aUVHZ01qNElXcThTNTdjOVhubk5nZE1HYWozcWpDTGI0aUl4?=
 =?utf-8?B?VlBMaUpPODFRVXpIaEtEd29ONWJ5MSs4TGJqc3pFTUc1bCtBUFVhMGZvZTdY?=
 =?utf-8?B?M3lzOW1PZ2p4alJzUUhURmd0T3VMdEFZSlBTQTJ0cjk3RHV1RlhDSWZKb2dE?=
 =?utf-8?B?NStsL2FEYm93WGdxZWlCMVZJN2k2M2lKbHJocnlQTFRxWlAwK3IwNG9KOWgy?=
 =?utf-8?B?dzlmaVZTMGJJWE1CUXp5RWlwNGRUK1ExR1ZpaERiQm5aR2c4VGl0V0NRN2FD?=
 =?utf-8?B?aWJGSUJ6QWZLUEFJeTJDNmlCVms2OWJocWlSWTRIRzZrMVRjdmdESEFJS2JF?=
 =?utf-8?B?YzFhOE1EWkxVZitXLzIwamlqQXpETTZKUFVWQ1pXQlpBQTV0c3NmU1pmVi93?=
 =?utf-8?B?SjNBSTJSRWw2MjQxU2VKMW5jckMyTU9vVUJENzZ5WGEwUzRxY0RjNVEvYWgz?=
 =?utf-8?B?ZlVvVGR0YmVMNGdNS2YvR1pEeHZ0dWQvV1lrQTBibGpHekxJL0lHV1c1QXI5?=
 =?utf-8?B?VVkvSVowcTdQSUc4RWlHVUU1MHZpbG5sZ1c2SHRhdGdva3NmQUxBdk5lS2hq?=
 =?utf-8?B?TkVENXhnaXdKcFJhcEtGY3RIL1FUSUczU2FOQnA0ZFI4cVpEd0RTMkhJS09S?=
 =?utf-8?B?dGpwaUdxcVlqSmJQNUh3STBCSDFWREVOYUphZmF4SzRuVTRtQmlOMTN5Sno4?=
 =?utf-8?B?cUM2VlVFT0s1Mzh6Rzd6anNia0hVbzY3THFaU29vbjJ4TzVsMFN0Nks0SXNa?=
 =?utf-8?B?ejVRWFBRSXkzUGlyaUhVOE5EaGZEU28rU0lSbTNzWUxueTBJaDlxN09XdjhC?=
 =?utf-8?B?NFE3eDlLdzZqUW81UFVpRGJBdmxVbEdia1BydGowUy93Z0hwOFlkYnF1SkJ0?=
 =?utf-8?B?dnluYyszMkFMTUlnZUJuK29pTTlSV20xV1h3RTlVZHBhcXZrQUJuMGlxdVYw?=
 =?utf-8?B?VzZrNE15aEJwbTc0MDBCMDJ6cUZMVERoangzRUxrU01KcUYxVFFsWXZERk9M?=
 =?utf-8?B?Q1dGZDl4MmhKdVpiQ0xMTExmM2piNXBndTExaXhNMWFBZ0FvYWtvV2FaRkwr?=
 =?utf-8?B?OTEzWFczTWJzdzcxRkx1TjdGY0cvN2RUblFHUkptbytkTmVyY0IyeVZrYjdp?=
 =?utf-8?B?c1BxdHo2RjlCMGR3Zjd5ejZrTkxkcWNNVkVNcWxHZmtkbFlrUG0rZVFXa1NY?=
 =?utf-8?B?VVhpQmtoZTUrSm9TN2RCSDZKV2ZtSlhORWJsMEdNcnM5QkRDa0g3RWhlNFA5?=
 =?utf-8?B?M1JKRnhuRHdCb0ZBOUVsdW52RHluNVRHSFlKUEh6Skk5OGU0ZkJGSmo5eUlv?=
 =?utf-8?B?RmV6OUZlbXJkRURGNzd6Nkd0SktrdjlnWDJ1SFJlQ1ArK09mQkU0VzFVcWJL?=
 =?utf-8?B?RjJLUkFTemZ1OXg4clJMbmJSZGlJK2NwL0xlZHBwdnBTYnNNOXZUZlBoRmZs?=
 =?utf-8?B?QUZtenZFRlgwb1JIVHFEdUtCQTVlamRQN1RwRndWa3VLZkxhQWw3Ykk4S1hU?=
 =?utf-8?B?MHo2b0loc01CaUYyYmFWaU9veVFZWUYzY0ZGUWFxRDlSdmFBdWFmaCtjN1lz?=
 =?utf-8?B?NWZlQXkxT3dBOEEzMzBYL2dHcytjSTZ5OGYrVGZRRy9YM1E0dVhpRnQ3aC84?=
 =?utf-8?B?UmNzRG9hQUQ1VnNCc1dsNDc5UHFOUW9sT25nKzFaYVJDZGlIaHlORmkxRDdO?=
 =?utf-8?B?NU42Qjc2ZkF5bDJFMUJJWmZWKy9IMGFCd2MrdWdkRGZpQS9IVEN1QUZ1Y05z?=
 =?utf-8?B?elZJcmZ1cFU3OFJiNmRMRmhpZGlHanJDWGt0UHhkRUgvZkpLajZaM1VpQk9F?=
 =?utf-8?Q?ry9eNUOnvXY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0lZRXB1Z01uSW83R1R2cDdiNjlDY0VibFB0UkV6UFhoTkplbkh3cDZVamcy?=
 =?utf-8?B?ajQyMkFNTWwzbHV5WEZpRmlBZUU1WkhscTNMbWptSC9NTjRFcUNjdnJ1eWc3?=
 =?utf-8?B?dW1qeFAzelRodG5EN3MyVFpXTXhJTExqZmgrSEJITFNETFNPc3lpVkFhK2tS?=
 =?utf-8?B?M2NHNFo5Um9jbjEvcGg5cGJ5TU01bDloUWNZZ09aWWJGVWZyN0dZTkM5OFpi?=
 =?utf-8?B?VzY0WWZkajdua29BTU5Ob2dKVjlyeHFuNEZUZzhZMngrZVpWdVVCWk5vTmpp?=
 =?utf-8?B?ZUhCVlBaU1hDaUFhMU1hdEFJRUROZUkyQ2dOQ0hBWm9XNTZSK3NRbmF0czA4?=
 =?utf-8?B?ZG4wTnNrWndWUURjdnorcGFkVEtnNHpmRDZnNDViUHV4UnNGdllvdTRNTkpX?=
 =?utf-8?B?a2FmUTBtU3F1UzVSVElvUHpPdzB3VGFuZmNySnEwcmE2UjAwNlpaWnpJRXg4?=
 =?utf-8?B?TTZoSVNsZWlUZXd3clJYZEdHdlRURVBwQXNlV2tYYzh6V2ZnRGRjcVFlSC9Q?=
 =?utf-8?B?N2F3SjlpNlJLalVhZG9JQmRmS1JNdFBXOUhzTmVqdWlRZnJKeCtWTlVNaS9h?=
 =?utf-8?B?VUsrRzV4YWhPRFRyQTBoKzhOc2wySjZqaDJaKzQ4VUk0WDRjR0FwQytmNzFI?=
 =?utf-8?B?amk0Z2dVancwUEI1UWRVZXNDOVFyNXJIblptQWdIRDBkSlFzUHVFc3pQbzdJ?=
 =?utf-8?B?eW0yaSt3SVBRajl2SFY4ZXIvUFZRem5UWGtZZlVLbkZzdk55dmFnQmtQZDNr?=
 =?utf-8?B?UGFVWFo0NmJET05FYXhMZDJyTGdXVHBVaXdheWREMFdIWm1wSUduY3JHdnJy?=
 =?utf-8?B?ZUg2UUhuZ0tobGZoRmtCZ1JwVUZiTUFjbE9hYWplbjVMUS9mUTVWVmNoVjlM?=
 =?utf-8?B?MGE2QTY5cExOQ1BMZER0Ylh5V0xmU1pjT1hCY1dUejA5QW1nbnV3cFQ0NWNp?=
 =?utf-8?B?NDYyVThqRU0vK2FBMXV0M1NHMmk5b0E3Q0Z1bmFSd1VQU1gyZFR2MmVvcnhk?=
 =?utf-8?B?cWxmVFFzZkVGUVdYVDg4K1Z0YmE1eDk2KzdXNzF0anRzRWlXN29Ib2Z5R2kw?=
 =?utf-8?B?L0JFSXRUcU81ZTYvdVM5WThNdVJmZjM0aXplMVZQOW5vU3RTNWJ3NnNPeVhV?=
 =?utf-8?B?dTFvN2l5MUZ6SUNZZXBVeGtBM3MxdkQwSmJzUUdsNVpYNFZaQ3NTRTBLQWhz?=
 =?utf-8?B?OWN5N3BZOGtYb1NDQjZLUHJkQ3YwYy83K1JzbnBhVXBzOVFQOEZYZWx4TWNS?=
 =?utf-8?B?VWh1MkMybHcvOUlIaXYzY2cwVGlrZkZ1QUxNK3l6dVoxNWZJbXZXUkUvOUU1?=
 =?utf-8?B?M2hQNmk2T013SllkZnF6NkxLeW1maGRMQkUxVXVCN0ZQTnVJRU1CSGxUU0xH?=
 =?utf-8?B?RkV5TGswNCtXa2FzWnV3R0lPNVRrNmV6eVMra0pGcmo0b1BaMzQ2bm1ZWG9x?=
 =?utf-8?B?aXpQSHppRGRTOFpGR3VHUTM1VmtqemNoVVUrVGFFMXF2eFpKOVFjZXRMTmN6?=
 =?utf-8?B?U1pnVHpxeHN6WVFGR1lTTzNZbnlKR2xrQTE2Z1ZEUUZUbDhqOElZSzIrVjZo?=
 =?utf-8?B?YjNzNy9pekxKeHhsNU9TQVlSTWJwN243U0tXcGV0eUcrWFJPakEvN3lwbHZY?=
 =?utf-8?B?a1k3UGJld05pK2x2dmJKZ2VzVFpYQzNWcko5eklFMzliUTBUbllPWDRZUUJV?=
 =?utf-8?B?T081SWkyT3hKLzJDM3MzM0Q2T1h6SG5mSjNlVlFLdlhLVHJGTFRQK0JFc2JN?=
 =?utf-8?B?WFhFdmE4dHd0eFRHNE01QlRkUndhV0c0WTRicVVTa3ROK0VPQnZTV2Yvdjk1?=
 =?utf-8?B?ZHhRZ1A1RnVlUGJTdWlzZXF2NGNPaElIZGNLR0xYV24rUGRIaTVjSm9lZ0hr?=
 =?utf-8?B?MGtyNGtzV1gvRlltOWZRMmdsZE9vTVhJMFNIVm1ES1RHYUVNQkxpajdDTUVW?=
 =?utf-8?B?aHhEaVRseGtHSU1pT3cwdWEvMFRwSzZmN1pZS0VRZUV3eWVCNzVKODBva3BN?=
 =?utf-8?B?UWJxS3d5V0N1MTQ2MzdNeFgraEFMNUlWZ3hKTWJRVVRXdFJ0TytTNmQvZjRu?=
 =?utf-8?B?OFhvMVh6RC9qMkcyYVduelZKY2N2OXQxWTlnUHloMWZwN1pZVHZEd1F4SEZI?=
 =?utf-8?B?VmlBUkVFdEJ2VlAwakVIZ1VsdlRGSnBZcFJZR28vYnMwTHMwQkRwUEVSVEZh?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 765c80f0-b225-4256-4946-08dd8ec9f5da
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 07:20:22.2378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cJpNbXkiNFF3bCbbBwFhsoLXxmt4kpS2XkFz9EleQqNXjsD9jngaHHXXcoTcYCeiiHfdGNL5MX/R986oxgC9yrMgKgxgIj0CO1c1EARPIqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4921
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746775234; x=1778311234;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X3VefzAau1ptrN4+o4jrL8EIzxiIMB/oaL70VR/G3BY=;
 b=INlIM9rgn+UlYRFUpQ4Se1IZPtAevT1C2fNdexTStce8SJ3z1EiMxDwY
 58duRoDR2rF6GcxyTMgiB8PbohslPHn5Z8Zjn5DPfpK1vdEZYzfc6/aQp
 cPnYIgnqHCECms3km4eUBdo4u+HB7oaPCs6JoiCQePYYXx0H5iMy8TYqF
 NwPvuxJb1durBnF3EXZp1jvRljLygcP68/6c0jPkpNPGaDvRhIXZSMlt9
 J4ZjADKVtyBbKiq/xMdvQEvFP15r3Wlf1eUVPQOcbcUSI8jUTb7p6uaJ3
 j+ALrQ3hvHmpgZnt8u3AvFd6Gzg1LDFDBYcQ+XcRWYLzxpBLzykNXaq2R
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=INlIM9rg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice/ptp: Fix reporting of
 crosstimestamp
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

On 5/8/25 14:52, Anton Nadezhdin wrote:
> Set use_nsecs=true as timestamp is reported in ns. Lack of this result

results

> in smaller timestamp error window which case error during phc2sys

window, what causes

> execution on some platforms:
> phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument
> 
> Previously function convert_art_to_tsc was converting ts to the cycles
> instead of ns.
> 
> Testing hints (ethX is PF netdev):
> phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
> 
> Fixes: d4bea547ebb57 (ice/ptp: Remove convert_art_to_tsc())
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>

the change by itself looks good, please read [1] before sending v2
[1] https://wiki.ith.intel.com/x/ShT8vQ
(intel-workers-only link about our process)

> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1fd1ae03eb90..11ed48a62b53 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2307,6 +2307,7 @@ static int ice_capture_crosststamp(ktime_t *device,
>   	ts = ((u64)ts_hi << 32) | ts_lo;
>   	system->cycles = ts;
>   	system->cs_id = CSID_X86_ART;
> +	system->use_nsecs = true;
>   
>   	/* Read Device source clock time */
>   	ts_lo = rd32(hw, cfg->dev_time_l[tmr_idx]);
> 
> base-commit: 7e5af365e38059ed585917623c1ba3a6c04a8c10


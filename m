Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE84A4198F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 10:51:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82D1F402E8;
	Mon, 24 Feb 2025 09:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BABho62g5tAW; Mon, 24 Feb 2025 09:51:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15C534038A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740390702;
	bh=7KrKHgvE3m+Iu+cj342pnkKhaIij4gowu0tzt9aQImE=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EqPwMcrI59KoJbdGoyCz78JV9V1ZJDOanSt7jlg8tOffhyTI+oD56iWJEPwNyTxS6
	 nvSMN2t06mbExkf5wm5uj7bgfClY4JgIb59TardWpJKHjTm1Ejt5kpuopA/9dxnGwL
	 CJBF4PTQFFfwKrqvirsNCWkIoF6isXr6q9kONKJGh7PqrOz+05PGhSBLfb0mqgY7u0
	 +gnGwjQ0o61K4fz/R0rsd4iTDZEx8CNjOolMCWD+gEzA+y2E38V1eVqDiGumhCgmmt
	 NrZzsjixvgSc+qgwVZ6NEg85nQ05eVyV0t1Nb3PJ3FJaayq+9cNxshnFB7rdCExmTg
	 EgJSnAwBjJhNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15C534038A;
	Mon, 24 Feb 2025 09:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D35E3920
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 09:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B72EA402E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 09:51:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UYkdh_GoUqDn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 09:51:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BAB64402E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAB64402E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAB64402E8
 for <intel-wired-lan@osuosl.org>; Mon, 24 Feb 2025 09:51:38 +0000 (UTC)
X-CSE-ConnectionGUID: 2qE1CIgiSx6i+YByBzHyLA==
X-CSE-MsgGUID: YFS9rZNGQkSvgEVM8NvpwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="66510828"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="66510828"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:51:37 -0800
X-CSE-ConnectionGUID: NMtc3/5KRtKF7H0xM8OiEQ==
X-CSE-MsgGUID: dAFpWJR6Q8eIVwPcr0uRGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115743152"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:51:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Feb 2025 01:51:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 01:51:36 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 01:51:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=br3hGzx9EGN3UaptW4z0XwqRSA7km49AoJYoqZVDV/DBS1A4cdPkqo6+pwMI+HhppZmGFjkmMAIpEeohWQ8d0AYEhICDPKEfQuY0qDG/xKpPrN3VIrOwX8kcJqkP4IHyzwtUDhSR1j4NQoqteN544/U4PQ6ipmsdy3AiDLH8jw+fBXTnAqVwQYPP7655xxqyJXyFnRYwaovvHVC5DNWhBMxw/zqaGaZ001FufyJ393aTvLVnXxOBm2+xvV8lW+ikSTj2va7odtt+EWqVBN2M+1fX5HhZ9wZYrT588wqA8Amey/5j6z6BtpQiwhD/qIotDyyyZmeON+n/BAa65IUZLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7KrKHgvE3m+Iu+cj342pnkKhaIij4gowu0tzt9aQImE=;
 b=ttomWu3STtoh4HxMy2aoVc3pRcFYwfJZJod+C1kJybaPvzu8m665C9LVTxyidhZQzQtbarS/HgvKS/0Iy6Po+NP5wvesSH0AgfZCb+cGxt9yE3FS1GPxYDlDa6A3Jtm9GE2eDM7IfBUucq2QItvwtBV+mnXW/KQSDVk459+ihSVl+534E4ItQ2j9GsfJPZOqAFvz5NJ1mRw4/pz3DPPJD8mW2QL+hYRkrMWNc1nBEM1SyzoeZl/n5PM1rw4YvgCziZVgu67VraUXWP5MBFIQJP9WDKfgUZQAqmGsB38N4JLGVlh6fBi2EBeBiGL4XR7yN7FFkFJAEjOS0+iOq8xqyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB8522.namprd11.prod.outlook.com (2603:10b6:806:3b1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Mon, 24 Feb
 2025 09:51:02 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 09:51:02 +0000
Message-ID: <6aa8d960-ae85-4b89-8949-067d338a95ea@intel.com>
Date: Mon, 24 Feb 2025 10:50:57 +0100
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <mailman.992.1740357492.862591.intel-wired-lan@osuosl.org>
 <d59d4954-bd5d-442c-84ea-7787b0d55e28@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: <intel-wired-lan@osuosl.org>
In-Reply-To: <d59d4954-bd5d-442c-84ea-7787b0d55e28@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0125.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB8522:EE_
X-MS-Office365-Filtering-Correlation-Id: a75bf6be-153a-4291-6de0-08dd54b8bf6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlpYVEhydm1oK1JJZEY0STZzcUszaFE0K2taY3lreGN1bkhZanRwcXFQZktl?=
 =?utf-8?B?TU81Um9qSGppdnRrNmFLdVNxV2lrZmdoMkw5N0hkMWRYNFhvblVtd0orUVUw?=
 =?utf-8?B?N25LUy91M2FVcndROWpHeFhacG5hQlM1QWtqMFpqdEZBR0gyNGMwMlNCYXBM?=
 =?utf-8?B?LzN5NmRrelFBekVtOHlneDk4TUhwWDF4WFJ4bzNvUVVldXBFRStHKzZROXJG?=
 =?utf-8?B?RDVMRCtCNlVqclBPbUZKdCtxSmg0RVdCeHgrMHZhVktHYVR5ODdRdGhXTnRI?=
 =?utf-8?B?REhwVHE5THorRXltYmxDQ0ljK1pKM2k3bWJSN01iMWsrYmdTS1laS3A2Tzho?=
 =?utf-8?B?ek5va0JyYnJKSERmN3J4YjlTemNiU28rNzhjTmtzRGNJZ0RsQlVUcUU5Wkha?=
 =?utf-8?B?N2Jna0UrMzdXdTR2b09sK3VWdTBmVWw2M2pEYktiSmVQV1l5bENhYWZyZyth?=
 =?utf-8?B?VldVZHBQeUZUaE5kSzk1d3diS1BUd0VweFNPZkR4c2lMZUR0WU4rU2V0Y0hy?=
 =?utf-8?B?UDlrYlF2ZGVhK093MGtWU3FQNnBPekVoak9VbWM0UTVudEROcWRMRmlUWkY4?=
 =?utf-8?B?MUcrbmhRNndHejEzQW1ibldQaGRLUjFsSXNyMXNTNDZwN3hleWxxTkxVZ1hV?=
 =?utf-8?B?cVpkdmhDdU0zYjBmZE9CcXdoVXRacnlQcmxoTk5hRzRkeXhTS2FmT2R5M1RT?=
 =?utf-8?B?a2tHRG0rNFpFOVNwZHF5OWc0QzRMYlduMUdTSnFmc2w4QXRwajdITTJlQnRx?=
 =?utf-8?B?NnZJeUYwRDJKUHBtaENrSDFLUnNmTDRiTEJIQXMwK1BlRy84RFlqbHF2bFFJ?=
 =?utf-8?B?VjQ4ZW5wNW8wSUdEUExxYnc1UEc1cUEweDlWK2pRdjlGeWc2Uk5qbDk4VjBQ?=
 =?utf-8?B?ekpNZjhNbldpdEJiSisybDNmQko5U3pyd296V1BKWEpZWXdsY3JLM0twM0R3?=
 =?utf-8?B?aHlud3NCWndhZTZ1SnlLOUdwMUV3Wm5oYWhMZXJzWkpkdU1oWk9XclkzcFdQ?=
 =?utf-8?B?MExDTnF4OGdEQVYzUUkwazlpNVErb3gwc2FHQnc3SlBZMmVvUHpkU042ZktH?=
 =?utf-8?B?ZGZ4WWE1bmc0VGFqVjVnTVdFdTdNYkQ2WWxpNWFuZEpUV25iQmM1Vlpjdi9C?=
 =?utf-8?B?Y3ZDMjRRVUFFU1B1OWNXRk5oQnlkS1BZaTB1TDVZc01YWkpKM2RrL3VEaVJD?=
 =?utf-8?B?VGRvZFNrQjVvdGVzc2E4Y1laVzNIMnlDeDhtL0JLekVSbnNvOEUxNC9NYlBu?=
 =?utf-8?B?cWQ3MXJTM2pVQjJvRGNmTHRJZ0lDL0Z2WnZmWTNtc3NiT0R3Yzdublp0dVdv?=
 =?utf-8?B?anN3SU93NWFLN2V1Y1VnRkZWSEZlSlZnYUJPSEVmdmdMSHk1UklSQ000eHFh?=
 =?utf-8?B?NW5odUZ1WWtXZW1MVjYwQmVsb0J1VXkxaHpRdUdZUlNvYmQvWkhNckVKa1M5?=
 =?utf-8?B?UzNuN1hxVExGRi9RZ0UzbTNHTmVLUURyR0NGM2RRREdnNWdrck5rMS9BK1pH?=
 =?utf-8?B?MC9PcE1JS0RzMDRJb29veWpGT1R1ckdVVnJLREpUQ2V1WExnaWpJSndJRXpP?=
 =?utf-8?B?UUlMbEdsOHAvREVhSlRjcE9Zci9YN1lqZTZ5emdGTjFHTW1SVTUzU0VDbDVs?=
 =?utf-8?B?M2xPaW1ZYVUxREVUQTBld0QyZ21YcVhKczVWVmwyZUtHb1VKbzFZSFlrdjZ0?=
 =?utf-8?B?bUxPdEZjdEhaKzNhZDdaOGsvWGZ5aEl0U2JSUVgzU0xENXJDUVB5ak5RUjlx?=
 =?utf-8?B?blNvaklva2RsVWVLTDVPYmJ4MTNPNG5KdnVITkl1NXY5dVovOWkvcHd1NzlP?=
 =?utf-8?B?STZwNThZa3Z2S0NPZVNrcEJROCswRVFRaXZWYTc4ZnRuTmZGVXE4ZUNRWUlM?=
 =?utf-8?Q?hc4o3NecDLAA6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjZwUGpRNEJ5dTRUd1Vhc0tHQ1Z0NlFLQXFBSHBZaTNYQVJyaFhMUGtENDZN?=
 =?utf-8?B?bzhsNTVYcnNRaWN6M3hOMlIxQWZxVlNGV2ZaQ3ZvTmU3OGwwcGo0eFNDTjMw?=
 =?utf-8?B?Rk0zb2xVdzMwUjlnVmxsWDlFUDdDYjFTaUdPb2dIbWJCNzl4bkk2T0xSK1R5?=
 =?utf-8?B?dXRmdXNVOVBNZEUvczRzT2piMFhqWURJaG1DV3ZRKzQxM0diSXRSS2RUSFd1?=
 =?utf-8?B?NkZ2dWQrQ3NYQ1NVTkxPemtVM09henkwQXZ1UnJMSDg3UTE5M1pRekVEWUtG?=
 =?utf-8?B?ZGVSdGZZK0plSFlCblhHekxHQWRrMEhDZ2ozSGZNYTZ4OGVZZDFzMzVKbSs4?=
 =?utf-8?B?dkxldHBlN0xLbm4vTTRHcGxRMWVFWkR1VjZxbHdTLzBaTXJTd2JGUkErcHJR?=
 =?utf-8?B?aXAwQWMvQUppTTNjQURUNjlqUHpoWjlGU1BKdWoxQzhOL1B1T09OZ3liaUJy?=
 =?utf-8?B?YmxwSWRKNTlpdElLeWR6Wk5aUDBtQjFWd1lTTXRqc1N0K3dybkErb01PV2Y3?=
 =?utf-8?B?VFpaVzh6VjNDR3A3bGV3YXc5RHE3dVdLUXBETzlNR0o5V0d2WnE4RGFZRTRy?=
 =?utf-8?B?a1VzZ1VnUXRqMnVLcXN3NTBpZW5MTGN6aHRZMkM2b3RsRXJBbURSZE14T0N5?=
 =?utf-8?B?bEc0bDZnUCtrNU4xV1d3bStuVXc0RzdKZTZpaDJ0SFlYZy9iUVMzczJ6NGJQ?=
 =?utf-8?B?Wk5idUlSQXYrRG9EOWNDQkVWKzEyMGdUdGozTGVsYUVLTGNrNVQyZkpWVXcz?=
 =?utf-8?B?Rys1d1JWU3h6RmlKS0pad1JJdDY3LytSV1pKeGtqT3lSaktFblBjR2RQZW5o?=
 =?utf-8?B?UHJtd0NwT0ZTdm1Ld1dhZm15MUlwRzZqNjZNdXh3bWFwdFZCYWE5czdhN09S?=
 =?utf-8?B?aks0cnVTODEvaVNTMS9KN2lKWGt2NFRhZTZ0VmJuS0VRTHUvRHI2cTRnY0Yy?=
 =?utf-8?B?aldZRytNV2NyYm9DUGpHSmhNZ1d0RElWNmtSalZSS3MremRGcWRWVGE3MXZG?=
 =?utf-8?B?MUpLRXNjYk9RdWllQXBRYUFuSnJQWCtxbGNnd1ZaeHFDNHJMOG1ZYUR1ZDMw?=
 =?utf-8?B?NExSckMrMU0vWUg0eUprVXJyeDZWVW00d3FnK01xckdMdStSUTZ0UHA5ZUtB?=
 =?utf-8?B?RTFVTGZvSm5KL3RVZXVMNUtvMTlDWFlIKy9wUE1jRjdZd2tsTDJqcU1ETXUv?=
 =?utf-8?B?Z1JYWWlRREYxWWxlb0FZdGRWUkdmcG9nNk1TVFBKU2VKcmQ1WVk5WXMyTFBN?=
 =?utf-8?B?Ry9wdFpSOFBwaG41dGxHUTFnR1FJYkVXa2ZESnpUQzhLRWpNUmNrWTQwOUhL?=
 =?utf-8?B?WmNSWXkycHVjelZQV3ova3lJQkVQNm9vaFVMaDl3RmlaclJBZWFOY0NLOFdp?=
 =?utf-8?B?eGhOUUk2b2MzR2Q4RkdMRzVLRkU0NnZvUkR3SFI0QjFuY3FyZXZCK0RCR0hS?=
 =?utf-8?B?RXByd201ZlpVOEU5ZnZ1eGZnNzkrYVd5M0hsVUpKZVZNdDFQS0FJaXNCZVZ6?=
 =?utf-8?B?M2MrclgrazFSZk92bGtYRFhpR0RsOHVSWS9kNnpJSHZ0OW4xNldNVTR0MWhJ?=
 =?utf-8?B?NUJLMjhtNHpJMXBRc0JyTHdQS2o1SHIzWHpsYzJLaUNtQVdlcUdEWVBVMDc1?=
 =?utf-8?B?SUZFQlRvc3k2MjNkVWZDZ0ZYTDFnR3hwZEVIYTVMN3J3SW1Zek5vMGU4dkFT?=
 =?utf-8?B?bzdlWVZxV0VmQ0dJOS8xZU5zM200cjBXUXA3anlUSWs0Y3lNU3p0eExjVk5K?=
 =?utf-8?B?aUIvOHBiM0F4bnFSZ2xqSEZraVc0OGNOaEkvMVgrVUFPclYvY2hqdjR1T250?=
 =?utf-8?B?VWtHZFo0T0VDT0k5L0JKSXJ4QmQvdEorSmV6WUplbGpTazc5bVBNVXpFcGxD?=
 =?utf-8?B?Nno0WFd3NlRENXZSYTJ2SC81ZXl6RHNFVFdnaFdKaCtjVEZxVzdoaUFaRjBG?=
 =?utf-8?B?cW5Jd212ZnRITnhMMVlneGE5Vkw1V1V1dUxUMjd5K1J3Q3NDQVpJdDdoOU1t?=
 =?utf-8?B?NWgvREtwUTlpU1I3L0lwNzczZkhDVmF3YmxkL2lUcG9rZ1FCOFRpUlUwSzRD?=
 =?utf-8?B?MUpXeFJSZUIwenc3QzBxbWtEVXVRTXdJQTNMNitDTE1neWR6QmpGaE5pZ3lE?=
 =?utf-8?B?TzMzUTBnZWZ3OFV6WWpvWW1pMUE1aDgyWHhHeXFKbEI2aGdQL1JpeDZtU0xI?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a75bf6be-153a-4291-6de0-08dd54b8bf6c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 09:51:02.0655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VL6hiwlGSk+XyBu4iKI+enXDg3DKdICrrWIXSx9ggRRbIoYR/c+vJ2/50FUCpwGePumOu+i4WmGXqd5+lQQ/l5wwl5in8OGtCXu+X5IxzOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8522
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740390699; x=1771926699;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GZnPkL++qiH7nSGai0Z5a4JB0omkg55wQh6p1ientak=;
 b=XNX87ugGjoenD1JFYknBA9Rfke9U00xefALlRqjEHeoefgCRyfaSPvNC
 bpdF1ye8JGSXiGbQoomAwDKvGP46COhjfCuDjsYmqXLUdlwEkGERvoZUM
 j3GkmcKLVX4FrVNDrrZ+znM87DueKub6YBRpW9hRrgiL7OaToe0IBX/cF
 f9Y9dEqeCdqcZZFwE+FCp2MyhLa6RmRZUoosXo8djFpX5HlCZkNfHjpq9
 dQW4xf3CbumUoahfhCE+bpiXWMAYm42k+9RlHKyotf0Z05g/A03JbUf0P
 asxEKmp4uYw6QGF6MMUTRdcmfa+YjgCX3HTmyN5Hh1qqgh3PN3p+g3Lqn
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XNX87ugG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Mailman message about excessive bounces
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

On 2/24/25 09:17, Paul Menzel wrote:
> Dear intel-wired-lan operators,
> 
> 
> I received the message below:
> 
> Am 24.02.25 um 01:38 schrieb intel-wired-lan-request@osuosl.org:
>> Your membership in the mailing list Intel-wired-lan has been disabled
>> due to excessive bounces The last bounce received from you was dated
>> 24-Feb-2025.  You will not get any more messages from this list until
>> you re-enable your membership.  You will receive 3 more reminders like
>> this before your membership in the list is deleted.
> 
> […]
> 
> Looking at my logs, there were neither bounces yesterday nor today. I 
> re-enabled delivery nevertheless.
> 
> Did somebody else receive this?
> 
> 
> Kind regards,
> 
> Paul

hi,

this has affected two of my team members, at random occasions,
perhaps it is related to some bounces in the opposite direction
that wording suggests

Przemek

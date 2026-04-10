Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBhuMltI2WlToAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 20:58:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BE33DBB7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 20:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B049961105;
	Fri, 10 Apr 2026 18:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bge7sGOaYBNW; Fri, 10 Apr 2026 18:58:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2830461100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775847511;
	bh=dxI4e2oGxX7RRSmQDJLpCaBNLd/dYtK4+XNIIN2K1Rk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9je/x17KSlBW13/f+jbHdu8wgC/7GvBoL/IYKFrGZS31F7AhBs143SuTjqZ8+KIvx
	 gHPqNKhteQdhKjGJEdyE+OmM6xGfdrsDz4I8Z80L4nZF7ABPa3cZeKVxTwpjvLyj3I
	 bAjyKcdW0kZTW94uvA/aQ5xWBghaSxJ8yl3HWD990baExUAwlxGq9kKN/whkfoHIba
	 3BZhopDPOBi5mmVC/0ddLC+BrnBQBzQeJTLjzUvemJSmsMLPqULJUppVD4aDUXonV7
	 dB7P58uBpUtfN9W6UAo0CXHbxunD4qITEEf0MlY/t6luIL/ujeqZANahunLQPhes9o
	 ea0C63UjygVXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2830461100;
	Fri, 10 Apr 2026 18:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61559194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 18:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51F56610FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 18:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oUvaVcyiN6h0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 18:58:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7057F610F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7057F610F7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7057F610F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 18:58:29 +0000 (UTC)
X-CSE-ConnectionGUID: 0u2wD8xvRWerjNcdKmrsAA==
X-CSE-MsgGUID: u5d/9h3wT/CRwgGi+Bk8Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="80463867"
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="80463867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 11:58:29 -0700
X-CSE-ConnectionGUID: ggPonxJITbe884YznTLUZQ==
X-CSE-MsgGUID: rHy04CudSt+Sm5mA/RXJBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,172,1770624000"; d="scan'208";a="226433373"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 11:58:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 11:58:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 11:58:28 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 11:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EMmnB8baODXPBxZVqytFdJHuUMjWkaF9X9SAa1J21VHw8NCBdRpcTet0TIfpMh0M6bWWcKgCjkN4bU4jx0ghVW+yBck5gwMJI/NPZBjMsmwcQ6sn7go1BeWcNC0AQbKcHMj+ZWtSZSp022Y0C3YmqwTrQfTaU+q9AGqeyPY7CAXNVfyBDa+bncM029hfh3xBRNvOa5kNgoMZfhB5cUFnqhaxxEr8Vjr+cuHi+p9mVpTgZOMMsI+EKDX9KTL7kowjVbmrgqosbJP+nkIXC0rRUDK47wCTKAZ1EoKOmuuKLWuNaxjb5EbYh7Texi4kZ12c6iS/eSlAIGb+G6Pcff6Zvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dxI4e2oGxX7RRSmQDJLpCaBNLd/dYtK4+XNIIN2K1Rk=;
 b=UO5vOaA6hmusMEvedK9nAhh5BlbWOhPX5dFvJ3OptJgWET8GWe/i9NbCzjbpgM2B2jCi8XebeaEb+o95u44Gst1QgPRNvuqV1L94HG5zmJltW0mwSkNqTEZouye976JxLCidzv/AIGvcNP+cSDvwAwt4nWcT1CSd4cVAcL/jneLxFcHTT9l7o7jFfmeZZ0pUnehK6MzW7RXGedShHbsKU8cCGRbBB7NtnQvRWRbNjSdMqewGyL3T45pRACljDBG565WAVIm8O2u+AhoYhfujEiBp98H9RaUURvOEbXWgmfP5sHwxDSzOytU0zc1B6lkZjCVbNKxHLl7SKnvbBbcTJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SA1PR11MB6968.namprd11.prod.outlook.com (2603:10b6:806:2be::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Fri, 10 Apr
 2026 18:58:22 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 18:58:22 +0000
Message-ID: <6f0231dd-e648-4836-b3cd-76c49cfaa999@intel.com>
Date: Fri, 10 Apr 2026 11:58:20 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Jan Glaza <jan.glaza@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
 <20260403054029.3789616-7-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260403054029.3789616-7-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0207.namprd03.prod.outlook.com
 (2603:10b6:303:b8::32) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SA1PR11MB6968:EE_
X-MS-Office365-Filtering-Correlation-Id: d236a3fd-74aa-40a1-3f9e-08de97332320
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: J0kCHlgYiZsMl8QLu69MMFCVifjjxZHnYSbLq8QGV9rY/KJibfauyNJ05WbKEXFpq8+TSQIxCpKZ83jQa+MVQ83dmwciqjRz3+0yp8dlYZOWvLhC8WbRXVd+hEpJfGlWg76+1v8KfWDrtn5wQHNJKf8RqfuxzZR+j3BN6iAllWA+Qtw3M+SDhkGQmQEwlmf+IX9/Tg13bwTlOd/Q2cUljM6IsEaJZL6leGSTDgVQlkwzwJNWJmLid8C7PCJiBp0Rw3caZnaJNyye4jHPTgNnE3WEX/E5FUjd3x6rDGqUEawc5+Otv0r1J/xsqf3Vk16Th55bhb5y+q/GyhPk1Y+mETYdvINe9bVuB4t/KOPe0WlRG+Gcf5yA/pK8SKKGH+aTgZwpAwSlF8pe/5L7a7h4smFLD43xU75wSwiFjG11evFDhJiRaA7/PgvAm3bcIZRygqvYt5Igwv3l6OKBgbUZMkSQA2WFz3qxn0+m61/zcShzQ3SPg5Ci26MCOwxXYp+r7Ewl9rWJ8atxh0Q/IRj5tkGl1Bh3Ne+WP5hSlMNcnE55MNrKYByqqirU5cIqFpXLGPpqTJRfdG11GTkc3a6OwCnuTSTuY/yDA6Y8zL1W0TtgJDzTdi1sNYmRDxcnxVrC42c09cOOjZEC3qj/gVRkgG12wm0kzBFjF8GNTbU0mw1ZXjXlD3GZ0kKKaypbeSkFtE06uy+IkhjgIQRyD71FXRB27pyuzl2OQFWWOrzCC+g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ME5sNFJTVEVTMWlDa2NUdWRMYnJyNDBuUFdwS2dseG1WWlZmTlhMYWVOa3R1?=
 =?utf-8?B?NWJWVEd0Uzhic0J5c3JyVHVPTnVQTHdDUDRzOGl1UVpoTlU3Um9hL0tCcDEx?=
 =?utf-8?B?dzVBTFc3MnBTR2QvaDk0ZHYzY2pIblFEbDBUQUVaNENQazdKdjZvcmxoNTRK?=
 =?utf-8?B?aFoxbGd3ZFd5SWdscExucXV0OU9TaTdvemQzM1pnRDV1aEJTMzhlZlhTYlhi?=
 =?utf-8?B?akhwWDFEeUl2UzQySTFrT0hhVkhRQ2s1OG5MaFdiMVBCRXdvSWkzR1ZBdHNi?=
 =?utf-8?B?b0c5NjJWb1VYOWFxQ0l6T2xSRmJKbnhHY0RyUndERzMraXdaemhVVXFpeWZs?=
 =?utf-8?B?bU44aUR6anhYUFg0UDNEQ0hEM1F0NlJRM3RNKzltb3hkNHp4bkJmV3JHYmt0?=
 =?utf-8?B?dk02S05OREtWc2c4RDhSTi81dy84VUQ4UXBkMUNOSnNRc0plMVVOZGdXRkNu?=
 =?utf-8?B?MUxqSkx3Y0dTek1vck9oc0xDMUdsSnBDNHJhNUUzYkFTakFVSHJaYzk4VG1N?=
 =?utf-8?B?VDVHUWVWSjRpMFdab1BkYnlhRDZoR1dWYWp4Ri9Dd2RjeHFkOTdsUTIrY0pE?=
 =?utf-8?B?US9KRkJkbTdyZGJaR1kwRyt1MDRJeVVmSjlzK2UzaHRwVS9xaFQya3BnUG5K?=
 =?utf-8?B?aTVzQkJpcTNtRk8rVTR5ZzFlUnBkKzBnRnFaZEIxRXFEY2xQOHhKS2pBWXRU?=
 =?utf-8?B?NVAraHNuODUvbzkrMmFzUk1LeTNyc2F1Q0trOUkyeEFHdkRNQ1lVSmxzUHdE?=
 =?utf-8?B?Nkk4Qk1mVWF4aHdIUXI3UU13WWUvL3hOd0VtMDY5MmloSGUvbFJVbHRYL0xN?=
 =?utf-8?B?cjc3Q1RIV3VqdHlHT1NVdWsyamswV0I0ZG1PVW9VNEJvL0Q4V1oyeTQ5YWlr?=
 =?utf-8?B?SlB1U0U2UkhTNFZkVUlXOEFXQW5IUi9GWjN5dUhwamxodHZwSDhCY3ZzbWZB?=
 =?utf-8?B?ZVlpT2Q3aUEzdWpQb0ZLU1o0WGV5OUxkbmUxTUlSSzNxcjYwZUp4d09JZEFa?=
 =?utf-8?B?RzVaVFFyNVo5dnFRdk9iZlVrZG1GSDB6akZMb3RsUmFrZnUzYklYTzFQYndU?=
 =?utf-8?B?S2ZvMmhQYTZFYm52NmpFN0ZybDBtS3Z3MnNubmZsN0h1Nm8vUlZRbXVhOXBa?=
 =?utf-8?B?UjBtYVpDd0xwam1VNHBkd0RSOFZId2RaYVJiQWlKbDFqbE9CNEw5TnNmMGh4?=
 =?utf-8?B?KzVJZThtNnJOdnhTdnlXQU9YeVNUVWoySElLZzh5TEtjK1hoZkhUWjdvTXZK?=
 =?utf-8?B?dG5EQVhSMDVnK1hFSzRiVW5pODVKaTRFbENmNTFYbDdSNXhJNmZXeDF5cnhq?=
 =?utf-8?B?b2l6M2hZdDFTeDRIYXRGNVY3dU9ueUJEOHZkeFA3ZnBaNmJMb3drazVMM1ZP?=
 =?utf-8?B?V3FhYS9TTDdmVkhFSEdqT3dtMGdRQU5qUzRlTmZMSE5maXNtSGY2aFh0MTVH?=
 =?utf-8?B?NjRMZWdhbEZ6YXl3WlU4aUhHTFYxcSsxc2VWYmswQUtLMGU3TUZra0pTTGFL?=
 =?utf-8?B?dU9JS1JSeWluOUxPOUh4NlU1UkJ3YkpOMDdsRU5TQk43cWlvbFRBVkJhSmF6?=
 =?utf-8?B?aVRIejI1Y3RMcjc0ZkdFSmtFUmRnUDdacE5aSGxKcWdNaVZwUWlsakFFTlFu?=
 =?utf-8?B?Yy9VWklveDlNTzhsdSttTFFFTHI0YkxhS040M2J2T2ZhZjE5MitiaXUreUVK?=
 =?utf-8?B?bG5FT0ZHdG5hbjFKWWNUSmVjU3lVMG9wR1c5TmlwQzBJcEprL1NBN2FzNFV1?=
 =?utf-8?B?QVMzTHMzT29ybHFpMDZUUGwvZmhURHFkMUhjUDRJNmVZMkp3YjdlT1FVQmp1?=
 =?utf-8?B?aXJBb2dyWTE5RVNveTV2blNLNnN1VFhjcHBiR3lVRUdlZVNhTVdGVXpGZ1pM?=
 =?utf-8?B?c0drL2Znc0xBeERnZHRHNU5oV0hrY3pyZFpiVlZ0aEhBMWk5WDRjR0s2S3Ez?=
 =?utf-8?B?OFg1UzRza0ZLTGM1ZkZSMnBrMEF2MDZYTG5uU1ZhdEhnNWowcHpmeW91Ykxa?=
 =?utf-8?B?NlNzSFdsd3RUaXBmYlIvNmxGSGJOODd5TzNNWUtvRy83SFRWRjFKY3dhR3NE?=
 =?utf-8?B?aVYwSGVNWGEvVUk1VVF6WEhKemhaWFJpZDVDU3BFNC9jZUJma3JmYlJvQ0RF?=
 =?utf-8?B?a2ZLbmQxVElsMStNUHF1a2ptQW96TFpjYm5oRzBzR2NxTThKRjE1ZVZHblJX?=
 =?utf-8?B?Rk5WK3pYWGVwRUxtQmQzTEdZaTRIcGxsUW52ZmpRblI2VGp1T0JrUE9WcWVS?=
 =?utf-8?B?aC9MRXV5Q09rZXhwQ2w5RDZIT29lYnlibElIWlRNTytGNkd5RHBYdzJscUpo?=
 =?utf-8?B?bzdVUnpuZk9FVkdwdzc0WDdTTXJWRUE4aktsbjYyQlJ6Mk41OTZPVm1SeTZp?=
 =?utf-8?Q?Ao5tFS2kUCyLvbQE=3D?=
X-Exchange-RoutingPolicyChecked: KHAhewLOg9xl5Mf6BDsbHtXs42tp7JLgbWxeVQ36RkUKZQGpHsDN3zQTQI22O5L0cywmFOMjGF5F4U4e85LKvBr1Y8eOHcK3obAhpXQ9c/vce+2GlbJ6Jsgfo7gknPkOF6bo3IY4Eu99vjgZEBxsyHq/CFHMPCkITHah5D+d1zVcbCIsHM4ljbMH7ZsPPG7yMXngRud6XEslfOVCVIQkbq91jV0uEmEtpnGR8+uLQU7SgKzlFuvaSnZ4Zno0TEHiPjRRSPXjfvX3ASxEapEMW5vh+NxmN7GGacjO3OsDI+I+tXS9x/1LesP/Yswl6AXImyuA8vOUQSLtSTfvGgIXVQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d236a3fd-74aa-40a1-3f9e-08de97332320
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 18:58:22.3312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 93jNAyukUgm7iR59/AyXwykoKV9QOE9td2IiQJCs7JDT4vB/+vZ9TsN8FI+4+6Ki4aNgip0USt38hLMMWNIryxCN5kLJvOsaO9o/D4Ohioc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6968
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775847510; x=1807383510;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z5umpX8NCgAt067S4LL/TSjo7Z4AkycRZjpD2GoYtq8=;
 b=jzS18536nf+mBsZnnewzLZRdtWJaG3PgWa2FrGUv7JpyUJGZXYuhe/fB
 Wf7h4wDmpRYkRvQYNbRIfIPvW4ScNbYt0/Z8adr+lV6BoDwqW1dZxlGCJ
 OV/feYzfEn258vp9btt2guhqst3GIQsmyc/gOpuG5zIUysGSlKGHd0KGA
 rBmtspbigPdOSNK2Ik1+Dlw5LMhKmDbfClORnVL4ivZABOMcP4/WfhwF5
 u66PSqwQZ6yZGa+JqyDvSGuwu+wm9gs6ADDUGOGlDihMb2YmQBCd8q4cW
 8kmbkPULkQKZQ6Bbb0zdWO7c4BRyk2iWa3+yT0Z3UOTkqQ5t/lD0nhR02
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jzS18536
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 6/10] ice: check PHY autoneg
 capability before rejecting ethtool autoneg setting
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:jan.glaza@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 15BE33DBB7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 10:40 PM, Aleksandr Loktionov wrote:
> ice_set_link_ksettings() rejects autoneg requests by comparing
> user settings against safe_ks which is populated by
> ice_phy_type_to_ethtool(). The Autoneg bit in safe_ks is set
> only if the current PHY configuration reports it supported,
> but this misses PHYs that support autoneg and have it available
> through PHY capabilities. Pull the autoneg flag from the actual
> PHY capabilities (already fetched earlier in the function) to
> ensure the user can toggle autoneg on any capable PHY.
> 
> Fixes: 5cd349c349d6 ("ice: report supported and advertised autoneg using PHY capabilities")
> Cc: stable@vger.kernel.org
> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 49b9376..44483bc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2654,6 +2654,14 @@ ice_set_link_ksettings(struct net_device *netdev,
>   	/* Get link modes supported by hardware.*/
>   	ice_phy_type_to_ethtool(netdev, &safe_ks);
>   
> +	/* Pull the value of autoneg from phy caps to ensure we allow
> +	 * toggling it on all PHYs that support it.
> +	 */
> +	if (ice_is_phy_caps_an_enabled(phy_caps)) {
> +		ethtool_link_ksettings_add_link_mode(&safe_ks, supported, Autoneg);
> +		set_bit(ETHTOOL_LINK_MODE_FEC_NONE_BIT, safe_ks.link_modes.supported);

 From Sashiko:

This isn't a bug, but should this use 
ethtool_link_ksettings_add_link_mode() instead of calling set_bit() 
directly? Using set_bit() on the link modes breaks the ethtool interface 
abstraction.

Also, does this incorrectly couple the ETHTOOL_LINK_MODE_FEC_NONE_BIT 
support with Autonegotiation support? Forward Error Correction support 
is independent of Autonegotiation.

For PHYs lacking Autonegotiation, the FEC none bit will not be added to 
safe_ks.link_modes.supported. When a user requests settings via ethtool, 
copy_ks.link_modes.advertising will likely contain the FEC none bit 
since it is unconditionally returned by ice_get_link_ksettings().

> +	}
> +
>   	/* and check against modes requested by user.
>   	 * Return an error if unsupported mode was set.
>   	 */


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C972D8856FF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 11:00:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D126410E7;
	Thu, 21 Mar 2024 10:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hd1glQGDhRVW; Thu, 21 Mar 2024 10:00:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 470CE410A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711015200;
	bh=tOM7tXc2NDno7HpmJofd4rn7nHKkivLNzQ5XvYkRuUc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yzSUJ5MO8v99kW/QGLlluCG+3sgpO+c+yaoXNUKBXc8DDBE/A+aFOMEOMZCCRhwMW
	 Jkb1fVTgmR7WnSCeGCwCfFRLxkPjYnpwQE3mfMN+LgDhkiynudQKYr5ccP/p1+bz02
	 yFtBW9JDPCk7ulExapXni/pfVKuYWReGyVOFgdfI0dVvKBoADh8C/VpC1pbOrWdOa1
	 veSVrtltUOEnpu5bFD4tjcZvdqLOREA6TdWUY0+8UD4thjqXKA5Gvi3aFOx89WXRNz
	 AIUvrjTeWIIjpqxTNwJoQLbNSGgfqstc+HxsHKWn39PJZ3Fk/ty0Lx0rLmD46Ej9Zb
	 QxxEj5XKJuluA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 470CE410A6;
	Thu, 21 Mar 2024 10:00:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7FA11BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 09:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3A1A60A58
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 09:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CBtsfmcAOis1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 09:59:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9315A608EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9315A608EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9315A608EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 09:59:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="16539439"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="16539439"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 02:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="19093998"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 02:59:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 02:59:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 02:59:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 02:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6SYsUfFBogDjPggaopgARwqk1AaGK6g9YW36Fg9ZvKYni2wklOgeXlh+2IP/jMHxuTiWyCzemh7/qsFd0l3Jv/A/f3UVDUWzBHZsYutUDTpAe6r1yH7CTQANajpKnUiOmPaytELmECJW71be9NguYN3TZD0DKaff4OTVbxP2e6HSoCkNDhMGxP7ZHnOL7R+dyfh8ZusI/tt42Frvlzi10cyN8aVL6lIS9bii+YhXMlnuQ2FVhhReQdtMdlsxpjGrPJI8StLVH6LQoyhskY0ujX9EYOb0RX5282IkmuBNLvvadPJan/R5nMhzG9Y7naFZUu2s5e3j/uTBFDLVekWUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tOM7tXc2NDno7HpmJofd4rn7nHKkivLNzQ5XvYkRuUc=;
 b=ACPbxcsSwUNU+q9GUXfBj/s/7bwIVtsG4fioL6GJDkx00244gWsjyrwfHQoUFIqaz2rihjqU2mCjEVrz62r0zCQ3r8ZJAb6CsA7iOlM0V2qV7P1fdpCE7vf1Rr/hAkdVBps6PRS19N4z+uPeiAmi4ZJqRThqoityknC8wKQsAFr7NlIMpfqfRF2nOMcivOtoxj7S/khjGe2QSUP9lcs0D7XDYig5yXf+//Hnnuqfjcsk5gIAVx/6T7Mame/Vrm6ur+WYi803MnjAbdxITMVXkULHZ+6qlgxeaKmn6cNzRDC5yZWmAZHucQxmb+QN0aFX3StWjTkMRKfQ3yuWDQUpIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.15; Thu, 21 Mar
 2024 09:59:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7409.010; Thu, 21 Mar 2024
 09:59:49 +0000
Message-ID: <6266c75a-c02a-431f-a4f2-43b51586ffb4@intel.com>
Date: Thu, 21 Mar 2024 10:59:42 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <20240319124317.3c3f16cd@kernel.org>
 <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
 <20240320202916.2f2bda73@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240320202916.2f2bda73@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB7596:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bc5f747-cbc0-4221-6d82-08dc498da510
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 46FFJll2gQtfJBU4Eo0ehMP1AIm6oED60EHgzD4XYBB2mJsCF2ocSBDTgRjlEuj4rct+YCe3FHLS3vvmwBa05vP93K0ijiJyr2TvRekPyigTF+picMqnB1tb+QGpuECk60zx+wK42oAvf3mxnFv7cELqVCmc80lREpM3ppTwTBJHrgXcnc1dnACJDtyCpVBsckC2wVdEjGwqktfZOSoeQLGsrrvgikdhvEUtAolQSk2kJ6Se675jwURVeW2ZquWwcHKF4FzZ3rNtABLEN68Zj7wiWo1xBp3c5wcn76ecEg78aJc8lRolKQ6BHEXBz6d3NdnJ8bAbUw3Zg27g6KAgIh1Bb6aAlXov/izQwdYRSsgD+Xf0oV+AeuE7ypoyLfiLrktDcS1azn/9R/AHsUWFKDrtgwBMiiGaqh7ba4Z3s0Sn8b3JoxMpMfLWfRIkxWhe+P1hCQaXTTJp8u7uzLhiYGR55zlFEeKXBaUcpavd+1qwF+XtdkZ1Wd8lJseXKuAQulO9tT1/Bqqpw8gtQcdbL+TNUdAfk3Xiw6BC4gRi6dlCH2a4mjURjjIZGWV0Lh6T+WItLtcos4yfVn0pGtZPUe3IcvU6af/PV1vMsLvtF8KCkbVGkrAU/xLjV7HtXlVmppAogvnhdeZBnJWWavyxMb+FN15f6LeiTlZ6QXbCJr8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1ZUOUVEeWZURG41d21zV2s1ODh4bnV2TjdvRm4xakpRdzdqY3cwdXl0cHp6?=
 =?utf-8?B?NE5oUFVUSHNndEoxNHlOdnJTRkVuYlRxb2t0MEZGUEd1MEFsa2lpYXF2cFNk?=
 =?utf-8?B?eWkvckN5d0tkcStmUXJuYnlGc2E4MU53WWVJRmVxY3JHOUU2U3UzcTlnMWtM?=
 =?utf-8?B?QngvRUlsQU10dENHd2hwaFlNZ216YUswdC9OMGlOdWlmM01rbnk5aEVjUmlu?=
 =?utf-8?B?N3hXZ3FqMGY2cEIyZ1VYYnZoak9SZkNLNitmQzZ1RndlNjlVbk9lRVc0QXVv?=
 =?utf-8?B?bG5OZndSb2tzckN0T3FsQ3paSURZN3RvcU1zcG02V0tDMEROeElyY1pnczlu?=
 =?utf-8?B?bEYrTmd6dEF4bmQ5UE1jQzBGSDBZcVVFRmVHa2tlT0FmeENmYTB0TkVYanJR?=
 =?utf-8?B?c0h2WWt6VDJmTkNtdWlHenNoZmdGVXpDanpOS2hMR2tBeFBZNmJKYVI1U3ZU?=
 =?utf-8?B?UFVHWUhhREM1L2pSU2I1dnFZUWNkVklTRjRwdHZna3RVbUJkV3RXQnBvb212?=
 =?utf-8?B?ZkpNSzBUWjZvWTFoM1VQVEZSZDI2N1ZINDdLa2ZGbSt3Y05RQU5GM25QaFFM?=
 =?utf-8?B?OFE4TC9BM0tGakhZa0dQRktxYVdITFpLbW5iY3I5cmI1akx0UFRXWVJVUXJU?=
 =?utf-8?B?d0c0cmJ0YlhibVMwSCt3V2VvV2xTSDdBbkRHcXJMYlFpeC9TcStNdUZPRGlq?=
 =?utf-8?B?WExZMXVieG5HdUZna0thWkNBS2U1OUQyRjZvbWVPcEVMeStjaDdNNTRFQkpi?=
 =?utf-8?B?MjJPeHBRdlJTbUg2MWExNUkrK2ZJYzd6TE5GSE9SczR2NTQ5MTNjelo0N1ZE?=
 =?utf-8?B?bXd1eC81bGQ1Q2hLTkNIaVM3TjdrODlQOFVWRXIxcElnaE5aSjNDWXdxNmR2?=
 =?utf-8?B?dDlmR2JsN1hEWU1xaDR0YlEzbFRTdUNJa3FWUFk1cjNvZ1BsVi95SDlpaGgr?=
 =?utf-8?B?c0FMQUZwRmJ0WUNkMjRyKzlKNzdWRndKbUw2YUZ1ME5lSlFsM0RDSVNNWWlx?=
 =?utf-8?B?ZTNkWHNrZXBrSXJ1ZzhISUorMzhwUGE0a0dER0wwMnZwRWg3Q0Q5cTBRK2Zk?=
 =?utf-8?B?ams2SmxLRzg2NENjRU1HU1R4K0FGbUR0elNvSEdsSVR0OXFyUStFd1BUYzc0?=
 =?utf-8?B?bU1KQjZjTGJvSUxIL1J0KzYyNitPa1V2WE1CcWZUY2szVjBYbnhKeXVFUUhF?=
 =?utf-8?B?TEZoc3FmZFFTSUdlQTRhdVlFeFA1dWJtSXdKbjFvSmdRRlBjR2FCQTA5ZWph?=
 =?utf-8?B?QjYyalp5RklRU1ExajI1VVNIdnhRNElxOFB1T3cwM2lzMW5VQlA5VFhvaExv?=
 =?utf-8?B?dCsxK1lUU0xRTktQMm94NkxVblZOckhXVkJSMGRacmdCQVdVQjBLM01nNytY?=
 =?utf-8?B?RjhiMEs5WFdtQ1pZamxhZ3J2T1JQSUtXeW5iQ2oyUG1QYUY1VTgyV2dvMHpW?=
 =?utf-8?B?YjlHY01ZQTY1Sm5rKy9SdlZldGRDUmNWMGJWMTNYS244Nkhld1UyWXU0OGQ5?=
 =?utf-8?B?L2o2dDBOUWV2dmszU2lQWitYUE5rMVdENzFhSXVQakwzcy9lVmhSWHh3b0h6?=
 =?utf-8?B?MDlkbEJsSDhhZ21sZUpacHZtV0U0V3BzWlh2eGF3Ly9hM1ZIb3dkV3pHeGdM?=
 =?utf-8?B?Sk9aZ2VTbml6bGNVcGt4SUk3d0RFdW1TcGR3L0Q0YUtCQ1VFYjZSYmRDL3dk?=
 =?utf-8?B?MjRuZ3NOT2tNRGdkbklhb2F0Mnd0WjJrYkw1ZFpZdnlDOFVNTUcwNnkwREJ4?=
 =?utf-8?B?bzk4VHdsYXhkUjJEZnNWK2hmdmZHM2VGMVZnMW5WVnJzVEJyY0tPU2FSbEYx?=
 =?utf-8?B?SUdhdmZJZHNWQXloTWxkOXFaeEY4V3h6V3A1VTltekRWRzlQanlhZGlHVCsr?=
 =?utf-8?B?QTdDSjNuR0J5SVU4KzBXMEVhYjMyaDVCZUVNc21WeTB2bWpuc0lnSTUxVlFt?=
 =?utf-8?B?ZEZJN2tPdHcxekxrTnZOR21IbFdidUJzL0d6VjFZcTU4dFdVY0p1Wlh4Q3ZD?=
 =?utf-8?B?OEllcEZuMThlcStvZGgxRnVidjhxYVJoc1lLMGY4RUovYnVDSjJEVkVxNjBU?=
 =?utf-8?B?MG1BazJkV0FpdEswTllHdHZGVXducU1qRWxuczF5ZGRKZXVDZGNyR1dJM0l3?=
 =?utf-8?B?RTB1MXRXa1JvUTVVaG0zaFo4eXFvWGpxc2ZSNm44TTFsdzAyY3p2NmppYUYy?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bc5f747-cbc0-4221-6d82-08dc498da510
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2024 09:59:49.0389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C6p4Nc5DFy1Jw57ilFCNwe+8HhtKW+UUzGEP1M/TmEZgUaGDDFbArqHvb/s8seB923nfS/b9cHYxwgnwFUPlLynVuJKSYgmmPtx4XLkFnZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711015197; x=1742551197;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G0DqkXk8APd69H86G7oAFna7pJyB2jgkKr9ASX3KTPs=;
 b=CdrhS+ngbvo/LLr1f+g3ujCk5aYKSUcN9jKE3W+lfKHIaAojad5k2xop
 IONJjI7XaTeBktyCIS9tNEgoCZIu8FbLOfTkOQHOVotfnx34JENni/AKE
 31KAsfbvGloQ3xNSVgJH75ydM0NzEP9vNf4wdOdcldI/Cj19+3dT3ayDJ
 mIlUpOR3KcN4kPjPjPJgPgWTP6MiXDTXnRONU83s2myEvQHB7U5E+h42q
 u8AyRI/L1ufxpWpHHCiXc3SHQwyocyWdtPWAXvOsSuUMRAsUgRteiLVRP
 lWYLJs6QDCXMVjlVPauOL5kydVnPrPXHvKVY27UmBnTJ5sPdwpIEVmbAh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CdrhS+ng
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@ACULAB.COM>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/21/24 04:29, Jakub Kicinski wrote:
> On Wed, 20 Mar 2024 08:01:49 +0300 Dan Carpenter wrote:
>>> This is just trading one kind of bug for another, and the __free()
>>> magic is at a cost of readability.

Apologies for not catching it during review.
It's good that we have started small, with just a few functions.

>>>
>>> I think we should ban the use of __free() in all of networking,
>>> until / unless it cleanly handles the NULL init case.

Current API is indeed asking for bugs, especially when combined with RCT
and early error checking rules. Perhaps that's why there is double
underscore prefix ;)

Simplest solution would be to add a macro wrapper, especially that there
are only a few deallocation methods.

in cleanup.h:
+#define auto_kfree __free(kfree) = NULL

and similar macros for auto vfree(), etc.

then in the drivers:
-struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL,
				  *othercaps __free(kfree) = NULL;
+struct ice_aqc_get_phy_caps_data *pcaps auto_kfree,
				  *othercaps auto_kfree;

With that only developers introducing new allocators/wrappers would be
using bare __free(), the rest of us will be free to focus on other
things.
One could argue (+CC David Laight) that additional zero-init would not
be wiped out by compiler, but that is a price I would happily pay in
almost all cases.

I have no idea if someone already proposed exactly that, as this is
almost obvious solution.

>>
>> Free handles the NULL init case, it doesn't handle the uninitialized
>> case.  I had previously argued that checkpatch should complain about
>> every __free() pointer if the declaration doesn't have an assignment.
>>
>> The = NULL assignment is unnecessary if the pointer is assigned to
>> something else before the first return, so this might cause "unused
>> assignment" warnings?  I don't know if there are any tools which
>> complain about that in that situation.  I think probably we should just
>> make that an exception and do the checkpatch thing because it's such a
>> simple rule to implement.
> 
> What I was trying to say is that the __free() thing is supposed to
> prevent bugs, and it's not. Even if it was easy to write the matcher
> rule, if __free() needs a rule to double check its use - it's failing
> at making it easier to write correct code.
> 
> In any case. This is a patch for Intel wired, I'll let Intel folks
> decide.


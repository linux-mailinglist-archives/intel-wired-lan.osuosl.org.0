Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 029DB9C1FEE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 16:02:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2273D42AAF;
	Fri,  8 Nov 2024 15:02:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jyXb8mQzDnjQ; Fri,  8 Nov 2024 15:02:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5768C406F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731078173;
	bh=QDhlDW+jtKIJimhkEIRoJ8oCvoYm7AjPx3GvQjos21M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tT1qpvEvOaSUOy1813U1ICLh3DUL1A8q65jqD9Pu+nNIrKcqGB5QDbYiOjPN6n8kw
	 goEHMsDjgxddKS8cx/BdP4uurMzH5H9js3JCYR4BVIcjlV4oLOB+bG0NJs0KkhhkNN
	 qFSHvGg8LzrdMezOkaaH/lFNx+QLYNC9NLEHNWJ8GWlQrus6CqbdXh/6mwXWmZunco
	 M+rhk4wbJTTNejMB2sPuzDSQ+q9q6a/jGT8Ah7MwItfGjV6WV1iUJffZP1HmfCfhG+
	 eqPlpIV3vMl2kOteSm08F82iZsirFD6CySLzDQ6B7zdW1DVYuKG8fKnPeqEmFIvIZK
	 k42O+rKPuX4PA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5768C406F5;
	Fri,  8 Nov 2024 15:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DC1B1D8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 15:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8A7443158
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 15:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RkNlKwxcOPUE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 15:02:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7B50540148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B50540148
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B50540148
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 15:02:49 +0000 (UTC)
X-CSE-ConnectionGUID: r8QK4+HjRpOOrolkC2wU9g==
X-CSE-MsgGUID: OKqC2hQCStW3BGRRpCbMew==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="56359321"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="56359321"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 07:02:48 -0800
X-CSE-ConnectionGUID: gQNbXTy6TUCfsa2gszfmmg==
X-CSE-MsgGUID: qWIh5YBoTkCMPjvacRAl7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85212125"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 07:02:48 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 07:02:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 07:02:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 07:02:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=viF8l82B/J0LCy7gvhsT5VSDbJL5u/5vKU4gTbxk5bhrMrHlKv+k6Dx7o+iGA/hnqsL9f7cuj9raIlcrhCmDAL09bB6M7W+APk18f0UUV59rTLfAW7NeScHTBQMLMTwCv1T9OXJH/Ol/vjr519o8ScTjjTDka1oLmbtjCRoadQQX4lBpKnlv8uUOuhQt1870raUMF+SVsOpSAiOZJN2INV+pAAAuzJc0v3pRHWam9Jpjdtt/oWLdeikQfGhKaIlCEVA9eTxLgw38TKX3I9YaL9LhBBQX4+/RHK6UyIcBgk2ejGaqJRoR4ZjSmTETlMeUzjTqizJ2CRQ91bNByvSliw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QDhlDW+jtKIJimhkEIRoJ8oCvoYm7AjPx3GvQjos21M=;
 b=fw8XK05fVpOD4Nz64hoNsv4IgQQsbEp3iVqi4YlFsvV+3vZh4y9f6nBMt8GvnTcFx7PAbCFwoHgwtzc3MIsY0hGnTlprUSQKBzpxazoi+3CivGcVOIhytERK18j8uzw2hmE8Yk2zRJ/prsY651PreXRKd2suFGRAuoVdUKY3cQtYeWARUVXkMiajo3Pxpe/1ylmQE3mT/pePBx4psvpmh4HcvCPRF7aEdza9CLTQACbN7H8mQ+xoCs2OzuMECJBof82b5JFeUrEUVsdwdufSQ+01GqfzqumSiPY+7OgXbRjprYubwv4C/het7Ui38HAbZjOwGFksEqqSkWtQ4ijAnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by BY1PR11MB8008.namprd11.prod.outlook.com (2603:10b6:a03:534::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21; Fri, 8 Nov
 2024 15:02:44 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 15:02:44 +0000
Message-ID: <4cdd7494-3a14-4872-bf42-0e6e07944738@intel.com>
Date: Fri, 8 Nov 2024 16:02:37 +0100
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Rafal Romanowski
 <rafal.romanowski@intel.com>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Wander Lairson Costa
 <wander@redhat.com>, <tglx@linutronix.de>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Clark Williams <clrkwllms@kernel.org>, Steven Rostedt
 <rostedt@goodmis.org>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open
 list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>, "Pepiak, Leszek" <leszek.pepiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
 <20241108122829.Dsax0PwL@linutronix.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241108122829.Dsax0PwL@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0192.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8d::14) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|BY1PR11MB8008:EE_
X-MS-Office365-Filtering-Correlation-Id: a37f7179-b88b-4d41-08e5-08dd00066649
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clZHVEZFQk8xMFAwY29sU2NuSjM3SGRTLzhnM2EyVVpBRGt0VW55bjVFa3M1?=
 =?utf-8?B?ZFA4V2paN1hENjZueTl0Qkx1OHRQTnAycnFnemNudkxFK1Y3bXFranlCWVlS?=
 =?utf-8?B?aEp0UlBoUHdMTDU2QzhSYU1GcTJoaE44RjJ6cytCL2k5bHZVSkcyL1YxWDhy?=
 =?utf-8?B?T1pyLzJLYTA2Z3c2QVRobGpLU2o3ckprdjlFRXJnTEo0VWNTZWRaQnpCU0Jo?=
 =?utf-8?B?aXh1NmVQOG9mcXEzYUxrMGMyaGRRQnFZSlFpS0x2TUVCelBOdmZ4M3JKTnRD?=
 =?utf-8?B?Tm9mTmdtTjRTRmVBaVUrcVJBOTF6ZFpwZUxibXY2dkJkY2J0dlpiT1BSM2pQ?=
 =?utf-8?B?aDFxdkEvNCtiSEhmZU5aaFNaK0psRkcwN1p5UUxDT3hIK09qWHRmcVRVcndZ?=
 =?utf-8?B?MFY4VWVJVDlqejFRVVVKYVVWaHFYZzIyQWFkbGRpeVdBSFNWU0MwSlo3dktX?=
 =?utf-8?B?UUNodkhrZWV0M3dzYTNRUVhoRnJXaDhpK1QvZzB2UEFOMzdmalhCNmg5UWtD?=
 =?utf-8?B?N0dCQmNkaXcrZjhuay91MVdnVnhkYm9pNGlCa1UrU3hTRjRjdXNzc1BHdE8x?=
 =?utf-8?B?Yngzclc0c0hoaGFrTkpjS0hqTFhrUEsvTkZiVUR6bXQrNTJ0dXI5Vmw0Ulp6?=
 =?utf-8?B?ZDhDWFJnY0FITXV6Q0RRWjBpYldwRHRyWUNIQ0ErTEkwYTZWVTM3dlhBQXFx?=
 =?utf-8?B?MVZ3U2JLRDBSQUlZWCtDaW1SVk02NU9XdW4wOWZSTkFaSDFPcktiaDlWOHpV?=
 =?utf-8?B?QTRuaVBKR1dyeGVKcFdxeW5PZU5Qci84SUhpb1E1TFg4eXdpbllyazNKVVNV?=
 =?utf-8?B?eThEZGFLdnpNOGp4ZnpEbEVCemJHMnJsUE5XRXd4L05QZHJHZG54ZC9YRjZG?=
 =?utf-8?B?aURJU3ZSU0tSdGVtcjNEeUx1QUIveU1jRzQ0Q1ZPSnA3UTBONkdNdFZBeEp4?=
 =?utf-8?B?UFpBMEtaUGRxWERueG82NThydEphK2ZBZTU4a0J4WTBtMk1WWVpQMXVGSUdP?=
 =?utf-8?B?VkdZMkJ4blppR2MrWE1uTDM1UFpSMm1YZlc4SHJLVUFGWk9rcEtrc2lkeENU?=
 =?utf-8?B?dHZtU1J4dXpwS3pYZ1c0cGhPZUVkRjBCbGN3OWdhdXNPVUs5aGIyZFdZanlD?=
 =?utf-8?B?MEg5SEVnanpuc2lOMDZ0TEhjTGMwRkFkY1BOSUxJV1JYckJoQ2ZNbVdkcFk5?=
 =?utf-8?B?V1NuNnIxck9qdENlZXYwaGpWQm1CSmJWRE43RGZlT1dZaTc1VDN2SFRsRlk5?=
 =?utf-8?B?cjVsdllFWjVUVFd1Q0R5WGJOU0pxV2lIaGxON2NGZFhHVFJFK0REWFNweTJJ?=
 =?utf-8?B?R2dEN0xkK29FWHhEYlM4eEdDUWJ0ZU1EcCtIbkZBSFdIWDBidE8zekY1cHZP?=
 =?utf-8?B?UUVETE50NE8ySVF0SXVNMWFNcGFIOFdDWUNtcmpTZjBkSTBlTTltNmFadjhy?=
 =?utf-8?B?Ty8xelVFYXlqNGpSMlR2WTgyTjZGdndReXlyemg0Z2g3YlpWQXRWbFdBMDk5?=
 =?utf-8?B?Y1JhUCs0Nm5SeTluUXE3MlZ5QmFkWkJFdWJudFRtSEVkZlVCei9xdEphZXBN?=
 =?utf-8?B?cGdxck9uQy9Fb1FobktjTGJFS1ZWeFBuS2JpQVFia1ZLT2hjcTR3TGNWR3VI?=
 =?utf-8?B?VXVlOUcwWC95ZFQ3aGRZeDYvMENFQXNmYkVFczVWVjlxR0pjcHBOZjFrMU03?=
 =?utf-8?B?dHI5bjYvbVMrTHM1OFEyMmYrZnB2dkE5NG5jK2krYmMzYm9MU2FDbjJMRDUv?=
 =?utf-8?Q?SgFc/ZUSDTP46eLOqxVolI3sS7eA5HcB4YP36f/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3EvTWZQSlBkZXdweEk3WHJIelZybVdlYisvVUNRaGpkckErS2Mwc3lWTWpr?=
 =?utf-8?B?NXYrUDAwQWFvc3hwOWlybmlxc0dHNmtFcVFxRDcrZUV4NDkya1NTT0R6Qjlu?=
 =?utf-8?B?b0doM3p2UEpnekErSUFhRHJYMFM4eU5HREFBdXBlakJIcG5aWjNOMlNJUnNF?=
 =?utf-8?B?S1pJbE5GMllCYnNTbDdHR0pLc2ZWei9wSkFRR0JsS1JtWHpZdVlqMXluMTI5?=
 =?utf-8?B?NC9sWkpBMzh3NGdGNVdHWW90cFhMenJ0NmEybWkramVUNTdyM1h1aHc4YnpK?=
 =?utf-8?B?NGYxdGswbHFEM0w0VWwxdjVoT1d1TzNadUJNeWVncWo4SEE3OXFBdnhNS3pF?=
 =?utf-8?B?NW1la2c2MzVUVUgzdElyMHlpVHcwWG1VY3hyWXdkUEJmemxZOFpGRlk5em1x?=
 =?utf-8?B?UnU1TG5LcWJXNGV5UHhDaVkrNGE4VTVGK3dUNEQzR01xT0RhVWlMMkppUkpk?=
 =?utf-8?B?RDMvNjhhR0tGSkNycnFNelRCTGhORjd3M0JRYXdjSjNXQXplaC91NWlKYmor?=
 =?utf-8?B?eWZ6d0Z4QmQ5aHNUek5jQ2pqYm0yQkgxRjE0S0oxOXEyMEcxL3VIS3RpVnpK?=
 =?utf-8?B?aWZlb0YvRkxaLzRhalJpNUZlaThsU0lYUU44ZnBoK29PWFlKdTUrSG8rQW40?=
 =?utf-8?B?bWhwZ2tMdVZpeThOWHpEQkZXM1pKZUpGVEMzUTVHdkFBc1FSWUJ1dGRvVjJl?=
 =?utf-8?B?NDJiSWRrTTg5U2NFK2g2UE9ZMVN1dHVpZFI1KzlENFNLUHVsbTJucm4rVlNW?=
 =?utf-8?B?cVF6Slk3UCtEUzBhWGk5YUJaWGpneDhSWU5mS1o2SzVPSk9WN01SMlF0eUc1?=
 =?utf-8?B?eWtkVWhMUmk2MVZBTkd2OWpiMlRYeURZMCt6UU9CWGx2bTRDd2pGMnNiUWN3?=
 =?utf-8?B?M0hKdFJPVjZ6bloxaG50RmNwaUthbWdCNlJoLy9nQ1NHOUk2ZEVjc3k3bTBH?=
 =?utf-8?B?SlFLcFlnWWpxUVVQdFZoR2ErOHpBdHIrMzY5dTFEVytqaEV6N2V2c2JOZUQ0?=
 =?utf-8?B?Ty8wSVplRjVVSUxtcEJiZGxsczRMemtvbXZIbCtmYjd0enU5djYwZm5WZml5?=
 =?utf-8?B?U09sd3drdlEzZnFyNkhpSXF1SGRqTlRPRzIxRFo0bmVGeGJoOXFqSDdTNW96?=
 =?utf-8?B?T3BTWko3eU9FVlBxMEVScG9WeTR5b2RiQlhCRzVWQThpVUtxejdmbm4vT1A4?=
 =?utf-8?B?UHI1Ry9Ocjg3NjkrQnlhaER5SGhmWGVYUTNQMjcwdzh6emhRNEpxeExhZGdF?=
 =?utf-8?B?WWlLWmhDQ3ljeTlmTWhEaEtmWlJRYTBqRk5scEJvbGRnbG14cUNvZnVsL29H?=
 =?utf-8?B?ejNoYy9ieXBKZGFucTF6NWMxUzFHUVZPZGxiSXhzb0xrMS9EZ1FaWHRnM29T?=
 =?utf-8?B?eUFlc0prL0xDRWhtSi85aWp3dDZDaU9qcDRXdlVhQk1MUFRxVVAvTTd2Wmd6?=
 =?utf-8?B?S1pkclF5bXcxOVNrVmdzTjhvbStXdnVsaXdUT20yWmlFSkJjaFpSZTJnMVhL?=
 =?utf-8?B?NFpSa1dGTFkzSkNaaUV2dVZ6SVdOSnY2MDZpZ2VNWC9yY3VrVE1ubXJqa3lv?=
 =?utf-8?B?aGlOY1JrRlVOVUF2NEpWc0FwR1k2eFdVa3lORkJxa0lQaVI3LzUwSnZ2TnAw?=
 =?utf-8?B?MFZXNEJ2ZWl3RHR6dnlDK2JPeHNrRm1JaHJ2T0Q1WGE2RUJKODFobVJUL1dr?=
 =?utf-8?B?a1phV1JHTkZ3eitkem1qeHRLc0FHOWZVcm1LSHREeVFqODZFRmtLRkZhVDRN?=
 =?utf-8?B?Z2VPVk1OUXZhSWdjMlhSQ2ZJVTZsYUE3VXZTa2tEMTJPQTlCTG9WdmZFaHFL?=
 =?utf-8?B?OHJrZmVKb0hxV0dDa1RzbG5mRm03RWdKVGhLaGJyWEt3aUg5ajIxMGRvd3Zw?=
 =?utf-8?B?T3d3aU1FbFFTcW5yQmhNejBIL28ycVZTSElNRldmMjNTaW5hWElYbDRnTHgw?=
 =?utf-8?B?QmJFR3hmd3I3dUZYKzRZcUxzVFI5OUoxcjIrbGU3Rm9hV3Z4OXBDVU1kQW9G?=
 =?utf-8?B?RDNtMGxMSUFKWmsycnNDUFArZmFERTB0Y1VndlhTN3dGeUtETVp2WUVGK3VL?=
 =?utf-8?B?aVF5UURiYWRBQ1hDZXRZaVhGQTJNY29BSVNvOTB4WmRENXFxYjRzMHVWbDZO?=
 =?utf-8?B?N21ZajVCTHFYYnZzcmRGSjRIa2VUZWphak5pYmIxRWdCbFVwOCtoMHhXejNZ?=
 =?utf-8?Q?uQPF8Zw7wYS22TFwZwNb76Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a37f7179-b88b-4d41-08e5-08dd00066649
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 15:02:44.5830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KaMb2U9rR1XF8XO8JUb52b7LJ1u/9WP0MeQtZrEw3AEFuP3BhgVrNOI5vZFxzzd42CNbdw01820bEala9yFx8pfwVlat1JglUUMFa+kSirg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8008
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731078169; x=1762614169;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E8VFDrJtLKH44jn4YuvVivc4Y650P+BiUVN6JcFlGjI=;
 b=GfYvTvujPj0Fz+BWWAYrRMTjCoO5BOcIgWM7dcilTp+NZ/QrbykWi0IV
 3TWiAcHLs0h3mvImEQB64ZpFNXbcNeFmfxDcny/xhV9kWxbcip4diZily
 1NBQVwo6KEUn9ww+dINJG/2NmlbcjJrUaAP5rVuBffLSAZGqdbOWKiA9i
 0YvGrDLV9H84iNXx3w7zRc6VH+sD3ccDaOnJO7x1MD4p5yUoltAV0kOcP
 thCS4xntBzVoXg4aDAbXPKn+JhoigwzY7XMYSc2Gty9HjRyCte/M6tJPk
 OVHnoiegZXlBbeApagn2uEd+gfijyq25qkcmcfzW5gF+QynP2QNo3NjYs
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GfYvTvuj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On 11/8/24 13:28, Sebastian Andrzej Siewior wrote:
> On 2024-11-08 13:20:28 [+0100], Przemek Kitszel wrote:
>> I don't like to slow things down, but it would be great to have a Link:
>> to the report, and the (minified) splat attached.
> 
> I don't have a splat, I just reviewed the original patch. Please do
> delay this.
> 
> Sebastian

Rafal,
you have provided your Tested-by tag for the original (not reverted)
patch, could you please re-test it on RT kernel?

Przemek

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80223AE38D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 10:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81A3481FEE;
	Mon, 23 Jun 2025 08:46:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0rMMRkfYOfpy; Mon, 23 Jun 2025 08:46:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B40281F65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750668377;
	bh=HErTDXWAIJIf+Uyp8ubovMqvDwmOsQsrYeEerVe0HtU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jWDFtzP8DesNZYP4aJpm4s8V/V80o/ND5t/amCEfeVffeYAzTUC9hWewby/qLEKeP
	 PJryNRjO4RsBJXlV202IGltyexYLKVYfcz+2ppiGqw6Y+EnlIIAhqLCITSqpZC+7F+
	 Eh5eAwjzqtxHmJFUH/VtIrKeoh1c1KhFT+QJiW9QAZHmvfhc0LOkEwM46UmKG8GTl1
	 pnnRD1yr6bwjI/dJm205NeimXYHWRtQdrz54alzZ3FScOlU0JbvepEgZncYTlsXHSv
	 Kv2BAuNK8FSWZ5g2GPTS7ihfuiSmVPf6Tt6V0VFa2iEXu1go/buWN6b6PZ8LTjxiDq
	 Zuf8+9exhBKoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B40281F65;
	Mon, 23 Jun 2025 08:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DA96E443
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C080460A3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S4iQqbQbSId0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 08:46:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E0919608CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0919608CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0919608CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 08:46:14 +0000 (UTC)
X-CSE-ConnectionGUID: EyD+AD/DRLSm5A3NBfqM5A==
X-CSE-MsgGUID: 9h6mvlR/S4y5e9HvvmCVmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="40472367"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="40472367"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:46:12 -0700
X-CSE-ConnectionGUID: EDtGheFFQQ6SKvHFhuzOuA==
X-CSE-MsgGUID: 1NsVrajeROGPZ9ZZJ1M1Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="175145454"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:46:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 01:46:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 01:46:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 01:46:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u7GrVj0+cds0g92VJb6tD2eJMP9t2t0x206h4ngt0dbHLtJ3g0NwnD6lXd0oV6UBdvbY1kwtcvIL/KnCSgpmxpNrssXGXwoBHt90BtlK9U0XqpKdusX+5IAccYNqe0uCgrC2HWOyIcuzkG5fDYoBnsKTi3s6GP5mqkcwrmOEVyAjPHB3FchO3+lTRr7ylPNiPPHbGOmEn/0HR5N/3i98Jb1D6Howk0nPQJmKz7X7aMV29bIlWGZGOBoDcia4HfP7dmTR1IXShtiUXduepIDZP1Q6JTm0xAEoL/OHB5kw8qnGXqVfBHdmMvFzqzgQVCcRxj4nKJYie4hAxQvAUN6z9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HErTDXWAIJIf+Uyp8ubovMqvDwmOsQsrYeEerVe0HtU=;
 b=HBO+Pmk7mw74t2UTq6WgUGqo6r/t6v2nsodPtBI/Wyo751RHaNmipvgkKUkj4D/pr6RTMnsKvToyIZa8muAmuBnF0oBkQuzjOnaH8uw0WurVhGtSeyGBfJxtSXxSDs7pd9Zww7sSu1Tfd1G0LBzMqNShkMPQy9/jv+DH7WTy1ZvWpl3E5mlgNmj+I2yhR+q1BQ950hGcF/lGS/j2j3wieKVfo4/7f1Xg0e+D8KQwflVM+Rm3RKPvKg4Cr3j5CBQF2cOsAHBcGf4/0XqwHzA8pv4Ga74ezJ7bq1NcTcaETLewKEkFruzGyGUI/KL/ODok23VDBoK1hqE5hsebBlmgUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.27; Mon, 23 Jun
 2025 08:45:40 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 08:45:40 +0000
Message-ID: <3bf6df3b-affe-4f10-8b05-29f3393d19e0@intel.com>
Date: Mon, 23 Jun 2025 10:45:34 +0200
User-Agent: Mozilla Thunderbird
To: chuguangqing <chuguangqing@inspur.com>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
References: <9e82a899-7536-49a6-a4c5-c54fa96d8f50@redhat.com>
 <20250619124921.44677-1-chuguangqing@inspur.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250619124921.44677-1-chuguangqing@inspur.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZP191CA0002.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB5948:EE_
X-MS-Office365-Filtering-Correlation-Id: 9944a149-50b6-4c81-4eb5-08ddb23254ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXoxNk50dzFzOGF2dGNrZzVmMmlDd25Lc2ZJdkNQREFQdlBqaDZSblE3MEky?=
 =?utf-8?B?bWdTUjFQbFBXY05ZcDkwOTBvSzdpMURWWjcyWURLVVFSeS9YRzdRdkRBL1Qy?=
 =?utf-8?B?elJHSjNMQVNMMGZVMU4yOWFZdjZzclJkNVRTMDlRSDFuVUlEbW50SklqQTJn?=
 =?utf-8?B?b245dFBCakJzNmxIamZNb3ZnWXRlQXlGYWF3b29iSkp0a0ZxRkJyaDdaNzU1?=
 =?utf-8?B?K3NpZnEvakxmTVBuV1RMRkN3bFYwRG1QQUJzYjg1UFJMZVl5Z0puQkwrUTBT?=
 =?utf-8?B?SEp3b3dTVjhxbEd5YjkzNFI5QVM4NjhFTWN5OVVaamZGbnZDU0dEUS9GRHdv?=
 =?utf-8?B?K1o0cGRKMHF1S3MraHVVTUoxTVh3WEIrbWc3VDVBN3B1T2JOWmFEVlRzS2FN?=
 =?utf-8?B?Q2hqRzRZWDZFV3V6MXhhU0hodGF5bnVDZnV2NjNOUktLSVF6dURQTVVwdkVI?=
 =?utf-8?B?Z1djaE9WazBzMjR0NkhTRzFZY1hLMFhBbkI3QUxSeDJCbkdCb0JndXZxVmJS?=
 =?utf-8?B?eWRqbkMwcDA3WDBwVGJkRkFJbFEveks2ZFdhS1pzRVZ2MUkvZmNFYkhlRWJT?=
 =?utf-8?B?cytyOWN4ZFNQTjY3MkZSUWJYYXFyNUxRVUF5ZmZYY2hjUzFaZzFLeW5WcjZs?=
 =?utf-8?B?ZVAwc2hqMEZzc2xzcW5HSkRnVms4Snk0RkFtTHREcGMvTmpyL3hpNy91eTk3?=
 =?utf-8?B?R3oxTmdndkwwRmVlVy8vdzRoeExZTFRYV3hKZHpIcGduUWM1dWxxWUdtWEE2?=
 =?utf-8?B?LzBhVWJGZ3h2clUrQ0R1Q1ZWYzcvc2pvZ1VwSG9rc09oTHlhM0JTZkVuYkg4?=
 =?utf-8?B?Z3RjY3phaHd6aWZVSTBlWUVDODM5UER2VW5JcVVxeWpyWG54ZjQ2dE5GUW5o?=
 =?utf-8?B?a0FEU043VkpNVEJ4allUbTQyTzYycmg2V0pnc2tIblAzR01QdUpPSkIrRnlp?=
 =?utf-8?B?b1JEL1ZRRSt2YU1xeFJKWFMvM1lUMUVIRHJ2QzlXRHkwTDNQVHZZVVluWFVj?=
 =?utf-8?B?ZnBPdCt0am1QVUJ4RmpyYUNHazRzb1Zud0xoZEpwQThnYnRBS0Jkb1RZYWJZ?=
 =?utf-8?B?Rk43b3FVLzl5MVBoc210Y0xhUWxDWVJyUEtSK2R6QkpyK1k2VWh3UWZHL3Rv?=
 =?utf-8?B?NkNQNlhpSXVmcEc4WER2L1NVMzk2aTNocFltUm5nNTVSZzI4YzRXNkgvemdh?=
 =?utf-8?B?YWUvZzBpRkpuNmFmN0Y4dkpSNkNMSW1qTks1N2VtSkx1NmRmR3I3RHRaK0Jo?=
 =?utf-8?B?Ulg0ak1CYTk3RGxXNjFsYUZkOFpEeGZVSEppa1pSdkNIV3hiWCtSZk9UY2E1?=
 =?utf-8?B?RUlNbkszSGpTYWNscXIvTWNsbGZxYVd5aGRhREdNOFl2UTVmdzI0eFViaVNZ?=
 =?utf-8?B?SjJDaTJzeCtGSFJ4Q053NjNsTnhWRXBNQlN6Ukw2OGZlaFJraXF6TnVJRnZZ?=
 =?utf-8?B?SkdlYTYyUmpmWUNYQ2JMdjF1NG9BT2FYRzdmaUFrNU1xQVJrelVncHZybFZK?=
 =?utf-8?B?Y1YrVUpSTUVXNVQ1RHlVNm5RMnk4ODZNM3V1Tks5QVZqbUFoMStURkxEMVlT?=
 =?utf-8?B?ZTczVlU3eHh1WStxdDBuZ3grcmg4b3F5dlE3R0kxOFNTdExUcUFRQVhIa0Ji?=
 =?utf-8?B?VTFDZHlKNVFDVHdPci8xb20wazJnc0FucS9xWmdkRkpPdGdkOGpmQnBXMEhx?=
 =?utf-8?B?dWpISHAyelRqTzE5TkVxTHE3K0w0SGc0cjRmS00yZWgweDlVemh0ckdiRDFC?=
 =?utf-8?B?czB3SG0rY0cxUU9vWEZKNUxQaWJaWHVVTjhoSVdlcFlsdGt6RXVtMlFaQ1hB?=
 =?utf-8?Q?5TUGeQQf9Tn87WRw1KuaD64VeMgZlNtwmkCXk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmhncWpoWVZ3cU9yWmRjdE9hZE14eFYwWHo5TmNURDJaL2o4eDBKeGhsNTlW?=
 =?utf-8?B?V0VBdHJVQVY0VDVpeUQ3SVJwVTNZb2dkRGtGZnZ6N1dzalAzczFsd3RrNjlG?=
 =?utf-8?B?dUEyb2FXL2xPMDdnU3pkNmQveU9nSEtacEZ6REhWMEh1b0dOQnBma1lvQWJQ?=
 =?utf-8?B?bXRhTVB2ME5DNDdTYVFYUDVtdjNDbENOR25pOEt1V1lnUERsQmtYcVJkVjVp?=
 =?utf-8?B?NktEcE5yNlJJQ0V2bldLalZZaFdURWdFMTNNMU01RHdxZklzNExNSUgwajhJ?=
 =?utf-8?B?TUNEYkt2blBNNUNSYXArMUcrWVorYjZ3YkFRT08xWHJsSnl4cFJmRlpFck16?=
 =?utf-8?B?UXFxQW9tNng5Uyt4N2pWTEtYMU9pNXU0eTFXZjNvcklWMWNscmZua2hLSElR?=
 =?utf-8?B?K1JZdS9GQnlJd1lCQzBTQnlMbTJwWUpaVVJaRGs4UEV5c3k3Q3BsVitQRGR2?=
 =?utf-8?B?aDdJUjM2ckJ1RHIrNlZndWFOUGp3enFPWU5jTVZmY0dUK2hCN2RlV0hLVXdH?=
 =?utf-8?B?MTN3S1gvcC9tM1NNKzRPU3RuSE4wcWxtbjMzVGF1V3BqNXQ1WkRoNXlFZ3J4?=
 =?utf-8?B?aGs0bTU5MnpRY1dnRzhBOFV1ZWlXdFVFY2xQaHNabUtlTFhpRFpEcmNxMXc5?=
 =?utf-8?B?SWZ0Z203MTN5UEppMmxtYTNBY3F2T3lSalRna0lKdXYxZFBZZVBCajU0V0JG?=
 =?utf-8?B?MHM1RGhqVzljUXVVenY3VmdiRnVQc3RYSG9GT1NqVUx3cWE5Rk96dnRGNmxU?=
 =?utf-8?B?WDdXVVg3SkFZa0duVC9OSVhWRTN2U3o0bDF6aE94REZVaERjUm5oRFhGTEZm?=
 =?utf-8?B?bUxHVVpITUcySWxrY29qR3JSM0l6aDhyZUExR3daOEVZa0hTQThldGx4Skts?=
 =?utf-8?B?TFJOb3M2SnBLU2JJZEtIQzhXMzdIT3h3Wlp1SUptUkhScDV1Qm11NGxtc2N3?=
 =?utf-8?B?OWM5ZExqQ2hyTEM0c2V4M0Y1aWEyZ2ZiNlBna0E0TVY5eFB2M1pPbklGdngv?=
 =?utf-8?B?bTJ4bWZmRWhDU3ByMnpVVVZNdEZ6bFpQVTdjL2lITUlVdjZibVBCRHFhck1y?=
 =?utf-8?B?RDRrUVZWeSsyaDZabVJkRkRub29EMEdSQkpuajVpUC9kUGZmTC9wdHZjdkdj?=
 =?utf-8?B?SmlVQW9JdXpyTmJsL2hLZ2RjbmRzZzJFa1lac3J4YlB4eVdnZks3WG1VcW93?=
 =?utf-8?B?dU81L1FxSHg0dlYzUFJFYUNuVGdXa09jaW8vK24rLzFBSU84b1lTUFVWNFFl?=
 =?utf-8?B?Yy9wbGJ2Mlp1VHRYOEQxRHBpNkxrSTU3aExYR2VWUnZCZzR4TlFac0szdVFM?=
 =?utf-8?B?VXlITnpPbUhpc0FDd1F1anZIWDFkSWdPVlFlREE5eHNRSDMvUE9sc3hwM1hF?=
 =?utf-8?B?d212dDd4dTR4Q0hNUSt4amp3blF1RXo0TEJoTmR4TUhqZnBrUUwreTVVVXNz?=
 =?utf-8?B?eEw5cWpUTFh2djNLd2pzbVFSYndVTDBlSzU0SWFqVlR2aTdLRVdMT3dDay9N?=
 =?utf-8?B?OVVDTlhTL1plMUtWWTJkemw2bDhBNTZKOHJ2TXFwbmtyTHFPNWhQZFNuYmo1?=
 =?utf-8?B?MnpyOFFHckJ3ZDBsL0s2UFp5NHJBdEFVUllKa0VZUWhpeUduVFFwN0JLOWc5?=
 =?utf-8?B?a0lQWmVWVEcvd25MRTJQVWRJTlp1dUJIcUIyNUV4cU9mdDA3MUl1dVhVMC9O?=
 =?utf-8?B?TDJzeHNtRUx1cnZ2Tk8yYzJ4OVBrb2tweGxzYWs3ZDNadzNrajBMVmhZSUpD?=
 =?utf-8?B?N1BzU1dLRVUydnVvZlA1Y3EvUHZscnZCV2Q4N0JkZnIzaTNQWTcwNGs2OWhX?=
 =?utf-8?B?RmtOejJFMkNNYjJOejlRaEJBL3JoVnRlVithSjVTUjhnT2cyYjFyS1c3RERZ?=
 =?utf-8?B?c2lubjIyb1RRb2Y3SjdZZnI1ZVBJYVlTUjFNNnB6Q0c1N05RekdVcmlsT0Fo?=
 =?utf-8?B?YXJjQkNiOGViV3VyR0VjdjBYWlZtcURnWnlkYm1FRHExT1FEUzd1ekd5enU1?=
 =?utf-8?B?b09VQWhZdkptVWhURDJYU3p0L1kzSXUxaUVmdWpHaVpnUjNjVzFEcmFDdTBK?=
 =?utf-8?B?NzVLR1BvaUtkeCtuQnpSaFdHYWRIUXJiRlVFd2JnRlZ0djJLVEFYQW8wYmhR?=
 =?utf-8?B?SHdLeU52VDVNNnJ2dVZjWTBwaWNJZXhKVkdYcHRYbjFFNlN2OXN2NnBNdFM0?=
 =?utf-8?Q?WLmtlcymrrIZHVmkz9PTHJU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9944a149-50b6-4c81-4eb5-08ddb23254ea
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 08:45:40.1074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TSyLbG6FTy/AEF9/52xd9ABZZpCNPCXFpPRRzcFuEC3MDK7+VIU0kEqmEx8UNRzfbBcbDCZ3HrKSTh8opm/wXUASgru/rI8qRFME24lZ6SI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750668375; x=1782204375;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dNfJMQd29nA/5rhAY5rS30Zx5Y/fd0M7a3RCTgRi7x0=;
 b=Uo5LlaecomKq9kKgRj6u/bUdX+E/kO67Kr3chFrYBVKzSMWm5uBrApI9
 nJQVy04hLBzBo+G3it/OWdb7sg08fwCqj+OoN4i+QQqRtfq9QOVyY2xwj
 0B+ij83CVULV3rjHr/Boj0TxWym/7a8aBAVTyY4Ca0SM5tNd183pgPuOi
 FDdvxK96j+/oGV1fafUMSqzwwVXpMkokBmBFOa0Rln8xdllFgo5uTUUcv
 ++A62Xgof3CAnAUXRR1OdDAb0yzE/TIjN3iEt3tWhrItSWXrGMg4r+uFA
 2mtIYQt/eWt7m2zZtoOK2SfhobO3nvHtbWeqZhkUgyEa9Nwb9rretkEVd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uo5Llaec
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] check the ioremap return value
 first (supplementary CC)
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

On 6/19/25 14:48, chuguangqing wrote:
>   tks to pabeni.
>   cc the relevant ML in the email.
> 

Thank you for reaching out with the patch, it is an attempt to
fix something observable?

I have found the original topic via web search [1]. It looks that the
proposed patch does not change anything - adapter->io_addr was null
also before the assignment, so it does not hurt as-is. And the check
afterwards is equally effective for me to prevent subsequent
dereference.

[1] https://lkml.org/lkml/2025/6/19/343


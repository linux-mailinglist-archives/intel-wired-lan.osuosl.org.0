Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D55AC79BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 09:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33DF840B0B;
	Thu, 29 May 2025 07:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3O7ggjfJ10zX; Thu, 29 May 2025 07:26:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98A6D40B1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748503602;
	bh=8hs66BXGYWAVQVQ1J0JJLux7zwR7BKaPEQ0BWiHfXyw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V6akH5EvMryfDq2PSQfEZdLrcKFuh8Q6UESbixPwyMFtm0MPxykggz4B1vxDHL76Q
	 699SEGNJGgSQxpGSFGA9uC4GDvOEat3HSo8DdCxwcOqlPqgg+r7u7+90cdJr8xnAAE
	 /FL7HZz7pCixPLbEkXmUPb2SVBY0ypjPHoEUbF0RBlQEFAW3bmcjC4tGXx74b9V+va
	 +aajS7Yoi+oOri0R0QCexQzDmtu80ADiFWoPMMKdDn8F/JrFZ60z8sHHyISBiVtwcS
	 ykIaTkSRM4U3q5/llm1ZKcqt0Y7FwH8D3Wjk6BuO4SChR4dLgtgS7OdnpeKBXPGzCt
	 65kwTrq3Ae2dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98A6D40B1A;
	Thu, 29 May 2025 07:26:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5291314F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3855F81281
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NMkaETevW2R for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 07:26:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DAB5811B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DAB5811B2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DAB5811B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 07:26:40 +0000 (UTC)
X-CSE-ConnectionGUID: p6e7nPY1QnCpD1nRIrmWVA==
X-CSE-MsgGUID: CDkCtY3vSLeFcgFA3dCTLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50705323"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="50705323"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:26:40 -0700
X-CSE-ConnectionGUID: q0K99Y1QS0CmbN8ktFu1Dw==
X-CSE-MsgGUID: xM0Cjew+QS6K3j+KR5DWfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="143815107"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:26:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:26:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:26:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.56)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:26:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bnqPo5JARnqMWsNo4FahXjgJvLm486IxYqYNJFdrd23dHrr1xaXIxTWGtH0KShVK9o7SNYnx6UTveL2JtpzniC9vih/NR6bUfudqjCqavjoKt81NjR4vq/D3VjWrj3ukOv8Y/b+SVk7pzmqBkEsQMIj6WWv8X7xqP9ddulH6vZK9wjHXPnD+gjnudz77yoxOpVIz0OYFBFHJC+qTgZN7xo/ZBg8bS4Lvq3TVXIteSpN4SLE5bzAvQDpDeZzcZ3P+xEcDHARI19iXr2Q+FFI1cyV2GXchpRnUAXyN5CexI4rk5iCzK0mKBPSEweZQfTRal0BwH9Be/HepPq3dYt4WTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8hs66BXGYWAVQVQ1J0JJLux7zwR7BKaPEQ0BWiHfXyw=;
 b=YlEakhgNO5kUtpK/svsFw4+TetimCywRdzrt/tT6SFUSsalSMkcin8imYwZbteJVEXmYmO1SgOP6M5f5UKvDmFxPFFZnYSrMzJXFdUNQobSQr29YOH+10zg91yFD+Ll10fHfzi+UQzeCR55RCWfNc0sVY5/EpsxgqlfuGQvhCrEWwt9jaXqrWFItTapQRDIeJ1TWmFfvAO3qVPMMimYzvDJTsawWNO+GPpzorRWHNArrm8r1l1LKe1I3N5bSEOyKiJ1cZK7woXKTDNVHrMfPqc2WyGJLE2CxNFoD0NsgpEexMaaztBL4+4WHjnef/+r4WhEHRzK5tCsTbyCxLc0rAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by LV8PR11MB8461.namprd11.prod.outlook.com (2603:10b6:408:1e6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Thu, 29 May
 2025 07:25:55 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:25:55 +0000
Message-ID: <9bd084ef-9118-4d15-8515-328449b2dd42@intel.com>
Date: Thu, 29 May 2025 10:25:49 +0300
User-Agent: Mozilla Thunderbird
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
 <20250519071911.2748406-8-faizal.abdul.rahim@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250519071911.2748406-8-faizal.abdul.rahim@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0017.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::7)
 To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|LV8PR11MB8461:EE_
X-MS-Office365-Filtering-Correlation-Id: e8083c66-d348-4d83-72de-08dd9e820c93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bDJQVUowOVlibTRRbnhac1pTbitndURPVG1RQ0JiWkJ3TitDd1JIL2tmL2Mw?=
 =?utf-8?B?VGFkSzNPdUlNcUFDZWpvY21sb1luakpqUFlUTkFHSmR1U3IwR3l5ZkdMUE5O?=
 =?utf-8?B?R3pXMHdMNXlQNmRKcE1nRUlDMkEwLy9kcXkvRDlkWmVxWkczaVp3aGZBZnVJ?=
 =?utf-8?B?OHEwL3lqNkdYelY4MWRtQXI5NlV0anBMUnpDYXplL1huYjg3d2Q0OFN5aUJv?=
 =?utf-8?B?RE1acjZPSnRIbWM2MXRtZUk3L083WGgzeHlCMy8zLzVQdmJQNUJDR3pPdGZX?=
 =?utf-8?B?dGJ5b0dGUHovMzhoRHNCU2FGVUpJL3U2Q0dGQXdMb2hlSHFsbzJmM2N6K0hP?=
 =?utf-8?B?eUxaUVZoeXA1cjBCbHBVc1kzR0hvQzlwZWVmeFZDWFZ1NXg5NHJnUXJNcHpw?=
 =?utf-8?B?aE5SaEZBc0tkVkUzR2dERXIzWnp3Z0llbjA4akwwcEN3bzc1cjR0UlpFTnZk?=
 =?utf-8?B?OFkvZE9LT2Y2WUp4cDBqTExWWlVuTWx4clYrQ1I5TnVqeHNvTWpmS2VXaVdK?=
 =?utf-8?B?aEkzODUvYm9ZOGJjMUs0emZ2eUlKSjArSC9LUHU5aVk3dngzYVRMRjlrVkR2?=
 =?utf-8?B?ZVRRUjc3VXV3YmhZWUY1eUl3MDZpNXdnd2pkT1V5QWkvY2tRN1g0dUxuQUJW?=
 =?utf-8?B?ZDJDaHd0VFhYZkVxaG1nalN4TlB4ZW43MU4vZjNEYys0Wi93YXRPS3UxbjlO?=
 =?utf-8?B?ZHZKY3VEbndtRTFwcStqS1V4K0pTdWdTbk5UOW81VERFazhGc3hLVjRRVjQ3?=
 =?utf-8?B?dWRtNk1WS3VnUGpxUkNmR3VtTzdZUk1VdkdNZkVmc2tnMzdVa3VxM2ZpWUZj?=
 =?utf-8?B?WVE1bzdOcHpmSlRWMWVXM1dMS3FjbVZqUkcwZFVPRzhDZnFxRGVCZjBjekhB?=
 =?utf-8?B?Y1l6ZjBpcTlWNUhlWmhYNzlCa2NpTFNhQVkvOURKTEl2UEg1K2FhR1BEbGkx?=
 =?utf-8?B?Y251UGJnQUJNY085TVFqSnBpSk5zYW5lT1hDVVZIZ3JyeTJCSnVvZWxRRFd2?=
 =?utf-8?B?L3BnT3hSS1VTNlpGUUczaG01ekE5OGpEcU8ya0hLRlA0THlYMll0L0ZsK213?=
 =?utf-8?B?RDFoSDBlSlZzY0tycFE3cGlaZ2RoVU5SV0NITkprampnQ1pmQTBlRXo2b1FD?=
 =?utf-8?B?OEZCODJlaldKT1B6Tk5UQ0dTdVNjZERJaG9zL09vOFMwTnpNclNDZ0Z4dmhx?=
 =?utf-8?B?SkNuaStpcUU1UWZua2RuQ3lPMGRUdFBwdGJrVkx4Z0Qzdk9GWjMydmFucDBt?=
 =?utf-8?B?VlcvdGVqcFcvSWNvcllIcSszWkVoMWh4OWFXWHhGV0c5dmE3TE1IOHYyaGZi?=
 =?utf-8?B?Mzc3Y1pnQUEwZm9Xb0V0cExjc0Q2WS9CTUhlUm5tVUsxNzBpb1R6TVNORmNQ?=
 =?utf-8?B?U1JiWVQ2Ync3Nkw1Y1JmNVVhaWZPNFpaajZDY2t4YmQzOUlEdzNTZmxud0xs?=
 =?utf-8?B?L1F3NjMrakZMZ2NFR3B6YUFHajlSeWNKOXZVVWZxY1NmcWlxVVFlTXNBTnZI?=
 =?utf-8?B?bzc0QXRNbWs1QUhjM0E5Zkg2dE1ndmpMRzBnLzBDSG1qQW1qS3V2VjRiaG1M?=
 =?utf-8?B?MmhXd2ZhRDJGU2cvL2V4bWpxSHNQeEN0dGZFNkxCN3NWSXRMeEZVNTRSbGsz?=
 =?utf-8?B?M2xFSTdtS0l3eTlvV1dnSjNGTUJQNEt0QUdiTmU1RmZkWGkyUm5aV1haOHVk?=
 =?utf-8?B?aXpDTGlyK05sQTBLSGJWbDRxQWRCWHhzNVhxZGxJTnpkeTZYdWdyQytyQU1Y?=
 =?utf-8?B?cUVldjNwSkgyeTlhd3dscEFOc3JyLzh5d0dEOUQrOTNJSHlwbjl4bThHYzAz?=
 =?utf-8?B?KzRYVTdab1l4U0FTYkdsYmdEZEtsdkgyUUNIQzBqcmlXdDEzZnhkNGk4YmZl?=
 =?utf-8?B?SkZhTVN5bGduY3MxS1FmWTZkYzd1a0Q2VklLUTVwMGhQTm1IWHYrczd3ejZU?=
 =?utf-8?Q?+UBoz1Pp2+37HqfW6BEY6yi3s4gu1ftF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnpaVFJ0V0E3V2FQUUI4REV0cms2cnZjUzZMWGJaY2NMSjY0eWRqZmlidWdG?=
 =?utf-8?B?SEh6Q0szdWhQdDZhaXZvM3JhQ1pvUlUxWks2dUVKT2pKRlkwOXhyMWdtOXNt?=
 =?utf-8?B?NTY3NXlYQURIemFUc2VqNklQVi9hMS9sSUg1QnNQL0pWSWpGUFByY1R4SThr?=
 =?utf-8?B?am5VN2ttbTdReEphUVMxcXUxcDhwR1JNRk85Z0U1NVRwSWN4QXU2endiMGk4?=
 =?utf-8?B?OXZYVTRuZ0tweFEwejJHanViUkNtWWR5OGdLdXBXUkJOQ0dsc1VYWUlvYUc2?=
 =?utf-8?B?eEUxUVFRdUVjS05NblZjQ3RPVUh2RjgvSVVwcnNxcFBRYWFoZmkwa2VDUlEz?=
 =?utf-8?B?TzExVWhFVEVSd2d2OEFoNitUdGVlOVZKY3RqL0NUaWV2NjN2Q3Npd3FVbVdM?=
 =?utf-8?B?WGFIMlNDenRRZ0w4TGhtSXVhck12ajdHVVRJUFRLS2J3a0FWQ20rYmNuRnhV?=
 =?utf-8?B?SnY2WlZ2SCtBaVFCcTllVUhYdm54c05WbjlBOFdNODh3T2VsVGtDTlVra1o4?=
 =?utf-8?B?ZUIzeWgzK3dRWVROQ3dMd2UzU0xjNkdhem5vbTFZLzdtSVFzellodlZvTU4v?=
 =?utf-8?B?VytUMFFibE4ydXo4QlZIMXdlZkNNRXNuelRJS2VFWWZvK1BSQzF1b2JsZGhj?=
 =?utf-8?B?dWVlNzlSWmw4R2VDTHpsd1hWMlF4VmdxeFkwUndaMzVzU0NWMFRZT0xaL0JO?=
 =?utf-8?B?QzBzeEsydU1WUDFCZzNuSTBrUS95MSt2V1EwVm1YUWR6cHRSZEVIYXo3aWhz?=
 =?utf-8?B?Z2Q5YkJXUmh0dkVJOEVXdGlXWE5tZE9ZZHUxekNSUHp4VG9nTHVSamFKeSts?=
 =?utf-8?B?VVhNUVNkTWxhNkh1SDFWc3IvUlVtaWMvaTRTeWt1OGkwS1dXM3FLRGIvSUk1?=
 =?utf-8?B?cWYzSnlHays3SFRTRmVRaW1zL0VoWDlxWS9pMzVYY0l5cXp2RTZZYTM4V2c1?=
 =?utf-8?B?bCtiSFNKaytCZ0VUR2JFN0p1MGgrNWZpSkl3eFJUQmRRZUM0QkR6K2FGV1R0?=
 =?utf-8?B?TTFQR2FKUFh4MmJmeUh0cUhmUUIrSlA2bkF6U21CZkEvUTNIazlSQ2liOWxn?=
 =?utf-8?B?VHZnS0h4cGwvdkxvd1orb3lWZjg5enJnZ0srWkdOTnpJSHFDcHpMT2J5YThM?=
 =?utf-8?B?MFdDTVlNR1ZKY21TL256TnUzeGs0L3lxcU5PVTl1Y3l0RFhwNmVyMEM0UDBo?=
 =?utf-8?B?RVBXaU1DMk1CcmVISmZXZGc0TXZDbndTZGlCY2s3Yy8zQkZnRUxJVHJBUHly?=
 =?utf-8?B?bU02RTk3S0traUxhZDA2aWpmdldOSEkva1RHVVNkd2pOR3VoY0o4ZU9vOU81?=
 =?utf-8?B?SFpWWWtTZVRUblNnU0xMcWhoeTBqLzJIdkl6d3dLMzdweXdLc0MyOVZZbnNW?=
 =?utf-8?B?REY3UWNVYWJpa0djejcxUUtUNGV1MnVlTHBEa2h5SDRLc3NxWVlHNlJVRHM4?=
 =?utf-8?B?U0Q1b2RRUnFacnZUTGJoSCtmV3ZhMFl6bFQzK3FWMThmTnIvQVBUcFlmR09J?=
 =?utf-8?B?TUxZNExlb2JTWHRTVFc1YVN6WUFIbVViRStLSkNlaGhSdE95ZjE2L0xZelhI?=
 =?utf-8?B?YklxdW1uUWJUV2RXTE4waG53aHllZG9LOGZVZ3k3QzZNcWYySk9oZnJoeG9o?=
 =?utf-8?B?RDllZld4KzBpZGNRQlhsMlNkNHNETTIrNVJ3d1M3aFR3UFB0Z3pybjFMNjI2?=
 =?utf-8?B?a1A1bzdobno2TklHWHBDamp6dkQvZDUyanY2OXVyNnFDZUpFUkNraVdpVS9j?=
 =?utf-8?B?TmtqUFdJYllkS3RXaDBUeUczWDZ1STR0SW9RU0hHTnNJQklBRzNPcVVyVnZu?=
 =?utf-8?B?TSt6cDJGYUIrTFl1WnFnRVdHR2J0S09rME9GV2YvZEZJbWovT0NwZnF6L1NB?=
 =?utf-8?B?QkROeXZIeEwwZ012SkhrRS9hUmF3c0Q1Z2tkNTU4WnNkZHZRYUNiNmpzV0Ry?=
 =?utf-8?B?dkY2bVEySm9mSDFON2dtZjVoY2ozbyt2akltcWZYc0N5b1Zqb0RMM0J3ckxr?=
 =?utf-8?B?dS8wVEVZTkZxSHR3SGtQM2ZndXVaa3FFM1Z3bDlqWVFpdlVDSkt3U0FPUWxL?=
 =?utf-8?B?aElmT05tdFhLZTlTN0p0cWxqdWtoY2dKYXJqcUhNR2FQMkZKWkphOUlJdVl1?=
 =?utf-8?B?NlljWHBpSXZBVjAvL203TWFacGp2Y2NWSUFyOWlkM2wxUGRPWWhwK3JnWWNw?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8083c66-d348-4d83-72de-08dd9e820c93
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2025 07:25:55.3266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sXlXpi6qqN3riQRERLQTd0LBik+qGy/6jO4SynZYJqNLNzcbVNWYk6TAEQ6Zz1/0UrljOJNu6DW0aeoRZok6Td9jnlOFbrtt5c2Ir19+9Uk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748503601; x=1780039601;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ltAO64blgq7AtB5FnyjdAmXiv8z2AxorDaWnkJlcEkQ=;
 b=nDr4Xz9xZDFPRIZxYQcBQ6+2jL4J6Zx+EpC6ALZAyUXYaBHmg89hppev
 vyOgFFx5WorBtlzYglhxpeUelUZQ1wug8HxPuj7R0tT1YKcdTAB9JTVCf
 nUKZVZsuSAMF1vkNCMwiuYX/SSTrISPeH2X/DHhd2RkdizqAfiW01SUhc
 5rCjD+Nmi85KPM8q1wcF/pKj19rKBmcGDDZYzXhGKSqSKlxKtdjMSBjxF
 c7oP0NRwC0qNhiCgwS5KF/XdNJ8GtksbScZuV/3NjfBNKMOlB1RA8wlHd
 aYfcD0qfaokQO1i+/dBgDIJjaIwgyzBI8MLsLDjzuy3OTtQkR56fc+Bfs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nDr4Xz9x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 7/7] igc: add preemptible
 queue support in mqprio
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

On 19/05/2025 10:19, Abdul Rahim, Faizal wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> igc already supports enabling MAC Merge for FPE. This patch adds
> support for preemptible queues in mqprio.
> 
> Tested preemption with mqprio by:
> 1. Enable FPE:
>     ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
> 2. Enable preemptible queue in mqprio:
>     mqprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>     queues 1@0 1@1 1@2 1@3 \
>     fp P P P E
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 9 ++-------
>   drivers/net/ethernet/intel/igc/igc_tsn.c  | 9 +++++++++
>   drivers/net/ethernet/intel/igc/igc_tsn.h  | 1 +
>   3 files changed, 12 insertions(+), 7 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>

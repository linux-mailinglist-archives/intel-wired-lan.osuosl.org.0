Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNhvM9KTe2nOGAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 18:07:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C200B2A33
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 18:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD01A83DF0;
	Thu, 29 Jan 2026 17:07:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OZ-vfZoOOSaX; Thu, 29 Jan 2026 17:07:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7FC183863
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769706447;
	bh=qZTImwKfb7Ly+24zkjyqQMMHam/NWzkVVKfaHZcxiPU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GkqzHBexnDe2ipaB7NVMgDX99WTDg43v6l5IbVxWDmbJKe5erQrgqCH6eJNaSJFQL
	 VK++XKNODjOnfBJ+HdB9fvII+LkpO+cq8vwV9nILXffo8mb8QJ+PcF9Dy1NkmdWtL4
	 OTX99rR4QVL3Yic5MPhXtq/KWQAtlZ85ZZvLHZHMogjVSRhkwkjJII6GEnnpysJNmH
	 PVCooDDPC1t3q+99KoMe1Kl0z6Mdl6qENSuzq3quNXpMK4DxATteJe3TMUzmM2lm+W
	 mD5UVMnLzU0PgFs/0iLt5orDvV/c1Ts+d/sAlogbT2KpasTvf2y+WNA6zOMdcCqhzz
	 Zz7uVDsicpPFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7FC183863;
	Thu, 29 Jan 2026 17:07:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DB9DE1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF21B40516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:07:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CxJD5Hbyf927 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 17:07:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BE77B40511
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE77B40511
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE77B40511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:07:23 +0000 (UTC)
X-CSE-ConnectionGUID: Z0kLkgAnT7GRfdDnq1b8+g==
X-CSE-MsgGUID: 8KLyjHz5Rs2kCuv9iJ7UqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="82319020"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="82319020"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:07:22 -0800
X-CSE-ConnectionGUID: bl1tr1WsTrOAlWQq39Hmrg==
X-CSE-MsgGUID: L8dPR5BdS5yADgb6ShcmjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208983362"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:07:21 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 09:07:20 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 09:07:20 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.61)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 09:07:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NAwuns4LdN6+HvATYGSnJGDn4oDDZUV2Z1vH7dtpyTVcmq7LWoVq1mNPDoYOSerEjeyFtbar9ZbK2e6amH3TozMFS7AMx7rD+LcLy+mu9R3DBv7zuky/SKiKFQ3q34fW33kBNcttztkNXeq4phqYYn892utniXc/c6/lAcFJu9FY/na5cj4BxEaX2CNNE645imgCwJo+hgYRx9rH1JwewJRehHQVaOmywukOjfBQnkXXTBS8Fb5iJvkjCBmcCeZRo+t85nEfqnaxd9ItUuweN777YMMFyNmG0hsCtVVlwlti9KQ+RZ3YNrMDh1ulWuBm6/+OS8Hrpdnyn/5esbfuXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZTImwKfb7Ly+24zkjyqQMMHam/NWzkVVKfaHZcxiPU=;
 b=Q1qhOUa8jwDC+4PJxYISgT8BXfA8zItyqe4VVY+DkGTTvJ3AWbmm5+JqGE+dfQai9j6IiQyUOEbrQPB6Yd2bMoRJXxH76U/y3fK/mQoRFAY/mb4GUclcvVWu5SF0uKsO2P8UDBPJKjP+wXi85etYu6v00X2HpyHJe2cMifl5VwgVeCHQRi7AsaSHQTlM4qF1VFv9SYbzFsJ8kTeHHkgOz62Wl/886Nx0/FsjzjQwm2l49bqWhofLWVxR7EEPe9T7HHqQxytypXFhTnQvkzAdcYPh22VqQZqSwZYUDaTcU8A09n1psutjk9BCh/u+jDO6ZwRyQp2/5dUGYF+x8VQKwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 17:07:18 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9564.007; Thu, 29 Jan 2026
 17:07:18 +0000
Message-ID: <82294f52-fe47-4ea3-905d-95db71738694@intel.com>
Date: Thu, 29 Jan 2026 09:07:14 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <93f55dd6-44a5-4309-aed1-30e352cd2825@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <93f55dd6-44a5-4309-aed1-30e352cd2825@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0245.namprd04.prod.outlook.com
 (2603:10b6:303:88::10) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW4PR11MB7054:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ad385cc-805a-485b-7025-08de5f58db54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7142099003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eG5INnhobFc5N01ud0VRQjVpNjBBMVlCZkwyOWMxQzY0M2xicUVGY21ZYnMr?=
 =?utf-8?B?VWo2akNPQ3ROYVZLa1NRTFdqdGRGZHVEZDJ4YVpNemZwYjNGYTNybjlwYkNa?=
 =?utf-8?B?eWVJV1VIMzhrc2E4U2xrWjhuUjNJNllTSm9ReGxsQi96ZzhOMllScmNuRVAr?=
 =?utf-8?B?KzNPK21MUWx0MER6TndvTjZubm9PS1dCemhnK0ZvaVpZMk43bnRkQ01EUFJs?=
 =?utf-8?B?RVFMRjNyZ3J0cnJFODZaTmZUcEdrSkhkZ0NmZGtvckl4MXBGeFN4T014TG5w?=
 =?utf-8?B?cUxFQ3pQYzdhb1UyenV1QVNRMStFNjRiRTBUWSsyVHE1c3NyRFBuVEQ1L3lU?=
 =?utf-8?B?TncxZEM4cGlLTk8wVWpPd3l5aUtqbWJvQncxWHlvZitNN2RFMUZYc2pmK0xN?=
 =?utf-8?B?c3V6Q2djY0xiREhzN29ONk9qb0lxNk1XNTRqMkFIY1pzOHEycU00eXlOU2RI?=
 =?utf-8?B?ZFNYWmphZUpJSmtna20vK0VvSWk4Z1pGSUVTZWtpZmg3c3FsUkl4TXVZRDha?=
 =?utf-8?B?aHc5T3NXdFhnVExDLzVyK0NkTXA1bVBhRVlrRFd4QkNucU1SbEw3dnViemk5?=
 =?utf-8?B?LzhUaTlSc2V3Uy9DYjhMVURYanQ2VGgrZUl1QlEzU2V5QytsbXI1YzVyR1FU?=
 =?utf-8?B?MUl5bHBLWm1aMWRVR1gyN0FqS1lTSnRwS2t0S05jMXNsenFObTlEckE1aGNn?=
 =?utf-8?B?TTUwQ0pRRTVLYWMrZ3Vad0w1VFlOL0FORG05N2d3ZDhySWNoN3pkYk1tdE8w?=
 =?utf-8?B?T1ZPa1EyOFd6S3UyNnJGTnF5NDAvcG4rc2VjTHVQTmFWRUloRlNITnA2Zm9L?=
 =?utf-8?B?S0szOTNJVmFEeGVDMmMyR3liaDN4SEFLVW9DczNzcURRT1psVjFaNlhYRUxL?=
 =?utf-8?B?YjY2VDZqcnB6YmRiQXd4RTBzSEdIbEcvNmdrcmVMSGhQYUh6UXp2V0FFVWh5?=
 =?utf-8?B?STN6amxWZ09NdDEvSmtGMTRHYWVDRWpqY1E3OERtRk9wRmIwWGpsT2ovK0Fi?=
 =?utf-8?B?WHJPa3ZST2pTc0RFd04wS1pyYlpoRGcxdzJXbGF5VERkaC9hVUZtTTdFdVpY?=
 =?utf-8?B?Qyt1VDFFRjRxZVRBYlhzaFBGc0xSRk1rbEJOMTRDVVl5QVpacy92cVlTVWtE?=
 =?utf-8?B?bkRQL3VlZEhHWlFxV3dMSVBvU0FUaWo3RDZsOExIOVV6dkRobVhqL2lCbU4r?=
 =?utf-8?B?UVMvc1VyWXZDYW5nRVk5UnF2MkQzWm0xZitYN0NkbmVOdzRRTFV6WFhnak9s?=
 =?utf-8?B?K3hQYWJvQzVVNHRySmM0UnIvdTJMeW96a2R1VWZJTWZGZkV3WTJNajUzamtt?=
 =?utf-8?B?UXJOeTZSYTZWSHlHcXd3bXEyTlBObzdseWcyMkNSeXcwWW11cXBta1ZPeUxN?=
 =?utf-8?B?Ym81akx0TXFIamNsUFg3N3NHcXJDazNwaDNidnQyQ2l0YXYza3VsWnF1czhU?=
 =?utf-8?B?cEQ2M2tUTDJTYUFWQkswdmQxVkxrWEdNOTAyVXd1c1I2NXdjOVRuaDY1eXpp?=
 =?utf-8?B?YlltWXNaWFo5NkdCay8zUE5vSTk4OXltVDVFYmYvYzVlamlhQmdlTTdjWEdZ?=
 =?utf-8?B?L1R4YSsrSDJZOHkyTk4vclFkczg3ck16M09LRzgrd3EzMUFIWDl4QVJsa21I?=
 =?utf-8?B?bGlBSGJtR3FZeVhWWE5mTy9hbWJBaDJwM2E2TnVYSXVCZWMxSlQxdWkzSUIr?=
 =?utf-8?B?cjdzZXpURnp0eUdkdk9XUUYyTndoSElWTTZBMFN0aHVKeWNmQUxJbzFhOXE5?=
 =?utf-8?B?UTZsWlVmeVMrQnZLOW1hM0ozUVNCM25aamFRNE1ObEk1MUZWYUJxUUthbUFY?=
 =?utf-8?B?WS9mVzFSUjBDdUhsNUlHRGd5UU9LdTZDbCswYXdMamlJUU1RWERzY2hjdHpv?=
 =?utf-8?B?UmozaHNRWFhVaDFhVzJRQnFMaFB4M29JeFgzcmtGaFJNWEl0SUJBbkFXRWpr?=
 =?utf-8?B?enRTZzlJcy9vTFF1WVY5aHhPNHRoeTIrZ2pSdXoyOXF4TEVmcndqZFJtUE5N?=
 =?utf-8?B?Q2VMdUZaL3ArU29xNmVMc0FGN1dzb3FkWGNoVHV0U1NrU25vcEdVcW5GUHBh?=
 =?utf-8?B?cElMZlN0YWJ0LzBUMElZTStDejhadnlidE5LazIySit5UEpsbklRbUVDUHVC?=
 =?utf-8?Q?+ojU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7142099003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em1kbTJ5bFhNbHJrQ096Mmpza0x0VlJpckJJUGtnTW04T3llNDc5MWZaVnRG?=
 =?utf-8?B?SFY1T04vM2JrbmRqbzNkbHlnQTEvcGxGQ3FHT3hsTlkvVWhBSytpQ1M1TU9V?=
 =?utf-8?B?L1J6WmFsWEJTdTJMQ2wrTTZUU0RlWG5LTUprSURUK2tSRG9rR3R5M2FOWmhI?=
 =?utf-8?B?bXZWMWF4RXBUTGtzMDNqTzRkaUpuQ3NSVTdVL3g4NkQwVm9BZWl0WUE3K3I1?=
 =?utf-8?B?Z1AwRVJBclRXcjRHMXZBb2tkUUptT0xMVEZSenhlT05rd0pWYUtXdjFNcWJ6?=
 =?utf-8?B?eUJxeVR3L0ZzMHVKYzdSY2RRL3U4OUI3MEFVQW9HdWpFS0Z2Tk5mMjczaTQ2?=
 =?utf-8?B?NXZRbTJnYmg3cVZiQjZCR3U5MjZhRU5aN1B3UUdwRXIwS1luSlRvbzVPamhZ?=
 =?utf-8?B?eVBrR0U0QzU5NW02TU1iM0tLaENXcUEyWERpS2dZM3l1dGVsaHpEZGNKWmlZ?=
 =?utf-8?B?QlFKckJFOElicGMySERJNTFGb1ZIYkdKQk5LV29VODBibEszT0FXR1hwWTUr?=
 =?utf-8?B?aFpubXkrTlh1c1g1R3ByRzRTeXJIYmVjMjdiS2lkTTlDUmh0QTNFeGlBaC9u?=
 =?utf-8?B?VnlXTy9JR2Q1NlI0NmhyYmtESm80UUlURlF6eVlacmQ3dzJlK2xqWDRXNXVQ?=
 =?utf-8?B?bVVoYnRVbjI0UEc3bXMwQk1OMVN3L3p2TVVYWEVkL1YxNVdqZjBUcEl4SU4y?=
 =?utf-8?B?S25Ma2c0aUF4eDdBMXdBN2hhRTIrM28yOGFiRTd6WUcwQm9jdmp6azRsM3da?=
 =?utf-8?B?TWFkWHdxd1p4VWppUUh1d2Q3K3NveHpEaGgwRXhDaEFFcDdZVzlVRi90QXBT?=
 =?utf-8?B?Ty85c1laUmRMczd6bXFUTjlKaE9wZWtybGRyS3ptYmxNdng2ODRoMDVhd0lY?=
 =?utf-8?B?emlzbzNzY3VpdUdBeWxTejMxa3JIaHZaOXo3cjVTTktiZEgyUkZYQ2JaTEtN?=
 =?utf-8?B?bkN6Rkp2Ni9saWhIS1NrU2dMK2JqcmlTRmVFTXhLT3NzWlZYQ0FFaDZrS2FB?=
 =?utf-8?B?amNvRVY5WTRtSTRkcWphbGdzZU9rc0p5RVdVUmJNQ3J6MVEyeGJMVTBCcVNS?=
 =?utf-8?B?TmxwRCt3dCtuQzVVK3FLeXFlQzk4UHhydHNWTnJSWnpmOEdJZHFaOGQ0bUNn?=
 =?utf-8?B?eWhwcThISTRmd2YyUXNoOWg5T1YxUWpyRXdmdEl5K281S21wWkt1dDNqN3gr?=
 =?utf-8?B?ZUhLWDg4VWxCZXZOZXROWkhzSUNWbmZUbHVBRG5EQ2N1NHJqZmQvcXJubjB2?=
 =?utf-8?B?TG56YmF2bU8remZ6MENxR3VWeGFHRmNDN0NHci9RRzFqZ3JROXEyNTlTTktr?=
 =?utf-8?B?QW01WS9EaFppaEs3YkFaRk1zcjlZenNaam9OQVdnN3dhWnEwZTYzZmpSSmtx?=
 =?utf-8?B?WFp0RFNRenNtRFE4T2xKYXVGclJkREJzQTZTdGNreXlZdDRDNWxUOGl5QSs5?=
 =?utf-8?B?WFJhVm83elp5blNYZmlYK3AxS3VoNHpvb2VUODZhY3JVQWVYRFhBYXBVNU9k?=
 =?utf-8?B?M2JnYjVZRjFENmplVDhhZGUwZWVKbnB3YmlaRW10SHVNRFdpU3lEb3pmTm5n?=
 =?utf-8?B?ZXd6cU9EZXg0YitSSkFUdlJVMTcwZ0xKekVZVHlOWjlEL1FqbFlUNThWRy9P?=
 =?utf-8?B?aEluUHBoVlhlNG1zUmdZRVlXYjBTRXYxcHJJcW5MUjdiRTlHZG11Y2lBRnZL?=
 =?utf-8?B?M0hScU9aT2FhU3M5TWZtcEQwRlpGcUpIcExVeS9GL3RudkhDN2xqalZCTWcy?=
 =?utf-8?B?ZE9ZRGJQbFJjeFhaQndqMG01TE1KS29GZm04K2dmY2Vlem9NWDBNazlCRm9j?=
 =?utf-8?B?K0VCUzNabTI4KytmblU0MDc2MmZnZUJpd0xSZ01qYXVMRlRJcEZRc2FBOHBa?=
 =?utf-8?B?bVlHOTlMd0xLZkhJWUQxdXBiaHlQd0VkZC81NDlYbUpIZXYrVHFPN0VYazY5?=
 =?utf-8?B?OVpOL1R6SlI2TGlTL3A1SnEyMTVwbnNEci9FL2JpdkJLWUQxWFdJTDl2YVhx?=
 =?utf-8?B?UWM2QjYyS3NOYjFSSWNDVzJ5UlhiQ3NqWEc2bG8ydDRwWk9xQkw0OVRCQWFG?=
 =?utf-8?B?L2xpdTcyL3lFVnlUY2lTWkpVU3BJMkE2Z1ByNGdqZFNURjJyYmVwd3FrU2h5?=
 =?utf-8?B?WTRyd3RzU2ZzWkM2dmRFdUlMNVpadDFBSmwrajlxUk9PM2ZDcGZ6dHlodmQw?=
 =?utf-8?B?Q1FyUHc5UnZvVGpManVCR0ZzUGg2M29vNExnQ29WSkw4ck1hb1Y3S3M0ZTls?=
 =?utf-8?B?Wll0YURReC9nTHNJdE9wOWIzZ2N1VWd0eUlBc0l6TGd5dUhSc1FNVEFrZ1NE?=
 =?utf-8?B?K2QwVUdSTGo4cGhtQmVqTG9XdE9PZEtOT3JpY1EwY3MweXlGeEg4Uk0rSXJn?=
 =?utf-8?Q?4zk7vgYKS0M5e0Z4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ad385cc-805a-485b-7025-08de5f58db54
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 17:07:17.8029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +YFxI8fpF9ykwijUAJO7ZI8ybErWrrz41+FBSkGi1zmxWZU0lHBk6ahiSdMl7SBEHj8dPO7gTZX6iiLuYctSW8wYUDO4WPNuZJ/o/SfqrSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7054
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769706444; x=1801242444;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NGmLv3+lnB1WNwI/MoB83vSjSD/bCtsklYxD4a3ECKk=;
 b=lhPsXlb/JmufMpvoSBFvhirt1UweZIQ8a3h1Rru5Mr6SWQuvOtjEA1vZ
 Pri6bXJ2KyBV3GKyWsoMMv5OyJ6zFKLgVLZOHjV9VDYZnRurktEVwUAnZ
 MBy8YZHS08Sa+uiOlEd0x+NTDQCtTGwdlwH+VEFTVrXXa4U48aVlSM25R
 lZlCtkluLqya3xEozUl6YiLH7ns0USdQGEvgRSOSw5Dwk87KAVirVKshw
 Lb4C/dtEGQVZsqHuqaa4/P8ObGnGAyQxWVblimRQvI/RTN/YTJ0+td0N1
 AbsLQO/xGub19AxLZTVzqA8L6PG6U57HPO+LGg+xRY9UgENn8wrQnm+a0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lhPsXlb/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add support for
 devmem/io_uring Rx and Tx
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9C200B2A33
X-Rspamd-Action: no action



On 1/29/2026 3:03 AM, Alexander Lobakin wrote:

...

> * io_uring tests pass, except for tests which try to setup RSS Rx
>    contexts -- after recent changes in the kernel, seems like at least
>    some of our drivers return -EOPNOTSUPP when trying to configure RSS.
> 
> Tony, did you have any related reports or planned fixes?

The only thing I'm aware of for ice RSS issues is for E830

ice: fix setting RSS VSI hash for E830
https://lore.kernel.org/intel-wired-lan/20260109085339.49839-1-marcin.szycik@linux.intel.com/

Thanks,
Tony

> * devmem -- only the Tx test fails, may be related to our complicated
>    .ndo_start_xmit() logic in ice, I'll investigate this as soon as
>    I get some details from the val.
> 
> Thanks,
> Olek


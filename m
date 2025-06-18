Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D94ADE8BA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 12:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21BC1608E9;
	Wed, 18 Jun 2025 10:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Q_ED7O1pgfQ; Wed, 18 Jun 2025 10:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22D38608EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750242341;
	bh=pcAaPr86Opfi5/rLvVjVlgxsf3SfRwrK33rNOu5FD1g=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ki7aUyh1SOI7z/p3tWjNDT8VdNsUXol3rKfpF6z0AdFm8gHiK3jxWClk23Kblz6pZ
	 yE6H/059b5Nm+q9ngvBurLWYTWwxzoa/bbJr14qG1+/wswVgsayL6EO4Xe8kV2oLuB
	 TasD1Y3+HLA9cnbXOtsAufu1QhbKSZcbZHkO7UfSlNedWLeSbxklJVUrd50yHUr+tS
	 tbYTKoDcZH5hIOpR9R3IRRsctV0E+OkC7a8T+awG7iZ5Tu5Rncr9/y8v/XhG5DWqD8
	 eFQEtnQmsOYnP9D115DNbJe0wVf6FSp+zBOWeQjm8JmZasWO0UVyJrJECADiNPh7UH
	 uPwaXJzkbYHug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22D38608EA;
	Wed, 18 Jun 2025 10:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B8DA151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 10:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5072E401D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 10:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HWwTEsIJMyus for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 10:25:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 96E54401C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96E54401C1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 96E54401C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 10:25:38 +0000 (UTC)
X-CSE-ConnectionGUID: CP5PJScLT3a6SA1DFjFT6Q==
X-CSE-MsgGUID: hPOEC2rWRD6Jh4rnl0sOiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="52373257"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="52373257"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 03:25:38 -0700
X-CSE-ConnectionGUID: 8ERKAbj2QuC8nQkDpBj1Yg==
X-CSE-MsgGUID: 24TXGXNTR9yvOS5O4lvZyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="149233700"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 03:25:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 03:25:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 03:25:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 03:25:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iGX20B3rXbIgvyNGLjGXuphoS+elL11iZibh1eoLTPT7aUNTGqCMGq8PxSmxRa/1OzLpmgxxd65AgIi5i9yMIkzI8DTd+O0Mfo4Xx8NqwD+wAT2UdmcRKZSt3/BFl4jBcF9MM7QUHEhN12eLQ/mQK0I01pqPgff4SUJn5Cxk/ILbaDqLsNeB62Uk3fNLsIJtG9HVSoekg9Ku9AGHlRD/Aj3qBC1NEsi/Ih53kWb0hJU2FkTWJShMoGGGI2OFtXHXpLRtcKuOUJp3o8Dd6/XmJP170xpevu8HsMhp3R0+e/raWd8E/4zse32iJ4WBK96EwFNM36Qr67M+7VoD53NKBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pcAaPr86Opfi5/rLvVjVlgxsf3SfRwrK33rNOu5FD1g=;
 b=mksYUv7m/85sfmCDrNcrP34dL+zBjENR/qJ0sBm5Z4mg0LSybr70TZPey/UwqnPP7Zx29ll4/mBsT3L1/kt8TIv6+M1DAK7SWOrkVGzvJYbo7YWhkGhcwY6afataX6bCJI5MfTsGTTUi7AxloRMP1D86JSgwtLHzjvMDTTqBuXxvKJCKAeSIvVal/svaEu0chqwzglDtd+nDFJz1XrcRCJectxlfYEW5ZQrh4cQx9p6JfYsO4V4z4gccu/yc529OEjumaZkgmMcjC/aLqbdlN4WRVnaprDPJBZaqJ9DDwqVKspxvWRE4alUEYNTw+AQtGME+2SyWOww7nWai6bEu2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 10:25:18 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 10:25:18 +0000
Message-ID: <8597a1d6-d6e2-46a5-87c5-8444a2c7c342@intel.com>
Date: Wed, 18 Jun 2025 12:25:13 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: "Kaplan, David" <David.Kaplan@amd.com>, "jedrzej.jagielski@intel.com"
 <jedrzej.jagielski@intel.com>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, Bharath R
 <bharath.r@intel.com>, "regressions@lists.linux.dev"
 <regressions@lists.linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <LV3PR12MB92658474624CCF60220157199470A@LV3PR12MB9265.namprd12.prod.outlook.com>
 <59faaf3b-d75d-4405-a7bb-a137918617e3@intel.com>
 <20250617160935.08f8652a@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250617160935.08f8652a@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZP191CA0037.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f8::9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6032:EE_
X-MS-Office365-Filtering-Correlation-Id: 7aa35434-abbd-4034-44ed-08ddae526c46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3Q0aU9VV1oyeXpCUVFUKzJ6NktqMGtoZzNlT2NxaXJjNjBUMm0yd2JzSnkw?=
 =?utf-8?B?TStuaTRsaEJzWEExTGx5S2cwMU0wVGpRWXhJQXN2N2tVcU1BdTRBYW53c3F0?=
 =?utf-8?B?U1IyMEZXWE04aHYvaXEvUG1LendLd0dmMmluK2c1MS9neWExRlRNSXdkTWoy?=
 =?utf-8?B?Ulc4Q0hGbXpzckQwelJLOVUrU1A0cTMyLzltRUxSSHRIRFBnd044MHNsVDdK?=
 =?utf-8?B?MUMrM2R3Q2F5SFhiM3lzMDFxVWFTdXpaN1V2K0Y1VlVJNEY2R2lzRmllV2Zp?=
 =?utf-8?B?Yk5xL1NRV2hSVVF2Qm4wbHphQXpPSndjcVRGSXB3VnBGNC9VeFZVT2VQUHMw?=
 =?utf-8?B?YzczZkRqNW1VbkgyNUNvOHFtNTVQRGQyTXNHb3RkS1pDQ0tFcVdwblFGeVlH?=
 =?utf-8?B?b21ZdGdpRG9mZnVxLzJock5HSUVtL0wreU13WUR0WW1ON1BnM3h3d2RCTStP?=
 =?utf-8?B?YWFNZ3B1M3JJcER1ZW95YSswbTYxSFRrdXNQQ1gzbzZaR1VKZjlMYkhQb3Rn?=
 =?utf-8?B?U3Bwc0grV011TEwxdEFkWlkyVGdnSzluSTJycGpTRHZYOEJHa2hrZHZmS3V0?=
 =?utf-8?B?VldWYXNzRlVwUGRINGdpS0E5a2QySzQ0SDNjZXNHaUt3UlR6dnNZMHMxSG1r?=
 =?utf-8?B?ejU1c05kVUJaaEFvSlcrdEVOQVZzYkRINkJtTGZtYmxzRmZTWG1RY1FyQktn?=
 =?utf-8?B?cEUvdTh2dFRKWFdsSitZYXBEODhoTWFyL1NwWXlyL3RvTk9uVGsxRlNVdHNI?=
 =?utf-8?B?QTR1NTFKZENhYlEwSDJ3eTJ3TkdVaXcwMkpsdUJMOTJCcnQ4TkRBbjY2a1ph?=
 =?utf-8?B?aXJhUHJPdTAvcFY0NCthMlZQaWt4bEs0Z2JIVGFHOGlBTGpvTFBlZTkyZ09J?=
 =?utf-8?B?bGh1eTJhTUtrZktVbDR5Q0xtY3phSjNBeUtTMEJmckNsem9yOVN6djVsQUg2?=
 =?utf-8?B?OFNUcDdsQm10eWJlNUk4YkFXaVhBN1cxMkR6dFBrR3ozL0FBM1hKbEIvUnBx?=
 =?utf-8?B?Zk0wTVNtejZxMlFmMXNLbks5c3dwU1g2emtOSk9lNlFLaWJMNFE4K2t2UWJN?=
 =?utf-8?B?OVJXRzFITmNTMFVkR1FWTVU0QkRqNytMTWlhUExyOUovN1pDV2loUVA1NHFY?=
 =?utf-8?B?aWZaa0VKYUhiVDZETXNDSmsyOG9NT01TQ3AvYmRSTmtJeWMyUzhiWncwY2tl?=
 =?utf-8?B?alJYZnAyZ0V2dkR0ZlZ2VkxXS2k5UE80bGZmM2hKYUt3NG5BdmRwekdvSFRm?=
 =?utf-8?B?S2pmZmhoSmhHZXFYaTRHL1NNYWZyTDlKQXpDd0lzRGlmSUR3RDdDcDU0MVBV?=
 =?utf-8?B?SXZ5TjVCOFZMTEY4a2NmRkw0bGhrQ3FFUC9pK2RxV0JCWkhwMGxoT0I1R0tt?=
 =?utf-8?B?bjFpZlg2SW41d2R0c201OTVFNmVMYlh0Y0JzS2J5RHlMVHZjYXJtUWY0ZnRJ?=
 =?utf-8?B?NjNJY0JOOHVqQys2UEFoN2NxbE1zYThsa2ZSYk5RNWdVTisvM0oxN3hxRUFL?=
 =?utf-8?B?d0RQS1ZhNFhvWkN2eTFtSExhVGYzUEUwWnVYM0Exak1lWmZ1K004RjA0a3d6?=
 =?utf-8?B?ZFpqMWp4K05RSGJIejZpL2RKVHVDSlhEd05qNFVyWGd3VXVjU1dQSE5PcXZI?=
 =?utf-8?B?S081N01ydDBCVVZlbmwvTFZuTEx4OXgvWVVaTUUvZUxyNWtZeWZaa1hvUzlr?=
 =?utf-8?B?TWpPYjJKQldIWkRyWThYUHBaTitZaXJqYmZrazNQMzlobnRkQkJ0cFR1RGQz?=
 =?utf-8?B?N2RGUUpRQnBoK0VPNmphUHF0dzdhcjN1LzIyT3cxUzIwenNKdVcwNTJhMG92?=
 =?utf-8?Q?yGDdjMJV02NBNYizMwJllnyv4F6DcwAy1fHdA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0NsR0FNZW50dWd0Ulgzb3BjUHNLdENaZE95bklzZXpqamsxY0NRbTI2WktG?=
 =?utf-8?B?a1hIRHhobi9ZdVN5Qnp5SC9kMElkOWExamdxQlBhQklaaUxYclVmL29HZ3lr?=
 =?utf-8?B?TlpRSDNKWDNMd3UyWHZ0bU15cmExWXl2L1ZiR0tQTGt6azg5Nm1DK0U5eVVW?=
 =?utf-8?B?YzVCRXhOWHVIYXM3Tk85SHlzSjh4RmljaUFUTGp0eDFCV1ZpSytUNktzTXY3?=
 =?utf-8?B?R2JlQnA4OG1WKzkyOUZYWVM4VDQyREJGRTZPUVhxSUZab2FmYXBKaEVQS2sw?=
 =?utf-8?B?TytNT1NoVDdtNlY4UDE0aGYrOVpaYU40UGxoNGlBRzdDdkVlVFQrSExZZXhU?=
 =?utf-8?B?YmFZV0hiYTBSbGNoRm1rdEtFL1R1T0VlZFJpbkNCQ2xwb0lIejg1TUUyc1da?=
 =?utf-8?B?ZVZ6ZC85NzBMK041VHZGNm8xQ2lZQ1oyYjN5NTloaEt3RVFTSTZOVEJGaGF1?=
 =?utf-8?B?SUo0R0FJM0hHTXducVNZeVdMRG1oMks4UzczZzQ1b09ycDkvcFZOa0tETTlI?=
 =?utf-8?B?dnFKR051Q3VkYktzTlYwK0xqVVdhR0JneXR0b0k2bll2eTJYVTlDNDhTTTVH?=
 =?utf-8?B?dkRvOUpFRytCa25RRmcvQm9VT1o0TTlaM1hWRksyb0hHTGYvMjBkSEdWcTk5?=
 =?utf-8?B?STNtODhSekpCWjhjSnBEYTVvNW81NjhNOVRSd3RyUkFTN2NEQUIwZTNCMU5q?=
 =?utf-8?B?a0drWktOL3JiTVZHSEJiTFpVOG8wb0VMejRJR3VKenN6b0dsR3lOcTV0OHBF?=
 =?utf-8?B?bkJSM3U2aE4yNTM2azlBRXMwTkN6dTBTUXJNajAxbGFHNXNQRmxNbUlxTTZi?=
 =?utf-8?B?QXZOY1RjT2VnYW1KYkc4K0pIWUx0RUJQbzFhalRkZVpCdjZKTzlaSEdldTV6?=
 =?utf-8?B?NmlHLzV4aGhxaHpMdkpRdmNTZ2JqMERFRmxNc29OU2l6UTVQV2RpRUlBSHpk?=
 =?utf-8?B?VWc2SDVmZmRSV3FNaGE1aWRzUHhkTmpxRk03QTFVNXcwYm1wRlFuVUErUStt?=
 =?utf-8?B?d3NobVRkUWs4REtrSHRtejJwa3BYT2x4cmZlQVNJelVCak9IWWVIYmpQV09Y?=
 =?utf-8?B?YWdLN1lCNXozZjVUc3pnRHhZZXhqWFE1cG9oVy9aWHJjUUh0R3R4M2phNEl1?=
 =?utf-8?B?ZVBneEVaNG1UMHZwa1U4YmRBOEZ6aU1PTFk3MFVlM3AxbUlYM2VmWS9Fa01a?=
 =?utf-8?B?QytxdWZXYW45eXdyNjYrQXkxRlJnYi9ZNGFwOUlOUDFWUUkzWTg0NzhNWnNJ?=
 =?utf-8?B?VnI1N0lxSlJheTRTR2c0RTlwM055eXl5OXl5Q1NlNmYwMENRRXVpT0lGNjNq?=
 =?utf-8?B?cjI3R0IwdGNldDBMSzdZMGhOS3M4YkRzZEhRc3UzSDJrWFJlUzBjL2JCa1Va?=
 =?utf-8?B?ZmVUWUlITUZpbCtTT2xucWdCTmxnUlpPbFc5SysrTXNxREVKVVhrRkQvMExD?=
 =?utf-8?B?b1NhTExndk5WQThpd2dadkN4bHJJWFk0VXNHL0JCMW93Y240UEFtVmJORVcr?=
 =?utf-8?B?eHhYdUwrUDJDUjd6RlhUVXRHellrY1diZzBaNFlqYXkrWVFla1ovZjRwZ1dt?=
 =?utf-8?B?a2tlMzhoUmQ4NThqMlVYSEFzUmhvQllBZC9QZ1BsK1ltUldmYVlzTzB2UWV4?=
 =?utf-8?B?QmdrWE1zQ3pwamVkSUhSbGJOM0pvNXg2RTU2eTVkdGFmazJUTWhlZ0xQWTdj?=
 =?utf-8?B?YmF1NkxJZVE3RVJleVRaWXEvRk82TzlxeSs3RjNRQW9CSGRMeUpJQXpQN01a?=
 =?utf-8?B?NGFCUVphV0dYUlBHdHl0Y2xxUTlIRXYrOTlzOWwvbWxSL0JqWWFRTHlqZ2JL?=
 =?utf-8?B?bTg0VDNpRVlodXdEYWNManFoTlZEdlZWbnExb2JNb0ZiNmpNL1JhelVJWjhK?=
 =?utf-8?B?TzVnWnNxN1ZZMjFXMU5GRGl6aEVOVE50L3lObU1IWVVTL1l3eHQwazZSQ2V1?=
 =?utf-8?B?aSt6ZzBJWS8vY2t0VXpEbEI5Q1BTZkZ6WlVIaTJ5SVBIQlNyZnFpYmxpRTRD?=
 =?utf-8?B?Rk42cUZHQ2lPRmoyYkRyNTdoOFpRRHY0YlNmQnJVSjRxYTEzbkdMZEt3cjZu?=
 =?utf-8?B?ZEFRUzV0QWY4V3NRQmphUVJTZ1FYWEZFYnBCNllOWDFKU2FhVnQyTjY1amZO?=
 =?utf-8?B?UzhZalVibndyMUd5eDJXS3htVlkyam84WkVCZWZqTXA0N3NvSzVXS0NIZWlH?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa35434-abbd-4034-44ed-08ddae526c46
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 10:25:18.5373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lNo7sAjzo/SC1PObJzlhWSdcehy6ppJph6FIvu8h51pkbaFKmHkVuhoGuceNI8xm7aKxRWFNXy/wU/AdegskMol2rlmDoWIIi1JPsHdRL1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750242339; x=1781778339;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KhyctfnbYoz0dPmNUF2yK/nBe4moFzKM+cfHXUWxkSo=;
 b=VoaKV05ytRFG9dWAMN2eRkSrZcs2A7MnVRC7uuc+R5bZqVXwCgPbsPRd
 NVpEJtiLoAZUVsrPu4CltTZ8Y4iHqJUp0/XcKvNqyOSMenPmGW8e/0ygo
 D0sAHsGA7AzYPoT5a3tpYxOadbyEFfcIuGOtRMxlCJrlsLdiP2U5GZIaM
 DUKTHE8YarNpV0F5LH7N/1raqDP43rMHljF9DCFxGn5BUz8yEOIGvg0zr
 4mVHxfgDoZDVIYah40HIgv+YIH9nm3MPzm4ydUrkPCj/w3nGI7JovtkfM
 t+MnJ/VwyWbZczYeJj/lR0z3vRyJJrMk30u0ssXo8zE2/Jq6HLbmLQVwi
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VoaKV05y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] ixgbe broken after devlink
 support patch
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

On 6/18/25 01:09, Jakub Kicinski wrote:
> On Tue, 17 Jun 2025 11:01:18 +0200 Przemek Kitszel wrote:
>>> Normally, the device is given a name like enp194s0f0 and connects to the wired network.
>>
>> now the name is likely to be different, please see this thread:
>> https://lkml.org/lkml/2025/4/24/1750
>>
>> Is it possible that your network setup script has some part of interface
>> discovery hardcoded?
> 
> Hi Przemek, could you/someone on your side try the workaround
> I suggested in the earlier thread? I'm not sure how actively
> developed ixgbe is, if the work is not related to any new devices
> with more complicated port topology breaking people's setups feels
> pretty unnecessary.


yeah, we will fix that, thank you for the remainder

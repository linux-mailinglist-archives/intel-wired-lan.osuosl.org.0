Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FD9961FE4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 08:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA013400B5;
	Wed, 28 Aug 2024 06:39:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rOFCD0cCTt0U; Wed, 28 Aug 2024 06:39:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 138E140492
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724827160;
	bh=sQEvxDw2ZQxiYV0AI4Uc/6ygIXFAIdAznvNR81enwyY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KaodXutz8zjUaIsPKL8rdrKb8GC+AzaTHqL6LzohYvLLSKYIZuVRe+fW1vvw9A+bc
	 8lWt7uajO2BeG/Fj7J6NvWZGIhYhGzA4gYGpoloi/Qumy/huX/fh+lTw+Uawnixwc5
	 /J5IXvZvLt8c9UsRV18shh9bn0zFEJovKzE1PNLQh/Zk2p8jR9y5GQlS0g63kqWGBy
	 8aZRJDmi2pY3whCFNHRaNvDVBrTNAHHIXDq2+jXFd63UNzKU1zr4qbslzSK1b3EpR9
	 kYfgV32Z1YgQtk9qgvQLEVBu31Qi7XLlTNIez74AmdaXysYG0ms1V6Y48NzbbP4zVM
	 FALrvrVU6i4Hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 138E140492;
	Wed, 28 Aug 2024 06:39:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D33B1BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 06:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37DA9406D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 06:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TOH82qMRI_qg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 06:39:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EEFE5406D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEFE5406D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEFE5406D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 06:39:16 +0000 (UTC)
X-CSE-ConnectionGUID: Cb1wISlxRiaSqMhgRtkYWg==
X-CSE-MsgGUID: ttkBnPZGQ4GIekS31Yum+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23499784"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23499784"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 23:39:16 -0700
X-CSE-ConnectionGUID: nZFFu4cVQdaa+rk2GFiW6g==
X-CSE-MsgGUID: B69VgmyDQFijt/qC1XbTZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="62961210"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 23:39:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 23:39:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 23:39:15 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 23:39:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GBgmH7irSVX3IinVb03nsX50c9xTmryMdaTYlCBQ3ZUyXmbo0M/ao/0MQLu7YjKnKjX7UbQzHijpaxynYaQ6V0BrEMWoF+6bs4OHm24S6NXDA2kkSsqMxfuGj+hHZDt4Uan2qMhpgiuOQAUxBOyj2y/YOLQJYz/xl1lmiGPITCm+vX5abCUZs2bwCqkDGR3cFz2NKTGqrurID6XZwQyDO5oCoIAms1560lFbTC+807OKPHA/ak9fZKtsXIrTpOJPvK1luLNniqlQJVQ8OVlgJg5LAs29XgPM9okLB0nnbF7sHVNAzXHeThtGItpMKSkhgsOUBl9i97J52eXLWyxRog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sQEvxDw2ZQxiYV0AI4Uc/6ygIXFAIdAznvNR81enwyY=;
 b=IDyOt1nLUFG3D31BPR38aizSoBq7jEO5zRvrbT/V5uCRVQZ+FeuZHP2/n7bBNZUXuTgoP4J54lCpJ1J8V4RQXeabvKyVqC7l81T++LdOkYfJ1aQfL4pmPUk6+zvl4ZeC/Dn9fx/MqSc3+xk7zmHLTy2glaTaXy+4IJluL3EpzelAsnP/kFacTo43odsUONDL2zY8AxEabOTb7Lui6RGIn1zCOVWxcxQ3JZSIFjoop6+S5+1WO7LiHnOBlanJO5DxaEhizbTdSzcpokfcGHgODZaSW8PcWOpIIc3TBq55sbPGGh7mx+orQJUXi1leAgE619yT5i+kjoAoeUOmJzKT0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB5923.namprd11.prod.outlook.com (2603:10b6:806:23a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Wed, 28 Aug
 2024 06:39:12 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 06:39:12 +0000
Message-ID: <22ce29a2-a483-464c-8eea-edf7052534f5@intel.com>
Date: Wed, 28 Aug 2024 08:39:07 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
 <20240827-e810-live-migration-jk-prep-ctx-functions-v1-12-0442e2e42d32@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-12-0442e2e42d32@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0003.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::13) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB5923:EE_
X-MS-Office365-Filtering-Correlation-Id: 787619dd-33fa-4fd5-448a-08dcc72c2116
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUsxYzlIWm11SEVNTEVvQktlZ0J1c2hpNG9mbFd5dDlXZGZmaC9JcVZDMjhl?=
 =?utf-8?B?NzRNQ2JGNlIwcjFwcUlKQW1Yd0lhOTlKbWVLc3JSUmQvbSsxQkhXMUozT0R1?=
 =?utf-8?B?VmF0dHRBUWVYMGZqZWhibklzRTkxcnh0VjlIdzZ1VEhwVFdQSE9aZmFmMmxv?=
 =?utf-8?B?SWMvRXB4NmFXeHpwNW9TTk5sZFZMTThTeVI1RUZReUNITngrUXhvdDhSWWVY?=
 =?utf-8?B?UFdiVUZuVUxEdGpWdFk1dzRBZmx4bStycFJ1VmhaNFNKK2g4VHhuaG5pM2JK?=
 =?utf-8?B?Q1dYbHNQMlp1cE0wVEJsLzUvemVidTRQOUk4SGsyZjBQQi9KR3hvM0tvVEdS?=
 =?utf-8?B?TnIxUnB5YkduRDRsU2JLeTBXWkllQjYzYlllZ1l3Wm45aGkxSGlvS2l4OWpz?=
 =?utf-8?B?RENCZjdXNFlnZXNEVmRkMWJwVStrTWtWQkpaQVB6bEt2R2lsQnBIMzB5TjNu?=
 =?utf-8?B?VzE1YUZ1cG1KTVVjZFJ4aURzSzgzRElpQ2VnM3B0cVkwY0RoUXBtUkNUR1dn?=
 =?utf-8?B?ZkxJam80V3lhZ2F2R0IybXhpZ1IwandhWTlpMFlSVGFsbDZLV1lnUGdITVlj?=
 =?utf-8?B?eHRhZ2VLRjBNZm1QNVlFbEhkenRXclBPbHNtTC9SSFdqcFAxVC9FODNJeTV6?=
 =?utf-8?B?VnRkWk82S05YRDV0RDNOVjd3bTlhV0dUSW8zcFJkVmNmUzlvRnpubVYvZjUz?=
 =?utf-8?B?dG1iMkhyNHBWMTF3ZHRPTG83aTJ0bDZrdm9XMzBnTEZKMzBZL3hkUld1OEIr?=
 =?utf-8?B?MmlOanIyOWtjWmo2NHNTV1g0Zmc4V1hGTUgzdGZEcGRJNEdrTzVsUVRhdXpz?=
 =?utf-8?B?MWFlVEQ4cFJkT3l1eEU1Zk5CTzhwcjZoMEVwNGRmZjYyZTc4U0JpdHFHS0Mw?=
 =?utf-8?B?cEFUek85cjdtU3FLQUVpK2RxMUVIN0YyTGFCbm1SY1B6b21veWJ0aGtsd0ow?=
 =?utf-8?B?a0JmWE9YTmRDWTdNOVhnM1gxN3ZSUGhLNFZMVVBmMlRHSlUreGNCcFQ4SCtS?=
 =?utf-8?B?ZEZhVVBMK3EyR2RtbFRyMGZVUlU1dXBZdGpKWi90dzJZMThsVzBLVGtFSmhp?=
 =?utf-8?B?N1llTEtkbXNCUVhFWEtQZk1BdDBVNndUZGVwUDExRmRobkhZZWJVT1B5VFY1?=
 =?utf-8?B?NlJqS2FMQkczcnFqb1FRdkpReXp1N0tqZEcwaGFUbE1ZR2hLUjlEN3AxQ2Uy?=
 =?utf-8?B?dGdVRGhDM1oySFl3d0tOaS80U3RLb0JnVk93QUh1Q1BsN0tyUTRtOXY3UDI3?=
 =?utf-8?B?a0dzNTBmVEphUVl3OHJxWnJHWUxSUlJkUUZXUTk1cFZCb1doL1FBMk5DYkhJ?=
 =?utf-8?B?Ri9aa2RxNWFiYS9McTBzZDRZY0Q1U0xvRjhoNHlXTTNZYzFYMmVTeVpKL0dh?=
 =?utf-8?B?Yy84aGtMeTFMMHpZdjkrU0lGODhxUVZSRkFUbTN2aW9vNEhZbHdpWUd3RGk2?=
 =?utf-8?B?cEpyWGJKUXIreU00TlRlS3VNcXJQaW9GbTI0M1ArZHJvaDJMWXpONXFCc2d0?=
 =?utf-8?B?SkhNLzVwTEdoQ1F5NGZNTTMzTE9YWFNzcm9sam1XbHpsNHdpWEtYTkx6UGpq?=
 =?utf-8?B?NkpvcS9HV1hXUExPQ2swQ1lEQU54NUJ5RnlkVTJJQnBzdmVXdWRMN1RnV0NN?=
 =?utf-8?B?ZzlpVWJyQy91REZMRTBpYzErVWZDandqVzcvZUhONzFKSVVXamxHOUs1K0Iw?=
 =?utf-8?B?OGFjWlBxMlhtNHdjcG5BOTEvWmNYUm9selIzQlhxVC8xTnFzd2szRWlEcVMy?=
 =?utf-8?B?YlpIdFFVQUdqM0x1Nk5SVTJyeU9DN3RURTJZTXBPOCtlWStrOW5kVkErYUNm?=
 =?utf-8?B?VzhhdWNKWVIxMXBKY1M1UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czZvaGNOVEk2eHpwR0dIelV0TmpjeFM2ZkY1bDlacGFMVUtSYitaa01Hb1ZX?=
 =?utf-8?B?K1BneWVabXlYQzc5MEFDZ1VBWVF5blovakZkclhHMThLdkZLNVhyNmNWNGFx?=
 =?utf-8?B?NklCcXZYVWZFVW5mUVRDczlKMGVneTRiSnEzRnFELzJlYXZFNHZrd3RBR0h3?=
 =?utf-8?B?cHFtZExseXlucDlNNkNIVGNrSlpwU2dmUS9uTWlobHlBeGhQcUF0cjJYUXJF?=
 =?utf-8?B?N3JodG9lUVZ6c0ZGOVRpdGhnQ2hTbUpSQXhKNm9wSGEvMllDbkxNalNYSkZL?=
 =?utf-8?B?WkdvcTRnRVdNZUxnZm54bnVWcFJtSmF6UDNXUlNSRUNZZkx3ZUV6ZHRMNTha?=
 =?utf-8?B?c2svMEtwbmhScEhtbzRUN1UrNHpPSXBvSXkxTjBNYTdDdHU1YWtsZ1VNUXd6?=
 =?utf-8?B?L21ibTlNWGVNQktlYmN3V21sN1EvQ0NHOVJ5Y3lwU3dYM0tqYjRXM2owVTRS?=
 =?utf-8?B?RjlzRjZnSUJPS1FzcGRXTkQ4TWpMSGlpMW1ZNiszTFc1MGR6RndLUWNRWUdr?=
 =?utf-8?B?T3F1ZDVIdHB1dmkvSDl2eitHQnNicWgyQ0ZKUHZXeldqV3JmSHpYaDhWZ1B2?=
 =?utf-8?B?ajdzU1IwL01sV05UY1ZzMkJrUkQ3dkN4OENLRjB1OHB5dFh2SFZjR0h1Rnk4?=
 =?utf-8?B?MUZnMUxWck5iUXJuNmo4MWVRZVNrcGNFUW9hTWVYdlNiV0dZL016aHF6Y09T?=
 =?utf-8?B?OHdOM3NGT3VKMUxSN0hLU1djd25yTGw1dnNPNk55SEVSb01USVRIUHNhVDl6?=
 =?utf-8?B?U1FVRk9tOGpQOTlmZ283cjVIMFZFdEFmOEdORFJoc1FJeDNLWmkwMXk0MDRa?=
 =?utf-8?B?OUFMK0FxaU1hMW12ZlBEN1ZsYmxHRjRFd1dTbjJPWXlsZm9sQUZ5anowM1F2?=
 =?utf-8?B?KzF3TlNVcktWeUI3K0MyenZyT29odUEwU3RlWkRPRXRlSWc2T2lPT2lDcEI4?=
 =?utf-8?B?endlMVhqeThvUHF3L3haRnRmM25pUFZhd2pDTmVaSUhKamxmMGxOVStPU3pD?=
 =?utf-8?B?NWxsQ3IyYit0SXUwL0ZtWDIxWU1nWElqTXd3SXB4WlFqUEZJalFmTVZmM0R0?=
 =?utf-8?B?K0hKakR2bTUxUHlnL0JqTlNELy9lL3hML2VOVyt3TEVkR1kyc3pCdlBMZmpv?=
 =?utf-8?B?YU5wMW1ZQXd2MnU4L3JIS1ZLSlIwUXQxWG0vQW5vc2JzRUpua1pWUmhoNzIz?=
 =?utf-8?B?QjBYRjA4cUE0dktsMkdRY1dQVi9VYlhlc2VQdjArKy90Z0Z2NDF3U1hQWDhV?=
 =?utf-8?B?L0hONUlCNHRNMzBXamZSTjZLanhUUElqV0l0eEJmRmwvSGF0OUcwZTZ5eU0y?=
 =?utf-8?B?V1R6RVVEWDhiVlR6c2hHS1BVcE84ZjY1NTg5VHJ3VFlWT2FYS3NUWk5SeENF?=
 =?utf-8?B?RWpKNW1wTm0zUU4vVnZYdzVQM3FqRzI5SHlMUGJPdjh5dTBhbms2VjJJRXkz?=
 =?utf-8?B?MCs5NnhIQVZrOE43K3U0d0hOdFRrNCtCSGdScHpFV2t0cnRQUm5VUDJIdWdY?=
 =?utf-8?B?L3Qyc0c5UVhvTjdMazQzQ2EwbGV3S0VKSDJHNEoyQjlsYlcvVm1BN0lhZm5L?=
 =?utf-8?B?N1pTRFphU2tkUW4xU05lY25ET2YzWWJTNEJRK1RJcXgzeCtQU1doeDhaMHRo?=
 =?utf-8?B?cmg3YzBRVEFMU3hmR0RkOG5qdlVYVXdNTzE4ZENGS1dUOXJVbURPazhvdWxO?=
 =?utf-8?B?UjVLeEMweE0wZHo5TW14TkFnNHRJczkxdW91ZVhyMGVQUmZxRW9xVHZCUXQ5?=
 =?utf-8?B?dk1OR3ZaTnRCUWI4aHVUQ3ozSnVUOGU2bUhSWXZGVjQyaTlvRVdUakl3YVlO?=
 =?utf-8?B?Y2MzUXRHY01heXQ1alFrcmk0dHJtYWZTb2UrWGIzSmQrSGhNcFBzazVuMUZv?=
 =?utf-8?B?eWMzUmdYM2V2WUNLek9ndUg4ejVobjFNQ3VuWTFrUmZCV0JGVU5kVGdBWEdh?=
 =?utf-8?B?UU0ySWhobW1SSThWMGZjRVRwSTZISmJZSDNpcGtpcFpLVU14UWh4VUVXYWc5?=
 =?utf-8?B?MTgyTnNINjAxRjYrVjYyTFBSRzZOY2N5VS9UN3VyeUh5Ky8vZFQydDRFcFlu?=
 =?utf-8?B?TENLT0VMbVEyS242NkM5R2l3QktIdjFxRzJqeTJBSnM3TkVwaTJMcHhvUHRX?=
 =?utf-8?B?WEJXNDJzRmZWdlRhZnkzSklMMXFmSVlNbUFuUElJVHEzMlJnc1VUUmp4bFRW?=
 =?utf-8?Q?hBPPXXFfQO7U1cM4x82S11U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 787619dd-33fa-4fd5-448a-08dcc72c2116
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 06:39:12.8009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: God5h1CYp9Q9UdCXzRkB+gpk/QVFgonTF/1TMPVDKDigBBhiApopU6IpFMSk8hBdsCgSVMqCD9uyhRGe6Qz4NySEhppkAnPaGeICyc/ghKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5923
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724827157; x=1756363157;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rFwXwZpQ/aJC+4K7h4+hJrUFoB9IyetHoGHB6QUY/jg=;
 b=Gcxb9xAjdKsHPPVRxiy4A7VkcSxCE17EQX2G+KddfnNUOLLKpZZO/u85
 W6L7fJ2gqQ7YpjxCYlMGGcPizUKvWnSNSxVnRAfRW/INe0lCKbW13Tj9I
 hisVvlN7cu0wDgEVGuJoK3CZvA9Wqq8nTucLkfuGgVx2pFEE+uLciDOR3
 wrjy2EhFfGexSQbK7ns9xRXLxGZnMAGxdm0bYu+pqNhs1ixZMwsQ8RnQr
 2Zm8bg81wSosEQ7ocuM1RuMjM+Y431RJ7Sheb3f0oULGkuEotKbYBChSF
 l1XZk5JXwp7tscYmTt6SgYTYUUmyuEQ1MHxfXqjCjniJxY0j5zv/yoOIA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gcxb9xAj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 12/13] ice: move prefetch
 enable to ice_setup_rx_ctx
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/27/24 23:52, Jacob Keller wrote:
> The ice_write_rxq_ctx() function is responsible for programming the Rx
> Queue context into hardware. It receives the configuration in unpacked form
> via the ice_rlan_ctx structure.
> 
> This function unconditionally modifies the context to set the prefetch
> enable bit. This was done by commit c31a5c25bb19 ("ice: Always set prefena
> when configuring an Rx queue"). Setting this bit makes sense, since
> prefetching descriptors is almost always the preferred behavior.
> 
> However, the ice_write_rxq_ctx() function is not the place that actually
> defines the queue context. We initialize the Rx Queue context in
> ice_setup_rx_ctx(). It is surprising to have the Rx queue context changed
> by a function who's responsibility is to program the given context to
> hardware.
> 
> Following the principle of least surprise, move the setting of the prefetch
> enable bit out of ice_write_rxq_ctx() and into the ice_setup_rx_ctx().
> 
> Fixes: c31a5c25bb19 ("ice: Always set prefena when configuring an Rx queue")

The code is fine, but I would drop fixes tag.
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_base.c   | 3 +++
>   drivers/net/ethernet/intel/ice/ice_common.c | 9 +++------
>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 1881ce8105ca..3fe87a30c29e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -453,6 +453,9 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
>   	/* Rx queue threshold in units of 64 */
>   	rlan_ctx.lrxqthresh = 1;
>   
> +	/* Enable descriptor prefetch */
> +	rlan_ctx.prefena = 1;
> +
>   	/* PF acts as uplink for switchdev; set flex descriptor with src_vsi
>   	 * metadata and flags to allow redirecting to PR netdev
>   	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 09a94c20e16d..67273e4af7ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1495,14 +1495,13 @@ const struct ice_ctx_ele ice_rlan_ctx_info[] = {
>   };
>   
>   /**
> - * ice_write_rxq_ctx
> + * ice_write_rxq_ctx - Write Rx Queue context to hardware
>    * @hw: pointer to the hardware structure
>    * @rlan_ctx: pointer to the rxq context
>    * @rxq_index: the index of the Rx queue
>    *
> - * Converts rxq context from sparse to dense structure and then writes
> - * it to HW register space and enables the hardware to prefetch descriptors
> - * instead of only fetching them on demand
> + * Pack the sparse Rx Queue context into dense hardware format and write it
> + * into the HW register space.
>    */
>   int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
>   		      u32 rxq_index)
> @@ -1512,8 +1511,6 @@ int ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
>   	if (!rlan_ctx)
>   		return -EINVAL;
>   
> -	rlan_ctx->prefena = 1;
> -
>   	ice_pack_rxq_ctx(rlan_ctx, ctx_buf);
>   
>   	return ice_copy_rxq_ctx_to_hw(hw, ctx_buf, rxq_index);
> 


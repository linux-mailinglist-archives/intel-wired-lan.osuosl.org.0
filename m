Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D876A8A8FCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 02:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C58181F19;
	Thu, 18 Apr 2024 00:07:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CqDuasXf-tOW; Thu, 18 Apr 2024 00:07:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BE7381F0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713398868;
	bh=18Sux2s3Jgcq7OCdQYzj9xK65vqtCKG20fEkOfOLegs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HGP0TVAeoCn2guZ5HU7IfAHZTsowIMAFoMg+qs2kRwtvnk8pMbD3UGHTk8VBPJMcQ
	 A2+FC4dxxwQ5ReyO0K1FZTjwDrHYKCdJJiL/e6q5dLyxiDJvpsqUY6j/ey8OEihbrf
	 fyJsVzbD767RV5zQ3TTcPnNZ+PGDiaVOEo309FmWTAjQ2DeYMKDsYAooRssB5IWwUa
	 RQmdFgdo+JubtH1v9cQjHmXT549+81YY5b3578QwLHMpwnjSnz6lQYZRyMi5G3SS3l
	 UoVtYUBBTt84N35QaDFipnN3eL4hJwjYk1KTMhEBpuB2WfMzNYad+UsU+YB3BV5PXs
	 aisF9JyDJbgbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BE7381F0D;
	Thu, 18 Apr 2024 00:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8DF1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 00:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5312181F10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 00:07:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZ5k1u6b4Xcg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 00:07:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 996D081F0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 996D081F0D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 996D081F0D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 00:07:45 +0000 (UTC)
X-CSE-ConnectionGUID: 9iBQwXoSR/meOKiIXtZ2Lw==
X-CSE-MsgGUID: w43lgStvTfaqEyQfhfI6EA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="26379492"
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="26379492"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 17:07:44 -0700
X-CSE-ConnectionGUID: WU5iA7DTSWK/M5e3I2FC+A==
X-CSE-MsgGUID: o7MKialuS6Ov73Ct37J8dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="22834545"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 17:07:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 17:07:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 17:07:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 17:07:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDNGv8w5m1rXcaG0miqdmywSC16sL+KZz0zCdgGnt2AV1wcoXn3ZTgjMQMcgNg5TOdFjSIxwaafRRgvFRTs6fQ6w09aLoxyU4QZRL427bA/r5Grpj0ZedbtntTtLJVl6PwjDx9C6Lbj5V3+thZgQhsSH+AeGBJUsWrgAhqoj7Dt2aKFlCVU1Fdww9Az8tzkViaesMUuoz2lvbeQVVTAOJNMkLmQe8nrvMalSE9FiOr/Wgxg/CLeZtn2nzswdJoYAVCKFnMawF8RTeR9hKPuRxxsaVrD2RyMLi0aPi/weY+YcZC0Ht28Y/wnn8WkZ+Pyo4YHo1y6d3m3TS3Kn2gWEuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18Sux2s3Jgcq7OCdQYzj9xK65vqtCKG20fEkOfOLegs=;
 b=GHsdHFgF0SABE5UZtH4U9Kt16Ogzz2VxqcF1/HKv+Q4fOau67PzK6uF9MGVv/8Nl/CN/KLZtJIIGw1iPW9THH5V5PKfrl6IdTfO6wqaNxrHaJktHLfXrIcCmjiTargKW1rEq6OPz63BLGm9/tehDLcJn+hsAR8r8Xk6uF0WCNB4tv6kdyKhI6NJ8dNc3/jgiYl89fah768SQOAslSXYiRLogSmmnFeGOM9NFQQ5ElM7TkQmHpiUSIzv8K5O2DPoFm23OOyH1DWqt2VLRaMbuxnWs5Uw9UWSwEaJlhZv7q32Sw3VtRVThe7NUPnRpoKrEA3t0yqiOOCL4CLUzGhT3iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Thu, 18 Apr
 2024 00:07:40 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7472.025; Thu, 18 Apr 2024
 00:07:40 +0000
Message-ID: <2378caa5-9b1b-ca89-ca74-e9da91774e87@intel.com>
Date: Wed, 17 Apr 2024 17:07:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
References: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
 <20240415103435.6674-2-piotr.kwapulinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240415103435.6674-2-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::32) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7668:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fb48c35-74c6-470a-935a-08dc5f3b8ff7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FfsQEH9de3XEwXqW7iJeOExn2sH3YFmfr1ETwR8GJrRZj6g5gsbYNboSCKv0xcCgMCwRiSB6j85scXhb6FDIpXddoLScAUUerEYmq6PwsJnMGudnAjY3FSfbC/fkfFtp6Ke9ohEW9DFH9yY6jEpp3sunO/b0qUwkJtjDE2Q0b7rVs7z9oUUhdS0Bq18mvLwOJ28wc3Svj+Z8P6a2wZ2oWwiiNokb8nT2ozILkBuYrfpQbdLdT6nTzBDA3RkLHQ0FnNctW3+u+gYxusB9XfBQUIJbNZsda1nIEan0iWKvgQ/eXcxOMLrX/qXWuGG1oWBR9O9EDtH6iInYU3N7gtCfjZfsbl/q/YdhuqVSDbGdCHVTiJKvzhl4r+RBgFTO9ZxbDimrwpRlilYtYztM7gMRgwFOiD29osxJbiQpE1/7wMfVbAbsSLGQdHTxPacLNtLe/ucjOmwOMPW/y7lj3cb5Q89eqGHl55CiIc7GN341rxXaqb8IeiwUSlQYbZQXzTgfNdbsaLFa15ufVPlqPaSBST/FqVJ453C2S3a2RBHjZzNqUwqIn6507V66l2QwaDOE2AFgAbVSMg6T4j2RCVjEqdLMw2ulW8xdlwuIsuahmWLFRAi03VdnfTzJOjx/oCtiXb/Efh4hUZyZXsytC6KkIU1Mvh/xrkmjqe4geUvlmpk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0xJT0tPcGhLbGMvbXVrZURCZ0YydTVjaGd4V3BFZ0ViZUZWN2NsYk93Rm5X?=
 =?utf-8?B?cndvWXl4ZHFwbkkvUk5GaHUwVUtJZHhqMkpjU1c2ajBXblE5MEhwRU1XbmMw?=
 =?utf-8?B?N2ZHVkxWblAvQU1ZOStBd1BKVHB4NkhKeXFJZVJVVkE1RmlOVmlLTTdIMHhr?=
 =?utf-8?B?MGthcGQxQWtjcXlqa25wVUxKY0dPWG1lYXlLcitrbHBqZ01ZSWZJY0g2cklx?=
 =?utf-8?B?eVNmTzNlWjlMeEJVa0xJaTU4bVZNVmxBaUViZmthcVhPb25TODdtNjJTN1Jt?=
 =?utf-8?B?bC9UNDErb1hpaUJFQ2V5QXVsRUs4V01kenRXdUNHbGZ3RHBXNmlTRUZKY25m?=
 =?utf-8?B?aHBNMm5jamYySWloZ05NaG5vSmd5b0JBWVYwV05LR3BKNUg2dVdjVkJXRjR1?=
 =?utf-8?B?NlBuZWVnVGhBK1ZHTENPbXFZMlBoVS96QTJkbmlJdXNkTnQ1U1dHNndMZG5M?=
 =?utf-8?B?YWQ2MllvUU91Rm1XVGtKT0RBREN4R2w4b2xLNDVNek9XeXJ0VVNuQlFOclNz?=
 =?utf-8?B?TXNsRURIOUt5SjRUamUzZU1DaEUzRnh4K04zc1JFQ1l3WFRybGwxUm5Ka3B4?=
 =?utf-8?B?TllEYXRmU2c0WFRlREkxM3g3Sk9waS9OdWp2VTgvREx3ZWVJV1dHMXpSQXo3?=
 =?utf-8?B?TzN6dWl2bGFMako2ekV1R3FEZWdFdnhNOVF1bjZqMkNuSmR1UVVHWWFLM3dj?=
 =?utf-8?B?UFoxcjd5TWxtV0Y4TkFseGZjSkY2cm9zQklrbnpwTUcwelVQVUl6MGxRZHVy?=
 =?utf-8?B?d0NtaTdvOVJ0ckdFQW1IMWpuZldmU2VpaU5CbitDV0xlMVYvRTNENjQxZkxE?=
 =?utf-8?B?bnZLWjY2b1BnL3V3WUY3ZFIrZjdZT2pPR09KSkQrZi9ZdUlDSWRDcHc1MWJD?=
 =?utf-8?B?a1F0eXdCd0w4SG54bnFQTFZHM3NFRWxYV0pyQXZ2cnlWNXFpYzg5dlJ5VWNF?=
 =?utf-8?B?TFM5Z1hEMTFhNW1GOHZwRTRXZlZ2Q283N0R4a2ZiVk9MYzNOK08xMzZmN3VT?=
 =?utf-8?B?anFIT0VmVlRPYXp0VjQzMktoMDZqZWJiT1dYeTgrYUE0QXltNiszQWRFWi9R?=
 =?utf-8?B?T1V4Q2JFWG04SGt5K1ZBRkU4VWRmaTlyQU1DTmE2bHRYWFB4K3FKMVF6Tm45?=
 =?utf-8?B?cGlwMkpTSU1Sb3ZrL01WRlhjcXJROHZUV2xpRlVoQnZhcENiVmtpbE9acURz?=
 =?utf-8?B?Zm9Xc3g3NS9zQzBIUVVwRHhsSDhYdmV3Z3J5cXJwemdLeFMya0dEMUJkbFlW?=
 =?utf-8?B?b2NwWUpqWkRYRUpDYUNvOEpTaW5IK1dHSTllQmd6Uk91eVFZK3FDZk9MKzgz?=
 =?utf-8?B?dVpnRmZxV1Q4ZENjcVY3Z2N3VU9MN0wwTEtEZERBbGhrRmpyVHJYdDJRWDNz?=
 =?utf-8?B?bDNweURFQ3lLOEhEU0NZV1dzVDJoUXJSNWJjRDBSYVFjWTlxanBRRFJBQ3dz?=
 =?utf-8?B?U1B2N1ZnUkRsVjVBbHFPbEZJSExOR0ZiYmdRNlN2UmxYUFBHZFJMay9sMXhj?=
 =?utf-8?B?T0NYUW1Qc3ZMUFRxMkt5WnZjZG5GbjdiaFVsbjhXQXdIRHV6ZHBMMUV2bnlu?=
 =?utf-8?B?SmpVYmdkWmVtSFZXaWZEc2JtTzArU2hTdTB6TDNjRDlnTXJDQ1hYTjc4cUsv?=
 =?utf-8?B?TlArUDdsMVQ3VmtqN1l2ekFsWVhpVk1vWGpQa0ZKOGFQR2FQK3lvZGx6MlMy?=
 =?utf-8?B?SHhmSkFqVTNyYi9wVFl2TGRRMkswQVNFZGRpdXc0VzVHdEpPN3FVZmF2ZkJD?=
 =?utf-8?B?bFk2cktkZU4rMjBLVVlVcjRrZjRBdWQ3S2ZJak9VZ1I4K2lINmhVRUlaTXkv?=
 =?utf-8?B?N2VDaGtMQ0ozckM4cWx6bzR6V09WNGZmdVRXUklKb1dqSjhVT2J2aHpwQVBM?=
 =?utf-8?B?bERQL0dRWGt6RVN0QjczaDNXTzBFZWFKY1lSTHVwdGZMNlVGaHNHQTlVclUw?=
 =?utf-8?B?OUtEUnBPWUt0MERUeTRhRWVIN2xoQTArNHpsZy9GWGlwbUlwb25mZ3RLOGZz?=
 =?utf-8?B?VnBXOUdYN2R4UHUrWFlyYURUVjBSSUtjdWtSUXlyczV0czdrazhQSER3Ni9w?=
 =?utf-8?B?V3VhZ2dCeGxQWUlSSWNhNEZxNEsyNVFSdFozNUtDaVBCcCt0NFEraGYyM0Z6?=
 =?utf-8?B?b2ZRYW1ET01IYWpibWYxUHRneHRkRGM3ZXRvK2V3V0pOck5ZZDFUVUZRTCs3?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fb48c35-74c6-470a-935a-08dc5f3b8ff7
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 00:07:40.4502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ogF4n+9Kuocnud8X+7CYEwQMFZ99rymDD0I31V0EHdl3G4Anuy/9WEUd1kbTxKGhCtmp0dKpFINXy4myA72cSByEdywDl6u9JQ0wA9owUOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713398866; x=1744934866;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QV+1OnlFJobOifkTDURo48Byh4eueQPkmxjlKYtJPDI=;
 b=VB+1UbOff402F7vG/0dYJBNp5Yl1IzYw9xRzNwXUZeriQ6l1VYzWceCT
 W2L6fCdxScbeE+/cPuemcIU0lRRxYZ+3DMJBlY0HwTEgeihvpprCWFFpY
 wnosM1d+Q9+WlvRUlPcG54S4i+7Hut/ixFQSTgYFTNZGGHhzUR9UmD+lD
 vQlmxTprKjagND1dMVV+7TbTIdF3P3KROavQsVA8fWu4OzdhHJW6JlVUT
 msQRYN47PA1wLGsbbAO0qupC484hDFovhDK8dbqaLubB1Nb0/KxjEthQT
 jUgyRrYpeLcx1bQwaCyYuiMH7Rp5ROF9mGu+JkS0OIBhXfInewV49GhMi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VB+1UbOf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ixgbe: Add support
 for E610 FW Admin Command Interface
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
Cc: vinicius.gomes@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/15/2024 3:34 AM, Piotr Kwapulinski wrote:
...

> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -0,0 +1,492 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
> +

+Jesse

I believe the copyright on new files should be year of the file, not 
backdated to the driver's date?

Thanks,
Tony

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CdHFhf3d2mBmwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 00:21:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AA78E301
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 00:21:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2576D82846;
	Mon, 26 Jan 2026 23:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NTMFevPWuIPr; Mon, 26 Jan 2026 23:21:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19D618284B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769469716;
	bh=98Aexp+BFguDMG1QZg1r9iSEVEssWkuFP4W2q0fUQ1Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tMcbqW1xITKJxr1htnxMeiLH3YRPb91WuDkp0HgYnZhZE/SyDjDAdMdpVekEm0oP8
	 UHcWf7OZrLKukyRiIYGRMAISGOXnB3KgVEfvHHShJ0xi3SfTayXrOAK+VvneSqWffE
	 M0+FZS3ipuMV2H19yr+V53Y3efExtqmgWFybFn/RHs093bUVcPMUffDnVz/TPTmvxy
	 5tG0DLAIK9HaBY49JmlGCHqg9Qp70VXCX+JhhrjnndM59iWopv6rEazpNJ4qWKMQCJ
	 SvbgTSNsRLMAK8u0H+jUSBEpJ84Z02vxtO0QUiN/n+cJ7biO9glQLBdwGmJiKyqKw2
	 NZcee9AAm7YpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19D618284B;
	Mon, 26 Jan 2026 23:21:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 28C38118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 23:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 170718282C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 23:21:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id urkBsKeTgLM2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 23:21:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EDE3C823AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDE3C823AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDE3C823AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 23:21:52 +0000 (UTC)
X-CSE-ConnectionGUID: 6xeLBnaNT8u452hF4umVaA==
X-CSE-MsgGUID: 0R1EW9wpTE6u4JscWmzGhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="80957244"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="80957244"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 15:21:52 -0800
X-CSE-ConnectionGUID: MG4K11XcQPuswjVUBv5/Eg==
X-CSE-MsgGUID: z9oV4jynR4WpiWSy14CaSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="208248668"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 15:21:51 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 15:21:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 15:21:51 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 15:21:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hzCCbDr9rRnGWi7Wf4ewtNzEtfPKVwlnMjrqwFi01SgFg2BeccLoWSNLpc43PY3aCTFSZDWVQfrkP0ed3BNb1pjccW9YPy0DCFdkSeZQiRf/UjIUu98jnffK840MauqstiXIb8AkaNmEw6gxskFpaYWBQf41LXBtpxpGR7lMxY1CWAcaTM6vki6uEWfFiXmPtFzhrdZaBa3lMgONGrmmTZeSykHQPkwE8p6lGaOePUQq0nUc1hwPdLlJExaI1jjAvErBYEpo7pbN/7e6o6azd9xnl2MiAc0S2tBpdytkBAk0y+8bde80ueh648cajTxJI4z+iWOJcGWT4C3InRghJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=98Aexp+BFguDMG1QZg1r9iSEVEssWkuFP4W2q0fUQ1Y=;
 b=ljYj9ynm9SrdEf/e40blvtlm6PWQSarC8QsztSRG3LKNzKJ0JNo21g5L+Nge+BrUTFbGAaKDwXp/KJAsQ0f+HN0HUaWlo7+D3ITLkIDHGt3a4kxxGgKURrUwu07i5yq1s+kS9zg6b9B2n8/obNNLBynKMppX/Rr9cLfgN2dmW1yawYyMFOt3Ls97v+X7DxBYPW41rQjFoNEC9gwZGdLP/KeUwuPbV8q0bwr4UORoemXqZ/hZ8yc5UsTMWFVGoM70BLLStfh79Ou1Z4BRSI0IOb+94C7pskj4F4HVNQu8XGUSP76dubNXOSpBwAKkO02A4gnc5QGcPuRokcS3wXpr9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 23:21:48 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 23:21:48 +0000
Message-ID: <73cfe48b-cb57-4698-8166-c3cc587a45d2@intel.com>
Date: Mon, 26 Jan 2026 15:21:45 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Slepecki <jakub.slepecki@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <michal.swiatkowski@linux.intel.com>,
 <aleksandr.loktionov@intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
 <20260120103440.892326-4-jakub.slepecki@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260120103440.892326-4-jakub.slepecki@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:303:b9::33) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: dc21226c-80eb-4213-a038-08de5d31ade4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MVpMT1JmVEpPL3B6NGRic2gwSzhmeGVLYU1ZSzV2SHFSbzVQN1dFZ1lZNW1U?=
 =?utf-8?B?eGc2akg1WEVHVDEzdEkyNnZqbWdyYURJNXdjd25wbThXTWpyS2RXa3psMVVo?=
 =?utf-8?B?VWlWRk90cDVUUXErYzFrejhEY1pyNHUyejhpV0YvWGZmYkdVYnhVcEpaMkxw?=
 =?utf-8?B?eWI5dlFBeklraTg3eVkyZDc3NzF5c0lydy82K2YwNlNFQ3ZXWXJMV2xRSU9T?=
 =?utf-8?B?QWQ2eDd1REhnRmwyMVF6aHBCL1RDeitKRkRRTDhaVzVja2ZOTjAwTWpzVmI5?=
 =?utf-8?B?Z0gzTnh4ZWhwVE50Q0ZBd2VUY0EyclFra1lYQ2Q0V2ZpNG9GQkQ5TmgvZjlk?=
 =?utf-8?B?TndFYXRUbEpHVGZwVUJaK0dEM1Y2RHhqMUswU0owS01JVGIxRVh4MEc4VHJO?=
 =?utf-8?B?WmJteEFKbXBWdHoxcUNwV3E5MmZtQmhVT0xUcHNyT2JOeVRCSEM3Q3p2WlFI?=
 =?utf-8?B?NmVjYllMNVZXWTdOaTU2cVlYazQ1YS9mSjl6WHVQM2NhZHlZbUhmV2s5K0Nu?=
 =?utf-8?B?cDJHc0J6QVFRbTRsaFpzUHFLYURKSFI2MU8zNHBaSFY0UHhOeDZDN01TdEl4?=
 =?utf-8?B?N1VHMC8rVHVTNytFaEZIQmR0OW1lME9TWDhiQ0RQUW9OUzRLd1BTcGFiNjJk?=
 =?utf-8?B?MzVnOFBXTjlUcVphSmJybWFhVDNMZWFLa0FOeDNSN1YzOWM2bUE2MHp0ZXNJ?=
 =?utf-8?B?clFUTWhHVlUveFFpZG5qaVoyb0tkb3JFNEtPajdBdmh4YzhvRXpZa25hY0hH?=
 =?utf-8?B?TWdwQ0lUeDkwY2xxalJ5cTc3SVBHRTRrTDhqWjJENGhveFNtcm93cE53amlX?=
 =?utf-8?B?QldONG1WT1hqNzdrZ0huRkdsVlZXSzZqTzhuMCttL25jSHJBUnAva01taE1E?=
 =?utf-8?B?aHFiWDhUZDI0TXE5Z2RZTXM3ZytRMC9XMU52MnJKTHBCSHIwTFZRWHhRNEhN?=
 =?utf-8?B?OW9FS0tNUU5JRnA0MGV3ci9ueHBJOEc2M0l4eVBxcmtiSGRQU0pzT2xBRGRX?=
 =?utf-8?B?T1lKNHJqYzZOQ0g3dzZJTVc4cml4TjNOUVZVNnFlRVBwM0xXOVZzeFgvVzZI?=
 =?utf-8?B?Vk5qTWNBMVBqVWpvRS9kTU5hc2tNOElPdmRxTmYxQ0RCWnorMTZuaENNV1J3?=
 =?utf-8?B?K1MwWUxZK3pKQ2lPbWcvSHJwRlNXbnJ4VVdHZDRad1dHa2hIbmF0cWpPblNQ?=
 =?utf-8?B?MjFyRlVyUElXUnZYY3VrRE9YYTUwMTBKdHdJbUFvMDBYMWc4ZmJhN1J6OHpv?=
 =?utf-8?B?c0dEbU9ZQVhXb0xIc2plRDA5WkptbUhQcFh0T3ZtQUEzcWt0N0FFNE0vUE03?=
 =?utf-8?B?OW1ENE9ZeDVwM2M4VHpWWForVTd0T09sYzB2VC9LODY0SGN6MERUVzUyRFVp?=
 =?utf-8?B?TTZHYXNMajVqb2NyQ21mQnVPZU9OQ1dFcHBidFRiUmNaRm5QWTdNY1RlVXMr?=
 =?utf-8?B?WHhOUVVoTUxWTDA0QzNIVVZody9YOE5POHNsSTZMejZRWEFnc0pFeU5jeTYz?=
 =?utf-8?B?Um8ycnVBd29Ma0JSeTRjQnpKUGZNaE8wSS8xRTdyU1VGbmQxNFdwbC8yQkE0?=
 =?utf-8?B?WGk4WlhQaEtORnVNYnAwMjhrZTBvZjJuc2pPZk1ER2xFbGNtTHhzS2ZPNWd2?=
 =?utf-8?B?enBFTDZRcGRnUm5tYS9NZzNZcE16T0ZVQWxuTGF0SkxsUEYybytZdVJoZVBU?=
 =?utf-8?B?NGhrZmI4bDlKRVZDbytmMjFERlhldlFpYnI0VUpzb0QwNnBxeStheHVBeE4y?=
 =?utf-8?B?NjNhVUdtQ2pXMjFRY2VELzIyaFpYUW1LWHlWV0hhbGo0V2N3Y21WZU04bkhO?=
 =?utf-8?B?T09tT2xmMTNsVmtUSTVxWHdhOFhFalNOUm1QbGlmS1pZMVBpZmhuYlExQUxI?=
 =?utf-8?B?dm9Md2xnNnFSRFZQSkczRE1RSC9QTS91T3ZBT1BrV1d1STV5YnNTMkJCOS91?=
 =?utf-8?B?Q2NaK0pWdEp3R29seGg5emZGZitVeTBNZFM3Wk1nYW9yUUFKUE9jT1A2ZUYw?=
 =?utf-8?B?QjdZUnkyVVc0R3R6U2hiaUxuTStkOHhLYmN2TWZFSVhVRVF1dzlPa2F1N0Jq?=
 =?utf-8?B?anpudFVhV3N3QVNyRjF4WER6ZUxIVmdKekY1OUYrNktpR3I1STFCODNqV3BP?=
 =?utf-8?Q?bQ/c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2NZeUlTWGhBbDJvTkJLVWhabWJwUEwvMVVZVDhzUzFnMit2YzhUYkhVTVFC?=
 =?utf-8?B?MzJTTDhJNlpMWjd5cGJzWEJxbVJCQzJiRmNFanUrWVNoQzR6ZjdTb0FwOHlW?=
 =?utf-8?B?SEttcVBpeUlKMDlZeEV6ZHY4OWpHUXpBakVyRWFKckpwQWFNNDc1bzdWMDh0?=
 =?utf-8?B?OHR2MVBWS21CWDhxajhENW5UT0p1Ny9ya1VsMmJkUk5DV0V2NHFROSt2d29L?=
 =?utf-8?B?WHpZOTZJcWNKWWxobzh6RUppOEk1c0ozVUJqRjZPaWxyTWlUeXF2OTFyanFL?=
 =?utf-8?B?MTBvQm9PYnoyMXNDL3FRbWRrbWhTc09LZ2t5OEJFblo0VEtVOVNzaE41Z0w4?=
 =?utf-8?B?ZWVTNmhCaHVLL3VqZ0pLSHovRkY2WUlHWnRtMTdyRGxHM0VMdWFGcEpEN1B4?=
 =?utf-8?B?YlhJc005OFJqanR1Z1JhdUlTN01ibU5xN3JSd3ZweTZkZlp1RDdxZ2U5M0My?=
 =?utf-8?B?MDZ3RXBLMDlNSTM3OXRrU1NzancxUUlFM1VqaC8ybkwrL2duYmlaYVZUTG1y?=
 =?utf-8?B?REZYNXk0RHBKTXRFM3dTK1BGNVZMdVNOSTdidlB1SE1qam5kZ2o1WllLelJs?=
 =?utf-8?B?bTdVSnVLWmt3VEZvbUViVkhyL1VncDlrWDFaKzl2Sk02dTB5WHl4eXIvVUtQ?=
 =?utf-8?B?bW9RMjZ3dmRrbFlrRU8xbHdNaHhFQnVrM0NBaTIzajJBZVoybUJ4dEE3T3JT?=
 =?utf-8?B?dkc4NXhYSDIxM2granpuaDZsckNIUXFsVFd4UFdubTVPTGJyQURKY1FoZ20z?=
 =?utf-8?B?aCtNWTJNL3d4Mm1YeFdwRmhYSXBBVjlQcnlpY09LUTNIc05ob0M4NVJxam5O?=
 =?utf-8?B?QmpzR2VvR3JwM2pqdE4rb2duNHZ2VHhXcXhGU3cwcmdma1BhTXdqMjBqQzJS?=
 =?utf-8?B?N3ZhTlpIbDRJdWw1TnNzZmt0Z2s0NDdNQm1JdzRZWjIzMmtLMzFpS3ZoS0tJ?=
 =?utf-8?B?ZVI5MFJtOGh6Ulg4cHBSVS9mSFBlcXliS3JNYVoyK0FIa1BSWDd3ZjBiaHM0?=
 =?utf-8?B?WkJuMkhsdFZmOW5HZkMyVjFFTnJ6eUhUUG91ZC82QjNTM3ZiUys2OHpzV013?=
 =?utf-8?B?ZlFtVS9sVG5pVGphNGtES01KWGkwT3AzV1BlN0N4K0ZST2VhenpmdkVHbkxZ?=
 =?utf-8?B?RjBlOFRVenB2OFpUTVFLeE04RHJxT1ppMUpxd094NFBzNW1sRFJkMFRHUHcz?=
 =?utf-8?B?ZVQvYTJYcHlaTTNIU2VZTHJsOWFZdENZZUovOGxGbzNGaWZiTEtXRE92UTVG?=
 =?utf-8?B?ZThDRWxHWVZBQUV2U01tMk9BMklVbG5tbFp3cGVIZmtXTzlhL0pyWXRyeDFK?=
 =?utf-8?B?UUZ4NmhVM3pxTXdlbTlZVithTWsvSjEwWVM3cjFxL3FaMzcxeDc2QlF6RmM0?=
 =?utf-8?B?WTlhRWhCSllBNGo0bFRUTFZMTDlmSHVKMVJPaW8wUGwxNUJJOE1WWFN0MzZY?=
 =?utf-8?B?M0hSQVJ4anViK3hrQ2lvUFhIVG9KRXBXbjBVbVJDeFpqOTh6ZVU4WTlKTUVZ?=
 =?utf-8?B?NGo3SFN6QWV3clVuQjRObmRoY3NBR3Q0NFlpZXlDb3VVT2JXcmNMMEYwZ1RH?=
 =?utf-8?B?TDNhMjMzZ0FvZnRXREROWUswUVdPamQ1RkU3NzVVS25OaWdhbW82SVdBODd4?=
 =?utf-8?B?V3c4NFpPcVlQdjRUUmlMZWZhTkluWWxEQTUwNmI4RVlMcFhETzltcCtGN3Fj?=
 =?utf-8?B?aFlnOWNBeXpQMjlNSC9NUUNKL2xwQmxTOXFlcnhIWVUyV2xVUXZaYzFzZWtl?=
 =?utf-8?B?K014M1A0Q1ByWTF4TFhwdFN2ZE14SmlZaHhwNkd6c1VvQVQrSS9HYmdoN1Q3?=
 =?utf-8?B?RDhhbndZdjNkcGJYNzhnYUFONWpydC9hcStlQjk4Rnc0a0NVbHJEU2NpMFdx?=
 =?utf-8?B?d203RmttNE82RGo4RlhOdmx0VmN3L0xnY25icHR3c0RwRC9ZNzRrSjVFTDQ0?=
 =?utf-8?B?SjV1WEJpb3UxN1FseEk5RWJHNXFYR01DVFRrQ2JhQ0xBOWxIZDkxaDk2VHFk?=
 =?utf-8?B?WlR1Y2xPb1B3REV6SDR1VTM0RWtOVU5YMkp5MXRaN1RxajJaWGZyYmZBeWQw?=
 =?utf-8?B?c3I3a2k0QnhMeDhNTkdpT0VEUkxXQWxJMldtT3k4MlVmM1A0eTNXM2RwcGRn?=
 =?utf-8?B?RU5tTzZaeEVueWM0NnhQRDhBcWMxbldRNXV5YlhIOU1udFJ3ZVBrbVhWTTJG?=
 =?utf-8?B?Mjg2aUtQeWN2U2NIL2RNTE5aZU00MytxbUtjVjVxYjBSMDNKbFduN0FzOXhx?=
 =?utf-8?B?MGpGbHN1Qlhoem1kejFWU0ZveDhVNkJwbE5ZbjlBZnhFTTR6WjAwQTlDVnow?=
 =?utf-8?B?SEdYaThHcmkxQXU0MkZqUUdjU09FK0RnZnptYlRDY1F0eXZweC9hcXVWVTFO?=
 =?utf-8?Q?by+X93FB5revXThI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc21226c-80eb-4213-a038-08de5d31ade4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 23:21:48.6312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QYDHKRx+7361Xjw6qgZauYYCAa9XZaydEtpUqNj4KdFdJC4tdckj0C9yjrJKru6jIdITQ7T382YbxmHMW1HSu8PD7PUYCclOyzmPISoCBKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769469713; x=1801005713;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kBvAhznVd4+lGTQ1+dXsIUjssERdRl/EA8+bD+6cmhk=;
 b=D8AGwlE9sfKz1o9y9gI6b+7cLS2jn18UiTOAonLjYlY+kMH/GhsWEcXa
 QoQWoO1LIxSTsUEaN0OMZDG0Ot3c44uKI7v1a5kxuYZmaXt4EUs//ANrI
 utEQJUqpWm2Xhy5oxy/xMmPw3/44pMxmUkzDitPw1L+vhLJlD4ZpJPbiP
 VJeQ+FTPkl9DsfQNNu+7jMWYRVZrvstdbvgpOWfETs30JTMoHue5jJHrk
 RgFS5x46Zhh+9aa1WzvHOZ9VUf/VxuXuhGPDYdTbLMvlTvVcSL4sz7Ply
 4LSJZcBvtEOgrNXCb0ZRXC+lbj8wIq770EJu5LMapTgUy8MHnS1NCNflK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D8AGwlE9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/8] ice: do not check for
 zero mac when creating mac filters
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakub.slepecki@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 83AA78E301
X-Rspamd-Action: no action



On 1/20/2026 2:34 AM, Jakub Slepecki wrote:
> A zero MAC address was considered a special case while creating a new
> MAC filter.  There is no particular reason for that other than the fact
> that the union containing it was assumed to be zeroed out.  Now, address
> is pulled out of the union by ice_fltr_mac_address which checks all of
> the previously assumed zero-address cases and returns an error if they
> are hit.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>
> 
> ---
> No changes in v3.
> No changes in v2.
> ---
>   drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 0275e2910c6b..04e5d653efce 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3648,7 +3648,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   		u16 hw_vsi_id;
>   
>   		err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
> -		if (err || is_zero_ether_addr(addr))

This is introduced in the previous patch; it would be better to remove 
it in the original patch.

Also, AI Review says:

The is_zero_ether_addr(addr) check was removed in line 3651, relying on 
the claim that ice_fltr_mac_address() performs this validation. However, 
the helper function only extracts the MAC address and validates the 
lookup type—it does NOT validate against zero addresses.

Thanks,
Tony

> +		if (err)
>   			return -EINVAL;
>   		m_list_itr->fltr_info.flag = ICE_FLTR_TX;
>   		vsi_handle = m_list_itr->fltr_info.vsi_handle;


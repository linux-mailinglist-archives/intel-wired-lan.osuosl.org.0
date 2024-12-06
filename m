Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 676EC9E77BF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2024 18:58:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D77D7613A3;
	Fri,  6 Dec 2024 17:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_Lg0cbQBaIc; Fri,  6 Dec 2024 17:58:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39E586132A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733507923;
	bh=SZZw4VpYLLx208xv5ahc78XaECChjwBYRpJmM3El/1k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OmIizZ3ux/OIpn6hXFSS70Pq+dgie5vu1a3fC0tX/17eHhsG7i2Lk3qA8lmP0Rat2
	 hF2maJ4t+o2MzVKC2CqOv3TpzFXrZ+Ay/0uJgw43gYeUHd+mB6FZun7P6+HkDWu+93
	 h6bqeyAe+VB1E4/qDLI6a+LVxdkGM8wyPhsYrwHLxaDNpWX/lf1OYxnn32WxAZqLfZ
	 6iwBJ1dQb2YyJEeXb0IOd53LhB7Ecfu5dwHnl7ls9z2KDoCjTlGCWULVtd6h5fAZkJ
	 Anp5A4nX2Lvzgoq7JkxHH0XsyIQ7GF6/x7w6QU34ka9k99VRYPNgWAa7Ci6FR5blo9
	 OXg6yX5LGxxqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E586132A;
	Fri,  6 Dec 2024 17:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 68B44ECA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 17:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5023A42FB1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 17:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WHj11Q9efUN9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2024 17:58:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 51EFA42FB5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51EFA42FB5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51EFA42FB5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2024 17:58:40 +0000 (UTC)
X-CSE-ConnectionGUID: CfWOYVMHT4yixexdvslGtw==
X-CSE-MsgGUID: F2l5ZuNsSBW7pp6J16IDKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="34110296"
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="34110296"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 09:58:34 -0800
X-CSE-ConnectionGUID: Ixo4joaqRJiqmBjHWs4tsw==
X-CSE-MsgGUID: aYmIiIg/Rxu+vt1vuZcfWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="94325656"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2024 09:58:33 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Dec 2024 09:58:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Dec 2024 09:58:33 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Dec 2024 09:58:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AK7BL9Db2cQmB3iVdcUFITPc2vur/YMRFTVri1uBAetMQDvot2MTRTSS2pq79TwgxGZgYioaUQzQUAw9LPz7BfbgWSDpdGqOZyZo9b8AAoSeFF2o/AiFbJbYSrglrRQcHqW5mjskhHfViaTz9y0hefgx14XV3H/YQAZmqAH629kzaK2SflGoHzsCuZ5DvySP1YdzMWcWd6Lb+ynhAk7DKLp37WtqS2PBeTIuFgNOk6FYVi8Mg0CS8Nl94yGwh+yEcpTUcwIymmNflLIdzKLiWVRuqilrWlZ99dwPHMI9SH/5E5vAXngh/5Xc68xH2Nb/JirGksZqcP9/98OnFLIRZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZZw4VpYLLx208xv5ahc78XaECChjwBYRpJmM3El/1k=;
 b=YQ7YHWAkeu0pHGKH1Hkw2f+X6wyiPdq+MiEKJ8ZK6pR7MHsplBoBGhXnXbzaX0BX4H8FhvV8TUavuuGUhtR4MVXfxTrzWDFb06Wopw5bBm4eoDNGh21iHIylXiS6IhJZ/FDIC/DTmXeAVmtTrwoDvByP1q+xXRK1VxFpg31GIt/N6gSIgshQDJahklVV7PSocGz3GSxIEqf1PEWgSf3OFVRxGaaVTLy7lkjZSdkBAPyUM++WuuM5C157hwBT5jyxLLVyEL94YXIlU5sQj3HJcKF9MrR4Lt2Q2bmIHPrXfyakevWr0rNFPiybf99HbRx2F+bXFcS1cJAZjSl/xnZhZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by IA1PR11MB7773.namprd11.prod.outlook.com (2603:10b6:208:3f0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Fri, 6 Dec
 2024 17:58:25 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8207.014; Fri, 6 Dec 2024
 17:58:25 +0000
Message-ID: <fd139f17-6c19-470b-ba28-fead978cb674@intel.com>
Date: Fri, 6 Dec 2024 10:58:19 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20241206001209.213168-1-ahmed.zaki@intel.com>
 <20241206001209.213168-3-ahmed.zaki@intel.com>
 <c011ef8d-04c0-485e-8fd9-e05952bfef82@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <c011ef8d-04c0-485e-8fd9-e05952bfef82@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0313.namprd03.prod.outlook.com
 (2603:10b6:303:dd::18) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|IA1PR11MB7773:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ddd26d5-2e78-42f3-194e-08dd161f94ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTM3QUdPbE9XQWF0MnEwS1FxUndsdjdsKzZjUmo5Q2xVc0hJVTh3Ymd3bWNK?=
 =?utf-8?B?R0pHQlNWcDhYM1JMR3cxczlkUWtLeWxZMzVIZ01zeDFyckwzOXhNaXBzU1Vz?=
 =?utf-8?B?S3VBajFIMWE3ZVZEcXNUOE5NaEZmekQ4TTF1ZndDM1RyaHJJWGdJZmN1U0VE?=
 =?utf-8?B?YnZ1UUl2bGw2SDk1ZUFtV3ZSTnZFYVAxeEVJVm1rRXRJK296b2phU0Z3Tndk?=
 =?utf-8?B?b3ZMeE00eTVpbFdjOXBtcHBEUmMzNWNKU0N5QmV0NklSa3h6RlBOZVZwRy9j?=
 =?utf-8?B?djB6MmlFL0RHZEdpQkw1aUdaNmcrQnF5WUlzMlZoZi9FZDVlN0h1c096ZFhX?=
 =?utf-8?B?MU93UVpGbjByZjhnKzFuYmUwTWx2Nmd3Q1JEY084Z3Y3UWtGRm1UdUtUKzVH?=
 =?utf-8?B?N2RkcWVqKzNoelJqSUtGNXE2b094OFMwVTYwc09od21hdTNHUWFqV2VmbVRV?=
 =?utf-8?B?M1pia0FRVHR4azZZcW9ZdXYvNjZlZk5HS2ZuNEFxaWNJRzIvaE9iZ1VVeTVS?=
 =?utf-8?B?VmtoR2NTaGxBTWh1RVU4by8rcXgweU5TTWljMzlqNnpnUURtR2VHRDdvNGxC?=
 =?utf-8?B?SVQya2pnWnJiNGphdDkxVXdZTE81Mlp3bFV3dXp5dmp6YlB0NFB1MFMyNGM0?=
 =?utf-8?B?eTBmWk5QanlwSjN5RUppZ0JsKytRbzRTZzQ4aFJ4b2taV1RWWHRJS0VGTzN6?=
 =?utf-8?B?UFRFWnY4OG9Ic1RGR0RhSUphWjM3Y3dUYjI1OEhHODJmK1dZQk9LcEMvczIz?=
 =?utf-8?B?bEFzdmk4YXNJaWpOMEJkS1oydjRiVXVNU1A0T3VxMUpDQTV4L2hsNjIxUUNy?=
 =?utf-8?B?OC9wRmF2RUpTZlJoeWV3cWhwbTdVKzQySFFtT0VsNXJ0VGE3dmRMKzZjMld6?=
 =?utf-8?B?MHJlcWJDdjFOdU5sVG44YlVJcXE2am95L0l1OWtnRTQ1WHVLNUZNU01ieXhu?=
 =?utf-8?B?dWlsdXdIcG14SnkzM0dNdG95cnpRUURDY1pYOGkwOVA0UnQyTnBqVUpsRUNj?=
 =?utf-8?B?UkQxME5vb2hHTk9NYzB4UC8xZC85dHBHVDZQcWs2WnpmV0h5aEorWDRZUlNx?=
 =?utf-8?B?VUNlZVJLczREdFhoV0hqaVg3Wm1CamlKcEYxWTN5ZHk0UzFnM25DWnpVNVhx?=
 =?utf-8?B?aThxbVlXbDdCS1MxN0FDS2hheHR4bzFya3NmajRlZ0hnZFV0YUZYWW9pemxh?=
 =?utf-8?B?VVo0NmpvMjhZQXQ5NG9ZcE9MS2Q5NUhQU1NiNEkyQW85ZUV4TzZ1ZldsdlNV?=
 =?utf-8?B?K1ZyV3BlWG9IZmVEWTNNRFY1ejBybE5KaEt1Vm9NcDZRditCck9mdisxYjFE?=
 =?utf-8?B?V2hLeTRTMVJFajBqNmxXQm9GTmZUQ2Nra3hpUHJ5QU9PcXNEbngxK2wzeWl1?=
 =?utf-8?B?cFJDUVljc1B6RVlrZ2NRN1c5R3JaV2RDS0c2RmZDOVRLYytjdGVETFFNZWdz?=
 =?utf-8?B?L0lZUWU1Vm1qbi9MVWJvSERjY2YxSHZ4VWVvZE14Q2YvcnBXcDJoTEpaS090?=
 =?utf-8?B?ZXFUdUFSQzk5TG5FWUY1MXZMWDYwZkNreGtwS0RGUFcxUW9rTUVzaEJ2Nmdv?=
 =?utf-8?B?eWdpVllSblc4VDlJNW5mUGhLQWt6M3d0c0pITEdsYy9BdXVEZ3pBMDk0eUtn?=
 =?utf-8?B?Yk5kZDNkY1Rwd1hHQ20xakxHWDNSNGdaRWNEVU9lQ1NDZC9xdWVFS2ZWTEwz?=
 =?utf-8?B?bE9JT05DUzc0dmhoRkR5c215NTc4dGozUmFvNldtclc5a0ZPcmdwMWxzaHdP?=
 =?utf-8?B?WmtlaE9WK3JjbjZzcWhXekJHL3lBbXltR0RYRExjeWw0SEdIQVZlNGpBeSsy?=
 =?utf-8?B?dXlLamZ5WTBrcXJ6ZXQxdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUJmYlFrcXI0NXduZWhxSlNUbXlZc2o3YUJOOGl3ZFRTU1VSSjJXbk83UjJZ?=
 =?utf-8?B?cHRiUE5Lc2t5cEtIaTdkbzladU1XZS9HZ3UzYzRGdXR1OHpFTUxkQ1IwTnpI?=
 =?utf-8?B?WENaN0lmZmd1dUdmVlczK3c0U0FLRXJIYzFyWS9ZOW1HK0ZrTEh4ajVDcU1a?=
 =?utf-8?B?amV2R2Y2bytMSDIvcmZLcnFjUktObDFsRVFkQUVCemZEUWkzQjdieGw2S2hW?=
 =?utf-8?B?ODJaTUprczgybFZFQWpSeTI4TEptN0RjT21QVDgwZWVPRFc1bXlmRGdxS3JV?=
 =?utf-8?B?MkhhTWxTWmw4OTlyN2lHa2hpbWQwTlluQitXMzZZNUNYTzJGVytaNFdYR1JW?=
 =?utf-8?B?cFdlSzNsQVk5Mk1UeFVja3RwRGUzTTJpcHQzV1A3L1BZcnQ4RmJRb3lFY25L?=
 =?utf-8?B?K0ZjTzNLeUJlc1VENzNyVEo0L1VPWHhyOUdKRENPbFhIQnl2T1Y4cXRLRWpr?=
 =?utf-8?B?M2dQcjhmNDRwbmxTeEtmamtUQnpPalRpWmg5UlhsZEErVW91aXc0WDJPSXhu?=
 =?utf-8?B?ZWlhVzNJMGZqR3ZtT3QrZ0x2dE1XTmRlSDl6aUhRZ3pndm91YTZzWVN5bmJw?=
 =?utf-8?B?TGM0UHZoaTlhQkdWWXA0eXd5SEtNa2JicTBESjN6RTIvQnNCaWNtS2FRNTk4?=
 =?utf-8?B?T3FRa3dIVXppYktHN3ozWE1PM1drYmRFdG96eGdPV3lYMEVGczlBV21hTmxt?=
 =?utf-8?B?c1RTbGI2ajZQMHVLQXd6SVpWYVgySi9DdUJ4b01kOEx3WlZmL0FHRnc5aHdo?=
 =?utf-8?B?ZFdOUFlYdHFpdG0zTFd5ZUF1dWJjd1QraE5YWkFiNlRQTUN6dWxaNDNKOXVv?=
 =?utf-8?B?eU03Snpza1VTZThhcVNtZzI0UmFzYVlGL3ByT1dSTytPdlVPMDc4Ukd6U29H?=
 =?utf-8?B?ZkxzWGh3aW93ZkFhYWoyWGtlNEZhci85bm1ldDlBRjRRZHgrSmFEcm5XZ01o?=
 =?utf-8?B?VXFuNnhaTVpKaStObjJYWlNXc2lON0lEWGZZdndja1NHNVJteVV1U0pWWWtK?=
 =?utf-8?B?UkZLQzVieXdRTEJXbjlwZFVmZzlqb2RqMlNuMEEvRDFZSW1CZ1JhTExhdEtW?=
 =?utf-8?B?emZwbVMxSmU3aWNIb1FEL21LMXRMelNrWHZEclhEUmw1VXFYTW9nSk1kck02?=
 =?utf-8?B?Y2ZzVE1VbHpZbjh2OEcrQmRlZUZWWExZdE5kMkZlcEo3QXVOMm5qSUdwSjl4?=
 =?utf-8?B?UytrM3NGS0ltR0JwbHpDam0xU0hoTk5TSDdUSWZIUWlKOFcxRnZtMkhOYmN1?=
 =?utf-8?B?eDU2SHFrb0JJSndKSEJkQk9UaXZkNU96WUF2MEl2Y3FpSHRDbVUzZ3NEakg1?=
 =?utf-8?B?bXUrZkY1UHpYajB3cytQYm1XT0ZRQVgxQWN1Q2hVcU9DdDlMV01va3ZxN3Bl?=
 =?utf-8?B?b3JwcU8xdGswSmdxM2tXdlhWNEZCZ2o2SSs2MzFzWHVQNVNiWEtNWFU4RjVF?=
 =?utf-8?B?cFFxaXVJVVl1T3JDekowaEkvMDlnYXlaUG1CQ1B4WGw3Q0FwUFNyUmY4Y044?=
 =?utf-8?B?bzhHb0dQbkFsdG1YZ1JWZlgrSExJS0tVRDgvTUxEaXdYMHhIa3RJeUhncWMv?=
 =?utf-8?B?K0toNDBGbzBadHJmTy8xSEZBV2VsK3ZkVTFOS2UydERsVzJrbWgzeFZ1MTBw?=
 =?utf-8?B?anJGdXdlbzYySlB4K1NxSXZJQldjTWRmZTM1SWJzWWYya1VCejM5RU9mSXpJ?=
 =?utf-8?B?UDJJYjBEYjJUOGM4NnpwM3VaNjVCdG1NUDYyQ2kvWmowWGNBM1lsbEhIeVZO?=
 =?utf-8?B?Q0ZMVGVmcjFaZzlUQjFiK0FHRkpZSUNTSHJBaUNCZ1JrK2g3aHdDbUMzME45?=
 =?utf-8?B?S2F3RmZXd1M2WXFpcnYyMElBK1ZQTVcyY28vRTQxVWFGMWZYWnBubXVlUDFF?=
 =?utf-8?B?ZHFhcWh6OXI1ZjNlcUZkZVRLS29qU25RajQ2cXRIRHlFdzB4WnFaalhRUXRK?=
 =?utf-8?B?R0ttUTVjWHczTFFibHVsMkE0Z0RHVm9Sc3FueDUvbVJOcjA3QTJtQkg5SVh5?=
 =?utf-8?B?UU5CZGFNZThxVnNFbFZKTzRhNEszY2RxUEMrSzg4cXlYVElmdXRoZjZWZmNl?=
 =?utf-8?B?QmExc3daNGRvZEJxRTFkTDBlUHVzRURyRGs1WHFqSW1FSjJpR1o4UDlYZHhV?=
 =?utf-8?Q?DTxNe9ib0l33ykVy2YgL8FaMI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ddd26d5-2e78-42f3-194e-08dd161f94ac
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 17:58:25.2611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 17nVBSyoXh1NNnrpGWPBl0BiNnFZjSnN3VDEl0I2QTegRgGpg9UWZz33WvNg0DY4eYpqklgvzCPl6NzMZRx3ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733507920; x=1765043920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kQ01tvnfM8hGO1QAx0wWx/yieVBAGcucM/dOksyrh+g=;
 b=Bb2CteJyK4t8smrgEpWjwIwNrbwR7aQab7ECrOxPWAMEhjvWjoa8qOhF
 avfbHu31tUzQEadB3OrdAZXMPimC870ltPgDK7TrgWDZwEMoJ4FuLrUIP
 746fuDhnkfJr5ZDLtT07f5XP1/bkWT6b2SsMYDb0L5kDeQholMq3qzg3W
 1+KSrY59uNBtiWGxuHPkd9Wa9KqZoTMjvXY6X/6SPYF1aOxqNMatP7jVQ
 RoE5mlXN/7dIe9LbMu0Q2gTU86V/KIEXJxwEezCLeQF6c2kStiqyhCgTf
 KBezf/l2aj/GpNUSgRkb/QDpqm2YpBQ7nI3+nhCfHe2o7vntpV+qJLti4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bb2CteJy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 2/2] idpf: use napi's irq
 affinity
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



On 2024-12-06 1:29 a.m., Paul Menzel wrote:
> Dear Ahmed,
> 
> 
> Thank you for your patch.
> 
> Am 06.12.24 um 01:12 schrieb Ahmed Zaki:
>> Delete the driver CPU affinity info and use the core's napi config
>> instead.
> 
> Excuse my ignorance, but could you please state why? (Is the core’s napi 
> config the successor?)
> 

Hi Paul

I am not sure I understand what you mean by "successor"!

This patch is an example on how the new "napi_config->affinity_mask" 
defined in patch 1/2 of the series could be used instead of keeping the 
affinity mask in the driver.

It is kind of code cleanup since the task can be done in the core for 
all drivers.

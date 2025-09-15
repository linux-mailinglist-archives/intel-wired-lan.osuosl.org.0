Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E6DB57BDF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 14:51:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BF9661278;
	Mon, 15 Sep 2025 12:51:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U1P3fW-L4ldO; Mon, 15 Sep 2025 12:51:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7E88611C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757940692;
	bh=28FhDk55VKztR8jsHYltI3ocCGTCGH+2qd2IVAyKuIU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9gLGgguQx4D8kWWcPO8og1+er3J7gEr8dAM7Xo798dgpyI7OciR16PBKZZBMV5YA2
	 btk8M/iyXG//gcqSVK3aJdKWRxWI4tbVIY6NvKpOdFCx+Db1DT9PHfstPbZ0QgNDgx
	 KoNmrsJe9ZjqwF6IOwDyKFWOZwHq5f1Yqa3TAMFGReRYnPfHqM7joqz6BgBrmWmELr
	 w941iN+hy4d7fGpMuNznYquDdeNLCaLU5fRZ4TjU9imGO2WC5S9xuj40CkXdeq3V/n
	 BQadi2y+ED6t/wVVkmtyKSjznhqBFtun9iOHEH5kOc/O5En4LhoUzH2LJFqwciYqk3
	 qdT+mkXF47loQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7E88611C5;
	Mon, 15 Sep 2025 12:51:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B812812D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 12:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA21A40FBB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 12:51:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dlpy-241NKJK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 12:51:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E5DF9405F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5DF9405F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5DF9405F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 12:51:28 +0000 (UTC)
X-CSE-ConnectionGUID: yXMcbp9ERtewqvl0zruUxQ==
X-CSE-MsgGUID: EjkatDCjTjeDf2SZfk1p7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="47759938"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="47759938"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 05:51:28 -0700
X-CSE-ConnectionGUID: CCS0Xh3OQWy7SeI6cCiVIg==
X-CSE-MsgGUID: Ka3bN15AT4acy2hTrVhbaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="175420494"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 05:51:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 05:51:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 05:51:26 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 05:51:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mxpd58a5nZgeCY1BYRvdAByG8/SV6T/j0mjdspvGgAFniV63/ZQEOTeqPpxnvIkGqiYotSZlmqD6wUxfTLVbeH7BVtcQCZtLStlGgZCkvINJ+8swtq7ZLMdPl4g9GhuyNoGL8akl3jsuUOXcG3upJQCXdS9qk40ABG2Sl80R1GTfs4pAwjn7kJukz07RInnYqFhqOLOJyS7XqydTKMbwH6C6EQ6CfDxjX8Z0YxE2Tf9efnRQl3OHTgWJMkWoTG+YfMuWUu6MvFLelfFG+YQ1wIEbXyG7XEIW4BeM/fXGUtiS0TWVWKF1KCnBNEwVnTYG4LuJ238GSWPqW7sJJ35NMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=28FhDk55VKztR8jsHYltI3ocCGTCGH+2qd2IVAyKuIU=;
 b=JW5IimmnVRh6jTBvkBxt1YeWfwqN2EXM6U/DevGClCWWGdmjP1/Nve3Tw87Ws7NiyYnCIwwJjjS2I0svB6XTeAE6ynfBPimb2CLbNNVCgULeaqVmol7m7WWeI4DYTmwHgaUx+vyEprL6+HJWumay+GQDFqo3s3HD09S1GvYoJvS6GElMlOUUreXcooy43LuyRY5MpFQwiOogZmv87kMtI2njQ/2GpjBaF2VzxcrNVHTUASK6NqfTzos4W+nkbiDGhgCblc54Hu03dWuJznw+gxlj/sAkUaqI6OKI6GtLLGTjL3zkRQbHQK8FlCLsBvpYZgUDWMfhvTQiPeZtKAuj9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB8050.namprd11.prod.outlook.com (2603:10b6:8:117::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 12:51:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 12:51:24 +0000
Message-ID: <38605896-5268-4f19-9835-77a4c3f07b94@intel.com>
Date: Mon, 15 Sep 2025 14:51:20 +0200
User-Agent: Mozilla Thunderbird
To: Breno Leitao <leitao@debian.org>, <anthony.l.nguyen@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>
References: <202509140606.j8z3rE73-lkp@intel.com>
 <mpxxgmukbabs7hkasdph24vg2pt3myjojab3vocpgerm77so4m@n3dwy7mypowe>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <mpxxgmukbabs7hkasdph24vg2pt3myjojab3vocpgerm77so4m@n3dwy7mypowe>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR06CA0015.eurprd06.prod.outlook.com
 (2603:10a6:10:100::28) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB8050:EE_
X-MS-Office365-Filtering-Correlation-Id: 32d84b21-845d-4ebc-09ce-08ddf4569416
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UThUbENzaDUwSEFDMnVSYXNvQUdhQncxdHNyQlQ2bmpSSVNhakEwWDcvaW9j?=
 =?utf-8?B?S25VYy9haFFsSE1ieXkzRUtGTU5kK3BGZzdTM2MrYW9jeFAwbFdVL0lpRWpN?=
 =?utf-8?B?S0dXMUNzOVc2V093cG9xUnk0SzdhSEhuQnFOL08zNUZkOEpOakFsS0wrdFpW?=
 =?utf-8?B?dUp3TTYydnB4RGtwSnJYTVlGQllMUmpVYkMybHJ4bUNKQ0tTYVBSbVp3Y1Vt?=
 =?utf-8?B?VXloNis5NUtaR3dIUEJJdUNpZ2Y0dkFaTjIvUEkzWHlTa0w0ZG1yc2l2Wk9J?=
 =?utf-8?B?UUFEVEVkQTlkMVpXODdPOHR4ZURuQXpvaUw2bzVJNUF1emdXdUd1YkdxV2FL?=
 =?utf-8?B?ZXVVTjhORjhocXo1c0dWR0NEWWZPSm1HaXFZaDA3ZklDNHk4TkxTRmlmTGI0?=
 =?utf-8?B?a25RNDRYSzVsNnNQc0VyM1Z1d0ppT0ZEaENtZUZ2QnE3Rm5OYXlRelU0cCtt?=
 =?utf-8?B?MnVubnR6WTkyWkRUckJiN0JET3FQV201MlFJcy85SFR0bnRqcE9Nd0p3MENG?=
 =?utf-8?B?T3VET01RZWZSd0hlcVIyWm9rT0N3SVhJUnFPbTJVOWFFOWdvb0pqNDBHdFNZ?=
 =?utf-8?B?Y05sMHlXRDZmRXFKUHJiR0Y0Y1BhbmRMajVuYTdZNXlZMURjSVRnUEF6c08x?=
 =?utf-8?B?eWJYNnVmeHRwYzZPazE1L3lsRFdQcDFKYkQ0WFp3TU45NFRHb2ZvQ1ZKMnk3?=
 =?utf-8?B?UFVXNm9EKzFjQlp5bjljMWEyNlNHOW9FdHNaUThEamxOWHZHa1B3a29KR3FW?=
 =?utf-8?B?RjVnZ1laMHB3Q2treVBVS0w3ak4vRkNiZUxRYkNFV2ovdUF0dFlaRUZKYzl4?=
 =?utf-8?B?dEtqNFUrOGlqVTRTQkNwdmhSZFpXUE1CdHQ5MnNBWWtiTitMMFdCZDJIaHZB?=
 =?utf-8?B?bmVhSnozYkFma3MwY3ZWbU5qTXR2ZElxaG5WdW94dC9nVm9hV09ucyswUjNh?=
 =?utf-8?B?d3Vad2w0R1NCZjV6RjJkQlMrYkdJeWExMmxlN1MydEUyenJ3N21iWlJtV3Vw?=
 =?utf-8?B?UU1GV2xlTXRRYUx3bTNZaFphWGVOeTAxTWJvdlYvMzBUN3JaNEtyZE5rOGRl?=
 =?utf-8?B?Y2l2dERJb0c3TDA1VTN2SDRWZU1HRFV2Q0RaZDhqZVUrSzJycWJSQTNqelkv?=
 =?utf-8?B?eFZFWkVDODQ2OUoyZnNXcURmR25meDFBVzNEMXBmbkVramNHejRyeGs4Umkv?=
 =?utf-8?B?dTlXZk5IUDJVSVVqSHl5TTNxZ3VHL1RYYk5lbW91K2h3TFZtODVkbFAvejJZ?=
 =?utf-8?B?V0VldTdITmR3ckhIaUUrN1JsMU1JVWVhelhkeHlGWkR5QTMxNEpYZHNXQ3JM?=
 =?utf-8?B?eHVldWNOcnA4cEFkaEdHMHVFeG5qekVaQUtwdXd5aUJrRHNLa0VRYS8zRHZs?=
 =?utf-8?B?c0drOEUzVGlKUUg2ZS9YbnE2Wkl3YU9WMW5PMG1odXdYZkNuZ1QyblMycnpX?=
 =?utf-8?B?ZWZKYXEyWXoyQ1Z5WVpZNFc1SUxod29EMTRCME9uR0hpMkRTSHhIbU9xc3NF?=
 =?utf-8?B?OTZ0TE9xOVFQR3I3U0lkb0F5YXViUzNmOWVhTTB6LzdQemsxWHJxWXB4WkVx?=
 =?utf-8?B?Qy9iUExNTUtkQnJxT3oyZ01wR0htWFlXclpNNWtnaXVxSjJldEE1dXI3T3RB?=
 =?utf-8?B?cG5XZThOVWdiWHR2YVJFK1pBQjVXeVJBdDZXZmJxU01mQzlGVmZ5blg5ZDZI?=
 =?utf-8?B?eCs4U0VaUVgwclBPVnVnY2pGQ0UwZUJZblhZNnlvQ20wbWFTN1E5NUhXV25u?=
 =?utf-8?B?alZ2S0lLcEFXeldjeloxZ3FpdXBOVnJ1UFRpZEFEN0FKZ1pOWEtWczNMVWFR?=
 =?utf-8?B?aU9jMWRsVUNDc2w3T2J1MUd1dkpha1ROVDJlckRRakMxazhVcnl3a0Q5YllB?=
 =?utf-8?B?QTJUU2owRFMyNnRuVmI0WGRVMCtEMVBJNFZLOCszRXJkakRvY1lSQ2lHNk41?=
 =?utf-8?Q?iwl7HRYCUh4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1JTUGh2QWxOSVUyc2JkVFQwQndJd09rYWpzaFFHTHRVYTIvSDQwdndqWjd5?=
 =?utf-8?B?WTlKZHJuVmNncTdEUVg3RmtYQ3BROTZqTmx0a1hnRTFxL2liT3ZkYnZhdU1R?=
 =?utf-8?B?aFdEMGR5Yk1iUUdWN2hvemM1dzVaZDJZM0tJV1QydDFBMVVWbDMzeUt2SFRU?=
 =?utf-8?B?OWJPaitFSGk3cTh0OStuMzJGYWFHTHdUU1pGSnJVSHkrN2NmUUZ3SlBGREpS?=
 =?utf-8?B?bHhtOUpvMGRMR1RML2xDWjZWa05aYm05b25hSGFwcUk1ZTVIeUVNclMwWG8r?=
 =?utf-8?B?dU5zMUtCK2ROLzVDM3p5OGd2dCsvTEh0QkJsTnFNZFNXc281RW5zbmZ4MTZq?=
 =?utf-8?B?bG9jeGYvb0pWT3YxUUZPWXJER0xMaFZ5VHk0KzU4anNNUlB6Y05IdVgyNGVX?=
 =?utf-8?B?QzVCdTlHcUREU3A1VDRsRGZWRDAvazU3SnZSVjVvNmN0ZG15MVZMenBHQjVP?=
 =?utf-8?B?MDhWdVZkS3ZKRXNicHVRVy9hakkzalBaOVRvODNjNUQyYkpUanI1TVZMT3c4?=
 =?utf-8?B?dzZlK0hEeTZCdlFFT0xITy9OVWMyUTVKSG5HUjlNWHBka2srQXJEdEtJVGE5?=
 =?utf-8?B?c29zRjJZNFZPQ3F4OVZKeFczbjlzVUFTNEk4VzUzcmZJVkg5SG5KaFNOdDJF?=
 =?utf-8?B?ckFkOWJzYXRMZDRSYUpBVUVjVit0cXZtdFlCeC81L0JEdTlGcUVlMTJ3RC9N?=
 =?utf-8?B?TmQwMHF3ODZPbVF3RjdHVkNjK0tWUEVkd1VqS29DV29pTk50M29hT3pXWndH?=
 =?utf-8?B?YkVDeU1Jd3d2SmhuWFN6N2hueitqVEliZDlqQUpjZDM3NlVTd0pXZGQ0Z01u?=
 =?utf-8?B?TyszZkxXb3puOFY0VGpwQ0VGcWhmejZBQ0Rjd2lMblpLa3pML2x6Z2pORFNR?=
 =?utf-8?B?dzNwMVFSQTNOenRxRUxGZzMrQmw4RkFvMmxMQThPMnpTdk1pRGZ6bzJtdklC?=
 =?utf-8?B?eVJIRjcwVWl2RjcwcE0yb0ZKTEZWR01jbUdqeUVEWUczdlhSUStjUTRmZDVT?=
 =?utf-8?B?dXVJTnRuRDY5L01HdWFpVzI4NzNUS05VODJvTUx5YytLbmZEemxkL0tUdGtt?=
 =?utf-8?B?Z0ZoM1gySHl1eTBTckxrY0VuNTF0WmtZTjA3Q21oVE5uU20xT1dJTmdHd0Vr?=
 =?utf-8?B?MTlNbDl5dDdNamd5Q0pWZyt5WmtIUGkybEF1dmFOdDRrUDBhbWJtSzF0eEdh?=
 =?utf-8?B?eVQyTG5SZmJvNHA3SEtZVWdOQXdQTDlZYjNPc2ZwbStUcDAvWmhmU090K2Ir?=
 =?utf-8?B?VnZMNEVZSEQ4N0pKbDU0SlRZR2ljbSsvREJOQ3oybVFsS3pwQ1Zrd0hmL25y?=
 =?utf-8?B?cFlNTXVtVm9EVVUwSUhac2JhY09TSENaY01JYzF6cXZ5OUVJcW9UNndLQnlv?=
 =?utf-8?B?SjJMdlZDK1JUci9YRy9lZUo3RlVqaDExeTdrN1R4UEpERG5UY0FkbnV4UDFh?=
 =?utf-8?B?TXh4ODFqUXJFRFF4TVZ0SzNjUmdQSGlURlp0WVBGN3pvUEFIZVFZcjZGQVBU?=
 =?utf-8?B?cjRWcXhVSW9DcUJlK0VlR1RUK2dtL3dTUzZTUEVrYzV4T2dvdHk1WjIxWWlT?=
 =?utf-8?B?MkQ5MmI3QUYzUlFwZUZxbGlScGJMWEtlQisvMnY3cmtYSlpQdmdES2FJRG95?=
 =?utf-8?B?SDhOQnA4UUxnMUVOYWhGdVk4V0o2c0RnSjNUdjk0OVdPU1ZQd0kydWs2SDlF?=
 =?utf-8?B?T1d5NUNDMmhWR3FFdjg5VEoxcTVmSTBDd2pxRmpZZEhVSzZLeEJ2QmJSeHRR?=
 =?utf-8?B?Zmc4TWJ5N3o2eitrUTVzdzd1a0ZYeEphWWQ5Q3BqWm05S0RjcjNlenB4NUxP?=
 =?utf-8?B?bkwweDdIQUtFRHlsUGFDMjVxWk1maEVFVHVMZHVzelJoRWR5QWJIN0RLbTYy?=
 =?utf-8?B?SHBHMGJuNkxqVG12OFZON0FlQWZQeiswSWJrWVRTcGw1cUlBdFFhcFBoUUlS?=
 =?utf-8?B?enlUUjdRSFZqR3J1UlBoTlZjV2x6WGp6Q1BETmkvRHBRRnVBU2o2blA2Z0FB?=
 =?utf-8?B?TC9aKytmK0oyeER0L2MwandZb1Z3MmgyVERUek14cGxIUEFvZlVaYVBEVTJw?=
 =?utf-8?B?Wmp6R3dtM3BIakw5U1owdjhTWnpxYW9NMURET1VJQUtXUXlINmtUTDJveVZX?=
 =?utf-8?B?dzZnTGlSTExEeWNNNW1MVEZrVW9KczF4cGNPOC9tQmdFaGp2VmpPdGM2c2ha?=
 =?utf-8?Q?PtFln3D9F1E6ysG5hTpj+vQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d84b21-845d-4ebc-09ce-08ddf4569416
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 12:51:24.6949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MZ3/r6ndicI1TD1EwctDvlLQEa13Nf0RDYNKzHKlZh+2KKLmN27LwKBOd3IAKWJe1j4UxfgZtBhaQVykKJIYha7YKSiR7qLupX/rVBbA8k8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757940689; x=1789476689;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5xpuGImUUoTNqZnKPJw+idIh7m0ijJHjcJXlBYhqSlw=;
 b=UB0EdQ4wj1ISgP+UnwVW/0DMOd8hGlakqChDQAX1n2l6S/yyAXoNii6Y
 4ymVq2N4U7tdw82mGZeNpNvbtds7cTL/ZfUoINgPTjY1fRIl72shxcaS4
 ffoiyTkCfDmA4G0W2UKNz07e1QF2SkRmKsBvEdJbnXDQGd/v4vN14wFEV
 /60KuRvtcxVynUA+VVJKFZNaQftF2TKjlB61Wm/TfykQxQgZnl28gqmZy
 5oTMWgy9vyiKii4HDwxmTcBQp1Tr/O4PigEDHxf8rESbHLt9KRc95Y2NQ
 TFM6jojTr+ZPgLxkfvugyZ4/5DOXPm6ELQYytfdVsMNJdBR3JqQNppKXw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UB0EdQ4w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 a6c7254e995a80be8c3239fb631d9d65c9e75248
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
Cc: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/15/25 12:14, Breno Leitao wrote:
> On Sun, Sep 14, 2025 at 06:05:17AM +0800, kernel test robot wrote:
>> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
>> branch HEAD: a6c7254e995a80be8c3239fb631d9d65c9e75248  idpf: enable XSk features and ndo_xsk_wakeup
>>
>> Error/Warning ids grouped by kconfigs:
>>
>> recent_errors
>> `-- loongarch-loongson3_defconfig
>>      |-- ld.lld:error:undefined-symbol:libie_fwlog_deinit
>>      |-- ld.lld:error:undefined-symbol:libie_fwlog_init
>>      `-- ld.lld:error:undefined-symbol:libie_get_fwlog_data
> 
> I am having a similar issue on net-next, where the kernel is failing to
> compile due to the undefined symbols above.
> 
> This happens when CONFIG_ICE is set.
> 

thank you for a human report!

I were analyzing this in the past, (after all fixes by Michal), and
code looked fine, despite lkp complains.

Now, when an actual problem reproduces, I tried it too, and indeed there
was problem - but, it was not a full build (I made a full build just
before fwlog PR, then just added the patches)

during my attempts at understanding what happens, I have fixed the
problem on my machine, so not sure what was needed.

I have moved the below line prior to #includes in fwlog.c:
  #define DEFAULT_SYMBOL_NAMESPACE        "LIBIE_FWLOG"

that itself didn't helped, and with that reverted the fwlog.o an .ko
files are still building

I have invoked
make nsdeps # in the root of the tree, interrupted in a few minutes
then later:
make M=drivers/net/ethernet/intel/libie -j nsdeps
what got my attention as the very first time that I got fwlog.o

sorry, I have no time for proper digging if there is some incremental
build problem (which I have no idea to classify as a "wrong build-user
operations" vs "buildsystem issue"), at least today

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2891789872D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 14:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1B0B4194E;
	Thu,  4 Apr 2024 12:21:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o_4gxrBL6Eak; Thu,  4 Apr 2024 12:21:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE56541952
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712233305;
	bh=7VZXuNDxXYy4j8sWNLAz68btZiDvRy6kyqwD0g3MeiI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PmBAg3AVX/+uLrosDJljil0Y8IBUb4biYh64I5Fxn9zKBxdztgPpeTWRhZdxyzUyi
	 Ekbbkr8u8MFNLjyhwniGALQIUBvNHiJ7YwYxXgSbuxrqZd8aBqdpVUdkkGImbss3TC
	 LmrRSfhuMT6quBrUAZ2ppitozWgUEFObs12whYNj+e+Is+naj+pQTGaqw/lnLLRxAF
	 5Z9BA8306op8711PBzFEa9afHnqxjwgmcZvkQ9TsZt7OmoMwN983SNuoDhUDvaojxH
	 E4HYZ2UZnt53H8NeKVOgKqOc6iu1/aaGAqtd1ekYZieyL38D+MF5ItEp2HNqYq9Ak2
	 JqR3jp5Or1VGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE56541952;
	Thu,  4 Apr 2024 12:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE9781BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9E044194E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gOUwiafFGDU2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 12:21:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3737F416E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3737F416E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3737F416E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 12:21:42 +0000 (UTC)
X-CSE-ConnectionGUID: 6p6WZgjdRrqgF8yc7aqAIg==
X-CSE-MsgGUID: 4TBg0rqZT2m6E1aqaxO5Ug==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="24964401"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="24964401"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 05:21:42 -0700
X-CSE-ConnectionGUID: EezprMb9Sd6+djwo0+bl1Q==
X-CSE-MsgGUID: goWGnrBFQhuD3BPXVn5cZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="18885789"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 05:21:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:21:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 05:21:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 05:21:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 05:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nT26IhvpEmOdH5U5PAIEPwNZzmrzcj+TJ2wy0IxCVn0RYbcwaqG9FvugiJ0lGR9iF6rZbTYOKMdJbsRxf13QqUe/NMR1VORy93VccUyc3yn0ayJ4SbxWmVeNtun4DhrctS0+4LYK5q2vns+LANmwc/SvB35RIx2Us31KyagFtIVTih9/aN20TPQaAAmYQFFLpDUCNIZazokTH/gXqoLdFtaX5QvcO+C9aGO+V4vMO/B6NR9fHvZNgRrqHeCBWtZ15lc0/f2tJT33G+2+nB+RwMEUIE7QWpf+a9WugyEeCZU+S1cpiiDFGhdeSYa4WfnZD69XvMLdXUtk8OPNZKkVUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7VZXuNDxXYy4j8sWNLAz68btZiDvRy6kyqwD0g3MeiI=;
 b=R08yWcMn7NeMsuY0lVG6qCpM5l4FJY072VhfYV0/DXwQNQpAL29+iH2JzK5RlajU3/8UBLHR2F8UQng+9bm45yQidoe/XvHvFGA+LiaB+TxJTNw5ErURVkrexof2ht+FrtLSHCmyxPplmF6wdJ6Ri1XyJwjjinCaDTbArIF+/fKxscmzuALmuNbbrvZhtf9f95dPPQ3Uvrygph2OF2qQqb6DJUu1wCocbhg/p4uQyLb0xFYkfmkQDl8g22BK7LLzAAF73xp6xrZNzMNprDz+c3oCruse+MbO4lM2egu8w/mHzApfPbWOwmf4m2R36EXFEE3xuRnM38IZF5uMF0k3Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB6094.namprd11.prod.outlook.com (2603:10b6:8:ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Thu, 4 Apr
 2024 12:21:38 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 12:21:37 +0000
Message-ID: <10ec952c-fde1-49b3-b606-38e3536e4070@intel.com>
Date: Thu, 4 Apr 2024 14:21:31 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <7b0b3d27-c21d-4765-875b-2dd4681a2ba4@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <7b0b3d27-c21d-4765-875b-2dd4681a2ba4@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0019.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::16) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB6094:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CLlNLZZcTQX1jPLyEFay2FwCrpEEyHspm2RYxak1YTiua8THqoeAexJQ58CI9GXIFwAm0itdOTugjhBgN5sA8BePBtUmV2cBsxsrzBDVdz90g/twuIg2OU0+aAlCWGtTaQXKDQSRmBxUfdjrsLxwMM6BOl2QADV2NUBXeYR/FSeFb3ZMi2skDCdIZuzHf1pJqSg7bmVq2Ks5q7gdz7czDbK2u2gF3QIbBdf5EFdhlYE4zmj4rAFxe7sFU9y3aSLLc7iMABB9ZaLTh5qQldtuMmGOPTQBWD8ZWB4YSc6vwfuZhk0OFvg1LMAe0jdyZo2FAjqhWLwbdJlLDkKbZ2ojBH/CYnmHwqD+y8AF7pnRFYf0Gx/8M1TzVz1ONOW4LBbg1joFJqwNI7SytXIMr2zrQ6NfCW7ftrsZdQDtRFu/1ohjH/M8jzlSOUmwvBYZKhB4KwefarZIPSgBB1gG5uxrprkYe/UOMBRH4ntDVlXyxlzu5A5rljOHkRLMRhaB3yvtV1xD0rx4gWKx5qnQI9KAXNDzFpAYkcB7OA4XOKUOZP34oh11eC3GiWoXMpuF+GSUnQP4NbmXvUth+bLlaHa/kRToGzLIFFIxq0JHQpzXMHU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGMyTXJRVDZ3cWd1b3VoSnNMRm9wZ3N4dGdNekE3WncvUFIxZzhMVlNNU05E?=
 =?utf-8?B?MDZvRE1KemJ6aytRR2VBWkpNdHJjbU00VnhENUZNQ1IyUmVDSG5HYXNTQlAw?=
 =?utf-8?B?Q0FlZW1HTEVFN0hrUHE5dkRFN2o5OE9pME8xQ0dKS0xRQ0xDdFUvdldsU3lN?=
 =?utf-8?B?Mm1BOURSNkUwTmVTb0F6TTNhVXVXcGpUSVJyZTV0dXdQVE5RbEdXV20yc0hB?=
 =?utf-8?B?c1BzSDBTM0FGK0hQWmxqc20raXR1SFpGYXhaaTFvZ254T29uLzZDOUFOZW9D?=
 =?utf-8?B?NnBUa0ZzY0pnekpEQ3liSW5jdWJVN01GeG1qTm5vUmhUckI3cmlBSUxBVmx1?=
 =?utf-8?B?QjdWelNMY2x0VnNJUjVZdk02VnFOUitUOU1IQzd4NkQyUEpqSjI2ZFdoeWsx?=
 =?utf-8?B?TnZjMHR6cTJ5Unp1cER3V0dnZWEyRGdGVGw4WE5xQlorTy9rbXp2R2dxVFBV?=
 =?utf-8?B?YzVJY2ROSVJVMlNBSkc5SGNDZ0pLRS9HdGV3SEJSRWMrY0xtQ045R0o5bTZr?=
 =?utf-8?B?cWo5VXJ1b2FRdFpzbVB3ZXpGK3IvV3VkUEJPQVphMHZ1N1g1SWhyRWE4VHVr?=
 =?utf-8?B?RmlYdWo1eXZCMGpXL0h5Q2Rxa1UyMG9wZUd5eXovb3NEVWRuQys0ZkR1SWR4?=
 =?utf-8?B?ZWN1TmRPbjdqUThSUFVUVDdvUnNJS2J4RU51d0RqMHlmejVYUkdtdHZESHVM?=
 =?utf-8?B?cXpGb0FyV24vWXU0TkFnRkJ4cENnNUNoMkNJUEF5UmlHRktMRXRTTzNRVG1a?=
 =?utf-8?B?VU84K3ZOb1FlZzRJMld4VnZqdDRRNDlReGcrb29qY0tWbFVxcHpmOE9qVSti?=
 =?utf-8?B?ZGtheXladzNjZ0ZjRXNPakVGTS9FNXJlQ2NBSCtqZFZOY3BpblBBdDI1d1V6?=
 =?utf-8?B?MWZKR2NkeUh1K3c2QWJmSm5ybUJCdEtGZzNoM3pxRUV4VDVsbG1zU2NFeUE3?=
 =?utf-8?B?WUhhS2Qvb2ptaTA0bTdGTTBraHJCZFVldHNPaFYydDZZaHVGS042UmZkbHpJ?=
 =?utf-8?B?TzR5ZGovZTVCK29kemxSNElFMVo0QlJvZmQ4VWpEOXh3Q205Ykxud0VLWjlr?=
 =?utf-8?B?a215VkNkU0tmbnNZV3RZZVJ1Ky94SWpmQ3FJcXlNeTIzTldXNi96K1lIR2ky?=
 =?utf-8?B?UklOcmFQMVozV1I3NlJCaFl6eXBBTTZyZHh3ODlIN3QzTGx4VDhUSjgvREw3?=
 =?utf-8?B?Q2tCU2k3Vk1obEM0TVZQQW5IMzNmOVAweWsxN1VTMDMzZ3ozZzFSaWNwb1Qw?=
 =?utf-8?B?VmdBY0dPeUt3eVh6bERRbjVsUDdvMnhKOThvaW4zVEp2ZmJtTjRWVFFQMlJj?=
 =?utf-8?B?ajlQbTd0bWNGRmtaQ0ZjS3JTRS81V1VOcEVSd0daYWRXR3pWL0Ywa0NCUzJl?=
 =?utf-8?B?dDlsTGxseTVVQ3FET0dPWUZlSytBa0pKZS9CQzk4S1BFSDN0dkFLNngrQmdp?=
 =?utf-8?B?NmhEd1ZmRnpLcmtGUHNvSFgzVURuV2t4blQxSXM1ajJzY3Y0aWFEaFZrS2hB?=
 =?utf-8?B?MjRFaitmT0tYYmdtZ2p4WW5KaDJWNTNER3l0bFZrT2hOemNPaSt1MktIQXpx?=
 =?utf-8?B?dnJwNDQ4NFNVSndyeEVkb2NzZTFNZDRoMmZMbTFmZmdFZllTMzc2eCs4R2Nv?=
 =?utf-8?B?MHdrOTNxVUdPUUxYYzRFa2p0VGtRUVY5c0poUHBHdEVvWnJ2ZHZ5MUpqTDVl?=
 =?utf-8?B?dXhINDJMWVh2WDlicFpIb1JqcW9YZEtLSHJhR1RLN2xCWWVZbi9RQU9FcFY5?=
 =?utf-8?B?ZU9DMXhBZkdqRVI5czBoSVU2UFJ5NGp5UWZwVGRiNWM4TngrZXpZZnJaU0xp?=
 =?utf-8?B?dGpjODJKRzRNaFZNYU0ydmxveERPSHJiRU90a2llbFBTWjJjSkltNGFESW1a?=
 =?utf-8?B?aXA1S1k1NWpyV05mMWVsTWNPYkZFc0x5MUlrSTBsTVF5dHlOQ0REK0F3dVNL?=
 =?utf-8?B?WC9RaHdxNFZEa1dyUW8vMVlZYUFuUDJMdFYxWFk3V2VqNDhkVytqcDdEK2lO?=
 =?utf-8?B?NHdDcU5sQURMRWJqemgwTVBBcTFuR3ZLSHZhb1lHRXZ5bzBSRWFpU2o0K3hX?=
 =?utf-8?B?L3pYY1M3djVJcGg2SmVmTHYwRCt0Q1J1eGhQQUllZHU4bXdJMUhHRlVyRHla?=
 =?utf-8?B?S0FzalYxS1NIQ21KZEc3Q3E3dmtUNG9EdG1hWXIwRlBsUFRFME1BdEQyWWd3?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddab90fe-69e4-4932-8724-08dc54a1c640
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 12:21:37.5131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qH9Vsr+kOLrGkfXnK/k/soQSD98ba/x9bi7lvH5SSvZ91PrliTFI5xsnP4bxlImNYCOT2Swhd+E5Iydj2sCtOVMWVBHtvG5WybUBUrBDc5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6094
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712233303; x=1743769303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbdY3vNHg+7lqtwWgKZ8nocv0OCNqa4cqx2e4efziSE=;
 b=Q7KvogI2cs03Rjte1L4hU4Rug1W2dSQ+B02fBP0lVNj9R/aySeqx0xyb
 mqWqPJTkxjCk9H/Fo+7yWFIVGT2ZEW2RkmWnPwiRD/bfLCxV63Vf6rgaz
 4emCA0ls7jYalgLTELheorGW0bPL0ZPG+EuvzhQLbtnB4IRtobqT5kjBP
 eivkVERxHztL5ra3f8Wor35l0lusm5FgDDPAtRdq5KZW6kLkB7EDENzaY
 BOqt3wA3/u073Apz58Q5qrZ3rJMG16y/iePD3G0CvYos4D/psdiE/u+rR
 R9yvEyWiDbYNEqf8Z8CzQaGSTc08HqQObj9vRblsGDsx1vzpBYImzipZP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q7KvogI2
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 03.04.2024 15:40, Andrew Lunn wrote:
> On Wed, Apr 03, 2024 at 03:18:44PM +0200, Wojciech Drewek wrote:
>>
>>
>> On 02.04.2024 16:46, Andrew Lunn wrote:
>>> On Tue, Apr 02, 2024 at 01:38:59PM +0200, Wojciech Drewek wrote:
>>>>
>>>>
>>>> On 30.03.2024 22:57, Andrew Lunn wrote:
>>>>> On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
>>>>>> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
>>>>>> module implementation to support new attributes that will allow user
>>>>>> to change maximum power. Rename structures and functions to be more
>>>>>> generic. Introduce an example of the new API in ice driver.
>>>>>>
>>>>>> Ethtool examples:
>>>>>> $ ethtool --show-module enp1s0f0np0
>>>>>> Module parameters for enp1s0f0np0:
>>>>>> power-min-allowed: 1000 mW
>>>>>> power-max-allowed: 3000 mW
>>>>>> power-max-set: 1500 mW
>>>>>>
>>>>>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
>>>>>
>>>>> We have had a device tree property for a long time:
>>>>>
>>>>>   maximum-power-milliwatt:
>>>>>     minimum: 1000
>>>>>     default: 1000
>>>>>     description:
>>>>>       Maximum module power consumption Specifies the maximum power consumption
>>>>>       allowable by a module in the slot, in milli-Watts. Presently, modules can
>>>>>       be up to 1W, 1.5W or 2W.
>>>>>
>>>>> Could you flip the name around to be consistent with DT?
>>>>
>>>> Yea, I'm open to any name suggestion although I don't like the unit in the parameter name :) 
>>>
>>> That is a DT thing. Helps make the units of an ABI obvious. However,
>>> milliwatts is pretty standard with the kernel of user APIs, e.g. all
>>> hwmon calls use milliwatts.
>>>
>>>>>> minimum-power-allowed: 1000 mW
>>>>>> maximum-power-allowed: 3000 mW
>>>>>> maximum-power-set: 1500 mW
>>>>>
>>>>> Also, what does minimum-power-allowed actually tell us? Do you imagine
>>>>> it will ever be below 1W because of bad board design? Do you have a
>>>>> bad board design which does not allow 1W?
>>>>
>>>> Yes. in case of QSFP we don't support 1W, 1.5W is the minimum.
>>>
>>> So if i plug in a 1W QSFP device, it will let the magic smoke out
>>> because it is force fed 1.5W?
>>>
>>> Looking at
>>> https://www.optcore.net/wp-content/uploads/2017/04/QSFP-MSA.pdf table
>>> 7 it indicates different power budget classifications. Power level 1
>>> is a Maximum power of 1.5W. So does your parameter represent this?  It
>>> is the minimum maximum power? And your other parameter is the maximum
>>> maximum power?
>>
>> Exactly as you described, minimum-power-allowed is in fact minimum value
>> which maximum-power-set can be set to (so minimum maximum). the other
>> parameter is maximim maximum.
> 
> Table 7 in that document is titled "Power Budget Classification". So
> how about
> 
> minimum-power-class-allowed: 1000 mW
> maximum-power-class-allowed: 3000 mW

Sounds good

> 
> 	Andrew

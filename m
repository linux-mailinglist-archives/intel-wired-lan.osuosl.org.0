Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F8B8ABC66
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Apr 2024 18:18:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B283740988;
	Sat, 20 Apr 2024 16:18:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KZ2vQrQ-7DJU; Sat, 20 Apr 2024 16:18:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63F5640808
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713629889;
	bh=8f0HK5h2TWUm+mI26zOaesz57Fy0Me9oSkclKDXoHso=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mHPqIkOzHJNfCD2lzxJblpBpBadeNBpo9ZyzEdrNLG7ZdpRgaxUdzKk5sqGLIR2Oj
	 1Aj7dz+YG54HJsem9v4saoegT9Ns+Igj8bI9Fd+QThBK3TtYTOLVE0jpB3o5+rhUwn
	 omPw7AI+nMCgPeqdKpllT3puIpuW3x+DGr7v1/584qdrZxiWyTMFwrDHLBVB8sWhXR
	 DFtdFLlJ7KIuWT5qFFI5RMq7kytcF7TYvMvRmzuVVldHmsXXwXXvOuFmOxbvhsjjZH
	 UWCg1PwP0W8WmCcGfASb3JCwNv/9KfzZD3NF8e0Xm5ujwbx3+upvHmxvzrrzmuNF/R
	 bdiMrn+wIBMpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63F5640808;
	Sat, 20 Apr 2024 16:18:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E8EA1BF381
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 16:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 346DE407F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 16:18:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0414ohCn0kVl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Apr 2024 16:18:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8358407F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8358407F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8358407F4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Apr 2024 16:18:05 +0000 (UTC)
X-CSE-ConnectionGUID: zLft8rU/TdaPo/7zFVBbAQ==
X-CSE-MsgGUID: OKqnOJDZTaScrpfy/6RrnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11050"; a="19914478"
X-IronPort-AV: E=Sophos;i="6.07,216,1708416000"; d="scan'208";a="19914478"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2024 09:18:04 -0700
X-CSE-ConnectionGUID: GIlJnEOHQv6BUnvf5LLN/A==
X-CSE-MsgGUID: Uk2XIRNlTEinbxB1mIKzBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,216,1708416000"; d="scan'208";a="24058122"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Apr 2024 09:18:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 20 Apr 2024 09:18:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 20 Apr 2024 09:18:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sat, 20 Apr 2024 09:18:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sat, 20 Apr 2024 09:18:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWGP27nRT+md0rVbw/l2aYkm6zmiqiIolRYrqR3Cqr/TFsQf7QBa1Nvyzkp1lQlDBXwdssmzV08mYkfKcuDH2OmTMgqVpZePEB7Y2CDD3H3KnedRQvwGpMrqvEHLtwJBIYGKtvfAVKZURY7o0GcFOpzY3coxAxwl8Opk+bLMY2wJqn1qtFU1EKpXeOGM/gjyZw552HRNUHVTXg702jnf7RKrsEnJlls9Aw74yiBTeYq2YYQlGsJ8kPiPwRUqRnDnX+5800lDPZ9ckVdl75vhEG6g5KD1a45BE89R2qsO/AoSFDnEFrzMHnQUmARL976saZHVUIUoErda0WAOA1MhAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8f0HK5h2TWUm+mI26zOaesz57Fy0Me9oSkclKDXoHso=;
 b=A4/ht3Vpu+vCUNgzi7BXhN7jMScK3vb2qdRkkyvJCzpqTXk4foxhbUfo9TUagiGLxxIOj79g4PKDpc7d3YxrsCz2/0JvKagTXT19sNDGasGniwI1nEim/QWqNXewMkSuyv2yQYYX//CnhADobtyw/z3j8U020gZNt/ZIZ5YFzg07jMTD4v+ezGJL4tZcPq/gSLus3/YIqSsuW+y41gINqVgVs73EbGd1ASGVd2FzZfxDWKzNf+0LoQV9+tVcJbC2HiX3RhjTzGYUlWeNELSv1X3KLVEJjCuKqGoWuT1rp6IRYLEDteCxPVRmSw4Tui8aYiMhTh2dhEezDJLZ9GwOdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM3PR11MB8671.namprd11.prod.outlook.com (2603:10b6:0:42::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.14; Sat, 20 Apr
 2024 16:18:00 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::416d:2690:e006:8f50%4]) with mapi id 15.20.7519.010; Sat, 20 Apr 2024
 16:18:00 +0000
Message-ID: <0e428380-a3b1-4930-b4de-2b13e7185647@intel.com>
Date: Sat, 20 Apr 2024 19:17:52 +0300
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-ko@zougloub.eu>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
References: <a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu>
 <dff8729b-3ab6-4b54-a3b0-60fabf031d62@intel.com>
 <2259bbeb9a012548779e3bf09a393fdb7d62dd0c.camel@zougloub.eu>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <2259bbeb9a012548779e3bf09a393fdb7d62dd0c.camel@zougloub.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM3PR11MB8671:EE_
X-MS-Office365-Filtering-Correlation-Id: c973f95f-cf7b-4b8a-523b-08dc6155727c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUNiQ3JqUzBxVDJIbmFYQnFOay9SRG9iU3dFQ1JvUFNNZndqanhVM3NTdVN5?=
 =?utf-8?B?cFh1MnNCSHR0MllSM1MxUmQrWERjUzkwTDJWSi9vZHVOcDN4UFQrUzUyTWVW?=
 =?utf-8?B?WmY4LzFXaXNJamRPUU1yQzJMWmVOcktEUWNQWkkwaHRPWkdNcGlmMXZnaVdv?=
 =?utf-8?B?VkZwSVpRbTdXejZzdmNFczdKZDJPb3lMS2RGT0RYQVhhMU5PU0NoTFRuYjBl?=
 =?utf-8?B?SUUwOGhWVjltb000R2NKTGk1aldVb2lsRjA5UmZOTlFuS2VzdkRKTGwyUzFB?=
 =?utf-8?B?SjVYZU9ZVEJTUXJXbDFNSUNlZ0laNloycmNFZ05JSG5mWkdsUzFJUGgvajhH?=
 =?utf-8?B?YlVCa2lobGhBbFNIVHVldERDMVRxcmVEMldQS1ZTZk1KWktRT21RYVIyRTRI?=
 =?utf-8?B?SVBncy9JTm5uTkU2V09JMHFYS0Y5aVdWSm9xb1k1OEJsbUYxRys1cThBNnhh?=
 =?utf-8?B?U1duOS9jTUhJdDRST29HTkJkbjlwN0o4VHhPR1FnNVN6aHhWWGZ6UlhUNWxj?=
 =?utf-8?B?OWMyRk1HNnZFWmd6SDdGVXA5U2lyOWUyU2l6OVN5RnFGUDVocUh3cEltRjZi?=
 =?utf-8?B?MUhJaWNmR3NTYm5IL09WSDE4ZW1yU3NMQmpFU0N0NStKanFSOTNteXp6TUZT?=
 =?utf-8?B?bEM2NmlCTHpucmNYUi9CYU5MN25CbHhFR1NHbjNkaUt1Slk2cisvaG5qMGp0?=
 =?utf-8?B?VGNoWnVtejVkdUxmdFpmOUJzQjYwb3R4SG9Vd29tdXY3em9sU3ZFem9UTGZv?=
 =?utf-8?B?NFFHeW1OaFJqM08rZUZxV0dGMEx0UHlQa0hZV0tmRUNUNGgxQTVja2dxa2RK?=
 =?utf-8?B?THNZNXF5UDhlMkJFNkQ0aGRmV0UyY0VudzZjWFROZThwS05uTnZVbE1ncGo5?=
 =?utf-8?B?a3V0Z1hJbWRDSjdUelQrSTBpeDhCdXRrZU1xZlRBcXRyeU53cEhhT1ZiMXhS?=
 =?utf-8?B?TGs4L0tEdlIrT2JkeTZ0Qnp3OWdyUHNvTGxhVW1QS1lldlBEaWI2eWlrcnZJ?=
 =?utf-8?B?c1BhWm9wbllJMTR0MVVKQ0ZBRkZEcmtqaEtlTVZCSnQ0Zlk2dThqK3YzVlIv?=
 =?utf-8?B?QmhDbE0xMGg1N0pjaUUwcXdwNEpNalJkL25ZN0tSSWdNN1VzMWlrSjdMNDdW?=
 =?utf-8?B?T3k3WFpsS0ZlS2lkbWR5c1UzY0VVQ291Qm9xZyt4Y0NhOE4xbTFlWXloWlJU?=
 =?utf-8?B?Qnl2NFQyYUEyRDJxK1llWDNBYlc0UE8zdTdzZmxDWWtOVzZuUWlydFVaYVZX?=
 =?utf-8?B?TWtYcEJwY2YzQlduWStiZ1JjQ2p0WVlKQlB6VERncVNNL0dYODRDNDRjWXlp?=
 =?utf-8?B?ZzNaVkRkdnFQMlVrdDdaTStSV3RyY0tuN0NRaDZCbGN4bjkyaFpTTnBPRUJN?=
 =?utf-8?B?OTVTRFNpQ0JXeXpubGE3cjZ5VTROb291UGNNRWpkU2pJRGtlNnhPdkZQUDhJ?=
 =?utf-8?B?eVl0YWNHR2UxZWVkSVNXeXhGSkxreGVRNkpQWVM4SGI2ZUlMaGwvRmx6ZEk3?=
 =?utf-8?B?V290TDRvV0kzU2pBeUhKdk8wUmIwRGw3QjlrZmphQmpGSWwvandZVWpkak5m?=
 =?utf-8?B?dmVKTytpdjlWL3lKdVZmS2FkUVU5MDdwc1N0WlZiUGJuZzJLb2JRdEcwS2Zm?=
 =?utf-8?B?VlF1NXZoUXR2dU5KVnhKQUlveUVpQVl2OUJuRFRCSCtUQWRlVlZOUXdtQ05J?=
 =?utf-8?B?dGtDeXFMZWV5dC9ZQVN0TTNTeXBVUEN4NnppVWpJM0RHdmdlQnQxWjdRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUZFUnZzMjBrUTVqREJ5eFFOeGJIazlWM0h4SnFKaVora2MrS012bUgzRk9k?=
 =?utf-8?B?UUd1bllzNWtacy9nSW1LTmdsdkhwK1c4NzFtTHRKamJTMXVJaDR4TlRLR0cz?=
 =?utf-8?B?TW1WdlNaZEhJcWQvT0hkTnJjc1NRMDZjR2VjTzY2VTBmRGM5ZDBCdUNMM3Qw?=
 =?utf-8?B?b0F0b3BCRHZrUGdDOTViMVJNdmpTVjAwVWpTMlllY1VFSU1oMVlIem5sVDdF?=
 =?utf-8?B?T2lKd3lTZXZZL3N2UGU1NWRBQ0k0M0paZ1ZRYytsWUY4ZmpJOHpMSXpMSTRG?=
 =?utf-8?B?TnpPN2ZDSDlwMGF3OHJDN1VjN005b1RpVENvckFhNGJiTktQVXZGOXV0UWlC?=
 =?utf-8?B?RkYvckN6d2lIK2xxdW9iNXFhMDdWemozMDhaYWF4SmcwTC9XaDhwVHZ1Qzg1?=
 =?utf-8?B?ZjA1dmpFNW00c2oxZkZnZzBTWVNCK0s4dGt3UUFDUFZUckcrNlZPeldBemxx?=
 =?utf-8?B?YnlPS0xpZjdsaHJOY3UwaGRMaW40UjVONzBaejFONGhkMDBGb3ZJTGNIQTZ2?=
 =?utf-8?B?MGwrSHIwTzJIbDMvdHhDNVBjVkp6Zk1BS3NXMXA4R2ZvaXFQK1lIWlk4bndG?=
 =?utf-8?B?dFJJUzJkbG10YVcxdFVSMkNKbDFFTkxSamR0bitDZnYrS0ZvRWhYOGs0S296?=
 =?utf-8?B?WG5adEFBSnlvL2dlVDdiMmkwS1NNQnd1eDhVajhIaVFSRU1JNGFXUGpMNTRS?=
 =?utf-8?B?WVhlVzMwbDg4eVI3bGVQcXVUbDNmNkZRVjczQ1RnZnFRQk5md0RnYjVwK1h5?=
 =?utf-8?B?TWtMbWxGSDdVemd0Mkh0Q1R1ZjB4UjNRK2tlb005Mmd3a2Y2MnZocnNDOXdW?=
 =?utf-8?B?ZE1DQkxnZW92MDNEeEZlQ0UzRDc3WFFXc0RiaTJSclczQUZLNjRFVmtkcXAz?=
 =?utf-8?B?UXVsendlQkcxWEFEbnZyQjB0S0hGekp4WEk0KzZOQkp2a2lHaWJ2L1cxa0pp?=
 =?utf-8?B?bklFeXVwSDNXSUhmdHpkT3pqSlRUZy9xbitFT2I0Y2dUbytnVmdWdnpVLzR3?=
 =?utf-8?B?ODcxSG93QWNnZ3JiSUZBTVZwajlLU3h3a0pyb3hqVlRIMHgzcGRHaCtGVWpD?=
 =?utf-8?B?ZHVuTStTMXhGSDhONm5ETWNmQ1pYSjk2NGk5UzFwaXQ4QXljbnpYTTNTcjBD?=
 =?utf-8?B?Z1k1U3Z5bDc5OXZ0UnVVbThhbnNOQjh4SkJ2NTh6b2lGZVRGYVh4VWx0eHI5?=
 =?utf-8?B?UzFFR1ZEVjR0dUtBcnFBK25yYzJ5V0FCaWZkamxPTmxhbnBCUW5pMVF4Y2Nj?=
 =?utf-8?B?M3d5QkR1bGhSdllXZVY0VkMxRnZpYlRPbENkMnNseXJSWGhJM0JFSkxLSlo4?=
 =?utf-8?B?YXJXTDZMaXI3TTlSbGVnWmhUajI4SUFNQ2RqYTBtTUQ5WVpHWU1KY0JTcTU0?=
 =?utf-8?B?ZjN0dUJORWFwOGxUc0dVVFROVUhla0hlTzN2TmY0VkxIYXd1YnUyaGZqNmVk?=
 =?utf-8?B?Y1pKN3J4QlFUY2VFck9wbS9SdGRwWk5yVFYxTnUzaEVJb3EySGp5TDI1b2o1?=
 =?utf-8?B?U1NzUlFPdk4ySjZlYnJQUkVudDdldmJSNnJMYktUY0xiQjkzUE9QdHZQZyty?=
 =?utf-8?B?a2I3Y3UyMG44MGcrNGhJWUJhbldsejhjTUVNTWdCd2hxQjZENm5kek04STZJ?=
 =?utf-8?B?cTUyQzhtcFp0ZEtrVGhQK1FvVGlyTUx1U1VZb3ZPUERDcS82bVYwVWVSMU5o?=
 =?utf-8?B?Q21sQU1NMEdwVFB2Zm8wMXpTdG9pRXRXczNuSDNYNUxkb3NnamJFaGd2eFI5?=
 =?utf-8?B?bHJveDFwUWw1enhTR1JnOTE5WUJIbEkvMmMwWjIvM0E5NndWYnZ2V2xCM3dh?=
 =?utf-8?B?dXVYV1RhSVpCRmhKWW8yVXdSUmNYemIwRmRHTHdBSndrVVFWdHBDRHZUQ2VI?=
 =?utf-8?B?SEs4OGlrUFNKYUlDZytrZFhtWHYwcjdtWGk3N1N4RnZlZ25ZamttbFZxbTBZ?=
 =?utf-8?B?VjRraW5pUTBiUzA0S0lGbzErTnJXQy9QZjRQZzluRHpsMUxHalNwRkp1UFdZ?=
 =?utf-8?B?YVFTbDVRaHFEbWQzcHhmckNNckhZcEhrNDdxV0FPRjBueWlVMlBBZUUwY2ZJ?=
 =?utf-8?B?NjVGc2VyR0hldWU0ekZyNVk4TkxQQW9LeXQzd2NnRWVMVWtWSVVJRXFIcVNP?=
 =?utf-8?Q?Inx3wTKzpk3sgt9nc3OvMnStk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c973f95f-cf7b-4b8a-523b-08dc6155727c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2024 16:18:00.3710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5FziRcdQtTGCxmRpRYAl6M5cM+PjCpLHgYEPfm3WFbCCIB21cNWncRAuNPRXhfQ79quVhqTbf1XjSUnnycINVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713629886; x=1745165886;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N4CJk4rzUFTzG8gvBGN8cbrbkRXyML/n+kjXmZfQ+fo=;
 b=iz93DXolH+1xyGZkomhdN6bs1fF183cXj/GUQzlSqq3NCEYZEDXF1SoC
 iRs4kiM0cSDD70GNC8PYY3tlnuLJK6Gt3mxIi/otvmR3KktvC7+IT0KON
 zOdnABCgSu4o7qavmUbm0tXYuhAqUFK5ZP+11gcNRQOAzFQXiRnai/kwI
 JWkg5vEOVUQHCBjJAgcwI6z1M43yFBi4wHWbwRvcKT87lFHvRhBPW9ntt
 THmddwTzQieFud4q/S75l+RfmyRJ9duE7BmHl38nKOWXAEZSPY9rHZjVG
 +rMbtOCOXi5XS8RQ02dhxoOs9I4IgUSzwf0YCdqnfzLssnTyQNZMtOPhO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iz93DXol
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] e1000e, scheduling while atomic (stable)
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
Cc: "naamax.meir" <naamax.meir@linux.intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 "Meir, NaamaX" <naamax.meir@intel.com>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19/04/2024 19:20, Jérôme Carretero wrote:
> Hi Sasha,
> 
> 
> Thank you, sorry for the delay but I coudln't reboot.
> 
> Adding Greg KH because I don't know if stable will receive my e-mail
> (not subscribed) but the regression was integrated in stable:
>   commit 0a4e3c2d976aa4dd38951afd6267f74ef3fade0e
> so they should get the fix ASAP too.
> 
> 
> Tested-by: Jérôme Carretero <cJ-ko@zougloub.eu>
Hello Jérôme,

Can you put your "Tested-by:" tag under 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20240417190320.3159360-1-vitaly.lifshits@intel.com/ 
?
(then we will forward it via fixes, hopefully v6.9 candidate will pick 
up it)

Thanks,
Sasha
> 
> 
> Best regards,
> 


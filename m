Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B35ACA35F3F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 14:33:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 627AA6FC29;
	Fri, 14 Feb 2025 13:33:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dUruNxHimFb; Fri, 14 Feb 2025 13:33:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66CDC6074A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739539981;
	bh=M7k/hOxdNkducK2548rswFV8nfA8zCfEOrxtxU7RU/8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AHcVv6EG//GENWuYUWLDNtly6Td0mAYxsQ+Uh09d+dIGOtnJBGKfJuYPkv7TTSVfQ
	 jS8wjnEIGF0/M5BM8B+lgLN8mrSoLyVCDI3sdNhDcZ4E2bIhUlwyz1KqcJoPrEuIJB
	 EeuKF1zd6vD9K1Mcj4v8GOvgtCMHyZBxjqxXcQYWHLC7HcE62/HbV8USn3lCSGDmYY
	 n2/g5K76fEMJyDVmO/bhEtISZx38/upM2S4aJkbwFbp7/HWmkMj+xo/c0GQJwgLILF
	 wHGBhszSt8Q7PAqmilmC6R+cHzjFnqM366eIRRMzcK/g1v30wRzpNnKD2l3iMCKyEr
	 EFGAFLdgdPfTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66CDC6074A;
	Fri, 14 Feb 2025 13:33:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2779F1C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BDFA8209E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:32:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oPLp1JLDB8qc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 13:32:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 214CE80EDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 214CE80EDA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 214CE80EDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:32:57 +0000 (UTC)
X-CSE-ConnectionGUID: Y8pmAES9S8CimZEzj8er8w==
X-CSE-MsgGUID: KDp3KVwMSDGwQcN8Gsv7kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="39996118"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="39996118"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 05:32:50 -0800
X-CSE-ConnectionGUID: xSpBqFcJS0OLdpQ6XcjJKQ==
X-CSE-MsgGUID: C/eut94iRbmwjJQIpP351w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113977413"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 05:32:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 05:32:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 05:32:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 05:32:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q/coHVPh7cPbc0V9u9m0eMCR1ejpyjwljM7TWi6R+6RtTCXlmkoCMHuv1SFq75FbnDxFBwXnMLXsBXV3N81+zPLcDd+uq9TC1LhPCUgas3ElxDR5ExOQKhNp6X00AhTHmfsYJrTnhjB2C+m4H3XLO0dSbcu279lmDOtqvAPSF/BpqPGjo9yqJVMeMPySrAWWJIghcrxX8nC7ReUjs+CVwUyCCgXjZi1Mgr7Ifax5ljYjoizmfUidAfZzIees+6Ee9klURioHme3FScLRt0RVYpWgDArHuVgKHh4GirOJrtcQLLq24NVbn89Nt1QPbx0sK9DDx8mDzxEqAHiYGT00PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M7k/hOxdNkducK2548rswFV8nfA8zCfEOrxtxU7RU/8=;
 b=HclmChW19MSFV8RjqmtFnDBVeGILx2yplyn2UbDTAQzP0U9z2RAVuUbxH1QwiA5Pmirl0Al/2A1WEGju7voPDtCh0aQlvSe6SK4uN2lrZBCM5GivRYM5rLHw23KHWmYxY0VpTY4XcXCf2GC9+U4NSsDkdBd9ALHZXq2DEr9W7AoZ+i9fCd2bToXYS4UN7W2UCDKGc9rRH3gWJGgY94Vfqvi2lNYiXJLkSDjhoeuLStfDWbvnIpCrD17796sgo7TodQgQDgwfazl5ws5yKCyiMo0Vdifa8QS0VqNAHWO/Zm7mSHPKA+Q1ItjQKN6nqavjqz/wXpCeMJ4MQHVhkD+67A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYYPR11MB8305.namprd11.prod.outlook.com (2603:10b6:930:c1::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 13:32:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8445.017; Fri, 14 Feb 2025
 13:32:26 +0000
Message-ID: <02b91659-83d2-482d-9b28-f814829b1005@intel.com>
Date: Fri, 14 Feb 2025 14:32:20 +0100
User-Agent: Mozilla Thunderbird
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>, Simon Horman
 <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <decot@google.com>, <willemb@google.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <madhu.chittim@intel.com>
References: <20250211023851.21090-1-emil.s.tantilov@intel.com>
 <20250212182111.GH1615191@kernel.org>
 <00ecb5e5-00b9-4c30-a29a-37c9f268b389@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <00ecb5e5-00b9-4c30-a29a-37c9f268b389@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0031.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYYPR11MB8305:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c44a351-49c8-4b8a-b143-08dd4cfc056c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXdOWlZnT05MQ0wzVllaMURKdjUybWtVSlRxZE9vekFoeDJCM2FQbSs5NU1H?=
 =?utf-8?B?QWN1MWpTZDcyK2ppS3JUNHhKOTZRZTRFb090TytmR2diL09Oa3c1NVIyWW1r?=
 =?utf-8?B?MGY3Y1B3ejZHQ0JIaTdubHdrUGNkZ1V1dStxamplZzFndnk0eFZMb1BwUEwz?=
 =?utf-8?B?ci9ZbktydUZhR2hzbitieFlXaWI4RzJpdEdaSUNLK09tcTE5Uk51am1rZ1dr?=
 =?utf-8?B?cDFHZEV1MWxqTjVWN0hrSXdGMXNMbS9SQVh1UnViYXlkQUJucWU1UU4zQzNo?=
 =?utf-8?B?SlpDYmJrYUxBcVZPaWE5T0hxQnZJbkRHc3UxZTRkN0VXWXJ1R1YxMmVFUXFp?=
 =?utf-8?B?eGRMTHovOTBXYWw1K3NQZ0lKNkUvN01KcjdZdk5ub3ZVQmQ5Q0FIOTNXUjIx?=
 =?utf-8?B?bEg0cXBKQ04wSzRveHFDRHU1OU9ZM0oyTDErZzhNaGVJc0Z1WGc5NWh5eEpC?=
 =?utf-8?B?d3pVcCtVQThIVjJST0dwRFJpTUgrNDh0Y3pYM3lJa1NjaUtYcWlDdmtkSUFx?=
 =?utf-8?B?bndoY3VVb042b1BJU2piY1FYNnNzWTNad2QwZkQ2R1pWb1NwTGtOc3owSmFW?=
 =?utf-8?B?cnpZZXJQQy9ZT3Y5VzhMeUY5UzkvRUEzNFpLRnVGZm1LY25lVlhLM21JaVgv?=
 =?utf-8?B?REx6WnFEYVArRUwrdHRIR1VLdW5UMFl3TldBN3U5MlVMVVkyNUpWNFJGVkw3?=
 =?utf-8?B?d2g0K2hCaFY0QUsyYUQwU1p4OWlzVUdueVZBcmxvaFZxZmN2VklTbnkyWFYy?=
 =?utf-8?B?dFQ4dUY0U3g4R253dnAzT1p1TVRtT3JPb0xPdDlJTVYxSzNsMm42TVlIZjZh?=
 =?utf-8?B?ejA2WU5RaDBtcHN6dHdpSkxWM09tdCt3VVhaS1J1cFp2K2RDZzhPM2dyNFJq?=
 =?utf-8?B?a3BoaUFwNkMwblhHcFM3QVcyZWV6OGlvWVNVV0lzRktSd1BhL3d1bWNLYnJm?=
 =?utf-8?B?TjJ3R2o2SlkxbzNPVHNtOFJGR0tSeVg1amE1YkJDOXNiT3VDdW85eDhobDdL?=
 =?utf-8?B?SWVuZ1VsTGhYME8ySU96WGROMHV4UlErbFZjcmVSZ2FGWXNCQUIvcUVPeExl?=
 =?utf-8?B?UlNLMzFuNVhjYzFlVTlnd3dDa2xIY29FNEF2SXBaNjVicVN3U0NxVTFVUmpa?=
 =?utf-8?B?RWNKNG16S1VlbjdZemRCWWFnbGZLM3Y5cytiRUttNFhaSnB2VnlwNTZZQmRM?=
 =?utf-8?B?eThuYVZRQXhtdjh4THQ4R3hPOUJNV0d1cHFmMUJndktkT3R2ZC9nSFlxMDY2?=
 =?utf-8?B?QldRaXd1aFdMMHNoVXlPVy9NZUt6RlVsL2duWjkyQ1BaQlA0MDYwY3ArbHl5?=
 =?utf-8?B?TE9ZbCtqUXZ1dWZMSHRONEtkWGR4VVBJWVdlckJ3UkVzQWVPRldBS2ZHd1BV?=
 =?utf-8?B?U3lYYkYzZUhRbHpBUXQwbzAwRmhoalE1MkFXVzM5Uk1uTGxMK2JmSEVCWkFx?=
 =?utf-8?B?SkxEeWM2S3ROTmtZMFNsTHFMZ3YxSmVzT2hxTnBFN3NHcWk0bWp4bHpiMGs1?=
 =?utf-8?B?RUFRWUJCbnZ1MXRKRXFyTElOVGgrNElmNEVmdU5oZDNYbXorV2lSZUplay8z?=
 =?utf-8?B?MU95UjQ3RitDaTRJM3VzdzZOTkhGRGIvUXNPV1VCSXlVTW9VNGR4czh6UkRH?=
 =?utf-8?B?N3VGOXg0K1dSUmNlWmZCbmtVQ2xab3ZIUC9iZkd1TkZhK0E1OVlEVTNGUDYz?=
 =?utf-8?B?OVRrbm9sa1NqTVBXMDRSdGRYZE5VcHoyYjQxN2ZIU3RIeWcyWFRIQ0Nya3hG?=
 =?utf-8?B?M1Fmd2NPZlBTUWN1cEQ2SmxUQ2xKSGd2VGkvQ1lOcWYrTVJCWkRBK1hDVFNt?=
 =?utf-8?B?Y1RoSWRVN2lNN01haTZ2OEpYU2hlSVFNQW9QTWQ0c0EyOHp3NDR3K3FGYUI5?=
 =?utf-8?Q?EUIZTeUsv9QNV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NThVdnhYc2tmNDRSZDl2UUR1SmZidUpKYlFHbGZEM3JpWUlJQkEwUVV3WkRD?=
 =?utf-8?B?SDRzaHc3NUNwQWhWYWRHUytXa1FOT3JGZjNZMjJsNndXakNxcEZKdm5mZ1gx?=
 =?utf-8?B?SXZsUmNqamNoSnd1by95VGUzV3lGd1lmQkVLTHZzS0FDQVVkWVJoRWdEUG1M?=
 =?utf-8?B?cTZheGFSK3Z4cW83cWJFNlRRUkFuK3l1RHh3ZHJXaXVnSzVYUU1XdGV2aUlB?=
 =?utf-8?B?WFlQQXoyS3FOQkRHTzJMTmZCR2ppZnc4T09QMWIzcUVvNG5LRkVhL2tZdUwr?=
 =?utf-8?B?SGIzdkFDVjJrT2h0MjYyL2NXZ1BQUnpIRFBhcUFHaW9nczFJZUJ0QVdHRnhT?=
 =?utf-8?B?ZVhKOXJrVFduMWZJc3QyaTQyZWY0VThGWXhJeXdnQy94T1hMc0dXSGp0N2Jv?=
 =?utf-8?B?V2FYei91N3U4RHBwUlZOZXduc0ZLRm1USXAxQXh5SFlKWGEwem5TQjRSQUE0?=
 =?utf-8?B?aE4zRSs2QXhNMm1RYVZLV2paRlEzaXl5SnhUYkd0U0tIT3ZWU3BlZlVMNUxl?=
 =?utf-8?B?T2NwajQxVU1xQkRJby9HbWdqRE5CY3dMSStrM1NGYUFhSkFuNzNWeDg1ZWhT?=
 =?utf-8?B?UXpwbDJDb3pFVm5HK2pzczU2Y2QzckxDYTBJRXlMVFQvb1JNRCtDanBSSUJW?=
 =?utf-8?B?N1NqcXRvdmRNb3NHVGJtdkdOTlVTemZseVlJUVZMMGx2RTA5SkhvdGQ2MUE2?=
 =?utf-8?B?Zm9saHJ2cjEwTnV1emtVTEc0U01SMnM0SU5ZWkxUR2UxK1dFUDJCS1ZEM0lX?=
 =?utf-8?B?YnQ5T2hzQTVRRno0alJqM1cvYWMrZ3Zjc2xBSThTU3FMS3BQdDlYRk1HYWlt?=
 =?utf-8?B?a0RmNm9hdWY4U2hicGs3bGpBd0h2SE5IWGlyanFMSlJ2cU5jb3IxOE1taFJy?=
 =?utf-8?B?ckUxSU50TjdlcGpDZytVNnpzRWRkN3NuSVpXME5vRmJIWkwxL1NBZy8yc2cy?=
 =?utf-8?B?SFBla2ZPMllXRmdjUlJsQXp4OFBuQ016SCtLWnc3TFJqb2NuRklQSFFKYmVJ?=
 =?utf-8?B?K0RwQ1N5aEN6TTBPRUlPMk43QjM5YkNoTzBYSjFGREsrYndPdHhUMzNwV0Ft?=
 =?utf-8?B?Q1hmTVVzVFRiN0JLR1BRWWtOWmRZVG9zejROQ2xKL1NUSXAyN3ZqcUpac3F5?=
 =?utf-8?B?cy9MT04rQkZPVnYvdGRORFRxVElLZjlNRHJpMEpjOFNHUHZUdkNKSGRaZUpx?=
 =?utf-8?B?aHk1Y1hNSGlreHdDanZZQ0dhTU1ZdjZkRmo2eEkzRlFlVjZmYVlrOWhPTFA2?=
 =?utf-8?B?TDdPMEhhYmtjVzZyMGk2cEpLQWVKb2NUczNTQ2dyLzFraU5rM0QvaDVodExm?=
 =?utf-8?B?ZjFYN1NEa3BaZUYrTEx1cG9XaVA2U1VyT3plV3JReEp1aDJ5SjliQ1BJTy9Q?=
 =?utf-8?B?b01HSHJxenBsT2p1bVd1SThZODVUcGdyR0hIenVVUHBOakdPaUJJUXBUbHJG?=
 =?utf-8?B?bEFDSjNoSzE3UDFmNS9SSWtsNXU1YWxHYWNBMVlNKzd3eW8zZEFYbVBZMGdr?=
 =?utf-8?B?MWRiSnY5UUVSaUR4aitqeUtZVkdMaExDYUg2TkFGN0xZQXppNC9OY0pack5p?=
 =?utf-8?B?dzg4Z3B6S2ZmR0NrK2RlL3RYTHE4Szl5QU4wdFZqTXowcEZXcDJQbE03Sms0?=
 =?utf-8?B?Uk1LSGFYQ3ZNZlp0aHRHa1hEdEtIYUtFUGprVHZCZWNZN1djT3Z3S0Mwb0FG?=
 =?utf-8?B?eE1uTXZ4RmwvckMraG1ucnpLS2JIMTBlSU05K2J3eFpxZzI2UEd5WWp6VXd1?=
 =?utf-8?B?MnpHUTFRMG9kQlBHcTBReW1LbHByaEcxL3Jybjg2NnphQ3k5eHI0WXJXWTZz?=
 =?utf-8?B?Y2ZhSDNvRzZiQjNKR0ZyRjVEcGljY0IyTjJrTGhsazduYWp2VTBRZ3hpWlN3?=
 =?utf-8?B?cmg1bjJZbmgwZFJ4TEhFdHBBczFIeDBGamRING03TXdNL1c2T1E5eVZHSmxD?=
 =?utf-8?B?VFhvK2ZHNHcxUlZUTHFtbzBwU1ZUSzBRUVBvZ0QyRWVGelcxaVdSRlZ1MnJo?=
 =?utf-8?B?VVYwRkFrbnlibUVDbDIya3lxRnduN2VGenFpcEFPeDBvcjZFMmtxTHBPUnNZ?=
 =?utf-8?B?NERteGNua3UzQ3F3RHdvM3VkdU56Rzg0cWVyNHlYcHlTMldaS2RNY296OGY5?=
 =?utf-8?B?Zm0yVDB3MjlHdERqZzRnbGNOWXZVdXFZUzdZNTlCTXdLYUV2eU1TVGU0U2VG?=
 =?utf-8?Q?ivk4k2YpmK9zfuSjCh+tZU8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c44a351-49c8-4b8a-b143-08dd4cfc056c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 13:32:26.3830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fUQqbRAPBAJVmhY4NbrQ+atgqOcWIHQcHGTf3R9Wg/aNmioJln/QMR767GYmICFbYdrhnAlaoN/7LwYAg5l6fVM0JwLJP1c7OXkezvOE5eU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8305
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739539978; x=1771075978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7rvPGw2RP61t64IJORy3ksJI0HSVIMJlFWbCZulsxcs=;
 b=lxP6snUHkLVYj9nnNvv2i9Xl2/3EL6TmQ00qkmsu9qhcnuxUBb3/NFvH
 cu+it6ylNZiK6Gi4SkKgtO/cLYBl8HLeqGYLYKdPXo7G1KOylxuTsXeRy
 IqbapsJtnhNf87yfTw4/u8FzUjPaVn216Kcu53xzWq2BNrq82z2Ospe8b
 gBxjXaI1MmrNC6RlT4ZeUkkJmhFPgPTeIpFG3SU0b5ffKuGc59jTdX//9
 ctL21oMb40w3EruwMDwH0xHGgDRYnaSdL5V4U7XioZILvagj5Qy2GChb/
 ptJi3RcXqxCmBZuVoRjELb8jcgGVXLAM3io9p5Ioyy32AHSOaKvmifqQw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lxP6snUH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: check error for
 register_netdev() on init
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

On 2/13/25 21:39, Tantilov, Emil S wrote:
> On 2/12/2025 10:21 AM, Simon Horman wrote:
>> On Mon, Feb 10, 2025 at 06:38:51PM -0800, Emil Tantilov wrote:
>>> Current init logic ignores the error code from register_netdev(),
>>> which will cause WARN_ON() on attempt to unregister it, if there was 
>>> one,
>>> and there is no info for the user that the creation of the netdev 
>>> failed.


>> Hi Emil,
>>
>> I'm wondering if we could reduce indentation and lines longer
>> than 80 characters in the above like this (completely untested!):
> I was mostly trying to focus on the fix itself, since this patch is -net 
> bound. The >80 line came about from the introduction of the local netdev 
> and it seemed cleaner to keep it in one line. I can just split the check 
> as in the original code.
> 
>>
>>
>>     for (index = 0; index < adapter->max_vports; index++) {
>>         struct idpf_vport_config *vport_config = adapter- 
>> >vport_config[index];
>>         struct net_device *netdev = adapter->netdevs[index];
>>
>>         if (!netdev ||
>>             test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags))
>>             continue;
> Again, because its mainly to add the error checking I am not sure if its 
> OK to re-shuffle the logic.
> 
>>
>>         err = register_netdev(netdev);
>>         if (err) {
>>             dev_err(&pdev->dev, "failed to register netdev for vport 
>> %d: %pe\n",
>>                 index, ERR_PTR(err));
>>             continue;
>>         }
>>         set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
>>     }
> 
> Don't mind re-spinning (and testing) v2 with the proposed change, if 
> it's not infringing on the guidelines for submission to -net.
> 
> Thanks,
> Emil

Emil, you are right that we generally don't want to do refactors on -net
submissions. In this particular case your code was just replacing the
body of the loop. Simon's snippet did the same, just with less
indentation.

The "early return" (or "continue") style is better, also in this case.
